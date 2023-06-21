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

local Page = Main.Page("Main", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local Section = Page.Section("Main")

Section.Component("Button", "Webhooks", function()
    local library = loadstring(game:HttpGet(
        ('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

    local w = library:CreateWindow("PlayerHub SBR") -- Creates the window

    local b = w:CreateFolder("Webhook stuff") -- Creates the folder(U will put here your buttons,etc)

    local updatespeed = 300
    b:Slider("Webhook update speed (Seconds)", {
        min = 30, -- min value of the slider
        max = 3600, -- max value of the slider
        precise = false -- max 2 decimals
    }, function(value1)
        updatespeed = value1
    end)
    local webhookURL1
    b:Box("Bridges Webhook", "string", function(value2) -- "number" or "string"
        webhookURL1 = value2
    end)

    b:Toggle("^ Enable Bridges Webhook ^", function(bool)
        BridgeWebhook = bool
        coroutine.wrap(function()
            local httpService = game:GetService("HttpService")
            local request = (syn and syn.request) or request or (http and http.request) or http_request
            local LastBridgeAmount = game:GetService("Players").LocalPlayer.leaderstats["\240\159\140\137Bridges"].Value
            while BridgeWebhook == true do
                local NewBridge = game:GetService("Players").LocalPlayer.leaderstats["\240\159\140\137Bridges"].Value
                request({
                    Url = webhookURL1,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode({
                        content = "",
                        embeds = {{
                            title = "|| " .. game.Players.LocalPlayer.Name .. "  || 's Bridges Update! " ..
                                os.date("%I:%M:%S %p "),
                            description = "Total Bridges Amount: " ..
                                game:GetService("Players").LocalPlayer.leaderstats["\240\159\140\137Bridges"].Value ..
                                " Bridges",
                            color = 0x81ff57,
                            fields = {{

                                name = "Updated amount made",
                                value = "Made " .. tostring(NewBridge - LastBridgeAmount) .. " Bridges ",
                                inline = true
                            }}
                        }}
                    })
                })
                LastBridgeAmount = NewBridge
                task.wait(updatespeed)
            end
        end)()
    end)

    local WebhookURL2
    b:Box("Rebirth Webhook", "string", function(value4) -- "number" or "string"
        WebhookURL2 = value4
    end)

    b:Toggle("^ Enable Rebirth Webhook ^", function(bool)
        RebirthWebhook = bool
        coroutine.wrap(function()
            local httpService = game:GetService("HttpService")
            local request = (syn and syn.request) or request or (http and http.request) or http_request
            local LastRebirthAmount = game:GetService("Players").LocalPlayer.leaderstats["\240\159\145\145Rebirths"]
                                          .Value
            while RebirthWebhook == true do
                local NewRebirth = game:GetService("Players").LocalPlayer.leaderstats["\240\159\145\145Rebirths"].Value
                request({
                    Url = WebhookURL2,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode({
                        content = "",
                        embeds = {{
                            title = "|| " .. game.Players.LocalPlayer.Name .. "  || 's Rebirth Update! " ..
                                os.date("%I:%M:%S %p "),
                            description = "Total Rebirth Amount: " ..
                                game:GetService("Players").LocalPlayer.leaderstats["\240\159\145\145Rebirths"].Value ..
                                " Rebirth",
                            color = 0x81ff57,
                            fields = {{

                                name = "Updated amount made",
                                value = "Made " .. tostring(NewRebirth - LastRebirthAmount) .. " Rebirth ",
                                inline = true
                            }}
                        }}
                    })
                })
                LastRebirthAmount = NewRebirth
                task.wait(updatespeed)
            end
        end)()
    end)

    local WebhookURL3
    b:Box("Cash Webhook", "string", function(value5) -- "number" or "string"
        WebhookURL3 = value5
    end)

    b:Toggle("^ Enable Cash Webhook ^", function(bool)
        CashWebhook = bool
        coroutine.wrap(function()
            local httpService = game:GetService("HttpService")
            local request = (syn and syn.request) or request or (http and http.request) or http_request
            local OldCashAmount = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\184Cash"].Value
            while CashWebhook == true do
                local NewCash = game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\184Cash"].Value
                request({
                    Url = WebhookURL3,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode({
                        content = "",
                        embeds = {{
                            title = "|| " .. game.Players.LocalPlayer.Name .. "  || 's Cash Update! " ..
                                os.date("%I:%M:%S %p "),
                            description = "Total Cash Amount: " ..
                                game:GetService("Players").LocalPlayer.leaderstats["\240\159\146\184Cash"].Value,
                            color = 0x81ff57,
                            fields = {{

                                name = "Updated amount made",
                                value = "Made " .. tostring(NewCash - OldCashAmount) .. " Cash ",
                                inline = true
                            }}
                        }}
                    })
                })
                OldCashAmount = NewCash
                task.wait(updatespeed)
            end
        end)()
    end)
end)
local Section = Page.Section("Automatic")
local raceamounttick = 5
Section.Component("Slider2", "Race Tick Amount", 0, 25, false, function(value)
    raceamounttick = value
end, raceamounttick)
local raceinterval = 0
Section.Component("Slider2", "Race Interval", 0, 5, true, function(value)
    raceinterval = value
end, raceinterval)
Section.Component("Toggle", "Auto Farm Races", function(bool)
    _G.AutofarmRace = bool
    while task.wait(raceinterval) and _G.AutofarmRace == true do
        for i = 1, raceamounttick do
            task.spawn(function()
                local args = {
                    [1] = "Start"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                    "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                    "BridgeService"):WaitForChild("RF"):WaitForChild("Action"):InvokeServer(unpack(args))
                local args = {
                    [1] = "Finish"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                    "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                    "BridgeService"):WaitForChild("RF"):WaitForChild("Action"):InvokeServer(unpack(args))
            end)
        end
    end
end, false)
local upgradeamounttick = 5
Section.Component("Slider2", "Upgrade Tick Amount", 0, 25, false, function(value)
    upgradeamounttick = value
end, upgradeamounttick)
local upginterval = 0.3
Section.Component("Slider2", "Upgrade Interval", 0, 5, true, function(value)
    upginterval = value
end, upginterval)
Section.Component("Toggle", "Auto Buy Bridge Upgrade", function(bool)
    _G.AutoBridge = bool
    while task.wait(upginterval) and _G.AutoBridge == true do
        for i = 1, upgradeamounttick do

            local args = {
                [1] = "BridgePurchase3"
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                "BridgeService"):WaitForChild("RF"):WaitForChild("Purchase"):InvokeServer(unpack(args))
        end
    end
end, false)
Section.Component("Toggle", "Auto Claim Lucky Block", function(bool)
    _G.AutoClaimLuck = bool
    while task.wait(upginterval) and _G.AutoClaimLuck == true do
        for i = 1, upgradeamounttick do
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                "LuckyBlockService"):WaitForChild("RF"):WaitForChild("Claim"):InvokeServer()
        end
    end
end, false)
Section.Component("Toggle", "Auto Buy Speed Upgrade", function(bool)
    _G.AutoSpeed = bool
    while task.wait(0.5) and _G.AutoSpeed == true do
        for i = 1, 3 do

            local args = {
                [1] = "SpeedPurchase3"
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                "SpeedService"):WaitForChild("RF"):WaitForChild("Purchase"):InvokeServer(unpack(args))

        end
    end
end, false)
Section.Component("Toggle", "Auto Rebirth", function(bool)
    _G.AutoRebirth = bool
    while task.wait(0.5) and _G.AutoRebirth == true do
        for i = 1, 3 do
            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services"):WaitForChild(
                "RebirthService"):WaitForChild("RF"):WaitForChild("Rebirth"):InvokeServer()

        end
    end
end, false)
local Section = Page.Section("Egg/Pets")
Section.Component("Toggle", "Auto Equip Best", function(bool)
    _G.AutoBestPet = bool
    while task.wait(1.5) and _G.AutoBestPet == true do
        for i = 1, 3 do
            local args = {
                [1] = "EquipBest",
                [2] = {}
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services")
                :WaitForChild("PetService"):WaitForChild("RF"):WaitForChild("Pet"):InvokeServer(unpack(args))

        end
    end
end, false)
Section.Component("Toggle", "Auto Hatch Earth Egg", function(bool)
    _G.AutoEarthEgg = bool
    while task.wait(0.5) and _G.AutoEarthEgg == true do
        for i = 1, 3 do

            local args = {
                [1] = "Open",
                [2] = {
                    [1] = "EarthEgg",
                    [2] = 1
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services")
                :WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("Egg"):InvokeServer(unpack(args))

        end
    end
end, false)
Section.Component("Toggle", "Auto Hatch Cactus Egg", function(bool)
    _G.AutoCactusEgg = bool
    while task.wait(0.5) and _G.AutoCactusEgg == true do
        for i = 1, 3 do

            local args = {
                [1] = "Open",
                [2] = {
                    [1] = "DesertEgg",
                    [2] = 1
                }
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild(
                "kumarion_knit-rojo@0.2.0"):WaitForChild("knit-rojo"):WaitForChild("Services")
                :WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("Egg"):InvokeServer(unpack(args))

        end
    end
end, false)
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

local Section = Page.Section("Misc Modifiers")
local animspeed = 1
Section.Component("Slider2", "Animation Speed", 0, 300, false, function(value)
    animspeed = value
end, animspeed)
local animspeedup = 1
Section.Component("Slider2", "Animation Update Speed", 0, 15, true, function(value)
    animspeedup = value
end, animspeedup)
Section.Component("Toggle", "Enable Animation Speed", function(bool)
    _G.AutoAnimsSpeed = bool
    while task.wait(animspeedup) and _G.AutoAnimsSpeed == true and game:GetService("Players").LocalPlayer.Character and
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") do
        Char = game:GetService("Players").LocalPlayer.Character
        Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
        for i, v in next, Hum:GetPlayingAnimationTracks() do
            v:AdjustSpeed(animspeed)
        end
    end
end, false)

local Section = Page.Section("Camera")
Section.Component("Slider2", "Min Camera Zoom Distance", 0, 300, false, function(value)
    game:GetService("Players").LocalPlayer.CameraMinZoomDistance = value
end, game:GetService("Players").LocalPlayer.CameraMinZoomDistance or 0.5)

Section.Component("Slider2", "Max Camera Zoom Distance", 0, 30000, false, function(value)
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = value
end, game:GetService("Players").LocalPlayer.CameraMaxZoomDistance or 400)

local camer = "Classic"
local DropdownCam = Section.Component("Dropdown", "Camera Type", {"Regular (Classic)", "First Person"}, false,
    function(selectedcamOption, bool)
        if selectedcamOption == "Regular (Classic)" then
            camer = "Classic"
        elseif selectedcamOption == "First Person" then
            camer = "LockFirstPerson"
        end
        game:GetService("Players").LocalPlayer.CameraMode = camer
    end, false)
Section.Component("Button", "Lock Camera on Character", function()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
end)
local CameraCurrentSubjects
local DropdownCam = Section.Component("Dropdown", "Choose Locked Current Camera Subject",
    {"Character", "Humanoid", "Head", "UpperTorso", "LowerTorso", "HumanoidRootPart", "RightUpperLeg", "LeftHand",
     "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg",
     "LeftUpperLeg", "RightFoot", "RightLowerLeg"}, false, function(CameraCurrentSubject, bool)
        CameraCurrentSubjects = CameraCurrentSubject
    end, false)

Section.Component("Toggle", "Loop Current Camera Subject", function(bool)
    _G.LoopCameraSubject = bool
    while _G.LoopCameraSubject == true and task.wait(0.1) do
        if game.Players.LocalPlayer.Character then
            if CameraCurrentSubjects == "Character" then
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
            elseif CameraCurrentSubjects == "Humanoid" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            elseif CameraCurrentSubjects == "Head" then
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Head")
            elseif CameraCurrentSubjects == "UpperTorso" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
            elseif CameraCurrentSubjects == "LowerTorso" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso")
            elseif CameraCurrentSubjects == "RightUpperLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
            elseif CameraCurrentSubjects == "LeftHand" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
            elseif CameraCurrentSubjects == "RightHand" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
            elseif CameraCurrentSubjects == "LeftLowerArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
            elseif CameraCurrentSubjects == "RightLowerArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
            elseif CameraCurrentSubjects == "LeftUpperArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
            elseif CameraCurrentSubjects == "RightUpperArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
            elseif CameraCurrentSubjects == "LeftFoot" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
            elseif CameraCurrentSubjects == "LeftLowerLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
            elseif CameraCurrentSubjects == "LeftUpperLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
            elseif CameraCurrentSubjects == "RightFoot" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
            elseif CameraCurrentSubjects == "RightLowerLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
            end
        end
    end
end, false)
Section.Component("Button", "Lock Current Camera Subject", function()
    if game.Players.LocalPlayer.Character then
        if CameraCurrentSubjects == "Character" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        elseif CameraCurrentSubjects == "Humanoid" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        elseif CameraCurrentSubjects == "Head" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Head")
        elseif CameraCurrentSubjects == "UpperTorso" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
        elseif CameraCurrentSubjects == "LowerTorso" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso")
        elseif CameraCurrentSubjects == "RightUpperLeg" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "RightUpperLeg")
        elseif CameraCurrentSubjects == "LeftHand" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
        elseif CameraCurrentSubjects == "RightHand" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
        elseif CameraCurrentSubjects == "LeftLowerArm" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "LeftLowerArm")
        elseif CameraCurrentSubjects == "RightLowerArm" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "RightLowerArm")
        elseif CameraCurrentSubjects == "LeftUpperArm" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "LeftUpperArm")
        elseif CameraCurrentSubjects == "RightUpperArm" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "RightUpperArm")
        elseif CameraCurrentSubjects == "LeftFoot" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
        elseif CameraCurrentSubjects == "LeftLowerLeg" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "LeftLowerLeg")
        elseif CameraCurrentSubjects == "LeftUpperLeg" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "LeftUpperLeg")
        elseif CameraCurrentSubjects == "RightFoot" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
        elseif CameraCurrentSubjects == "RightLowerLeg" then
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild(
                "RightLowerLeg")
        end
    end
end, false)
local Section = Page.Section("Tool")
Section.Component("Button", "Click TP Tool", function()
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

Section.Component("Button", "Equip all Tools", function()
    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = game:GetService("Players").LocalPlayer.Character
        end
    end
end)

Section.Component("Button", "Get ALL Possible Tools", function()
    local descendants = {}
    for _, service in ipairs({"Workspace", "StarterPack", "Lighting", "ReplicatedStorage", "Players"}) do
        local serviceDescendants = game:GetService(service):GetDescendants()
        for _, descendant in ipairs(serviceDescendants) do
            if descendant:IsA('Tool') or descendant:IsA('HopperBin') then
                table.insert(descendants, descendant)
            end
        end
    end

    local backpack = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("Backpack")

    for _, item in ipairs(descendants) do
        local clonedItem = item:Clone()
        clonedItem.Parent = backpack
        wait(0.005)
    end
end)
local Section = Page.Section("Other")
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
local Shifty = Section.Component("Toggle", "Enable ShiftLock in settings", function(bool)
    game:GetService('Players').LocalPlayer.DevEnableMouseLock = bool
end, false)

local Section = Page.Section("Spin")

local SpinPower = 7

Section.Component("Slider2", "Better Spin Bot's Power", 0, 150, true, function(value)
    SpinPower = value
end, SpinPower)

local function spinxdfromiy()
    local function getRoot(char)
        local rootPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
        return rootPart
    end

    for i, v in pairs(getRoot(game.Players.LocalPlayer.Character):GetChildren()) do
        if v.Name == "Spinning" then
            v:Destroy()
        end
    end

    local Spin = Instance.new("BodyAngularVelocity")
    Spin.Name = "Spinning"
    Spin.Parent = getRoot(game.Players.LocalPlayer.Character) -- Set the object's parent to the root part of the character
    Spin.MaxTorque = Vector3.new(0, math.huge, 0) -- Set the maximum torque to allow spinning around the Y-axis
    Spin.AngularVelocity = Vector3.new(0, SpinPower, 0) -- Set the initial angular velocity (20 is the default spin speed)
end

Section.Component("Button", "Spin", function()
    spinxdfromiy()
end)
Section.Component("Button", "Destroy Spin", function()
    local function getRoot(char)
        local rootPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso")
        return rootPart
    end
    for i, v in pairs(getRoot(game.Players.LocalPlayer.Character):GetChildren()) do
        if v.Name == "Spinning" then
            v:Destroy()
        end
    end
end)
Section.Component("Toggle", "Better Spin Bot", function(bool)
    _G.Spiner = bool
    if _G.Spiner == true then
        spinxdfromiy()
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
            game.Players.LocalPlayer.Character:FindFirstChild("Torso") -- function happens after character spawns / gets added
        wait(1)
        if _G.Spiner == true then
            spinxdfromiy()
        end
    end)
end, false)

local spininterval = 0
Section.Component("Slider2", "Spin Interval", 0, 5, true, function(value)
    spininterval = value
end, spininterval)

Section.Component("Toggle", "Very Cancer SpinBot", function(bool)
    _G.SpinnyBoy = bool
    while _G.SpinnyBoy and task.wait(spininterval) do
        if not game:GetService("Players").LocalPlayer.Character then
            game:GetService("Players").LocalPlayer.CharacterAdded:wait()
        end
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame *
                CFrame.Angles(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.X,
                    math.random(0, 180), game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.Z)
    end
end, false)

local Page = Main.Page("Other", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Mouse")

Section.Component("Card", "Dont talk or click or it'll break", "V2 is better but v1 can work")

_G.AutoClickType = "V2 (Better)"
local Dropdown = Section.Component("Dropdown", "Auto Click Type", {"V1", "V2 (Better)"}, false, function(death, bool)
    _G.AutoClickType = tostring(death)
end, _G.AutoClickType)
local AutoClickSpeed = 1.2
Section.Component("Slider2", "Auto Click and Hold Speed / Interval", 0.4, 10, true, function(value)
    AutoClickSpeed = value
end, AutoClickSpeed)
Section.Component("Button", "Disable Autoclick", function()
    _G.AutoClick = false
end)
Section.Component("Toggle", "Auto Click", function(troo)
    _G.AutoClick = troo
    while task.wait(AutoClickSpeed) and _G.AutoClick == true do
        if _G.AutoClickType == "V2 (Better)" then
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
        elseif _G.AutoClickType == "V1" then
            mouse1click()
        end
    end
end, false)
local AutoHoldTime = 8
Section.Component("Slider2", "Auto Hold Time", 0.5, 30, true, function(value)
    AutoHoldTime = value
end, AutoHoldTime)
Section.Component("Toggle", "Auto Hold mouse click", function(bool)
    _G.AutoHold = bool
    while wait(AutoClickSpeed) and _G.AutoHold == true do
        if _G.AutoClickType == "V2 (Better)" then
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, nil, 0)
            wait(AutoHoldTime)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, nil, 0)
        elseif _G.AutoClickType == "V1" then
            mouse1press()
            wait(AutoHoldTime)
            mouse1release()
        end
    end
end, false)
local Section = Page.Section("ESP")

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

