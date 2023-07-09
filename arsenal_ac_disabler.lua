
-- ________      _____  __________  ____  __._____.___._____.___.    ________   .___   _________   _____  __________ .____     _____________________  
-- \______ \    /  _  \ \______   \|    |/ _|\__  |   |\__  |   |    \______ \  |   | /   _____/  /  _  \ \______   \|    |    \_   _____/\______   \ 
--  |    |  \  /  /_\  \ |       _/|      <   /   |   | /   |   |     |    |  \ |   | \_____  \  /  /_\  \ |    |  _/|    |     |    __)_  |       _/ 
--  |    `   \/    |    \|    |   \|    |  \  \____   | \____   |     |    `   \|   | /        \/    |    \|    |   \|    |___  |        \ |    |   \ 
-- /_______  /\____|__  /|____|_  /|____|__ \ / ______| / ______|    /_______  /|___|/_______  /\____|__  /|______  /|_______ \/_______  / |____|_  / 
--         \/         \/        \/         \/ \/        \/                   \/              \/         \/        \/         \/        \/         \/  
                               

-- anyway xonae if ur seeing this know that this will be updated so you should honsetly just fuck off


-- here we have the ids that our faggot xonae banned
local bannedIds = {"rbxassetid://328298876", "rbxassetid://11493344192", "rbxassetid://11706698017", "rbxassetid://11706521913", "rbxassetid://11810985691", [6] = "rbxassetid://11441550965", "rbxassetid://13296723282", "rbxassetid://11440677815", "rbxassetid://11445329779", "rbxassetid://11447558233", "rbxassetid://11441541927", "rbxassetid://8834748103"}

-- you know why :sob:
local isDescendantOf = game.IsDescendantOf

-- fuck these connections
for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
    v:Disable()
end

for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
    v:Disable()
end

-- namecall hook for : calls
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" or method == "fireServer" then
        if self.Name == "GunSkinner" or self.Name == "Peep" or self.Name == "NewYear" or self.Name == "BeanBoozled" then
            return -- these remotes are faggot remotes
        end
    end
    if method == "Kick" or method == "kick" then
        if self == game.Players.LocalPlayer then -- fuck u xonae
            return -- one word fucks the whole entire xonae
        end
    end
    if method == "GetAssetFetchStatus" or method == "getAssetFetchStatus" then -- namecall shit
        if self.ClassName == "ContentProvider" and table.find(bannedIds, ...) then
            return Enum.AssetFetchStatus.None
        end
    end
    if method == "GetFocusedTextBox" or method == "getFocusedTextBox" then -- ty babyhamsta
        if self.ClassName == "UserInputService" then
            local textbox = oldNamecall(self, ...)
            if textbox and typeof(textbox) == "Instance" then
                local _, arg = pcall(function() isDescendantOf(textbox, game.CoreGui) end)
                if arg and arg:match("The current identity") then
                    return nil
                end
            end
        end
    end
    return oldNamecall(self, ...)
end)

-- hook kick with . call
hookfunction(game.Players.LocalPlayer.Kick, function()
    return -- fuck xonae and also scapter
end)

-- fix crashing
local stringFind
stringFind = hookfunction(string.find, function(self, find, ...)
    if self == "there's no way this can crash studio LOL!" or find == ".*.*.*.*.*.*.*.*.*.*.*#" then
        return -- xonae does not know but this one word makes him fucking useless
    end
    return stringFind(self, find, ...)
end)

-- fucking GetAssetFetchStatus hook
local getAssetFetchStatus
getAssetFetchStatus = hookfunction(game:GetService("ContentProvider").GetAssetFetchStatus, function(self, contId, ...)
    if table.find(bannedIds, contId) then
        return Enum.AssetFetchStatus.None
    end
    return getAssetFetchStatus(self, contId, ...)
end)

-- fucking GetFocusedTextBox hook
local getFocusedTextBox
getFocusedTextBox = hookfunction(game:GetService("UserInputService").GetFocusedTextBox, function(self, ...) -- ty babyhamsta
    local textbox = getFocusedTextBox(self, ...)
    if textbox and typeof(textbox) == "Instance" then
        local _, arg = pcall(function() isDescendantOf(textbox, game.CoreGui) end)
        if arg and arg:match("The current identity") then
            return nil
        end
    end
    return textbox
end)

-- hook remotes with . call
local fireServer
fireServer = hookfunction(Instance.new("RemoteEvent").FireServer, function(self, ...)
    if self.Name == "GunSkinner" or self.Name == "Peep" or self.Name == "NewYear" or self.Name == "BeanBoozled" then
        return -- xonae fucker v5
    end
    return fireServer(self, ...)
end)
