-- services
local runService = game:GetService("RunService");
local players = game:GetService("Players");
local workspace = game:GetService("Workspace");

-- variables
local localPlayer = players.LocalPlayer;
local camera = workspace.CurrentCamera;
local viewportSize = camera.ViewportSize;

-- locals
local floor = math.floor;
local atan2 = math.atan2;
local sin = math.sin;
local cos = math.cos;
local clear = table.clear;
local unpack = table.unpack;
local find = table.find;
local create = table.create;

-- methods
local wtvp = camera.WorldToViewportPoint;
local isA = workspace.IsA;
local findFirstChild = workspace.FindFirstChild;
local getChildren = workspace.GetChildren;
local toOrientation = CFrame.identity.ToOrientation;
local pointToObjectSpace = CFrame.identity.PointToObjectSpace;
local lerpColor = Color3.new().Lerp;
local min2 = Vector2.zero.Min;
local max2 = Vector2.zero.Max;
local lerp2 = Vector2.zero.Lerp;
local min3 = Vector3.zero.Min;
local max3 = Vector3.zero.Max;

-- constants
local HEALTH_BAR_OFFSET = Vector2.new(5, 0);
local HEALTH_TEXT_OFFSET = Vector2.new(3, 0);
local HEALTH_BAR_OUTLINE_OFFSET = Vector2.new(0, 1);
local NAME_OFFSET = Vector2.new(0, 2);
local VERTICES = {
	Vector3.new(-1, -1, -1),
	Vector3.new(-1, 1, -1),
	Vector3.new(-1, 1, 1),
	Vector3.new(-1, -1, 1),
	Vector3.new(1, -1, -1),
	Vector3.new(1, 1, -1),
	Vector3.new(1, 1, 1),
	Vector3.new(1, -1, 1)
};

-- functions
local function isBodyPart(name)
	return name == "Head" or name:find("Torso") or name:find("Leg") or name:find("Arm");
end

local function getBoundingBox(parts)
	local min, max;
	for i = 1, #parts do
		local part = parts[i];
		local cframe, size = part.CFrame, part.Size;

		min = min3(min or cframe.Position, (cframe - size*0.5).Position);
		max = max3(max or cframe.Position, (cframe + size*0.5).Position);
	end

	local center = (min + max)*0.5;
	local front = Vector3.new(center.X, center.Y, max.Z);
	return CFrame.new(center, front), max - min;
end

local function worldToScreen(world)
	local screen, inBounds = wtvp(camera, world);
	return Vector2.new(screen.X, screen.Y), inBounds, screen.Z;
end

