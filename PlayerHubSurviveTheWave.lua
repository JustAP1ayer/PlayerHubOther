local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
-- ignore how messy it is
getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false
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
local Logs = Main.Logs("Join Logs")
local Page = Main.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Important")

Section.Component("Button", "Copy Discord (Support) to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
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
Section.Component("Button", "No Drown (Unstable Only Click Once)", function()
    old = hookmetamethod(game, "__namecall", function(self, ...)
        arg = {...}
        if getnamecallmethod() == "FireServer" and self.Name == "ClientTrigger" and arg[1] == "Drown" then
            return wait(9e9)
        end
        return old(self, ...)
    end)
end)
Section.Component("Button", "No Damage / Ragdoll (Unstable)", function()
if game:GetService("ReplicatedStorage").Events.GameEvents.ClientFunction then
    game:GetService("ReplicatedStorage").Events.GameEvents.ClientFunction:Destroy() -- destroyed a remote WTF!!
end
end)
Section.Component("Button", "No Drown (Unstable)", function()
    if game:GetService("ReplicatedStorage").Events.GameEvents.ClientTrigger then
        game:GetService("ReplicatedStorage").Events.GameEvents.ClientTrigger:Destroy() -- destroyed a remote WTF!!
    end
end)
Section.Component("Button", "trip", function()
    local args = {
        [1] = "Ragdoll",
        [2] = {
            ["Enabled"] = true,
            ["Damage"] = 0.001
        }
    }

    game:GetService("ReplicatedStorage").Events.GameEvents.ClientFunction:InvokeServer(unpack(args))
end)
Section.Component("Button", "ragdoll", function()
    local args = {
        [1] = "Ragdoll",
        [2] = {
            ["Enabled"] = true
        }
    }

    game:GetService("ReplicatedStorage").Events.GameEvents.ClientFunction:InvokeServer(unpack(args))

end)
local Section = Page.Section("Player Teleports")
local tpspeed = 0.5
Section.Component("Slider2", "Choose Teleport Speed", 0, 15, true, function(value)
    tpspeed = value
end, tpspeed)
-- for some reason it doesnt work without these
local TeleportPlayerType = "MoveTo"
Section.Component("Dropdown", "Player Teleport Type", {"MoveTo", "CFrame", "PivotTo"}, false,
    function(TeleportType, bool)
        TeleportPlayerType = tostring(TeleportType)
    end, false)
Section.Component("Toggle", "Auto Teleport to Spawn (Autofarm)", function(bool)
    _G.AutoTpAutofarm = bool;

    while _G.AutoTpAutofarm == true do
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if TeleportPlayerType == "MoveTo" then
                game.Players.LocalPlayer.Character:MoveTo(workspace.Lobby.SpawnLocation.CFrame.Position)
            elseif TeleportPlayerType == "CFrame" then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = workspace.Lobby
                                                                                                   .SpawnLocation.CFrame
            elseif TeleportPlayerType == "PivotTo" then
                game.Players.LocalPlayer.Character:PivotTo(workspace.Lobby.SpawnLocation.CFrame)
            end
        end
        task.wait(tpspeed)
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
Section.Component("Toggle", "Remove Anims1 (V1)", function(bool)
    _G.Anims1 = bool

    while _G.Anims1 == true do
        local localPlayer = game.Players.LocalPlayer
        if localPlayer then
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsDescendantOf(character) and descendant.Name == "Animate" then
                    descendant:Destroy()
                end
            end
            task.wait(5)
        end
    end
end, false)
Section.Component("Toggle", "Remove Anims1 (V2)", function(bool)
    _G.Anims1V2 = bool

    while true do
        local localPlayer = game.Players.LocalPlayer
        if localPlayer then
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsDescendantOf(character) and descendant.Name == "Animate" then
                    if _G.Anims1V2 == true then
                        descendant.Disabled = true
                    else
                        descendant.Disabled = false
                    end
                end
            end
        end
        task.wait(5)
    end

end, false)
Section.Component("Toggle", "Remove Anims2 (Blatant + Buggy)", function(bool)
    _G.Anims2 = bool

    while _G.Anims2 == true do
        local localPlayer = game.Players.LocalPlayer
        if localPlayer then
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsDescendantOf(character) and descendant.Name == "Humanoid" and
                    descendant:FindFirstChild("Animator") then
                    descendant.Animator:Destroy()
                end
            end
            task.wait(5)
        end
    end
end, false)
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
-- Script generated by SimpleSpy - credits to exx#9394

local AutoHopStyleSpace = true
local AutoHop = Section.Component("Toggle", "Use Spacebar for Auto Hop", function(bool)
    AutoHopStyleSpace = bool
end, true)

local autoJumpEnabled = false
local AutoHop = Section.Component("Toggle", "Enable Auto Hop", function(bool)

    autoJumpEnabled = bool
    local holdEnabled = true
    local spaceEnabled = true
    if AutoHopStyleSpace then

        local userInputService = game:GetService("UserInputService")

        local function isTypingInTextBox()
            local focused = userInputService:GetFocusedTextBox()
            return focused ~= nil
        end

        userInputService.InputBegan:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.Space and not isTypingInTextBox() then
                if holdEnabled then
                    spaceEnabled = true
                else
                    spaceEnabled = not spaceEnabled
                end
            end
        end)

        userInputService.InputEnded:Connect(function(input)
            if input.KeyCode == Enum.KeyCode.Space then
                if holdEnabled then
                    spaceEnabled = false
                end
            end
        end)

        userInputService.InputChanged:Connect(function(input, gameProcessed)
            if input.KeyCode == Enum.KeyCode.Space then
                if holdEnabled then
                    spaceEnabled = userInputService:IsKeyDown(Enum.KeyCode.Space) and spaceEnabled2
                else
                    spaceEnabled = spaceEnabled2
                end
            end
        end)

        while wait() do
            if autoJumpEnabled then
                local character = game:GetService("Players").LocalPlayer.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        if spaceEnabled then
                            if holdEnabled then
                                humanoid.Jump = userInputService:IsKeyDown(Enum.KeyCode.Space)
                            else
                                humanoid.Jump = true
                            end
                        else
                            humanoid.Jump = false
                        end
                    end
                end
            end
        end
    end

    while wait() do
        if autoJumpEnabled then
            if AutoHopStyleSpace == false then
                local character = game:GetService("Players").LocalPlayer.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    if humanoid then
                        humanoid.Jump = true
                    end
                end
            end
        end
    end
end, autoJumpEnabled)

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
Logs.LogWithButtons("->| Name: " .. player.Name).Button("Tell Join Info (Usually Tagged)",function()
 args = {
    [1] = player.Name .. " ( DisplayName: " .. player.DisplayName .. " )  has joined the game!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

end)
Logs.LogWithButtons("DisplayName: " .. player.DisplayName).Button("Print Join Info",function()
print(string.format("Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!", player.Name, player.DisplayName, player.UserId))
end)
task.wait(0.05)
Logs.LogWithButtons("UserID: " .. player.UserId .. " |<-").Button("Copy Join Info",function()
setclipboard(string.format("Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!", player.Name, player.DisplayName, player.UserId))
end)
end
end
game:GetService("Players").PlayerAdded:Connect(penisjoingame)