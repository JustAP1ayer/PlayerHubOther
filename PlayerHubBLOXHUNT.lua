getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35, 35, 40),
    BrighterMainColor = Color3.fromRGB(40, 40, 45),
    IconsColor = Color3.fromRGB(100, 100, 120),
    Accent = Color3.fromRGB(0, 100, 255),
    DarkText = Color3.fromRGB(170, 170, 170),
    BrightText = Color3.fromRGB(145, 145, 145),
    Font = "Gotham",
    SoundVolume = 0.5,
    HideKey = "LeftAlt"
}
local a =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()
local b = a.Main("P|ayerHub")
local c = b.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local d = c.Section("Important")
local e =
    d.Component(
    "Button",
    "Copy Discord to clipboard",
    function()
        setclipboard("https://discord.gg/nXERxPYUyZ")
    end
)
local e =
    d.Component(
    "Button",
    "Press 'LeftAlt' to Minimize GUI",
    function()
    end
)
local e =
    d.Component(
    "Button",
    "Use Mousescroll to go through pages",
    function()
    end
)
local e =
    d.Component(
    "Button",
    "Support us - Cashapp - $JustAPlayer",
    function()
    end
)
local c = b.Page("Main", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local d = c.Section("Automation")
local f =
    d.Component(
    "Toggle",
    "Autofarm Tokens",
    function(g)
        getgenv().TokenFarmer = g
        while getgenv().TokenFarmer do
            task.wait(0)
            local h = game.Players.LocalPlayer.Character.Head
            for i, j in pairs(game:GetService("Workspace").LavaObby.Token:GetDescendants()) do
                if j.name == "TouchInterest" and j.Parent then
                    firetouchinterest(h, j.Parent, 0)
                    task.wait(0)
                    firetouchinterest(h, j.Parent, 1)
                    break
                end
            end
        end
    end,
    false
)
local d = c.Section("Hunter Tools")
local k = d.Component("Card", "Only Execute Hider ESP once", "If Not it'll Overlap")
local e =
    d.Component(
    "Button",
    "Hider ESP (Press E)",
    function()
        local l = game:GetService("Players")
        local m = game:GetService("UserInputService")
        local n = Enum.KeyCode.E
        local o = Color3.new(0, 0, 1)
        local p = {}
        local function q(r)
            local s = Instance.new("BoxHandleAdornment")
            s.Name = "Outline"
            s.Size = r:GetExtentsSize()
            s.Adornee = r
            s.AlwaysOnTop = true
            s.ZIndex = 5
            s.Color3 = o
            s.Transparency = 0.5
            s.Parent = r
            return s
        end
        local function t(r)
            local s = p[r]
            if s then
                s:Destroy()
                p[r] = nil
            end
        end
        local function u(r)
            if p[r] then
                t(r)
            else
                p[r] = q(r)
            end
        end
        local function v(r)
            local w = r:FindFirstChild("Torso")
            return w and w:IsA("BasePart") and w.BrickColor == BrickColor.new("Bright blue")
        end
        local function x()
            for y, z in ipairs(l:GetPlayers()) do
                local A = z.Character
                if A and A:IsDescendantOf(game.Workspace) and v(A) then
                    u(A)
                else
                    t(A)
                end
            end
        end
        m.InputBegan:Connect(
            function(B, C)
                if not C and B.KeyCode == n then
                    x()
                end
            end
        )
        l.PlayerAdded:Connect(
            function(z)
                z.CharacterAdded:Connect(
                    function(A)
                        if A:IsDescendantOf(game.Workspace) and v(A) then
                            u(A)
                        end
                    end
                )
            end
        )
        l.PlayerRemoving:Connect(
            function(z)
                local A = z.Character
                if A then
                    t(A)
                end
            end
        )
        for y, z in ipairs(l:GetPlayers()) do
            if z.Character and z.Character:IsDescendantOf(game.Workspace) and v(z.Character) then
                u(z.Character)
            end
        end
    end
)
local e =
    d.Component(
    "Button",
    "Teleport to a Hider",
    function()
        local D = BrickColor.new("Bright blue")
        local E = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
        local function F(G)
            local H = G.Character:FindFirstChild("Torso")
            if H and H:IsA("BasePart") and H.BrickColor == D then
                local I = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if I and I:IsA("BasePart") then
                    I.CFrame = CFrame.new(G.Character.HumanoidRootPart.Position)
                    wait(1)
                end
            end
        end
        local J = {}
        for y, G in pairs(game:GetService("Players"):GetPlayers()) do
            if G ~= game:GetService("Players").LocalPlayer and G.Character then
                local H = G.Character:FindFirstChild("Torso")
                if H and H:IsA("BasePart") and H.BrickColor == D then
                    table.insert(J, G)
                end
            end
        end
        if #J > 0 then
            local K = math.random(1, #J)
            local L = J[K]
            F(L)
        end
    end
)
local d = c.Section("Hider Tools")
local f =
    d.Component(
    "Toggle",
    "Auto TP to Safe Zone",
    function(g)
        _G.SafeSpot = g
        while _G.SafeSpot do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-517.594971, 7545.3999786, -69.4001389)
            local M = Instance.new("Part")
            M.Size = Vector3.new(105, 4, 150)
            M.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 2, 0)
            M.Anchored = true
            M.CanCollide = true
            M.Parent = game.Workspace
            wait(0.25)
        end
    end,
    false
)
local k = d.Component("Card", "Only Execute Hunter ESP once ", "If Not it'll Overlap")
local e =
    d.Component(
    "Button",
    "Hunter ESP (Press V)",
    function()
        local l = game:GetService("Players")
        local m = game:GetService("UserInputService")
        local n = Enum.KeyCode.V
        local o = Color3.new(1, 0, 0)
        local p = {}
        local function q(r)
            local s = Instance.new("BoxHandleAdornment")
            s.Name = "Outline"
            s.Size = r:GetExtentsSize()
            s.Adornee = r
            s.AlwaysOnTop = true
            s.ZIndex = 5
            s.Color3 = o
            s.Transparency = 0.5
            s.Parent = r
            return s
        end
        local function t(r)
            local s = p[r]
            if s then
                s:Destroy()
                p[r] = nil
            end
        end
        local function u(r)
            if p[r] then
                t(r)
            else
                p[r] = q(r)
            end
        end
        local function v(r)
            local w = r:FindFirstChild("Torso")
            return w and w:IsA("BasePart") and w.BrickColor == BrickColor.new("Bright red")
        end
        local function x()
            for y, z in ipairs(l:GetPlayers()) do
                local A = z.Character
                if A and A:IsDescendantOf(game.Workspace) and v(A) then
                    u(A)
                else
                    t(A)
                end
            end
        end
        m.InputBegan:Connect(
            function(B, C)
                if not C and B.KeyCode == n then
                    x()
                end
            end
        )
        l.PlayerAdded:Connect(
            function(z)
                z.CharacterAdded:Connect(
                    function(A)
                        if A:IsDescendantOf(game.Workspace) and v(A) then
                            u(A)
                        end
                    end
                )
            end
        )
        l.PlayerRemoving:Connect(
            function(z)
                local A = z.Character
                if A then
                    t(A)
                end
            end
        )
        for y, z in ipairs(l:GetPlayers()) do
            if z.Character and z.Character:IsDescendantOf(game.Workspace) and v(z.Character) then
                u(z.Character)
            end
        end
    end
)
local c = b.Page("Player", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local d = c.Section("Humanoid Modifier")
local N =
    d.Component(
    "Slider2",
    "Walkspeed",
    0,
    250,
    false,
    function(O)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = O
    end,
    18
)
local N =
    d.Component(
    "Slider2",
    "Jumppower",
    0,
    300,
    false,
    function(O)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = O
    end,
    50
)
local N =
    d.Component(
    "Slider2",
    "Gravity",
    0,
    333,
    true,
    function(O)
        game:GetService("Workspace").Gravity = O
    end,
    196.2
)
local N =
    d.Component(
    "Slider2",
    "Hip Height",
    1,
    100,
    false,
    function(O)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = O
    end,
    0
)
local f =
    d.Component(
    "Toggle",
    "Infinite Hit Points",
    function(g)
        _G.InfHP = g
        while _G.InfHP do
            local P = {[1] = "Health", [2] = 5555555}
            game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer(unpack(P))
            wait(0.5)
        end
    end,
    false
)
local f =
    d.Component(
    "Toggle",
    "Infinite Energy",
    function(g)
        _G.InfEnergy = g
        while _G.InfEnergy do
            local P = {[1] = "Energy", [2] = 5555555}
            game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer(unpack(P))
            wait(0.5)
        end
    end,
    false
)
local d = c.Section("Other")
local e =
    d.Component(
    "Button",
    "Click TP Tool",
    function()
        mouse = game.Players.LocalPlayer:GetMouse()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click Teleport"
        tool.Activated:connect(
            function()
                local Q = mouse.Hit + Vector3.new(0, 2.5, 0)
                Q = CFrame.new(Q.X, Q.Y, Q.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Q
            end
        )
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
)
local c = b.Page("Settings", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local d = c.Section("Settings")
local e =
    d.Component(
    "Button",
    "Antiafk/idle",
    function()
        wait(0.5)
        local R = game:service "VirtualUser"
        game:service "Players".LocalPlayer.Idled:connect(
            function()
                R:CaptureController()
                R:ClickButton2(Vector2.new())
            end
        )
        print("Antiafk enabled")
    end
)
local f =
    d.Component(
    "Toggle",
    "3D Rendering (Helps with Device)",
    function(g)
        game:GetService("RunService"):Set3dRenderingEnabled(g)
    end,
    true
)
local e =
    d.Component(
    "Button",
    "YOU SHOULD KYS NOW!",
    function()
        local S = game:GetService("Players")
        local T = S.LocalPlayer
        T.Character.Humanoid.Health = 0
        exit(0)
    end
)