local function calculateCorners(cframe, size)
	local corners = create(#VERTICES);
	for i = 1, #VERTICES do
		corners[i] = worldToScreen((cframe + size*0.5*VERTICES[i]).Position);
	end

	local min = min2(viewportSize, unpack(corners));
	local max = max2(Vector2.zero, unpack(corners));
	return {
		corners = corners,
		topLeft = Vector2.new(floor(min.X), floor(min.Y)),
		topRight = Vector2.new(floor(max.X), floor(min.Y)),
		bottomLeft = Vector2.new(floor(min.X), floor(max.Y)),
		bottomRight = Vector2.new(floor(max.X), floor(max.Y))
	};
end

local function rotateVector(vector, radians)
	local c, s = cos(radians), sin(radians);
	return Vector2.new(c*vector.X - s*vector.Y, s*vector.X + c*vector.Y);
end

local function parseColor(self, color, isOutline)
	if color == "Team Color" or (self.interface.sharedSettings.useTeamColor and not isOutline) then
		print("i dont get it")
		return self.interface.getTeamColor(self.player) or Color3.new(1,1,1);
	end
	return color;
end

local EspObject = {};
EspObject.__index = EspObject;

function EspObject.new(player, interface)
	local self = setmetatable({}, EspObject);
	self.player = assert(player, "Missing argument #1 (Player expected)");
	self.interface = assert(interface, "Missing argument #2 (table expected)");
	self:Construct();
	return self;
end

function EspObject:_create(class, properties)
	local drawing = Drawing.new(class);
	for property, value in next, properties do
		drawing[property] = value;
	end
	self.bin[#self.bin + 1] = drawing;
	return drawing;
end

function EspObject:Construct()
	self.charCache = {};
	self.childCount = 0;
	self.bin = {};
	self.drawings = {
		box3d = {
			{
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false })
			},
			{
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false })
			},
			{
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false })
			},
			{
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false }),
				self:_create("Line", { Thickness = 1, Visible = false })
			}
		},
		visible = {
			tracerOutline = self:_create("Line", { Thickness = 3, Visible = false }),
			tracer = self:_create("Line", { Thickness = 1, Visible = false }),
			boxOutline = self:_create("Square", { Thickness = 3, Visible = false }),
			box = self:_create("Square", { Thickness = 1, Visible = false }),
			healthBarOutline = self:_create("Line", { Thickness = 3, Visible = false }),
			healthBar = self:_create("Line", { Thickness = 1, Visible = false }),
			name = self:_create("Text", { Text = self.player.DisplayName, Center = true, Visible = false }),
			distance = self:_create("Text", { Center = true, Visible = false }),
			weapon = self:_create("Text", { Center = true, Visible = false }),
		},
		hidden = {
			arrowOutline = self:_create("Triangle", { Thickness = 3, Visible = false }),
			arrow = self:_create("Triangle", { Filled = true, Visible = false })
		}
	};

	self.renderConnection = runService.Heartbeat:Connect(function()
		self:Update();
		self:Render();
	end);
end

function EspObject:Destruct()
	self.renderConnection:Disconnect();

	for i = 1, #self.bin do
		self.bin[i]:Remove();
	end

	clear(self);
end

