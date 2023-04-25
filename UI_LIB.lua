local Library = {}
function Library:Window(a,b)
    -- sufi is dum shit
    local f = game:GetService("CoreGui")
    local g = game:GetService("UserInputService")
    local h = game:GetService("RunService")
    local i = Instance.new("ScreenGui")
    local j = Instance.new("Frame")
    local lol = Instance.new("UICorner")
    lol.Parent = j
    lol.CornerRadius = UDim.new(0, 3)
    local k = Instance.new("Frame")
    local lol = Instance.new("UICorner")
    lol.Parent = k
    lol.CornerRadius = UDim.new(0, 3)
    local l = Instance.new("Frame")
    local lol = Instance.new("UICorner")
    lol.Parent = l
    lol.CornerRadius = UDim.new(0, 3)
    local m = Instance.new("Frame")
    local lol = Instance.new("UICorner")
    lol.Parent = m
    lol.CornerRadius = UDim.new(0, 3)
    local n = Instance.new("UIListLayout")
    local o = Instance.new("TextLabel")
    local p = Instance.new("Frame")
    local q = Instance.new("UIListLayout")
    local r = Instance.new("Frame")
    local s
    local RainbowCum = Color3.new()
    getgenv().ArsoniaSettings = {}
    getgenv().WindowThemeColor = b
    getgenv().GuiToggle = Enum.KeyCode.RightShift
    for _, u in next, f:GetChildren() do
        if u.Name == "tcv10" then
            u:Destroy()
        end
    end
    i.Name = "tcv10"
    i.Parent = f
    i.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    i.DisplayOrder = 1
    i.ResetOnSpawn = false
    g.InputBegan:Connect(
        function(v, w)
            if not w then
                if v.KeyCode == Enum.KeyCode.P or v.KeyCode == getgenv().GuiToggle then
                    i.Enabled = not i.Enabled
                end
            end
        end
    )
    j.Name = "Drag"
    j.Parent = i
    j.Active = true
    j.Draggable = true
    j.BackgroundColor3 = Color3.new(0.0509804, 0.0509804, 0.0509804)
    j.BorderColor3 = Color3.new(0, 0, 0)
    j.Position = UDim2.new(0.355398446, 0, 0.184466019, 0)
    j.Size = UDim2.new(0, 513, 0, 27)
    k.Name = "Main"
    k.Parent = j
    k.Active = true
    k.BackgroundColor3 = Color3.new(0.0509804, 0.0509804, 0.0509804)
    k.BorderColor3 = Color3.new(0, 0, 0)
    k.Position = UDim2.new(-0.001, 0, 0.023466019, 0)
    k.Size = UDim2.new(0, 513, 0, 700)
    l.Parent = k
    l.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
    l.BorderColor3 = Color3.new(0, 0, 0)
    l.Position = UDim2.new(0.0137524558, 0, 0.0470383018, 0)
    l.Size = UDim2.new(0, 499, 0, k.Size.Y.Offset - 38)
    m.Name = "Heading"
    m.Parent = k
    m.BackgroundColor3 = Color3.new(1, 1, 1)
    m.BackgroundTransparency = 1
    m.BorderColor3 = Color3.new(0, 0, 0)
    m.BorderSizePixel = 0
    m.Position = UDim2.new(0.023499012, 0, 0, 0)
    m.Size = UDim2.new(0, 494, 0, 27)
    n.Parent = m
    n.FillDirection = Enum.FillDirection.Horizontal
    n.SortOrder = Enum.SortOrder.LayoutOrder
    n.Padding = UDim.new(0, 9)
    o.Name = "Title"
    o.Parent = m
    o.BackgroundColor3 = Color3.new(1, 1, 1)
    o.BackgroundTransparency = 1
    o.Position = UDim2.new(0.0137524558, 0, 0.00199999125, 0)
    o.Size = UDim2.new(0, #a * 6.833333333333333, 0, 23)
    o.Font = Enum.Font.RobotoMono
    o.Text = a
    o.TextSize = 14
    o.TextColor3 = o.TextColor3
    o.TextStrokeTransparency = 0.4
    o.TextXAlignment = Enum.TextXAlignment.Left
    local x = Instance.new("Frame")
    x.Name = "Background"
    x.Parent = l
    x.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
    x.BorderColor3 = Color3.new(0, 0, 0)
    x.Position = UDim2.new(0.0155808367, 0, 0.0434783697, 0)
    x.Size = UDim2.new(0, 485, 0, l.Size.Y.Offset - 34)
    local x = Instance.new("ScrollingFrame")
    x.Name = "Background"
    x.Parent = l
    x.BackgroundColor3 = Color3.new(0.141176, 0.141176, 0.141176)
    x.BackgroundTransparency = 1
    x.BorderColor3 = Color3.new(0, 0, 0)
    x.Position = UDim2.new(0.0155808367, 0, 0.0434783697, 0)
    x.Size = UDim2.new(0, 495, 0, l.Size.Y.Offset - 21)
    x.ScrollBarImageTransparency = 1
    x.CanvasSize = UDim2.new(0, 495, 0, l.Size.Y.Offset + 700)
    p.Name = "Content"
    p.Parent = x
    p.BackgroundColor3 = Color3.new(0, 0, 0)
    p.BackgroundTransparency = 1
    p.BorderSizePixel = 0
    p.Position = UDim2.new(0.0124223605, 0, 0.0099593997, 0)
    p.Size = UDim2.new(0, 470, 0, x.CanvasSize.Y.Offset)
    r.Parent = l
    r.BackgroundColor3 = Color3.new(1, 1, 1)
    r.BackgroundTransparency = 1
    r.BorderColor3 = Color3.new(0, 0, 0)
    r.BorderSizePixel = 0
    r.Position = UDim2.new(0.0276048928, 0, 0, 0)
    r.Size = UDim2.new(0, 476, 0, 23)
    q.Parent = r
    q.FillDirection = Enum.FillDirection.Horizontal
    q.SortOrder = Enum.SortOrder.LayoutOrder
    q.Padding = UDim.new(0, 5)
    local function y(z, A)
        return game:GetService("TweenService"):Create(z, TweenInfo.new(0.5, Enum.EasingStyle.Quint), A):Play()
    end
    local DESCS_LOL = {}
    spawn(function()
        while wait(0.5) do
            DESCS_LOL = p:GetDescendants()
        end
    end)
    spawn(function()
        while game.RunService.RenderStepped:Wait() do
            for az = 0, 1, 0.0023 do
                game.RunService.RenderStepped:Wait()
                RainbowCum = Color3.fromHSV(az, 1, 1)
            end
        end
    end)
    h.RenderStepped:Connect(
        function()
            o.TextColor3 = getgenv().TitleColor
            framePosLeft = 1
            framePosRight = 1
            for _, B in next, p:GetChildren() do
                B.Position = UDim2.new(-0.00377, 0, 0, framePosLeft - 2)
                framePosLeft = framePosLeft + B.Size.Y.Offset + 5
                if p.Size.Y.Offset - framePosLeft + 7 < 0 then
                    B.Position = UDim2.new(0.507, 0, 0, -1)
                end
                if B.Position.X.Scale >= 0.507 then
                    B.Position = UDim2.new(0.507, 0, 0, framePosRight - 2)
                    framePosRight = framePosRight + B.Size.Y.Offset + 5
                end
            end
            ZIndexNum = 0
            ZIndexMax = 0
            for _, C in next, DESCS_LOL do
                if C.Name == "Section" or C.Name == "Dropdown" or C.Name == "Color" then
                    ZIndexMax = ZIndexMax + 1
                end
            end
            for _, C in next, DESCS_LOL do
                if C.Name == "Section" or C.Name == "Dropdown" or C.Name == "Color" then
                    C.ZIndex = 2 + ZIndexMax - ZIndexNum
                    ZIndexNum = ZIndexNum + 1
                end
                if C.Name == "fuck_this_shit_bro" then
                    C.BackgroundColor3 = getgenv().WindowThemeColor
                end
            end
        end
    )
    local D = Instance.new("TextLabel")
    local E = Instance.new("TextLabel")
    E.Name = "Differ"
    E.Parent = m
    E.BackgroundColor3 = Color3.new(1, 1, 1)
    E.BackgroundTransparency = 1
    E.Position = UDim2.new(0.0137524558, 0, 0.00199999125, 0)
    E.Size = UDim2.new(0, 6, 0, 23)
    E.Font = Enum.Font.RobotoMono
    E.Text = ""
    E.TextColor3 = Color3.fromRGB(255, 255, 255)
    E.TextSize = 14
    E.TextStrokeTransparency = 0.4
    E.TextXAlignment = Enum.TextXAlignment.Left
    D.Name = "Label"
    D.Parent = m
    D.BackgroundColor3 = Color3.new(1, 1, 1)
    D.BackgroundTransparency = 1
    D.Position = UDim2.new(0.0137524558, 0, 0.00199999125, 0)
    D.Size = UDim2.new(0, 6.833333333333333, 0, 23)
    D.Font = Enum.Font.RobotoMono
    D.Text = ""
    D.TextColor3 = Color3.new(1, 1, 1)
    D.TextSize = 14
    D.TextStrokeTransparency = 0.4
    local D = Instance.new("TextLabel")
    local E = Instance.new("TextLabel")
    E.Name = "Differ"
    E.Parent = m
    E.BackgroundColor3 = Color3.new(1, 1, 1)
    E.BackgroundTransparency = 1
    E.Position = UDim2.new(0.0137524558, 0, 0.00199999125, 0)
    E.Size = UDim2.new(0, 6, 0, 23)
    E.Font = Enum.Font.RobotoMono
    E.Text = ""
    E.TextColor3 = Color3.fromRGB(255, 255, 255)
    E.TextSize = 14
    E.TextStrokeTransparency = 0.4
    spawn(
        function()
            TabCounter = 0
            function altersize(F)
                textcounter = 0
                for G = 1, #F.Text do
                    textcounter = textcounter + 7.9
                end
                F.Size = UDim2.new(0, textcounter, 0, F.Size.Y.Offset)
            end
            D.TextXAlignment = Enum.TextXAlignment.Left
            while TabCounter == 0 do
                for _, F in next, r:GetChildren() do
                    if F:IsA("TextButton") then
                        altersize(F)
                        TabCounter = TabCounter + 1
                        if TabCounter == 1 then
                            F.TextColor3 = Color3.fromRGB(255, 255, 255)
                            for _, H in next, F.Contents:GetChildren() do
                                s = F
                                H.Visible = true
                                H.Parent = p
                            end
                        else
                            F.TextColor3 = Color3.fromRGB(125, 125, 125)
                        end
                    end
                end
            end
        end
    )
    local I = {}
    function I:Tab(a)
        local L = Instance.new("TextButton")
        local M = Instance.new("Folder")
        L.Name = "Tab"
        L.Parent = r
        L.BackgroundColor3 = Color3.new(1, 1, 1)
        L.BackgroundTransparency = 1
        L.Size = UDim2.new(0, 24, 0, 23)
        L.AutoButtonColor = false
        L.Font = Enum.Font.RobotoMono
        L.Text = a
        L.TextColor3 = Color3.new(1, 1, 1)
        L.TextSize = 14
        L.TextStrokeTransparency = 0.4
        M.Name = "Contents"
        M.Parent = L
        L.MouseButton1Click:Connect(
            function()
                for t, F in next, r:GetChildren() do
                    if F:IsA("TextButton") then
                        if F ~= L then
                            y(F, {TextColor3 = Color3.fromRGB(125, 125, 125)})
                            for t, H in next, p:GetChildren() do
                                if H:IsA("Frame") then
                                    H.Visible = false
                                    H.Parent = s.Contents
                                end
                            end
                        end
                    end
                end
                y(L, {TextColor3 = Color3.fromRGB(255, 255, 255)})
                for t, H in next, M:GetChildren() do
                    s = L
                    H.Visible = true
                    H.Parent = p
                end
            end
        )
        local N = {}
        function N:Section(a)
            local O = Instance.new("Frame")
            local P = Instance.new("Frame")
            local Q = Instance.new("TextLabel")
            local R = Instance.new("UIListLayout")
            O.Name = "Section"
            O.Parent = M
            O.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
            O.BorderColor3 = Color3.new(0, 0, 0)
            O.Position = UDim2.new(0.0120000001, 0, 0.00899999961, 0)
            O.Size = UDim2.new(0, 235, 0, 247)
            O.ZIndex = 0
            O.Visible = false
            P.Name = "Contents"
            P.Parent = O
            P.BackgroundColor3 = Color3.new(0.145098, 0.145098, 0.145098)
            P.BackgroundTransparency = 1
            P.BorderSizePixel = 0
            P.Position = UDim2.new(0.0278463159, 0, 0.0322874375, 0)
            P.Size = UDim2.new(0, 220, 0, 84)
            Q.Name = "Title"
            Q.Parent = P
            Q.BackgroundColor3 = Color3.new(1, 1, 1)
            Q.BackgroundTransparency = 1
            Q.Position = UDim2.new(0.0260000005, 0, -1.05768967, 0)
            Q.Size = UDim2.new(0, 178, 0, 12)
            Q.Font = Enum.Font.RobotoMono
            Q.Text = a
            Q.TextColor3 = Color3.new(1, 1, 1)
            Q.TextSize = 14
            Q.TextStrokeTransparency = 0.4
            Q.TextXAlignment = Enum.TextXAlignment.Left
            R.Parent = P
            R.SortOrder = Enum.SortOrder.LayoutOrder
            R.Padding = UDim.new(.1, 0)
            spawn(
                function()
                    wait()
                    FuncSize = 0
                    for _, C in next, P:GetChildren() do
                        if C:IsA("TextLabel") or C:IsA("TextButton") then
                            FuncSize += C.Size.Y.Offset + 9
                        end
                    end
                    O.Size = UDim2.new(0, O.Size.X.Offset, 0, FuncSize)
                end
            )
            local S = {}
            function S:Button(a, T)
                local U = Instance.new("TextButton")
                U.Name = "Button"
                U.Parent = P
                U.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                U.BorderColor3 = Color3.new(0, 0, 0)
                U.Position = UDim2.new(-0.00888097659, 0, 0.284795314, 0)
                U.Size = UDim2.new(0, 223, 0, 18)
                U.AutoButtonColor = false
                U.Font = Enum.Font.RobotoMono
                U.Text = a
                U.TextColor3 = Color3.new(1, 1, 1)
                U.TextSize = 14
                U.TextStrokeTransparency = 0.4
                U.MouseButton1Click:Connect(T)
            end
            function S:Toggle(a, T)
                local W = Instance.new("TextButton")
                local X = Instance.new("TextLabel")
                W.Name = "Toggle"
                W.Parent = P
                W.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                W.BorderColor3 = Color3.new(0, 0, 0)
                W.Position = UDim2.new(-0.00888097659, 0, 0.284795314, 0)
                W.Size = UDim2.new(0, 13, 0, 13)
                W.AutoButtonColor = false
                W.Font = Enum.Font.RobotoMono
                W.Text = ""
                W.Name = "nah_bro"
                W.TextColor3 = Color3.new(1, 1, 1)
                W.TextSize = 14
                W.TextStrokeTransparency = 0.4
                X.Parent = W
                X.BackgroundColor3 = Color3.new(1, 1, 1)
                X.BackgroundTransparency = 1
                X.Position = UDim2.new(1.67999995, 0, -0.0149999997, 0)
                X.Size = UDim2.new(0, 199, 0, 13)
                X.Font = Enum.Font.RobotoMono
                X.Text = a
                X.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                X.TextSize = 14
                X.TextStrokeTransparency = 0.4
                X.TextXAlignment = Enum.TextXAlignment.Left
                local Y = false
                local funnn2 = function(Z)
                    if not Z then
                        y(W, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                        W.Name = "love_this_shit_bro"
                    else
                        y(W, {BackgroundColor3 = getgenv().WindowThemeColor})
                        W.Name = "fuck_this_shit_bro"
                    end
                    T(Z)
                    getgenv().ArsoniaSettings[a] = {SetVal = funnn2, Val = {Z}}
                    Y = Z
                end
                W.MouseButton1Click:Connect(
                    function()
                        if Y then
                            y(W, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                            W.Name = "love_this_shit_bro"
                        else
                            y(W, {BackgroundColor3 = getgenv().WindowThemeColor})
                            W.Name = "fuck_this_shit_bro"
                        end
                        Y = not Y
                        T(Y)
                        getgenv().ArsoniaSettings[a] = {SetVal = funnn2, Val = {Y}}
                    end
                )
                getgenv().ArsoniaSettings[a] = {SetVal = funnn2, Val = {Y}}
            end
            function S:Color(a, _, T)
                local b = Instance.new("TextLabel")
                local a0 = Instance.new("TextButton")
                local k = Instance.new("Frame")
                local a1 = Instance.new("Frame")
                local a2 = Instance.new("ImageLabel")
                local a3 = Instance.new("Frame")
                local a4 = Instance.new("Frame")
                local a5 = Instance.new("Frame")
                local a6 = Instance.new("TextBox")
                local a7 = Instance.new("TextBox")
                local a8 = Instance.new("TextBox")
                local a9 = Instance.new("TextButton")
                local X = Instance.new("TextLabel")
                b.Name = "Color"
                b.Parent = P
                b.BackgroundColor3 = Color3.new(1, 1, 1)
                b.BackgroundTransparency = 1
                b.Position = UDim2.new(1.67999995, 0, -0.0149999997, 0)
                b.Size = UDim2.new(0, 199, 0, 11)
                b.ZIndex = 2
                b.Font = Enum.Font.RobotoMono
                b.Text = a
                b.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                b.TextSize = 14
                b.TextStrokeTransparency = 0.40000000596046
                b.TextXAlignment = Enum.TextXAlignment.Left
                a0.Parent = b
                a0.BackgroundColor3 = Color3.new(1, 1, 1)
                a0.BorderColor3 = Color3.new(0, 0, 0)
                a0.Position = UDim2.new(1.05142057, 0, -0.0228970051, 0)
                a0.Size = UDim2.new(0, 13, 0, 13)
                a0.AutoButtonColor = false
                a0.Font = Enum.Font.RobotoMono
                a0.Text = ""
                a0.TextColor3 = Color3.new(1, 1, 1)
                a0.TextSize = 14
                a0.TextStrokeTransparency = 0
                k.Name = "Main"
                k.Parent = b
                k.BackgroundColor3 = Color3.new(1, 1, 1)
                k.BackgroundTransparency = 1
                k.BorderSizePixel = 0
                k.ClipsDescendants = true
                k.Position = UDim2.new(0.562814057, 0, 1.61538458, 0)
                k.Size = UDim2.new(0, 111, 0, 0)
                k.Visible = false
                a1.Name = "Picker"
                a1.Parent = k
                a1.Active = true
                a1.AnchorPoint = Vector2.new(0.5, 0.5)
                a1.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
                a1.BorderColor3 = Color3.new(0, 0, 0)
                a1.Position = UDim2.new(0.5, 0, 0.5, 0)
                a1.Size = UDim2.new(0, 109, 0, 142)
                a1.Visible = true
                a1.SizeConstraint = Enum.SizeConstraint.RelativeYY
                a2.Name = "Gradient"
                a2.Parent = a1
                a2.AnchorPoint = Vector2.new(0.5, 0.5)
                a2.BackgroundColor3 = Color3.new(1, 1, 1)
                a2.BorderColor3 = Color3.new(0.627451, 0.627451, 0.627451)
                a2.BorderSizePixel = 0
                a2.ClipsDescendants = true
                a2.Position = UDim2.new(0.5, 0, 0.349999994, 0)
                a2.Size = UDim2.new(0.649999976, 0, 0.649999976, 0)
                a2.SizeConstraint = Enum.SizeConstraint.RelativeYY
                a2.Image = "rbxassetid://328298876"
                a3.Name = "Cursor"
                a3.Parent = a2
                a3.BackgroundColor3 = Color3.new(1, 1, 1)
                a3.BorderColor3 = Color3.new(0, 0, 0)
                a3.BorderSizePixel = 0
                a3.Position = UDim2.new(1, -1, 0, 1)
                a3.ZIndex = 2
                a4.Name = "Vertical"
                a4.Parent = a3
                a4.AnchorPoint = Vector2.new(0.5, 0.5)
                a4.BackgroundColor3 = Color3.new(0, 0, 0)
                a4.BorderColor3 = Color3.new(0, 0, 0)
                a4.BorderSizePixel = 0
                a4.Size = UDim2.new(0, 2, 0, 20)
                a4.ZIndex = 2
                a5.Name = "Horizontal"
                a5.Parent = a3
                a5.AnchorPoint = Vector2.new(0.5, 0.5)
                a5.BackgroundColor3 = Color3.new(0, 0, 0)
                a5.BorderColor3 = Color3.new(0, 0, 0)
                a5.BorderSizePixel = 0
                a5.Size = UDim2.new(0, 20, 0, 2)
                a5.ZIndex = 2
                a6.Name = "R"
                a6.Parent = a1
                a6.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
                a6.BorderColor3 = Color3.new(0, 0, 0)
                a6.Position = UDim2.new(0.0299999993, 0, 0.862999976, 0)
                a6.Size = UDim2.new(0, 31, 0, 15)
                a6.Font = Enum.Font.RobotoMono
                a6.PlaceholderColor3 = Color3.new(0.764706, 0.764706, 0.764706)
                a6.PlaceholderText = "R"
                a6.Text = ""
                a6.TextColor3 = Color3.new(1, 1, 1)
                a6.TextSize = 14
                a7.Name = "G"
                a7.Parent = a1
                a7.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
                a7.BorderColor3 = Color3.new(0, 0, 0)
                a7.Position = UDim2.new(0.360000014, 0, 0.862999976, 0)
                a7.Size = UDim2.new(0, 31, 0, 15)
                a7.Font = Enum.Font.RobotoMono
                a7.PlaceholderColor3 = Color3.new(0.764706, 0.764706, 0.764706)
                a7.PlaceholderText = "G"
                a7.Text = ""
                a7.TextColor3 = Color3.new(1, 1, 1)
                a7.TextSize = 14
                a8.Name = "B"
                a8.Parent = a1
                a8.BackgroundColor3 = Color3.new(0.105882, 0.105882, 0.105882)
                a8.BorderColor3 = Color3.new(0, 0, 0)
                a8.Position = UDim2.new(0.685000002, 0, 0.862999976, 0)
                a8.Size = UDim2.new(0, 31, 0, 15)
                a8.Font = Enum.Font.RobotoMono
                a8.PlaceholderColor3 = Color3.new(0.764706, 0.764706, 0.764706)
                a8.PlaceholderText = "B"
                a8.Text = ""
                a8.TextColor3 = Color3.new(1, 1, 1)
                a8.TextSize = 14
                a9.Name = "Rainbow"
                a9.Parent = a1
                a9.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                a9.BorderColor3 = Color3.new(0, 0, 0)
                a9.Position = UDim2.new(0.0469999984, 0, 0.720000029, 0)
                a9.Size = UDim2.new(0, 13, 0, 13)
                a9.AutoButtonColor = false
                a9.Font = Enum.Font.RobotoMono
                a9.Text = ""
                a9.TextColor3 = Color3.new(1, 1, 1)
                a9.TextSize = 14
                a9.TextStrokeTransparency = 0
                X.Parent = a9
                X.BackgroundColor3 = Color3.new(1, 1, 1)
                X.BackgroundTransparency = 1
                X.Position = UDim2.new(1.83384347, 0, -0.0150005631, 0)
                X.Size = UDim2.new(0, 67, 0, 13)
                X.Font = Enum.Font.RobotoMono
                X.Text = "Rainbow"
                X.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                X.TextSize = 14
                X.TextStrokeTransparency = 0.40000000596046
                X.TextXAlignment = Enum.TextXAlignment.Left
                local aa = game:GetService("Players").LocalPlayer
                local ab = aa:GetMouse()
                local ac = false
                local function ad(ae, af, ag)
                    if ae then
                        ae = ae ~= ae and 0 or (tonumber(ae) or 0)
                        if ag then
                            return math.clamp(ae, 0, 360)
                        else
                            return math.clamp(ae, 0, af and 255 or 1)
                        end
                    end
                end
                local function ah()
                    local ai = Color3.fromRGB(tonumber(a6.Text), tonumber(a7.Text), tonumber(a8.Text))
                    a0.BackgroundColor3 = ai
                    T(ai)
                    return ai
                end
                local aj = false
                local function ak(D, E)
                    a0.BackgroundColor3 = D
                    local function al(ai)
                        if ai then
                            local am, an, ao = Color3.toHSV(ai)
                            local ap, aq, E =
                                math.floor(ai.r * 255 + 0.5),
                                math.floor(ai.g * 255 + 0.5),
                                math.floor(ai.b * 255 + 0.5)
                            a6.Text = ap
                            a7.Text = aq
                            a8.Text = E
                            local ar = a2.AbsoluteSize
                            local as = 360 / ar.X
                            a3.Position = UDim2.new(0, ar.X - am * 360 / as, 0, ar.Y - an * 360 / as)
                        end
                    end
                    al(D)
                    T(D)
                    if not E then
                        y(a9, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                        counter = 0
                    else
                        y(a9, {BackgroundColor3 = getgenv().WindowThemeColor})
                    end
                    aj = E or false
                    getgenv().ArsoniaSettings[a] = {SetVal = ak, Val = {a0.BackgroundColor3, aj}}
                end
                local function al(ai)
                    if ai then
                        local am, an, ao = Color3.toHSV(ai)
                        local ap, aq, E =
                            math.floor(ai.r * 255 + 0.5),
                            math.floor(ai.g * 255 + 0.5),
                            math.floor(ai.b * 255 + 0.5)
                        a6.Text = ap
                        a7.Text = aq
                        a8.Text = E
                        local ar = a2.AbsoluteSize
                        local as = 360 / ar.X
                        a3.Position = UDim2.new(0, ar.X - am * 360 / as, 0, ar.Y - an * 360 / as)
                        getgenv().ArsoniaSettings[a] = {SetVal = ak, Val = {a0.BackgroundColor3, aj}}
                    end
                end
                local function at()
                    local au = Vector2.new(ab.X, ab.Y)
                    local av = a2.AbsolutePosition
                    local ar = a2.AbsoluteSize
                    if au.X < av.X + ar.X and au.X > av.X and (au.Y < av.Y + ar.Y and au.Y > av.Y) then
                        local ar = a2.AbsoluteSize
                        g.MouseIconEnabled = false
                        local as = 360 / ar.X
                        local aw = Vector2.new(ab.X, ab.Y) - (a2.AbsolutePosition + ar / 2)
                        local ax = math.abs((aw.X * as - 180) / 360)
                        local ay = math.abs((aw.Y * as - 180) / 360)
                        local ai = Color3.fromHSV(ax, ay, 1)
                        a0.BackgroundColor3 = ai
                        T(ai)
                        a3.Position =
                            UDim2.new(0, math.clamp(aw.X + ar.X / 2, 0, ar.X), 0, math.clamp(aw.Y + ar.Y / 2, 0, ar.Y))
                        getgenv().ArsoniaSettings[a] = {SetVal = ak, Val = {a0.BackgroundColor3, aj}}
                        return ai
                    end
                    g.MouseIconEnabled = true
                    return nil
                end
                if _ and type(_) == "userdata" then
                    al(_)
                else
                    T = _
                    al(Color3.fromRGB(255, 255, 255))
                end
                ah()
                a0.MouseButton1Click:Connect(
                    function()
                        if k.Visible then
                            y(k, {Size = UDim2.new(0, 111, 0, 0)})
                            wait(0.4)
                            k.Visible = false
                        else
                            k.Visible = true
                            y(k, {Size = UDim2.new(0, 111, 0, 144)})
                        end
                    end
                )
                a9.MouseButton1Click:Connect(
                    function()
                        if aj then
                            y(a9, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                            counter = 0
                        else
                            y(a9, {BackgroundColor3 = getgenv().WindowThemeColor})
                        end
                        aj = not aj
                        getgenv().ArsoniaSettings[a] = {SetVal = ak, Val = {a0.BackgroundColor3, aj}}
                    end
                )
                getgenv().ArsoniaSettings[a] = {SetVal = ak, Val = {a0.BackgroundColor3, aj}}
                spawn(
                    function()
                        h.RenderStepped:Connect(
                            function()
                                if aj then
                                    al(RainbowCum)
                                end
                            end
                        )
                    end
                )
                ab.Move:Connect(
                    function()
                        if g:IsMouseButtonPressed(0) and k.Visible then
                            al(at())
                        else
                            g.MouseIconEnabled = true
                        end
                    end
                )
                a6:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        local aA = a6.Text
                        if #aA ~= 0 then
                            a6.Text = ad(aA, true)
                            al(ah())
                        end
                    end
                )
                a7:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        local aA = a7.Text
                        if #aA ~= 0 then
                            a7.Text = ad(aA, true)
                            al(ah())
                        end
                    end
                )
                a8:GetPropertyChangedSignal("Text"):Connect(
                    function()
                        local aA = a8.Text
                        if #aA ~= 0 then
                            a8.Text = ad(aA, true)
                            al(ah())
                        end
                    end
                )
            end
            function S:Dropdown(pressf, tbllol, funclol)
                if #tbllol > 50 then  
                    local aB = Instance.new("TextLabel")
                    local U = Instance.new("TextButton")
                    local l = Instance.new("ScrollingFrame")
                    local aC = Instance.new("UIListLayout")
                    local T = funclol
                    aB.Name = "Dropdown"
                    aB.Parent = P
                    aB.BackgroundColor3 = Color3.new(1, 1, 1)
                    aB.BackgroundTransparency = 1
                    aB.Position = UDim2.new(0, 0, 2.39047599, 0)
                    aB.Size = UDim2.new(0, 178, 0, 39)
                    aB.ZIndex = 2
                    aB.Font = Enum.Font.RobotoMono
                    aB.Text = pressf
                    aB.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                    aB.TextSize = 14
                    aB.TextStrokeTransparency = 0.40000000596046
                    aB.TextXAlignment = Enum.TextXAlignment.Left
                    aB.TextYAlignment = Enum.TextYAlignment.Top
                    U.Name = "Button"
                    U.Parent = aB
                    U.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                    U.BorderColor3 = Color3.new(0, 0, 0)
                    U.Position = UDim2.new(-0.0140000004, 0, 0.48, 0)
                    U.Size = UDim2.new(0, 223, 0, 18)
                    U.AutoButtonColor = false
                    U.Font = Enum.Font.RobotoMono
                    U.Text = " " .. tbllol[1]
                    U.TextColor3 = Color3.new(1, 1, 1)
                    U.TextSize = 14
                    U.TextStrokeTransparency = 0.40000000596046
                    U.TextXAlignment = Enum.TextXAlignment.Left
                    l.Parent = U
                    l.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                    l.BorderColor3 = Color3.new(0, 0, 0)
                    l.BorderSizePixel = 1
                    l.Position = UDim2.new(0, 0, 1.05, 0)
                    l.Size = UDim2.new(0, 223, 0, 0)
                    l.Visible = false
                    l.ZIndex = 2
                    l.ScrollingDirection = "Y"
                    aC.Parent = l
                    aC.SortOrder = Enum.SortOrder.LayoutOrder
                    local function aG(aH, aI)
                        y(l, {Size = UDim2.new(0, 223, 0, 400)})
                        for _, a0 in next, l:GetChildren() do
                            if a0:IsA("TextButton") and a0 ~= U then
                                y(a0, {Size = UDim2.new(0, 223, 0, aH)})
                            end
                        end
                        wait(aI)
                        l.Visible = not l.Visible
                    end
                    local Y = tbllol[1]
                    local aJ = {}
                    local funnn2 = function(D)
                        aJ[D]()
                        aG(0, 0.1)
                    end
                    function createfunc(a, aK)
                        local U = Instance.new("TextButton")
                        U.Name = "Button"
                        U.Parent = l
                        U.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                        U.BorderColor3 = Color3.new(0, 0, 0)
                        U.BorderSizePixel = 0
                        U.Position = UDim2.new(-0.0140000004, 0, 0.519999981, 0)
                        U.Size = UDim2.new(0, 223, 0, 0)
                        U.AutoButtonColor = false
                        U.Font = Enum.Font.RobotoMono
                        U.Text = " " .. a
                        U.TextColor3 = Color3.new(1, 1, 1)
                        U.TextSize = 14
                        U.TextStrokeTransparency = 0.40000000596046
                        U.TextXAlignment = Enum.TextXAlignment.Left
                        local function aL()
                            aK(a)
                            Y = a
                            U.Visible = false
                            l.Parent.Text = " " .. a
                            aG(0, 0.09)
                            for t, a0 in next, l:GetChildren() do
                                if a0:IsA("TextButton") and a0 ~= U then
                                    a0.Visible = true
                                end
                            end
                            getgenv().ArsoniaSettings[pressf] = {SetVal = funnn2, Val = {Y}}
                        end
                        aJ[a] = aL
                        U.MouseButton1Click:Connect(aL)
                        return U
                    end
                    T(tbllol[1])
                    U.MouseButton1Click:Connect(
                        function()
                            if l.Visible then
                                aG(0, 0.1)
                                wait(0.15)
                            else
                                aG(18, 0.02)
                            end
                        end
                    )
                    l.CanvasSize = UDim2.new(#tbllol - 11, #tbllol - 11, #tbllol - 11, #tbllol - 11)
                    for _, a0 in next, l:GetChildren() do
                        if a0:IsA("TextButton") and a0 ~= U then
                            a0.Visible = true
                        end
                    end
                    for aM, aN in next, tbllol do
                        local T = createfunc(aN, T)
                        if aM == 1 then
                            T.Visible = false
                        end
                    end
                    getgenv().ArsoniaSettings[pressf] = {SetVal = funnn2, Val = {Y}}
                else
                    local aB = Instance.new("TextLabel")
                    local U = Instance.new("TextButton")
                    local l = Instance.new("Frame")
                    local aC = Instance.new("UIListLayout")
                    local T = funclol
                    aB.Name = "Dropdown"
                    aB.Parent = P
                    aB.BackgroundColor3 = Color3.new(1, 1, 1)
                    aB.BackgroundTransparency = 1
                    aB.Position = UDim2.new(0, 0, 2.39047599, 0)
                    aB.Size = UDim2.new(0, 178, 0, 39)
                    aB.ZIndex = 2
                    aB.Font = Enum.Font.RobotoMono
                    aB.Text = pressf
                    aB.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                    aB.TextSize = 14
                    aB.TextStrokeTransparency = 0.40000000596046
                    aB.TextXAlignment = Enum.TextXAlignment.Left
                    aB.TextYAlignment = Enum.TextYAlignment.Top
                    U.Name = "Button"
                    U.Parent = aB
                    U.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                    U.BorderColor3 = Color3.new(0, 0, 0)
                    U.Position = UDim2.new(-0.0140000004, 0, 0.48, 0)
                    U.Size = UDim2.new(0, 223, 0, 18)
                    U.AutoButtonColor = false
                    U.Font = Enum.Font.RobotoMono
                    U.Text = " " .. tbllol[1]
                    U.TextColor3 = Color3.new(1, 1, 1)
                    U.TextSize = 14
                    U.TextStrokeTransparency = 0.40000000596046
                    U.TextXAlignment = Enum.TextXAlignment.Left
                    l.Parent = U
                    l.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                    l.BorderColor3 = Color3.new(0, 0, 0)
                    l.BorderSizePixel = 1
                    l.Position = UDim2.new(0, 0, 1.05, 0)
                    l.Size = UDim2.new(0, 223, 0, 0)
                    l.Visible = false
                    l.ZIndex = 2
                    aC.Parent = l
                    aC.SortOrder = Enum.SortOrder.LayoutOrder
                    local function aG(aH, aI)
                        y(l, {Size = UDim2.new(0, 223, 0, (#tbllol - 1) * aH)})
                        for t, a0 in next, l:GetChildren() do
                            if a0:IsA("TextButton") and a0 ~= U then
                                y(a0, {Size = UDim2.new(0, 223, 0, aH)})
                            end
                        end
                        wait(aI)
                        l.Visible = not l.Visible
                    end
                    local Y = tbllol[1]
                    local aJ = {}
                    local funnn2 = function(D)
                        aJ[D]()
                        aG(0, 0.1)
                    end
                    function createfunc(a, aK)
                        local U = Instance.new("TextButton")
                        U.Name = "Button"
                        U.Parent = l
                        U.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
                        U.BorderColor3 = Color3.new(0, 0, 0)
                        U.BorderSizePixel = 0
                        U.Position = UDim2.new(-0.0140000004, 0, 0.519999981, 0)
                        U.Size = UDim2.new(0, 223, 0, 0)
                        U.AutoButtonColor = false
                        U.Font = Enum.Font.RobotoMono
                        U.Text = " " .. a
                        U.TextColor3 = Color3.new(1, 1, 1)
                        U.TextSize = 14
                        U.TextStrokeTransparency = 0.40000000596046
                        U.TextXAlignment = Enum.TextXAlignment.Left
                        local function aL()
                            aK(a)
                            Y = a
                            U.Visible = false
                            l.Parent.Text = " " .. a
                            aG(0, 0.09)
                            for t, a0 in next, l:GetChildren() do
                                if a0:IsA("TextButton") and a0 ~= U then
                                    a0.Visible = true
                                end
                            end
                            getgenv().ArsoniaSettings[pressf] = {SetVal = funnn2, Val = {Y}}
                        end
                        aJ[a] = aL
                        U.MouseButton1Click:Connect(aL)
                        return U
                    end
                    T(tbllol[1])
                    U.MouseButton1Click:Connect(
                        function()
                            if l.Visible then
                                aG(0, 0.1)
                                wait(0.15)
                            else
                                aG(18, 0.02)
                            end
                        end
                    )
                    for _, a0 in next, l:GetChildren() do
                        if a0:IsA("TextButton") and a0 ~= U then
                            a0.Visible = true
                        end
                    end
                    for aM, aN in next, tbllol do
                        local T = createfunc(aN, T)
                        if aM == 1 then
                            T.Visible = false
                        end
                    end
                    getgenv().ArsoniaSettings[pressf] = {SetVal = funnn2, Val = {Y}}
                end
            end
            function S:Keybind(a, aO, T)
                local aP = Instance.new("TextLabel")
                local U = Instance.new("TextButton")
                local aQ = nil
                local aR = false
                local aS = false
                aP.Name = "Keybind"
                aP.Parent = P
                aP.BackgroundColor3 = Color3.new(1, 1, 1)
                aP.BackgroundTransparency = 1
                aP.Position = UDim2.new(0, 0, 1.98395073, 0)
                aP.Size = UDim2.new(0, 102, 0, 12)
                aP.Font = Enum.Font.RobotoMono
                aP.Text = a
                aP.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                aP.TextSize = 14
                aP.TextStrokeTransparency = 0.4
                aP.TextXAlignment = Enum.TextXAlignment.Left
                U.Name = "Button"
                U.Parent = aP
                U.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                U.BackgroundTransparency = 1
                U.BorderColor3 = Color3.new(0, 0, 0)
                U.Position = UDim2.new(1.35386384, 0, -0.298538178, 0)
                U.Size = UDim2.new(0, 82, 0, 18)
                U.AutoButtonColor = false
                U.Font = Enum.Font.RobotoMono
                U.Text = "None"
                U.TextColor3 = Color3.new(1, 1, 1)
                U.TextSize = 14
                U.TextStrokeTransparency = 0.4
                U.TextXAlignment = Enum.TextXAlignment.Right
                local fucku = function(aV)
                    pcall(function()
                        KeyCodeName = aV
                        U.Text = KeyCodeName
                        aQ = aV
                        aS = false
                        getgenv().ArsoniaSettings[a] = {SetVal = fucku, Val = {KeyCodeName}}
                    end)
                end
                getgenv().ArsoniaSettings[a] = {SetVal = fucku, Val = {KeyCodeName}}
                U.MouseButton1Click:Connect(
                    function()
                        pcall(function()
                            if aS then
                                U.Text = "None"
                            else
                                U.Text = "..."
                            end
                            aQ = nil
                            aS = not aS
                        end)
                    end
                )
                g.InputBegan:Connect(
                    function(aW)
                        pcall(function()
                            if aS and aW.UserInputType == Enum.UserInputType.Keyboard then
                                KeyCodeName = aW.KeyCode.Name
                                U.Text = KeyCodeName
                                aS = false
                                aQ = aW
                                getgenv().ArsoniaSettings[a] = {SetVal = fucku, Val = {KeyCodeName}}
                            end
                        end)
                    end
                )
                g.InputBegan:Connect(
                    function(aW)
                        pcall(function()
                            if aW == aQ or aW.KeyCode == Enum.KeyCode[aQ] or aW.KeyCode == UserInputTypeEnum[aQ] then
                                aR = true
                                T(aR, U.Text)
                            end
                        end)
                    end
                )
                g.InputEnded:Connect(
                    function(aW)
                        pcall(function()
                            if aW == aQ or aW.KeyCode == Enum.KeyCode[aQ] or aW.KeyCode == UserInputTypeEnum[aQ] then
                                aR = false
                                T(aR, U.Text)
                            end
                        end)
                    end
                )
                if aO then
                    pcall(function()
                        KeyCodeName = aO
                        U.Text = KeyCodeName
                        aQ = aO
                        aS = false
                    end)
                end
            end
            function S:Slider(a, aX, aY, aO, T)
                aO = aO - aX
                local aZ = Instance.new("TextLabel")
                local W = Instance.new("TextButton")
                local a_ = Instance.new("TextButton")
                local a0 = Instance.new("TextButton")
                local b0 = Instance.new("TextBox")
                local b1 = false
                local b2
                aY = aY - aX
                aZ.Name = "Slider"
                aZ.Parent = P
                aZ.BackgroundColor3 = Color3.new(1, 1, 1)
                aZ.BackgroundTransparency = 1
                aZ.Position = UDim2.new(0, 0, 1.86666656, 0)
                aZ.Size = UDim2.new(0, 178, 0, 39)
                aZ.Font = Enum.Font.RobotoMono
                aZ.Text = a
                aZ.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                aZ.TextSize = 14
                aZ.TextStrokeTransparency = 0.4
                aZ.TextXAlignment = Enum.TextXAlignment.Left
                aZ.TextYAlignment = Enum.TextYAlignment.Top
                a_.Name = "Slider"
                a_.Parent = aZ
                a_.Active = false
                a_.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                a_.BorderColor3 = Color3.new(0, 0, 0)
                a_.ClipsDescendants = true
                a_.Position = UDim2.new(0, 0, 0.532051325, 0)
                a_.Size = UDim2.new(0, 223, 0, 18)
                a_.AutoButtonColor = false
                a_.Font = Enum.Font.RobotoMono
                a_.Text = ""
                a_.TextColor3 = Color3.new(1, 1, 1)
                a_.TextSize = 14
                a_.TextStrokeTransparency = 0.4
                a0.Parent = a_
                a0.BackgroundColor3 = getgenv().WindowThemeColor
                a0.BorderSizePixel = 0
                a0.Size = UDim2.new(0, 0, 1, 0)
                a0.AutoButtonColor = false
                a0.Font = Enum.Font.RobotoMono
                a0.Text = ""
                a0.TextColor3 = Color3.new(0, 0, 0)
                a0.TextSize = 14
                a0.TextStrokeTransparency = 0.4
                b0.Name = "Num"
                b0.Parent = aZ
                b0.Active = true
                b0.BackgroundColor3 = Color3.new(1, 1, 1)
                b0.BackgroundTransparency = 1
                b0.Position = UDim2.new(0, 110, 0, 0)
                b0.Size = UDim2.new(0, 113, 0, 18)
                b0.Font = Enum.Font.RobotoMono
                b0.Text = tostring(aX)
                b0.TextColor3 = Color3.new(1, 1, 1)
                b0.TextSize = 14
                b0.TextStrokeTransparency = 0.4
                b0.TextXAlignment = 1
                local function b3(D)
                    local b4 = a0.Position
                    local b5 = (D - aX) * 100 / aY / 100
                    percentage = math.clamp(b5, 0, 1)
                    a0:TweenSizeAndPosition(
                        UDim2.new(percentage, 0, 1, 0),
                        UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                        nil,
                        nil,
                        0.08
                    )
                    local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                    if aX == b6 then
                        b0.Text = aX
                    else
                        b0.Text = b6
                    end
                    T(tonumber(b0.Text))
                    getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {tonumber(b0.Text)}}
                end
                b0.FocusLost:Connect(
                    function()
                        if not tonumber(b0.Text) then
                            local b4 = a0.Position
                            local b5 = aO * 100 / aY / 100
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            T(tonumber(b0.Text))
                            getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {tonumber(b0.Text)}}
                        else
                            local b4 = a0.Position
                            local b5 = (tonumber(b0.Text) - aX) * 100 / aY / 100
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            T(tonumber(b0.Text))
                            getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {tonumber(b0.Text)}}
                        end
                    end
                )
                function snap(b7, b8)
                    if b8 == 0 then
                        return b7
                    else
                        return math.floor(b7 / b8 + 0.5) * b8
                    end
                end
                a_.MouseButton1Up:Connect(
                    function()
                        b1 = false
                    end
                )
                a_.MouseEnter:Connect(
                    function()
                        a_.MouseButton1Down:Connect(
                            function()
                                b1 = true
                            end
                        )
                    end
                )
                a0.MouseButton1Up:Connect(
                    function()
                        b1 = false
                    end
                )
                a0.MouseEnter:Connect(
                    function()
                        a0.MouseButton1Down:Connect(
                            function()
                                b1 = true
                            end
                        )
                    end
                )
                g.InputEnded:Connect(
                    function(v)
                        if v.UserInputType == Enum.UserInputType.MouseButton1 then
                            b1 = false
                        end
                    end
                )
                h.RenderStepped:Connect(
                    function()
                        a0.BackgroundColor3 = getgenv().WindowThemeColor
                        if b1 then
                            local b9 = g:GetMouseLocation().X
                            local b4 = a0.Position
                            local ba = a_.AbsoluteSize.X
                            local bb = a_.AbsolutePosition.X
                            local b5 = (b9 - bb) / ba
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            if b2 ~= tonumber(b0.Text) then
                                b2 = tonumber(b0.Text)
                                T(tonumber(b0.Text))
                                getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {tonumber(b0.Text)}}
                            end
                        end
                    end
                )
                if aO then
                    local b4 = a0.Position
                    local b5 = aO * 100 / aY / 100
                    percentage = math.clamp(b5, 0, 1)
                    a0:TweenSizeAndPosition(
                        UDim2.new(percentage, 0, 1, 0),
                        UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                        nil,
                        nil,
                        0.08
                    )
                    local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                    if aX == b6 then
                        b0.Text = aX
                    else
                        b0.Text = b6
                    end
                    T(tonumber(b0.Text))
                end
                getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {tonumber(b0.Text)}}
            end
            function S:ToggleSlider(a, aX, aY, aO, T)
                aO = tonumber(aO - aX) or aX
                local aZ = Instance.new("TextLabel")
                local W = Instance.new("TextButton")
                local a_ = Instance.new("TextButton")
                local a0 = Instance.new("TextButton")
                local b0 = Instance.new("TextBox")
                local b1 = false
                local b2
                aY = aY - aX
                local bc = false
                aZ.Name = "Slider"
                aZ.Parent = P
                aZ.BackgroundColor3 = Color3.new(1, 1, 1)
                aZ.BackgroundTransparency = 1
                aZ.Position = UDim2.new(0, 0, 1.86666656, 0)
                aZ.Size = UDim2.new(0, 178, 0, 39)
                aZ.Font = Enum.Font.RobotoMono
                aZ.Text = a
                aZ.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                aZ.TextSize = 14
                aZ.TextStrokeTransparency = 0.4
                aZ.TextXAlignment = Enum.TextXAlignment.Left
                aZ.TextYAlignment = Enum.TextYAlignment.Top
                W.Name = "Toggle"
                W.Parent = aZ
                W.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                W.BorderColor3 = Color3.new(0, 0, 0)
                W.Position = UDim2.new(1.1768539, 0, -0.0112500004, 0)
                W.Size = UDim2.new(0, 13, 0, 13)
                W.AutoButtonColor = false
                W.Font = Enum.Font.RobotoMono
                W.Text = ""
                W.TextColor3 = Color3.new(1, 1, 1)
                W.TextSize = 14
                W.TextStrokeTransparency = 0.4
                a_.Name = "Slider"
                a_.Parent = aZ
                a_.Active = false
                a_.BackgroundColor3 = Color3.new(0.167, 0.167, 0.167)
                a_.BorderColor3 = Color3.new(0, 0, 0)
                a_.ClipsDescendants = true
                a_.Position = UDim2.new(0, 0, 0.532051325, 0)
                a_.Size = UDim2.new(0, 223, 0, 18)
                a_.AutoButtonColor = false
                a_.Font = Enum.Font.RobotoMono
                a_.Text = ""
                a_.TextColor3 = Color3.new(1, 1, 1)
                a_.TextSize = 14
                a_.TextStrokeTransparency = 0.4
                a0.Parent = a_
                a0.BackgroundColor3 = getgenv().WindowThemeColor
                a0.BorderSizePixel = 0
                a0.Size = UDim2.new(0, 0, 1, 0)
                a0.AutoButtonColor = false
                a0.Font = Enum.Font.RobotoMono
                a0.Text = ""
                a0.TextColor3 = Color3.new(0, 0, 0)
                a0.TextSize = 14
                a0.TextStrokeTransparency = 0.4
                b0.Name = "Num"
                b0.Parent = aZ
                b0.Active = true
                b0.BackgroundColor3 = Color3.new(1, 1, 1)
                b0.BackgroundTransparency = 1
                b0.Position = UDim2.new(0, 110, 0, 0)
                b0.Size = UDim2.new(0, 95, 0, 13)
                b0.Font = Enum.Font.RobotoMono
                b0.Text = tostring(aX)
                b0.TextColor3 = Color3.new(1, 1, 1)
                b0.TextSize = 14
                b0.TextStrokeTransparency = 0.4
                b0.TextXAlignment = 1
                local function b3(D, E)
                    local b4 = a0.Position
                    local b5 = (E - aX) * 100 / aY / 100
                    percentage = math.clamp(b5, 0, 1)
                    a0:TweenSizeAndPosition(
                        UDim2.new(percentage, 0, 1, 0),
                        UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                        nil,
                        nil,
                        0.08
                    )
                    local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                    if aX == b6 then
                        b0.Text = aX
                    else
                        b0.Text = b6
                    end
                    if not D then
                        y(W, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                    else
                        y(W, {BackgroundColor3 = getgenv().WindowThemeColor})
                    end
                    bc = D
                    T(bc, tonumber(b0.Text))
                    getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
                end
                b0.FocusLost:Connect(
                    function()
                        if not tonumber(b0.Text) then
                            local b4 = a0.Position
                            local b5 = aO * 100 / aY / 100
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            T(bc, tonumber(b0.Text))
                            getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
                        else
                            local b4 = a0.Position
                            local b5 = (tonumber(b0.Text) - aX) * 100 / aY / 100
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            T(bc, tonumber(b0.Text))
                            getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
                        end
                    end
                )
                g.InputEnded:Connect(
                    function(v)
                        if v.UserInputType == Enum.UserInputType.MouseButton1 then
                            b1 = false
                        end
                    end
                )
                W.MouseButton1Click:Connect(
                    function()
                        if bc then
                            y(W, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
                        else
                            y(W, {BackgroundColor3 = getgenv().WindowThemeColor})
                        end
                        bc = not bc
                        T(bc, tonumber(b0.Text))
                        getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
                    end
                )
                function snap(b7, b8)
                    if b8 == 0 then
                        return b7
                    else
                        return math.floor(b7 / b8 + 0.5) * b8
                    end
                end
                a_.MouseButton1Up:Connect(
                    function()
                        b1 = false
                    end
                )
                a_.MouseEnter:Connect(
                    function()
                        a_.MouseButton1Down:Connect(
                            function()
                                b1 = true
                            end
                        )
                    end
                )
                a0.MouseButton1Up:Connect(
                    function()
                        b1 = false
                    end
                )
                a0.MouseEnter:Connect(
                    function()
                        a0.MouseButton1Down:Connect(
                            function()
                                b1 = true
                            end
                        )
                    end
                )
                h.RenderStepped:Connect(
                    function()
                        a0.BackgroundColor3 = getgenv().WindowThemeColor
                        if bc then
                            W.BackgroundColor3 = getgenv().WindowThemeColor
                        end
                        if b1 then
                            local b9 = g:GetMouseLocation().X
                            local b4 = a0.Position
                            local ba = a_.AbsoluteSize.X
                            local bb = a_.AbsolutePosition.X
                            local b5 = (b9 - bb) / ba
                            percentage = math.clamp(b5, 0, 1)
                            a0:TweenSizeAndPosition(
                                UDim2.new(percentage, 0, 1, 0),
                                UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                                nil,
                                nil,
                                0.08
                            )
                            local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                            if aX == b6 then
                                b0.Text = aX
                            else
                                b0.Text = b6
                            end
                            if b2 ~= tonumber(b0.Text) then
                                b2 = tonumber(b0.Text)
                                T(bc, tonumber(b0.Text))
                                getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
                            end
                        end
                    end
                )
                if aO then
                    local b4 = a0.Position
                    local b5 = aO * 100 / aY / 100
                    percentage = math.clamp(b5, 0, 1)
                    a0:TweenSizeAndPosition(
                        UDim2.new(percentage, 0, 1, 0),
                        UDim2.new(percentage / 100, -2, b4.Y.Scale, b4.Y.Offset),
                        nil,
                        nil,
                        0.08
                    )
                    local b6 = math.floor(math.floor(aY * percentage * aY) / aY) + aX
                    if aX == b6 then
                        b0.Text = aX
                    else
                        b0.Text = b6
                    end
                    T(bc, tonumber(b0.Text))
                end
                getgenv().ArsoniaSettings[a] = {SetVal = b3, Val = {bc, tonumber(b0.Text)}}
            end
            function S:Textbox(a, aO, T)
                local bd = Instance.new("TextLabel")
                local be = Instance.new("TextBox")
                local l = Instance.new("Frame")
                bd.Name = "Text box"
                bd.Parent = P
                bd.BackgroundColor3 = Color3.new(1, 1, 1)
                bd.BackgroundTransparency = 1
                bd.Position = UDim2.new(0.190909088, 0, 2.13571429, 0)
                bd.Size = UDim2.new(0, 178, 0, 36)
                bd.Font = Enum.Font.RobotoMono
                bd.Text = a
                bd.TextColor3 = Color3.new(0.301961, 0.301961, 0.301961)
                bd.TextSize = 14
                bd.TextStrokeTransparency = 0.4
                bd.TextXAlignment = Enum.TextXAlignment.Left
                bd.TextYAlignment = Enum.TextYAlignment.Top
                be.Parent = bd
                be.BackgroundColor3 = Color3.new(1, 1, 1)
                be.BackgroundTransparency = 1
                be.BorderColor3 = Color3.new(0, 0, 0)
                be.Position = UDim2.new(0, 0, 0.45999992, 0)
                be.Size = UDim2.new(0, 220, 0, 14)
                be.ClearTextOnFocus = false
                be.Font = Enum.Font.SourceSans
                be.PlaceholderColor3 = Color3.new(0.764706, 0.764706, 0.764706)
                be.PlaceholderText = "Type something here!"
                be.Text = aO
                be.TextColor3 = Color3.new(1, 1, 1)
                be.TextSize = 14
                be.TextStrokeTransparency = 0.4
                be.TextXAlignment = Enum.TextXAlignment.Left
                l.Name = "fuck_this_shit_bro"
                l.Parent = be
                l.BackgroundColor3 = getgenv().WindowThemeColor
                l.BorderSizePixel = 0
                l.Position = UDim2.new(0, 0, 1, 0)
                l.Size = UDim2.new(0, 1, 0, 0)
                be.Focused:Connect(
                    function()
                        l.Size = UDim2.new(0, 1, 0, 1)
                        l:TweenSizeAndPosition(UDim2.new(0, 220, 0, 1), UDim2.new(-0.009, 0, 1, 0), nil, nil, 0.5)
                    end
                )
                be.FocusLost:Connect(
                    function()
                        if be.Text == "" then
                            l:TweenSizeAndPosition(UDim2.new(0, 1, 0, 0), UDim2.new(0, 0, 1, 0), nil, nil, 0.5)
                        end
                        T(be.Text)
                    end
                )
                l:TweenSizeAndPosition(UDim2.new(0, 220, 0, 1), UDim2.new(-0.009, 0, 1, 0), nil, nil, 0.5)
                T(aO)
            end
            function S:Textlabel(a)
                local bd = Instance.new("TextLabel")
                local be = Instance.new("TextBox")
                local l = Instance.new("Frame")
                bd.Name = "Text box"
                bd.Parent = P
                bd.BackgroundColor3 = Color3.new(1, 1, 1)
                bd.BackgroundTransparency = 1
                bd.Position = UDim2.new(0.190909088, 0, 2.13571429, 0)
                bd.Size = UDim2.new(0, 178, 0, 17)
                bd.Font = Enum.Font.Code
                bd.Text = a
                bd.TextColor3 = Color3.new(1, 1, 1)
                bd.TextSize = 14
                bd.TextStrokeTransparency = 0.4
                bd.TextXAlignment = Enum.TextXAlignment.Left
                bd.TextYAlignment = Enum.TextYAlignment.Top
                l.Parent = be
                l.BackgroundColor3 = getgenv().WindowThemeColor
                l.BorderSizePixel = 0
                l.Position = UDim2.new(0, 0, 1, 0)
                l.Size = UDim2.new(0, 1, 0, 0)
                function ChangeText(fergrgegeggwrgwrgwrwrg)
                    bd.Text = fergrgegeggwrgwrgwrwrg
                end
                return ChangeText
            end
            return S
        end
        return N
    end
    return I
end
return Library
