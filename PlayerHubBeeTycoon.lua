local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local tweenspeed = 19
local TweenOffsetZ = 0
local TweenOffsetY = 0
local TweenOffsetX = 0
-- ignore how messy it is
getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false
-- for the future idk yet
local function TweenTo(cf, dur)
    local Character = LocalPlayer.Character
    if not Character or not Character:FindFirstChild("HumanoidRootPart") then
        return
    end

    local rootPart = Character:WaitForChild("HumanoidRootPart")
    local direction = (cf.p - rootPart.Position).unit
    local targetCFrame = CFrame.new(cf.p + Vector3.new(TweenOffsetX, TweenOffsetY, TweenOffsetZ))
    local distance = (targetCFrame.p - rootPart.CFrame.p).Magnitude
    local tweenInfo = TweenInfo.new(distance / tweenspeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(rootPart, tweenInfo, {
        CFrame = targetCFrame
    })
    tween:Play()

    return tween
end
if not isfolder("PlayerHub") then
    makefolder("PlayerHub")
end
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

local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub")
local Logs = Main.Logs("Join Logs (Name/DisplayName/UserID)")
local Page = Main.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Important")

Section.Component("Button", "Copy Discord (Support) to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
end)
Section.Component("Button", "Copy Discord (UGC) to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/ugcleaks")
end)
Section.Component("Button", "Press 'LeftAlt' to Minimize GUI", function()
end)

Section.Component("Button", "Use Mousescroll to go through pages", function()
    -- Code
end)

Section.Component("Button", "Support us - Cashapp - $JustAPlayer", function()
    -- Code
end)
local lptycoon
if workspace.Tycoons:FindFirstChild(game.Players.LocalPlayer.Name) then
    lptycoon = workspace.Tycoons:FindFirstChild(game.Players.LocalPlayer.Name)
end
Section.Component("Button", "Copy Robux Donation", function()
    setclipboard("https://www.roblox.com/catalog/11619686666/")
end)

local Page = Main.Page("Main", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Main")
Section.Component("Toggle", "Auto Collect Honey", function(bool)
    getgenv().AutoBringHoney = bool
    while getgenv().AutoBringHoney and task.wait() do
        if lptycoon:FindFirstChild("Honey") then
            for i, v in ipairs(lptycoon:FindFirstChild("Honey"):GetChildren()) do
                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart and
                    v.PrimaryPart then
                    v.PrimaryPart.Transparency = 1
                    v.PrimaryPart.CFrame = game.Players.LocalPlayer.Character.PrimaryPart.CFrame
                end
            end
        end
    end
end)
Section.Component("Toggle", "Auto Sell/Deposit Honey", function(bool)
    getgenv().AutoBSellHoney = bool
    while getgenv().AutoBSellHoney and task.wait(0.1) do
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("Sell")
            :FireServer()

    end
end)
Section.Component("Toggle", "Auto Daily", function(bool)
    getgenv().AutoDailys = bool
    while getgenv().AutoDailys and task.wait(5) do
        local args = {
            [1] = "Normal"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild(
            "SpinFortuneWheel"):FireServer(unpack(args))
        local args = {
            [1] = "Daily"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild(
            "Claim_Chest"):FireServer(unpack(args))
        local args = {
            [1] = "Group"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild(
            "Claim_Chest"):FireServer(unpack(args))

    end
end)
local Mergespeed = 1
Section.Component("Slider2", "Merge Speed", 0, 15, true, function(value)
    Mergespeed = value
end, Mergespeed)
Section.Component("Toggle", "Auto Merge", function(bool)
    getgenv().Merge = bool
    while getgenv().Merge and task.wait(Mergespeed) do
        if lptycoon:FindFirstChild("Buttons") then
            if game.Players.LocalPlayer.Character and
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                pcall(function() -- i fucking hate firetouchinterest sometimes
                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                        lptycoon.Buttons.MergeBees, 0)
                    task.wait(0.1)
                    firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                        lptycoon.Buttons.MergeBees, 1)
                end)
            end

        end
    end
end)
local RateAmount = "1"
local Dropdown = Section.Component("Dropdown", "Rate Amount", {"1", "5"}, false, function(RateSelected, bool)
    if RateSelected == "1" then
        RateAmount = "1"
    elseif RateSelected == "5" then
        RateAmount = "5"
    end
end, false)
local ratespeed = 1
Section.Component("Slider2", "Upgrade Rate Speed", 0, 15, true, function(value)
    ratespeed = value
end, ratespeed)
Section.Component("Toggle", "Auto Upgrade Rates", function(bool)
    getgenv().RateAuto = bool
    while getgenv().RateAuto and task.wait(ratespeed) do
        if lptycoon:FindFirstChild("Buttons") then
            if RateAmount == "1" then
                if game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    pcall(function() -- i fucking hate firetouchinterest sometimes
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons.Faster_Button, 0)
                        task.wait(0.1)
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons.Faster_Button, 1)
                    end)
                end
            elseif RateAmount == "5" then
                if game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    pcall(function() -- i fucking hate firetouchinterest sometimes
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["5_UpgradeSell"], 0)
                        task.wait(0.1)
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["5_UpgradeSell"], 1)
                    end)
                end
            end
        end
    end
