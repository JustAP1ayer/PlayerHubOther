
local rainbowFrequency = 0.75

local tick = tick()

getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35, 35, 40),
    BrighterMainColor = Color3.fromRGB(40, 40, 45),
    IconsColor = Color3.fromRGB(100, 100, 120),
    Accent = Color3.new(math.sin(tick * rainbowFrequency) * 0.5 + 0.5,
        math.sin(tick * rainbowFrequency + 2 * math.pi / 3) * 0.5 + 0.5,
        math.sin(tick * rainbowFrequency + 4 * math.pi / 3) * 0.5 + 0.5),
    DarkText = Color3.fromRGB(170, 170, 170),
    BrightText = Color3.fromRGB(145, 145, 145),
    Font = "Gotham",
    SoundVolume = 0.5,
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub")
local Page = Main.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Important")

local Button = Section.Component("Button", "Copy Discord to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
end)

local Button = Section.Component("Button", "Press 'LeftAlt' to Minimize GUI", function()
    -- Code
end)

local Button = Section.Component("Button", "Use Mousescroll to go through pages", function()
    -- Code
end)

local Button = Section.Component("Button", "Support us - Cashapp - $JustAPlayer", function()
    -- Code
end)

local Page = Main.Page("Main", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Main Stuff")

local Button = Section.Component("Button", "Redeem all Codes", function()
    local playerData = game:GetService("ReplicatedStorage").PlayerData

    for _, child in ipairs(playerData:GetChildren()) do
        if child:IsA("Folder") and child:FindFirstChild("Codes") then
            for i, codes in pairs(child:FindFirstChild("Codes"):GetChildren()) do
                local args = {
                    [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
                    [2] = tostring(codes.Name)
                }
                game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
            end
            break

        end
    end
end)
local farmspeed = 0.3
Section.Component("Slider2", "Choose farm speed", 0, 5, true, function(value)
    farmspeed = value
end, farmspeed)
local touchfarmspeed = 0.3
Section.Component("Slider2", "Choose touch speed", 0, 5, true, function(value)
    touchfarmspeed = value
end, touchfarmspeed)
Section.Component("Card", "Please Disable farms before teleporting", "This will cause less crashes possibly.")

local Toggle = Section.Component("Toggle", "Farm All Buttons in Current Area", function(bool)
    getgenv().CurrentButtoinFarm = bool;
    while getgenv().CurrentButtoinFarm == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            task.wait(farmspeed)
            for i, fol in pairs(game:GetService("Workspace").Areas:GetChildren()) do
                if fol:IsA("Folder") and fol:FindFirstChild("Buttons") then
                    for i, v in pairs(fol.Buttons:GetDescendants()) do
                        if v.name == "TouchInterest" and v.Parent then
                            if game.Players.LocalPlayer.Character and
                                game.Players.LocalPlayer.Character:FindFirstChild("Head") then
                                firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 0)
                                task.wait(touchfarmspeed)
                                firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 1)
                            end
                        end
                    end
                end
            end
        end
    end
end, false)
local Toggle = Section.Component("Toggle", "Autofarm Multipler (Shit one)", function(bool)
    getgenv().CheapMultiplerFarm = bool;
    while getgenv().CheapMultiplerFarm == true  do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            task.wait(farmspeed)
            for i, v in pairs(game:GetService("Workspace").EventButtonsHolder["Geode Button"]:GetDescendants()) do
                if v.name == "TouchInterest" and v.Parent then
                    if game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Head")  then
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 0)
                        task.wait(touchfarmspeed)
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 1)
                    end
                end
            end
        end
    end
end, false)

local Toggle = Section.Component("Toggle", "All Geode Buttons Farm ", function(bool)
    getgenv().GeodeButtonsFarm = bool;
    while getgenv().GeodeButtonsFarm == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") then
            task.wait(farmspeed)
            for i, v in pairs(game:GetService("Workspace").GeodeButtons:GetDescendants()) do
                if v.name == "TouchInterest" and v.Parent then
                    if game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Head") then
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 0)
                        task.wait(touchfarmspeed)
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 1)
                    end
                end
            end
        end
    end
end, false)

local Toggle = Section.Component("Toggle", "All GrassLands Buttons Farm (L)", function(bool)
    getgenv().GrassLandsButtonsFarm = bool;
    while getgenv().GrassLandsButtonsFarm == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") and game:GetService("Workspace").Areas:FindFirstChild("Grasslands") then
            task.wait(farmspeed)
            for i, v in pairs(game:GetService("Workspace").Areas.Grasslands.Buttons:GetDescendants()) do
                if v.name == "TouchInterest" and v.Parent and game:GetService("Workspace").Areas:FindFirstChild("Grasslands") then
                    if game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Head")  and game:GetService("Workspace").Areas:FindFirstChild("Grasslands") then
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 0)
                        task.wait(touchfarmspeed)
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 1)
                    end
                end
            end
        end
    end