function EspObject:Update()
	local interface = self.interface;

	self.options = interface.teamSettings[interface.isFriendly(self.player) and "friendly" or "enemy"];
	self.character = self.player.Character;
	self.health, self.maxHealth = interface.getHealth(self.player);
	self.weapon = interface.getWeapon(self.player);
	self.enabled = self.options.enabled and self.character

	local head = self.enabled and findFirstChild(self.character, "Head");
	if not head then
		self.charCache = {};
		return;
	end

	local _, onScreen, depth = worldToScreen(head.Position);
	self.onScreen = onScreen;
	self.distance = depth;

	if self.onScreen then
		local cache = self.charCache;
		local children = getChildren(self.character);
		if not cache[1] or self.childCount ~= #children then
			clear(cache);

			for i = 1, #children do
				local part = children[i];
				if isA(part, "BasePart") and isBodyPart(part.Name) then
					cache[#cache + 1] = part;
				end
			end

			self.childCount = #children;
		end

		self.corners = calculateCorners(getBoundingBox(cache));
	elseif self.options.offScreenArrow then
		local _, yaw, roll = toOrientation(camera.CFrame);
		local flatCFrame = CFrame.Angles(0, yaw, roll) + camera.CFrame.Position;
		local objectSpace = pointToObjectSpace(flatCFrame, head.Position);
		local angle = atan2(objectSpace.Z, objectSpace.X);

		self.direction = Vector2.new(cos(angle), sin(angle));
	end
end

function EspObject:Render()
	local onScreen = self.onScreen or false;
	local enabled = self.enabled or false;
	local visible = self.drawings.visible;
	local hidden = self.drawings.hidden;
	local box3d = self.drawings.box3d;
	local interface = self.interface;
	local options = self.options;
	local corners = self.corners;

	visible.box.Visible = enabled and onScreen and options.box;
	visible.boxOutline.Visible = visible.box.Visible and options.boxOutline;
	if visible.box.Visible then
		local box = visible.box;
		box.Position = corners.topLeft;
		box.Size = corners.bottomRight - corners.topLeft;
		box.Color = parseColor(self, options.boxColor[1]);
		box.Transparency = options.boxColor[2];

		local boxOutline = visible.boxOutline;
		boxOutline.Position = box.Position;
		boxOutline.Size = box.Size;
		boxOutline.Color = parseColor(self, options.boxOutlineColor[1], true);
		boxOutline.Transparency = options.boxOutlineColor[2];
	end

	visible.healthBar.Visible = enabled and onScreen and options.healthBar;
	visible.healthBarOutline.Visible = visible.healthBar.Visible and options.healthBarOutline;
	if visible.healthBar.Visible then
		local barFrom = corners.topLeft - HEALTH_BAR_OFFSET;
		local barTo = corners.bottomLeft - HEALTH_BAR_OFFSET;

		local healthBar = visible.healthBar;
		healthBar.To = barTo;
		healthBar.From = lerp2(barTo, barFrom, self.health/self.maxHealth);
		healthBar.Color = lerpColor(options.dyingColor, options.healthyColor, self.health/self.maxHealth);

		local healthBarOutline = visible.healthBarOutline;
		healthBarOutline.To = barTo + HEALTH_BAR_OUTLINE_OFFSET;
		healthBarOutline.From = barFrom - HEALTH_BAR_OUTLINE_OFFSET;
		healthBarOutline.Color = parseColor(self, options.healthBarOutlineColor[1], true);
		healthBarOutline.Transparency = options.healthBarOutlineColor[2];
	end

	visible.name.Visible = enabled and onScreen and options.name;
	if visible.name.Visible then
		local name = visible.name;
		name.Size = interface.sharedSettings.textSize;
		name.Font = interface.sharedSettings.textFont;
		name.Color = parseColor(self, options.nameColor[1]);
		name.Transparency = options.nameColor[2];
		name.Outline = options.nameOutline;
		name.OutlineColor = parseColor(self, options.nameOutlineColor, true);
		name.Position = (corners.topLeft + corners.topRight)*0.5 - Vector2.yAxis*name.TextBounds.Y - NAME_OFFSET;
	end

	visible.distance.Visible = enabled and onScreen and self.distance and options.distance;
	if visible.distance.Visible then
		local distance = visible.distance;
		distance.Text = floor(self.distance) .. " studs";
		distance.Size = interface.sharedSettings.textSize;
		distance.Font = interface.sharedSettings.textFont;
		distance.Color = parseColor(self, options.distanceColor[1]);
		distance.Transparency = options.distanceColor[2];
		distance.Outline = options.distanceOutline;
		distance.OutlineColor = parseColor(self, options.distanceOutlineColor, true);
		distance.Position = (corners.bottomLeft + corners.bottomRight)*0.5 + NAME_OFFSET;
	end

	visible.weapon.Visible = enabled and onScreen and options.weapon;
	if visible.weapon.Visible then
		local weapon = visible.weapon;
		weapon.Text = self.weapon;
		weapon.Size = interface.sharedSettings.textSize;
		weapon.Font = interface.sharedSettings.textFont;
		weapon.Color = parseColor(self, options.weaponColor[1]);
		weapon.Transparency = options.weaponColor[2];
		weapon.Outline = options.weaponOutline;
		weapon.OutlineColor = parseColor(self, options.weaponOutlineColor, true);
		weapon.Position =
			(corners.bottomLeft + corners.bottomRight)*0.5 +
			(visible.distance.Visible and NAME_OFFSET + Vector2.yAxis*visible.distance.TextBounds.Y or Vector2.zero);
	end

	visible.tracer.Visible = enabled and onScreen and options.tracer;
	visible.tracerOutline.Visible = visible.tracer.Visible and options.tracerOutline;
	if visible.tracer.Visible then
		local tracer = visible.tracer;
		tracer.Color = parseColor(self, options.tracerColor[1]);
		tracer.Transparency = options.tracerColor[2];
		tracer.To = (corners.bottomLeft + corners.bottomRight)*0.5;
		tracer.From =
			options.tracerOrigin == "Middle" and viewportSize*0.5 or
			options.tracerOrigin == "Top" and viewportSize*Vector2.new(0.5, 0) or
			options.tracerOrigin == "Bottom" and viewportSize*Vector2.new(0.5, 1);

		local tracerOutline = visible.tracerOutline;
		tracerOutline.Color = parseColor(self, options.tracerOutlineColor[1], true);
		tracerOutline.Transparency = options.tracerOutlineColor[2];
		tracerOutline.To = tracer.To;
		tracerOutline.From = tracer.From;
	end

	hidden.arrow.Visible = enabled and (not onScreen) and options.offScreenArrow;
	hidden.arrowOutline.Visible = hidden.arrow.Visible and options.offScreenArrowOutline;
	if hidden.arrow.Visible and self.direction then
		local arrow = hidden.arrow;
		arrow.PointA = min2(max2(viewportSize*0.5 + self.direction*options.offScreenArrowRadius, Vector2.one*25), viewportSize - Vector2.one*25);
		arrow.PointB = arrow.PointA - rotateVector(self.direction, 0.45)*options.offScreenArrowSize;
		arrow.PointC = arrow.PointA - rotateVector(self.direction, -0.45)*options.offScreenArrowSize;
		arrow.Color = parseColor(self, options.offScreenArrowColor[1]);
		arrow.Transparency = options.offScreenArrowColor[2];

		local arrowOutline = hidden.arrowOutline;
		arrowOutline.PointA = arrow.PointA;
		arrowOutline.PointB = arrow.PointB;
		arrowOutline.PointC = arrow.PointC;
		arrowOutline.Color = parseColor(self, options.offScreenArrowOutlineColor[1], true);
		arrowOutline.Transparency = options.offScreenArrowOutlineColor[2];
	end

	local box3dEnabled = enabled and onScreen and options.box3d;
	for i = 1, #box3d do
		local face = box3d[i];
		for i2 = 1, #face do
			local line = face[i2];
			line.Visible = box3dEnabled;
			line.Color = parseColor(self, options.box3dColor[1]);
			line.Transparency = options.box3dColor[2];
		end

		if box3dEnabled then
			local line1 = face[1];
			line1.From = corners.corners[i];
			line1.To = corners.corners[i == 4 and 1 or i+1];

			local line2 = face[2];
			line2.From = corners.corners[i == 4 and 1 or i+1];
			line2.To = corners.corners[i == 4 and 5 or i+5];

			local line3 = face[3];
			line3.From = corners.corners[i == 4 and 5 or i+5];
			line3.To = corners.corners[i == 4 and 8 or i+4];
		end
	end
end

-- interface
local EspInterface = {
	_hasLoaded = false,
	_objectCache = {},
	sharedSettings = {
		textSize = 13,
		textFont = 2,
		useTeamColor = false
	},
	teamSettings = {
		enemy = {
			enabled = false,
			box = false,
			boxColor = { Color3.new(1,0,0), 1 },
			boxOutline = true,
			boxOutlineColor = { Color3.new(), 1 },
			healthBar = false,
			healthyColor = Color3.new(0,1,0),
			dyingColor = Color3.new(1,0,0),
			healthBarOutline = true,
			healthBarOutlineColor = { Color3.new(), 0.5 },
			box3d = false,
			box3dColor = { Color3.new(1,0,0), 1 },
			name = false,
			nameColor = { Color3.new(1,1,1), 1 },
			nameOutline = true,
			nameOutlineColor = Color3.new(),
			weapon = false,
			weaponColor = { Color3.new(1,1,1), 1 },
			weaponOutline = true,
			weaponOutlineColor = Color3.new(),
			distance = false,
			distanceColor = { Color3.new(1,1,1), 1 },
			distanceOutline = true,
			distanceOutlineColor = Color3.new(),
			tracer = false,
			tracerOrigin = "Bottom",
			tracerColor = { Color3.new(1,0,0), 1 },
			tracerOutline = true,
			tracerOutlineColor = { Color3.new(), 1 },
			offScreenArrow = false,
			offScreenArrowColor = { Color3.new(1,1,1), 1 },
			offScreenArrowSize = 15,
			offScreenArrowRadius = 150,
			offScreenArrowOutline = true,
			offScreenArrowOutlineColor = { Color3.new(), 1 }
		},
		friendly = {
			enabled = false,
			box = false,
			boxColor = { Color3.new(0,1,0), 1 },
			boxOutline = true,
			boxOutlineColor = { Color3.new(), 1 },
			healthBar = false,
			healthyColor = Color3.new(0,1,0),
			dyingColor = Color3.new(1,0,0),
			healthBarOutline = true,
			healthBarOutlineColor = { Color3.new(), 0.5 },
			box3d = false,
			box3dColor = { Color3.new(0,1,0), 1 },
			name = false,
			nameColor = { Color3.new(1,1,1), 1 },
			nameOutline = true,
			nameOutlineColor = Color3.new(),
			weapon = false,
			weaponColor = { Color3.new(1,1,1), 1 },
			weaponOutline = true,
			weaponOutlineColor = Color3.new(),
			distance = false,
			distanceColor = { Color3.new(1,1,1), 1 },
			distanceOutline = true,
			distanceOutlineColor = Color3.new(),
			tracer = false,
			tracerOrigin = "Bottom",
			tracerColor = { Color3.new(0,1,0), 1 },
			tracerOutline = true,
			tracerOutlineColor = { Color3.new(), 1 },
			offScreenArrow = false,
			offScreenArrowColor = { Color3.new(1,1,1), 1 },
			offScreenArrowSize = 15,
			offScreenArrowRadius = 150,
			offScreenArrowOutline = true,
			offScreenArrowOutlineColor = { Color3.new(), 1 }
		}
	}
};

function EspInterface.Load()
	assert(not EspInterface._hasLoaded, "Esp has already been loaded.");

	local function createObject(player)
		EspInterface._objectCache[player] = {
			EspObject.new(player, EspInterface)
		};
	end

	local function removeObject(player)
		local object = EspInterface._objectCache[player];
		if object then
			for i = 1, #object do
				object[i]:Destruct();
			end
			EspInterface._objectCache[player] = nil;
		end
	end

	local plrs = players:GetPlayers();
	for i = 2, #plrs do
		createObject(plrs[i]);
	end

	EspInterface.playerAdded = players.PlayerAdded:Connect(createObject);
	EspInterface.playerRemoving = players.PlayerRemoving:Connect(removeObject);
	EspInterface._hasLoaded = true;
end

function EspInterface.Unload()
	assert(EspInterface._hasLoaded, "Esp has not been loaded yet.");

	for index, object in next, EspInterface._objectCache do
		for i = 1, #object do
			object[i]:Destruct();
		end
		EspInterface._objectCache[index] = nil;
	end

	EspInterface.playerAdded:Disconnect();
	EspInterface.playerRemoving:Disconnect();
	EspInterface._hasLoaded = false;
end

-- game specific functions
function EspInterface.getWeapon(player)
	if player:FindFirstChild("NRPBS") and player.NRPBS:FindFirstChild("EquippedTool") then
		return player.NRPBS.EquippedTool.Value
	end
  	return ""
end

function EspInterface.isFriendly(player)
	if player.Team == game.Players.LocalPlayer.Team then
		if game.ReplicatedStorage.wkspc.FFA.Value then
			return false
		else
			return true
		end
	end
	return false
end

function EspInterface.getTeamColor(player)
	return player.Team and player.Team.TeamColor and player.Team.TeamColor.Color;
end

function EspInterface.getHealth(player)
	if player:FindFirstChild("NRPBS") and player.NRPBS:FindFirstChild("Health") then
		return player.NRPBS.Health.Value, player.NRPBS.MaxHealth.Value
	end
	return 100, 100
end

return EspInterface;