end)

local BeeAmount = "1"
local Dropdown = Section.Component("Dropdown", "Bee Amount", {"1", "5", "25"}, false, function(BeeSelected, bool)
    if BeeSelected == "1" then
        BeeAmount = "1"
    elseif BeeSelected == "5" then
        BeeAmount = "5"
    elseif BeeSelected == "25" then
        BeeAmount = "25"
    end
end, false)
local Beespeed = 1
Section.Component("Slider2", "Buy Bee Speed", 0, 15, true, function(value)
    Beespeed = value
end, Beespeed)
Section.Component("Toggle", "Auto Buy Bees", function(bool)
    getgenv().BeeAuto = bool
    while getgenv().BeeAuto and task.wait(Beespeed) do
        if lptycoon:FindFirstChild("Buttons") then
            if BeeAmount == "1" then
                if game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    pcall(function() -- i fucking hate firetouchinterest sometimes
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons.Purchase_Bee, 0)
                        task.wait(0.1)
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons.Purchase_Bee, 1)
                    end)
                end
            elseif BeeAmount == "5" then
                if game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    pcall(function() -- i fucking hate firetouchinterest sometimes
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["Purchase_Bee5"], 0)
                        task.wait(0.1)
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["Purchase_Bee5"], 1)
                    end)
                end
            elseif BeeAmount == "25" then
                if game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    pcall(function() -- i fucking hate firetouchinterest sometimes
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["Purchase_Bee25"], 0)
                        task.wait(0.1)
                        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"),
                            lptycoon.Buttons["Purchase_Bee25"], 1)
                    end)
                end
            end
        end
    end