end, false)

local Toggle = Section.Component("Toggle", "All Event Buttons Farm ", function(bool)
    getgenv().EventButtonsFarm = bool;
    while getgenv().EventButtonsFarm == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Head") then

            task.wait(farmspeed)
            for i, v in pairs(game:GetService("Workspace").EventButtonsHolder:GetDescendants()) do
                if v.name == "TouchInterest" and v.Parent then
                    if game.Players.LocalPlayer.Character and
                        game.Players.LocalPlayer.Character:FindFirstChild("Head") then
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 0)
                        task.wait(touchfarmspeed)
                        firetouchinterest(v.Parent, game.Players.LocalPlayer.Character.Head, 1)
                    end
                end
            end
        end
    end
end, false)

local Page = Main.Page("Cframe Teleports", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local Section = Page.Section("Area Teleport")
local Section = Page.Section("Must load all areas")
local Button = Section.Component("Button", "Visually Load All Areas", function()
    for _, folder in pairs(game:GetService("ReplicatedStorage").AreaStorage:GetChildren()) do
        if folder and folder:IsA("Folder") then
            local FolderCopy = folder:Clone()
            FolderCopy.Parent = game:GetService("Workspace").Areas
        end
    end
    local Button = Section.Component("Button", "Grasslands", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-241.464951, 1.2705462, -140.202484, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)
    local Button = Section.Component("Button", "Extraterrestrial Orbits", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(10287.3818, 7286.36865, -8145.33154, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0,
                0.707134247)
    end)
    local Button = Section.Component("Button", "Empyrean Island", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(10323.0771, 4522.64307, 16070.4131, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0,
                -0.866007447)
    end)
    local Button = Section.Component("Button", "Uranium Wastelands", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-14255.6797, 706.097473, -25663.5781, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    local Button = Section.Component("Button", "Cave", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(1099.53809, 2508.32788, -1711.72839, 0.275688112, -0, -0.961247265, 0, 1, -0, 0.961247265, 0,
                0.275688112)
    end)
    local Button = Section.Component("Button", "Crystals Beneaths", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(3320.22314, 1564.15967, 38.2913475, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    local Button = Section.Component("Button", "Mechanical Room", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(56045.4609, 15025.4326, 913.464905, -4.12464142e-05, -0.78799355, 0.615683556, 1,
                -4.12464142e-05, 1.41859055e-05, 1.41859055e-05, 0.615683556, 0.78799355)
    end)
    local Button = Section.Component("Button", "Iron Shafts", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(1621.59204, -1.00000143, -2293.74438, 0.987685978, -0, -0.156449571, 0, 1, -0, 0.156449571, 0,
                0.987685978)
    end)
    local Button = Section.Component("Button", "Quartz Walkway", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-2699.54492, -3126.12964, 10901.0801, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0,
                0.707134247)
    end)
    local Button = Section.Component("Button", "Jade Forest", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-13496.9219, 11279.7646, -12394.8438, 0, 1, 0, 1, 0, 0, 0, 0, -1)
    end)
    local Button = Section.Component("Button", "Obsdian Abyss", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-6633.66309, 5181.11963, 135.854248, 0.987685978, -0, -0.156449571, 0, 1, -0, 0.156449571, 0,
                0.987685978)
    end)
    local Button = Section.Component("Button", "Colour Temple", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-454.929901, 7113.6543, 5211.12988, 0.819155693, 0.573571265, 0, -0.573571265, 0.819155693, -0,
                -0, 0, 1)
    end)
    local Button = Section.Component("Button", "Minty Grooves", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-1676.97729, 412.883209, 2042.9032, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0,
                -1.1920929e-07)
    end)
    local Button = Section.Component("Button", "Smooth Depths", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(20466.5703, 10065.1279, 6081.19141, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)
    local Button = Section.Component("Button", "Icy Palace", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-44279.4805, 10485.0371, 57298.8945, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end)
    local Button = Section.Component("Button", "Floating Purgatory", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-75284.8438, 13827.7178, 15624.7773, 0.890833557, -0, -0.454329818, 0, 1, -0, 0.454329818, 0,
                0.890833557)
    end)
    local Button = Section.Component("Button", "Golden Quarry", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(2023.18884, 950.778503, 5153.01074, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0,
                0.707134247)
    end)
    local Button = Section.Component("Button", "Tetratum", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-10661.7637, 7784.22559, 14399.0498, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0,
                -1.1920929e-07)
    end)
    local Button = Section.Component("Button", "Abyssal Trenches", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(7649.83594, 7062.43604, 6414.7959, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0,
                0.866007268)
    end)
    local Button = Section.Component("Button", "Candyland", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(92987.0078, 15152.792, 24460.1406, -0.788017035, 0, -0.615653694, 0, 1, 0, 0.615653694, 0,
                -0.788017035)
    end)
    local Button = Section.Component("Button", "Geode Site", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(-2079.44214, 39.7351952, -3649.88794, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end)
    local Button = Section.Component("Button", "Voltaic Sector", function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(41.8361168, 7122.98047, 8014.67773, -0.943766475, 0, -0.330612749, 0, 1, 0, 0.330612749, 0,
                -0.943766475)
    end)
end)
local Section = Page.Section("Others")