end)
local obbyinterval = 69
Section.Component("Slider2", "Interval Between Obby", 0, 150, false, function(value)
    obbyinterval = value
end, obbyinterval)
Section.Component("Toggle", "Auto Finish Obby", function(bool)
    getgenv().obby = bool
    while getgenv().obby do
        pcall(function()
            game.Players.LocalPlayer.Character:PivotTo(workspace.Obbies.Winter.Teleport_Touch.CFrame)
            task.wait(2)
            game.Players.LocalPlayer.Character:PivotTo(workspace.Obbies.Winter.Special_Task.Lever.CFrame)
            workspace.Obbies.Winter.Special_Task.Lever.ProximityPrompt.HoldDuration = 0
            workspace.Obbies.Winter.Special_Task.Lever.ProximityPrompt.RequiresLineOfSight = false
            fireproximityprompt(workspace.Obbies.Winter.Special_Task.Lever.ProximityPrompt)
            task.spawn(function()
                for i = 1, 5 do
                    fireproximityprompt(workspace.Obbies.Winter.Special_Task.Lever.ProximityPrompt)
                    task.wait(0.1)
                end
            end)
            task.wait(2)
            game.Players.LocalPlayer.Character:PivotTo(workspace.Obbies.Winter.End_Obby.CFrame)
        end)
        task.wait(obbyinterval)
    end
end)
local Page = Main.Page("LocalPlayer", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Local Player Information")
Section.Component("Card", "LocalPlayer DisplayName:", game:GetService("Players").LocalPlayer.DisplayName)
Section.Component("Card", "LocalPlayer Name:", game:GetService("Players").LocalPlayer.Name)
Section.Component("Card", "LocalPlayer UserID:",
    game:GetService("Players").LocalPlayer.UserId or game:GetService("Players").LocalPlayer.UserID)
Section.Component("Card", "LocalPlayer Account Age:", game:GetService("Players").LocalPlayer.AccountAge)

local Section = Page.Section("Humanoid Modifier")
local SelectedSpeedOption = "Humanoid"
local Dropdown = Section.Component("Dropdown", "Walk Type", {"CFrame", "Humanoid"}, false,
    function(SelectedSpeed, bool)
        if SelectedSpeed == "CFrame" then
            SelectedSpeedOption = "CFrame"
        elseif SelectedSpeed == "Humanoid" then
            SelectedSpeedOption = "Humanoid"
        end
    end, false)
local awalkspeed = 16
Section.Component("Slider2", "Choose Walkspeed", 0, 300, false, function(value)
    awalkspeed = value
end, awalkspeed)
Section.Component("Button", "Walkspeed (Humanoid)", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = awalkspeed
end, false)

Section.Component("Toggle", "Loop Walkspeed", function(bool)
    _G.LoopWs = bool
    while task.wait() and _G.LoopWs == true do
        if SelectedSpeedOption == "CFrame" then
            local hum = game.Players.LocalPlayer.Character and
                            game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
            if game.Players.LocalPlayer.Character and hum and hum.Parent then
                hum = game.Players.LocalPlayer.Character and
                          game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")

                if hum.MoveDirection.Magnitude > 0 then
                    game.Players.LocalPlayer.Character:TranslateBy(
                        hum.MoveDirection * tonumber(awalkspeed) * game:GetService("RunService").Heartbeat:Wait() * 10)
                else
                    game.Players.LocalPlayer.Character:TranslateBy(hum.MoveDirection *
                                                                       game:GetService("RunService").Heartbeat:Wait() *
                                                                       10)
                end
            end
        elseif SelectedSpeedOption == "Humanoid" then
            player = game.Players.LocalPlayer
            character = player.Character or player:WaitForChild("Character")
            humanoid = character:WaitForChild("Humanoid")
            if humanoid then
                walkspeed = tonumber(humanoid.WalkSpeed)
                if walkspeed ~= awalkspeed then
                    humanoid.WalkSpeed = awalkspeed
                end
            end
            task.wait()
        end
    end
end, false)

local jumppower = 50
Section.Component("Slider2", "Choose Jumppower", 0, 600, false, function(value)
    jumppower = value
end, jumppower)
Section.Component("Button", "Jumppower", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumppower
end, false)
Section.Component("Toggle", "Loop Jumppower", function(bool)
    _G.LoopJP = bool
    while _G.LoopJP == true and game.Players.LocalPlayer.Character do
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumppower
        game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumppower
        task.wait()
    end
end, false)

Section.Component("Slider2", "Gravity", 0, 333, true, function(value)
    game:GetService("Workspace").Gravity = value
end, 196.2)

Section.Component("Slider2", "Hip Height", 0, 100, false, function(value)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
end, 2)

Section.Component("Toggle", "Inf Jump", function(bool)
    InfiniteJump = bool

    game:GetService("UserInputService").JumpRequest:Connect(function()
        if InfiniteJump then
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end
    end)
end, false)

local Page = Main.Page("Teleports", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local Section = Page.Section("Player Teleports")
-- for some reason it doesnt work without these
local TeleportPlayerType = "MoveTo"
Section.Component("Dropdown", "Player Teleport Type", {"MoveTo", "CFrame", "PivotTo"}, false,
    function(TeleportType, bool)
        TeleportPlayerType = tostring(TeleportType)
    end, false)
Section.Component("Button", "Teleport to the void (close enough)", function()
    if TeleportPlayerType == "MoveTo" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, -375, 0)) -- most likely the void
    elseif TeleportPlayerType == "CFrame" then
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, -375, 0)
    elseif TeleportPlayerType == "PivotTo" then
        game.Players.LocalPlayer.Character:PivotTo(0, -375, 0)
    end
end)
Section.Component("Button", "Teleport to Safe Area", function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local platform = Instance.new("Part")
        platform.Name = "PlayerHubTeleportPlatform"
        platform.Size = Vector3.new(50, 7, 50)
        platform.Position = Vector3.new(-55282.639679, 571.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        platform.Anchored = true
        platform.CanCollide = true
        platform.Parent = game.Workspace
        if TeleportPlayerType == "MoveTo" then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0,
                1, 0, 0, 0, 1))
        elseif TeleportPlayerType == "CFrame" then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-55282.639679,
                573.8871727, 55107.760048)
        elseif TeleportPlayerType == "PivotTo" then
            game.Players.LocalPlayer.Character:PivotTo(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0,
                1)
        end
    end
end)
Section.Component("Toggle", "Auto Teleport to Safe Area", function(bool)
    _G.AutoTpSafe = bool;
    if _G.AutoTpSafe == true then
        local platform = Instance.new("Part")
        platform.Name = "PlayerHubTeleportPlatform"
        platform.Size = Vector3.new(50, 7, 50)
        platform.Position = Vector3.new(-55282.639679, 571.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        platform.Anchored = true
        platform.CanCollide = true
        platform.Parent = game.Workspace
    end
    while _G.AutoTpSafe == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

            if TeleportPlayerType == "MoveTo" then
                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0,
                    0, 1, 0, 0, 0, 1))
            elseif TeleportPlayerType == "CFrame" then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-55282.639679,
                    573.8871727, 55107.760048)
            elseif TeleportPlayerType == "PivotTo" then
                game.Players.LocalPlayer.Character:PivotTo(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0,
                    0, 0, 1)
            end
        end
        task.wait(0.1)
    end
end, false)
Section.Component("Button", "Delete Safe Area Platform", function()
    for _, platform in ipairs(game.Workspace:GetChildren()) do
        if platform:IsA("Part") and platform.Name == "PlayerHubTeleportPlatform" then
            platform:Destroy()
        end
    end
end)
Section.Component("Button", "Teleport to 0,0,0", function()
    if TeleportPlayerType == "MoveTo" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
    elseif TeleportPlayerType == "CFrame" then
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, 0, 0)
    elseif TeleportPlayerType == "PivotTo" then
        game.Players.LocalPlayer.Character:PivotTo(0, 0, 0)
    end
end)
local XAxis = 0
Section.Component("Slider2", "X Axis", -25000, 25000, false, function(value)
    XAxis = value
end, XAxis)
local YAxis = 0
Section.Component("Slider2", "Y Axis", -2500, 25000, false, function(value)
    YAxis = value
end, YAxis)
local ZAxis = 0
Section.Component("Slider2", "Z Axis", -25000, 25000, false, function(value)
    ZAxis = value
end, ZAxis)
Section.Component("Button", "Teleport to Axis", function()
    if TeleportPlayerType == "MoveTo" then
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(XAxis, YAxis, ZAxis))
    elseif TeleportPlayerType == "CFrame" then
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(XAxis, YAxis, ZAxis)
    elseif TeleportPlayerType == "PivotTo" then
        game.Players.LocalPlayer.Character:PivotTo(XAxis, YAxis, ZAxis)

    end