local Button = Section.Component("Button", "Teleporters1", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-2437.69531, 13782.4766, 733.448608, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

local Button = Section.Component("Button", "Secret Obby Start", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-209.220001, 175.919464, -302.329987, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

local Button = Section.Component("Button", "Celestial Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-121.965118, 286.809753, -205.542328, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

local Button = Section.Component("Button", "ARG Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-154.939774, 181.044983, 51.5971603, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0,
            -1.1920929e-07)
end)
local Button = Section.Component("Button", "Confusion Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(1981.13379, 874.32666, 5123.66504, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
local Button = Section.Component("Button", "Malware Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-486.692871, 105.109238, 533.587036, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

local Button = Section.Component("Button", "Stellarite Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(9987.98633, 7379.73633, -8101.18018, -0.25875926, 0, -0.965941846, 0, 1, 0, 0.965941846, 0,
            -0.25875926)
end)
local Button = Section.Component("Button", "Polybasite Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-349.849976, 122.634766, -266.399963, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)
local Button = Section.Component("Button", "Red Quartz Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-336.649994, 1.63434577, -185.100006, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)
local Button = Section.Component("Button", "Biotite Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-529.150024, 1.5449903, -184.100006, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)
local Button = Section.Component("Button", "Chorma Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-437.043182, 7801.51855, 4635.9585, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0,
            0.707134247)
end)
local Button = Section.Component("Button", "Cytoplasm Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(1307.28552, 2518.00024, -1674.02979, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)
local Button = Section.Component("Button", "Toxant Secret Button", function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-13750.2754, 650.705444, -25586.6738, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0,
            -0.866007447)
end)

local Page = Main.Page("TeleportService", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Teleports to a different game")

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

local Page = Main.Page("Player", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

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
    game.Players.LocalPlayer.Character.Humanoid.Jumppower = jumppower
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
local NoClip = false
Section.Component("Toggle", "Noclip", function(bool)
    NoClip = bool

    wait(0.2)
    local function NoclipLoop()
        if NoClip == true and Players.LocalPlayer.Character ~= nil then
            for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
                    child.CanCollide = false
                end
            end
        end
    end
    local Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
    local characterAddedConnection = game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") -- function happens after character spawns / gets added
        wait(1)
        if NoClip == true then
            NoclipLoop()
        end
    end)

    if NoClip == false then
        characterAddedConnection:Disconnect()
        Noclipping:Disconnect()
    end
end, false)
Section.Component("Button", "Disable Noclip", function()
    NoClip = false
end)
local Section = Page.Section("Other")

local Button = Section.Component("Button", "Click TP Tool", function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Click Teleport"
    tool.Activated:connect(function()
        local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
        pos = CFrame.new(pos.X, pos.Y, pos.Z)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
end)

local Page = Main.Page("Other", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

task.wait(.025)
local Section = Page.Section("Player ESP")

Section.Component("Card", "ESP made by skatbr", "(i modified it a bit)")

Section.Component("Toggle", "Enable Visuals", function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua",
            true))()
    end
    getgenv().Visibility = Value
end, false)

Section.Component("Toggle", "Enable Boxes", function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua",
            true))()
    end
    getgenv().boxESP = Value
end, false)
Section.Component("Toggle", "Enable Names", function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua",
            true))()
    end
    getgenv().nameESP = Value
end, false)
Section.Component("Toggle", "Enable Chams", function(Value)
    if getgenv().esp_loaded == false and Value == true then
        getgenv().esp_loaded = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua",
            true))()
    end
    getgenv().cham = Value
end, false)
Section.Component("Toggle", "Team Colors", function(Value)
    getgenv().useTeamColor = Value
end, false)

task.wait(.025)
local Section = Page.Section("Misc Scripts")

Section.Component("Button", "Owl Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

Section.Component("Button", "Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section.Component("Button", "CMDX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end)
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
local Logs = Main.Logs("Join Logs (Name/DisplayName/UserID)")
local function penisjoingame(player)
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