end)

local Section = Page.Section("Teleport Service")

local pages = game:GetService("AssetService"):GetGamePlacesAsync()
Section.Component("Card", "This makes you teleport to a new", " game and will list every subplace connected ^")
while true do
    for _, place in pairs(pages:GetCurrentPage()) do
        Section.Component("Button", "TP: " .. tostring(place.Name) .. " (" .. tostring(place.PlaceId) .. ")", function()
            game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
        end)
    end
    if pages.IsFinished then
        break
    end
    pages:AdvanceToNextPageAsync()
end
local Page = Main.Page("Settings", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Settings")
_G.JoinLogger = true
Section.Component("Toggle", "Enable Join Logger", function(bool)
    _G.JoinLogger = bool
end, _G.JoinLogger)
Section.Component("Button", "Antiafk/idle", function()
    wait(0.5)
    local bb = game:service 'VirtualUser'
    game:service 'Players'.LocalPlayer.Idled:connect(function()
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end)

    print("Antiafk enabled")
end)
Section.Component("Button", "Antiafk/idle v2", function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
        v:Disable()
    end
end)

Section.Component("Toggle", "3D Rendering (Helps with Device)", function(bool)
    game:GetService("RunService"):Set3dRenderingEnabled(bool)
end, true)

local CurrentFogStart = game.Lighting.FogStart
local CurrentFogEnd = game.Lighting.FogEnd

Section.Component("Toggle", "Disable Fog", function(bool)
    if bool then
        game.Lighting.FogStart = 100000000
        game.Lighting.FogEnd = 100000000
    else
        game.Lighting.FogStart = CurrentFogStart
        game.Lighting.FogEnd = CurrentFogEnd
    end
end, false)

Section.Component("Toggle", "Shadows", function(bool)
    game.Lighting.GlobalShadows = bool
end, true)

Section.Component("Slider2", "Brightness", 0, 30, true, function(value)
    game.Lighting.Brightness = value
end, game.Lighting.Brightness)

Section.Component("Slider2", "Time", 0, 24, true, function(value)
    game.Lighting.ClockTime = value
end, game.Lighting.ClockTime)

Section.Component("Slider2", "Exposure", 0, 25, true, function(value)
    game.Lighting.ExposureCompensation = value
end, game.Lighting.ExposureCompensation)

Section.Component("Slider2", "Geographic Latitude", -180, 180, false, function(value)
    game.Lighting.GeographicLatitude = value
end, game.Lighting.GeographicLatitude)

Section.Component("Button", "YOU SHOULD KYS NOW!", function()
    game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
end)

Section.Component("Toggle", "Moonknight typa shit (Visual)", function(bool)
    _G.MoonKnight = bool
    while _G.MoonKnight == true do
        for i = 0, 23.99, 0.14 do
            game.Lighting.ClockTime = i
            wait(0.0240)
        end
    end
end, false)

function penisjoingame(player)
    if _G.JoinLogger == true then
        Logs.LogWithButtons("-[> New Player has joined the game! <]-")
        task.wait(0.05)
        Logs.LogWithButtons("->| Name: " .. player.Name).Button("Tell Join Info (Usually Tagged)", function()
            args = {
                [1] = player.Name .. " ( DisplayName: " .. player.DisplayName .. " )  has joined the game!",
                [2] = "All"
            }

            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

        end)
        Logs.LogWithButtons("DisplayName: " .. player.DisplayName).Button("Print Join Info", function()
            print(string.format("Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!", player.Name,
                player.DisplayName, player.UserId))
        end)
        task.wait(0.05)
        Logs.LogWithButtons("UserID: " .. player.UserId .. " |<-").Button("Copy Join Info", function()
            setclipboard(string.format("Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!", player.Name,
                player.DisplayName, player.UserId))
        end)
    end
end
game:GetService("Players").PlayerAdded:Connect(penisjoingame)
