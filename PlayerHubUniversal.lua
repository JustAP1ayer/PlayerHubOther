-- very messy and beautified
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
local a =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()
local b = a.Main("P|ayerHub")
local c = b.Logs("Join Logs (Name/DisplayName/UserID)")
local d = b.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local e = d.Section("Important")
e.Component(
    "Button",
    "Copy Discord (Support) to clipboard",
    function()
        setclipboard("https://discord.gg/nXERxPYUyZ")
    end
)
e.Component(
    "Button",
    "Press 'LeftAlt' to Minimize GUI",
    function()
    end
)
e.Component(
    "Button",
    "Use Mousescroll to go through pages",
    function()
    end
)
e.Component(
    "Button",
    "Support us - Cashapp - $JustAPlayer",
    function()
    end
)
if game.PlaceId == 301549746 then
    local d = b.Page("CB", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
    local e = d.Section("kick idf")
    e.Component("Card", "Dont enable all kicks", "^ will cause replication lag (alot) ^")
    e.Component(
        "Toggle",
        "AntiKick",
        function(f)
            _G.antikickes = f
            local g = game:GetService("Players"):GetPlayers()
            local h = game:GetService("Players").LocalPlayer
            while _G.antikickes == true do
                if #g > 1 then
                    local i
                    repeat
                        i = g[math.random(#g)]
                    until i ~= h
                    game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                    game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                    game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                    game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                end
                task.wait(0)
            end
        end,
        false
    )
    e.Component(
        "Toggle",
        "AntiKick (1)",
        function(f)
            _G.antiantiantikickerkickerkicker = f
            local g = game:GetService("Players"):GetPlayers()
            local h = game:GetService("Players").LocalPlayer
            while _G.antiantiantikickerkickerkicker == true do
                if #g > 1 then
                    local i
                    repeat
                        i = g[math.random(#g)]
                    until i ~= h
                    game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                end
                task.wait(0)
            end
        end,
        false
    )
    e.Component(
        "Toggle",
        "AntiKick 69420",
        function(f)
            _G.antikickesr = f
            local g = game:GetService("Players"):GetPlayers()
            local h = game:GetService("Players").LocalPlayer
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    if _G.antikickesr == true then
                        if #g > 1 then
                            local i
                            repeat
                                i = g[math.random(#g)]
                            until i ~= h
                            game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                            game:GetService("ReplicatedStorage").Events.Vote:FireServer(i.Name)
                        end
                    end
                end
            )
        end,
        false
    )
    e.Component(
        "Button",
        "kick yo self",
        function()
            game:GetService("ReplicatedStorage").Events.Vote:FireServer(game.Players.LocalPlayer.Name)
        end
    )
    local e = d.Section("Visual Trolling")
    local j = 0
    e.Component(
        "Toggle",
        "0 ping lol",
        function(f)
            _G.pingvis = f
            game:GetService("RunService").Heartbeat:Connect(
                function()
                    if _G.pingvis == true then
                        game:GetService("ReplicatedStorage").Events.UpdatePing:FireServer(0)
                    end
                end
            )
        end
    )
    local e = d.Section("Tps")
    e.Component(
        "Toggle",
        "Auto Teleport CT Area",
        function(f)
            _G.AutoTpCT = f
            while _G.AutoTpCT == true do
                local k = game.Players.LocalPlayer.Character
                if k and k:FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(1, 4, 1))
                end
                wait(.5)
            end
        end,
        false
    )
    e.Component(
        "Toggle",
        "Auto Teleport T Area",
        function(f)
            _G.AutoTpT = f
            while _G.AutoTpT == true do
                local k = game.Players.LocalPlayer.Character
                if k and k:FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(1, 4, 1))
                end
                wait(1)
            end
        end,
        false
    )
    e.Component(
        "Toggle",
        "Auto Teleport Bomb Site A",
        function(f)
            _G.AutoTpA = f
            while _G.AutoTpA == true do
                local k = game.Players.LocalPlayer.Character
                if k and k:FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(1, 4, 1))
                end
                wait(.5)
            end
        end,
        false
    )
    e.Component(
        "Toggle",
        "Auto Teleport Bomb Site B",
        function(f)
            _G.AutoTpB = f
            while _G.AutoTpB == true do
                local k = game.Players.LocalPlayer.Character
                if k and k:FindFirstChild("HumanoidRootPart") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(1, 4, 1))
                end
                wait(.5)
            end
        end,
        false
    )
    e.Component(
        "Button",
        "Teleport CT Area",
        function()
            local k = game.Players.LocalPlayer.Character
            if k and k:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(1, 4, 1))
            end
        end
    )
    e.Component(
        "Button",
        "Teleport T Area",
        function()
            local k = game.Players.LocalPlayer.Character
            if k and k:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(1, 4, 1))
            end
        end
    )
    e.Component(
        "Button",
        "Teleport Bomb Site A",
        function()
            local k = game.Players.LocalPlayer.Character
            if k and k:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(1, 4, 1))
            end
        end
    )
    e.Component(
        "Button",
        "Teleport Bomb Site B",
        function()
            local k = game.Players.LocalPlayer.Character
            if k and k:FindFirstChild("HumanoidRootPart") then
                LocalPlayer.Character.HumanoidRootPart.CFrame =
                    CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(1, 4, 1))
            end
        end
    )
    local e = d.Section("Other Scripts")
    e.Component(
        "Button",
        "Noov's Script",
        function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/NooVster/404/main/Source", true))()
        end
    )
end
local d = b.Page("LocalPlayer", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local e = d.Section("Local Player Information")
e.Component("Card", "LocalPlayer DisplayName:", game:GetService("Players").LocalPlayer.DisplayName)
e.Component("Card", "LocalPlayer Name:", game:GetService("Players").LocalPlayer.Name)
e.Component(
    "Card",
    "LocalPlayer UserID:",
    game:GetService("Players").LocalPlayer.UserId or game:GetService("Players").LocalPlayer.UserID
)
e.Component("Card", "LocalPlayer Account Age:", game:GetService("Players").LocalPlayer.AccountAge)
local e = d.Section("Humanoid Modifier")
local l = 16
e.Component(
    "Slider2",
    "Walkspeed",
    0,
    250,
    false,
    function(m)
        l = m
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = l
    end,
    l
)
e.Component(
    "Toggle",
    "Loop Walkspeed",
    function(f)
        _G.LoopWs = f
        while _G.LoopWs == true and game.Players.LocalPlayer.Character do
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = l
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = l
            task.wait()
        end
    end,
    false
)
local n = 50
e.Component(
    "Slider2",
    "Jumppower",
    0,
    300,
    false,
    function(m)
        n = m
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = m
    end,
    n
)
e.Component(
    "Toggle",
    "Loop Jumppower",
    function(f)
        _G.LoopJP = f
        while _G.LoopJP == true and game.Players.LocalPlayer.Character do
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = n
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = n
            task.wait()
        end
    end,
    false
)
e.Component(
    "Slider2",
    "Gravity",
    0,
    333,
    true,
    function(m)
        game:GetService("Workspace").Gravity = m
    end,
    196.2
)
e.Component(
    "Slider2",
    "Hip Height",
    0,
    100,
    false,
    function(m)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = m
    end,
    2
)
e.Component(
    "Toggle",
    "Inf Jump",
    function(f)
        InfiniteJump = f
        game:GetService("UserInputService").JumpRequest:Connect(
            function()
                if InfiniteJump then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(
                        "Jumping"
                    )
                end
            end
        )
    end,
    false
)
local e = d.Section("Misc Modifiers")
e.Component(
    "Toggle",
    "Remove Anims1 (V1)",
    function(f)
        _G.Anims1 = f
        while _G.Anims1 == true do
            local h = game.Players.LocalPlayer
            if h then
                local k = h.Character or h.CharacterAdded:Wait()
                for o, p in ipairs(workspace:GetDescendants()) do
                    if p:IsDescendantOf(k) and p.Name == "Animate" then
                        p:Destroy()
                    end
                end
                task.wait(5)
            end
        end
    end,
    false
)
e.Component(
    "Toggle",
    "Remove Anims1 (V2)",
    function(f)
        _G.Anims1V2 = f
        while true do
            local h = game.Players.LocalPlayer
            if h then
                local k = h.Character or h.CharacterAdded:Wait()
                for o, p in ipairs(workspace:GetDescendants()) do
                    if p:IsDescendantOf(k) and p.Name == "Animate" then
                        if _G.Anims1V2 == true then
                            p.Disabled = true
                        else
                            p.Disabled = false
                        end
                    end
                end
            end
            task.wait(5)
        end
    end,
    false
)
e.Component(
    "Toggle",
    "Remove Anims2 (Blatant + Buggy)",
    function(f)
        _G.Anims2 = f
        while _G.Anims2 == true do
            local h = game.Players.LocalPlayer
            if h then
                local k = h.Character or h.CharacterAdded:Wait()
                for o, p in ipairs(workspace:GetDescendants()) do
                    if p:IsDescendantOf(k) and p.Name == "Humanoid" and p:FindFirstChild("Animator") then
                        p.Animator:Destroy()
                    end
                end
                task.wait(5)
            end
        end
    end,
    false
)
local e = d.Section("Camera")
e.Component(
    "Slider2",
    "Min Camera Zoom Distance",
    0,
    300,
    false,
    function(m)
        game:GetService("Players").LocalPlayer.CameraMinZoomDistance = m
    end,
    game:GetService("Players").LocalPlayer.CameraMinZoomDistance or 0.5
)
e.Component(
    "Slider2",
    "Max Camera Zoom Distance",
    0,
    30000,
    false,
    function(m)
        game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = m
    end,
    game:GetService("Players").LocalPlayer.CameraMaxZoomDistance or 400
)
local q = "Classic"
local r =
    e.Component(
    "Dropdown",
    "Camera Type",
    {"Regular (Classic)", "First Person"},
    false,
    function(s, f)
        if s == "Regular (Classic)" then
            q = "Classic"
        elseif selectedOption == "First Person" then
            q = "LockFirstPerson"
        end
        game:GetService("Players").LocalPlayer.CameraMode = q
    end,
    false
)
e.Component(
    "Button",
    "Lock Camera on Character",
    function()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    end
)
local t
local r =
    e.Component(
    "Dropdown",
    "Choose Locked Current Camera Subject",
    {
        "Character",
        "Humanoid",
        "Head",
        "UpperTorso",
        "LowerTorso",
        "HumanoidRootPart",
        "RightUpperLeg",
        "LeftHand",
        "RightHand",
        "LeftLowerArm",
        "RightLowerArm",
        "LeftUpperArm",
        "RightUpperArm",
        "LeftFoot",
        "LeftLowerLeg",
        "LeftUpperLeg",
        "RightFoot",
        "RightLowerLeg"
    },
    false,
    function(u, f)
        t = u
    end,
    false
)
e.Component(
    "Toggle",
    "Loop Current Camera Subject",
    function(f)
        _G.LoopCameraSubject = f
        while _G.LoopCameraSubject == true and task.wait(0.1) do
            if game.Players.LocalPlayer.Character then
                if t == "Character" then
                    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                elseif t == "Humanoid" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                elseif t == "Head" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("Head")
                elseif t == "UpperTorso" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
                elseif t == "LowerTorso" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso")
                elseif t == "RightUpperLeg" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
                elseif t == "LeftHand" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
                elseif t == "RightHand" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
                elseif t == "LeftLowerArm" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
                elseif t == "RightLowerArm" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
                elseif t == "LeftUpperArm" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
                elseif t == "RightUpperArm" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
                elseif t == "LeftFoot" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
                elseif t == "LeftLowerLeg" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
                elseif t == "LeftUpperLeg" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
                elseif t == "RightFoot" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
                elseif t == "RightLowerLeg" then
                    game.Workspace.CurrentCamera.CameraSubject =
                        game.Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
                end
            end
        end
    end,
    false
)
e.Component(
    "Button",
    "Lock Current Camera Subject",
    function()
        if game.Players.LocalPlayer.Character then
            if t == "Character" then
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
            elseif t == "Humanoid" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            elseif t == "Head" then
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("Head")
            elseif t == "UpperTorso" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
            elseif t == "LowerTorso" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso")
            elseif t == "RightUpperLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
            elseif t == "LeftHand" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
            elseif t == "RightHand" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
            elseif t == "LeftLowerArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
            elseif t == "RightLowerArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
            elseif t == "LeftUpperArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
            elseif t == "RightUpperArm" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
            elseif t == "LeftFoot" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
            elseif t == "LeftLowerLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
            elseif t == "LeftUpperLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
            elseif t == "RightFoot" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
            elseif t == "RightLowerLeg" then
                game.Workspace.CurrentCamera.CameraSubject =
                    game.Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
            end
        end
    end,
    false
)
local e = d.Section("Other")
_G.DissembleBodyVersion = "Version 3"
local function v()
    if _G.DissembleBodyVersion == "Version 1" then
        if game.Players.LocalPlayer.Character and _G.AutoInvisible == true then
            if
                game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
             then
                game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist"):Destroy()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg") then
                game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg"):Destroy()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg") then
                game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg"):Destroy()
            end
            if
                game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root")
             then
                game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root"):Destroy()
            end
        end
    elseif _G.DissembleBodyVersion == "Version 2" then
        if game.Players.LocalPlayer.Character and _G.AutoInvisible == true then
            if
                game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root")
             then
                game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root"):Destroy()
            end
        end
    elseif _G.DissembleBodyVersion == "Version 3" then
        if game.Players.LocalPlayer.Character and _G.AutoInvisible == true then
            if
                game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
             then
                game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist"):Destroy()
            end
        end
    end
end
e.Component(
    "Dropdown",
    "Dissemble Body Verison",
    {"Version 1", "Version 2", "Version 3"},
    false,
    function(w, f)
        _G.DissembleBodyVersion = tostring(w)
    end,
    false
)
e.Component(
    "Toggle",
    "Auto Dissemble Body / Invisible",
    function(f)
        _G.AutoInvisible = f
        v()
        game.Players.LocalPlayer.CharacterAdded:Connect(
            function()
                repeat
                    wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg") and
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
                v()
            end
        )
    end,
    false
)
e.Component(
    "Button",
    "Dissemble Body (Basically Invis)",
    function()
        if _G.DissembleBodyVersion == "Version 1" then
            if game.Players.LocalPlayer.Character then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and
                        game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
                 then
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist"):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg") then
                    game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg"):Destroy()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg") then
                    game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg"):Destroy()
                end
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and
                        game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root")
                 then
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root"):Destroy()
                end
            end
        elseif _G.DissembleBodyVersion == "Version 2" then
            if game.Players.LocalPlayer.Character then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and
                        game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root")
                 then
                    game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso"):FindFirstChild("Root"):Destroy()
                end
            end
        elseif _G.DissembleBodyVersion == "Version 3" then
            if game.Players.LocalPlayer.Character then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and
                        game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso")
                 then
                    game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist"):Destroy()
                end
            end
        end
    end
)
local x =
    e.Component(
    "Toggle",
    "Enable ShiftLock in settings",
    function(f)
        game:GetService("Players").LocalPlayer.DevEnableMouseLock = f
    end,
    false
)
local y = true
local z =
    e.Component(
    "Toggle",
    "Use Spacebar for Auto Hop",
    function(f)
        y = f
    end,
    true
)
local A = false
local z =
    e.Component(
    "Toggle",
    "Enable Auto Hop",
    function(f)
        A = f
        local B = true
        local C = true
        if y then
            local D = game:GetService("UserInputService")
            local function E()
                local F = D:GetFocusedTextBox()
                return F ~= nil
            end
            D.InputBegan:Connect(
                function(G)
                    if G.KeyCode == Enum.KeyCode.Space and not E() then
                        if B then
                            C = true
                        else
                            C = not C
                        end
                    end
                end
            )
            D.InputEnded:Connect(
                function(G)
                    if G.KeyCode == Enum.KeyCode.Space then
                        if B then
                            C = false
                        end
                    end
                end
            )
            D.InputChanged:Connect(
                function(G, H)
                    if G.KeyCode == Enum.KeyCode.Space then
                        if B then
                            C = D:IsKeyDown(Enum.KeyCode.Space) and spaceEnabled2
                        else
                            C = spaceEnabled2
                        end
                    end
                end
            )
            while wait() do
                if A then
                    local k = game:GetService("Players").LocalPlayer.Character
                    if k then
                        local I = k:FindFirstChildOfClass("Humanoid")
                        if I then
                            if C then
                                if B then
                                    I.Jump = D:IsKeyDown(Enum.KeyCode.Space)
                                else
                                    I.Jump = true
                                end
                            else
                                I.Jump = false
                            end
                        end
                    end
                end
            end
        end
        while wait() do
            if A then
                if y == false then
                    local k = game:GetService("Players").LocalPlayer.Character
                    if k then
                        local I = k:FindFirstChildOfClass("Humanoid")
                        if I then
                            I.Jump = true
                        end
                    end
                end
            end
        end
    end,
    A
)
e.Component(
    "Button",
    "Click TP Tool",
    function()
        mouse = game.Players.LocalPlayer:GetMouse()
        tool = Instance.new("Tool")
        tool.RequiresHandle = false
        tool.Name = "Click Teleport"
        tool.Activated:connect(
            function()
                local J = mouse.Hit + Vector3.new(0, 2.5, 0)
                J = CFrame.new(J.X, J.Y, J.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = J
            end
        )
        tool.Parent = game.Players.LocalPlayer.Backpack
    end
)
e.Component(
    "Button",
    "Equip all Tools",
    function()
        for o, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                tool.Parent = game:GetService("Players").LocalPlayer.Character
            end
        end
    end
)
e.Component(
    "Button",
    "Get ALL Possible Tools",
    function()
        local K = {}
        for o, L in ipairs({"Workspace", "StarterPack", "Lighting", "ReplicatedStorage", "Players"}) do
            local M = game:GetService(L):GetDescendants()
            for o, p in ipairs(M) do
                if p:IsA("Tool") or p:IsA("HopperBin") then
                    table.insert(K, p)
                end
            end
        end
        local N = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("Backpack")
        for o, O in ipairs(K) do
            local P = O:Clone()
            P.Parent = N
            wait(0.005)
        end
    end
)
local d = b.Page("Aim", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local Q = false
local R = false
local S = 50
local e = d.Section("TriggerBot")
e.Component("Card", "TriggerBot will not shoot sometimes", "^ This is because of meshes blocking it ^")
local T =
    e.Component(
    "Toggle",
    "Enable Triggerbot",
    function(f)
        Q = f
    end,
    Q
)
local U =
    e.Component(
    "Toggle",
    "Team Check",
    function(f)
        R = f
    end,
    R
)
local V = math.huge
e.Component(
    "Slider2",
    "Distance",
    0,
    5000,
    false,
    function(m)
        V = m * 5.4321
    end,
    V
)
local W =
    e.Component(
    "Slider2",
    "Clicking Delay Intervals",
    0,
    2500,
    false,
    function(m)
        S = m / 2500
    end,
    S
)
function TriggerTeamCheck(X)
    if R then
        if X.TeamColor ~= game.Players.LocalPlayer.TeamColor then
            return true
        else
            return false
        end
    else
        return true
    end
end
local Y = game:GetService("Players")
local Z = Y.LocalPlayer or Y:GetPropertyChangedSignal("LocalPlayer"):Wait() and Y.LocalPlayer
local mouse = Z:GetMouse()
function gettarget(_)
    if not _ then
        return false
    end
    for a0, X in next, Y:GetPlayers() do
        if TriggerTeamCheck(X) and Q then
            if X.Character and (_ == X.Character or _:IsDescendantOf(X.Character)) then
                if X.Character:FindFirstChild("Head") or Z.Character and Z.Character:FindFirstChild("Head") then
                    local a1 = (X.Character.Head.Position - Z.Character.Head.Position).magnitude
                    if a1 <= V then
                        return true
                    else
                        return false
                    end
                end
            end
        end
    end
    return false
end
local function a2()
    local a3 = mouse.Target
    if a3 and gettarget(a3) then
        local k = a3.Parent
        if k and k:FindFirstChild("Humanoid") and k.Humanoid.Health > 0 then
            mouse1press()
            task.wait(S)
            mouse1release()
        end
    else
        return false
    end
end
local a4 = game:GetService("RunService").Heartbeat:Connect(a2)
local e = d.Section("Assistance")
e.Component("Card", "Aim stuff made by argyyy#1355", "modified bits but he made the most of it")
local a5 = false
local a6 = true
local a7 = true
local a8 = false
local a9 = 10
local aa = 10
local ab = 50
local ac = "HumanoidRootPart"
local ad = "Camera"
local ae = "Camera"
local af = false
local ag = 0
local ah = false
task.wait(0.5)
local ai =
    e.Component(
    "Toggle",
    "Enable Aim Assist",
    function(f)
        a5 = f
    end,
    a5
)
local aj = "HumanoidRootPart"
local ak =
    e.Component(
    "Dropdown",
    "Target Hit Part",
    {
        "Head",
        "UpperTorso",
        "LowerTorso",
        "HumanoidRootPart",
        "RightUpperLeg",
        "LeftHand",
        "RightHand",
        "LeftLowerArm",
        "RightLowerArm",
        "LeftUpperArm",
        "RightUpperArm",
        "LeftFoot",
        "LeftLowerLeg",
        "LeftUpperLeg",
        "RightFoot",
        "RightLowerLeg"
    },
    false,
    function(al, f)
        aj = al
        if aj == "Head" then
            ac = "Head"
        elseif aj == "UpperTorso" then
            ac = "UpperTorso"
        elseif aj == "LowerTorso" then
            ac = "LowerTorso"
        elseif aj == "RightUpperLeg" then
            ac = "RightUpperLeg"
        elseif aj == "LeftHand" then
            ac = "LeftHand"
        elseif aj == "RightHand" then
            ac = "RightHand"
        elseif aj == "LeftLowerArm" then
            ac = "LeftLowerArm"
        elseif aj == "RightLowerArm" then
            ac = "RightLowerArm"
        elseif aj == "LeftUpperArm" then
            ac = "LeftUpperArm"
        elseif aj == "RightUpperArm" then
            ac = "RightUpperArm"
        elseif aj == "LeftFoot" then
            ac = "LeftFoot"
        elseif aj == "LeftLowerLeg" then
            ac = "LeftLowerLeg"
        elseif aj == "LeftUpperLeg" then
            ac = "LeftUpperLeg"
        elseif aj == "RightFoot" then
            ac = "RightFoot"
        elseif aj == "RightLowerLeg" then
            ac = "RightLowerLeg"
        end
    end,
    false
)
local am =
    e.Component(
    "Toggle",
    "Team Check",
    function(f)
        a6 = f
    end,
    a6
)
local an =
    e.Component(
    "Toggle",
    "Wall Check",
    function(f)
        a7 = f
    end,
    a7
)
local ao =
    e.Component(
    "Slider2",
    "Horizontal Smoothing",
    1,
    100,
    false,
    function(m)
        a9 = m
    end,
    a9
)
local ap =
    e.Component(
    "Slider2",
    "Vertical Smoothing",
    1,
    100,
    false,
    function(m)
        aa = m
    end,
    aa
)
local aq =
    e.Component(
    "Dropdown",
    "Position",
    {"Camera", "Player"},
    false,
    function(ar, f)
        ad = ar
    end,
    false
)
local e = d.Section("Predicter")
local as =
    e.Component(
    "Toggle",
    "Enable Prediction",
    function(f)
        af = f
    end,
    af
)
local at =
    e.Component(
    "Slider2",
    "Prediction Amount",
    -50,
    200,
    false,
    function(m)
        ag = m
    end,
    ag
)
local au =
    e.Component(
    "Toggle",
    "Enable Backtracing",
    function(f)
        ah = f
    end,
    ah
)
local e = d.Section("FOV")
local av =
    e.Component(
    "Toggle",
    "Toggle Circle",
    function(f)
        a8 = f
    end,
    false
)
local aw =
    e.Component(
    "Slider2",
    "FOV Radius",
    0,
    300,
    false,
    function(m)
        ab = m
    end,
    ab
)
local ax = 2
local aw =
    e.Component(
    "Slider2",
    "FOV Thickness",
    0,
    29.9,
    true,
    function(m)
        ax = m
    end,
    ax
)
local ay = 190
local az = 175
local aA = 255
local aB =
    e.Component(
    "Slider2",
    "RGB RED COLOR",
    0,
    255,
    false,
    function(m)
        ay = m
    end,
    ay
)
local aC =
    e.Component(
    "Slider2",
    "RGB GREEN COLOR",
    0,
    255,
    false,
    function(m)
        az = m
    end,
    az
)
local aD =
    e.Component(
    "Slider2",
    "RGB BLUE COLOR",
    0,
    255,
    false,
    function(m)
        aA = m
    end,
    aA
)
local aE = game.Workspace.CurrentCamera
local aF = game.Players.LocalPlayer:GetMouse()
local aG = Drawing.new("Circle")
function UpdateFOV()
    if a5 then
        aG.Visible = a8
    else
        aG.Visible = false
    end
    aG.Radius = ab * 3.75
    aG.Thickness = tonumber(ax)
    aG.Color = Color3.new(ay / 255, az / 255, aA / 255)
    aG.Position = Vector2.new(aF.X, aF.Y + 35)
end
function WallCheck(aH, aI)
    if a7 then
        if ad == "Camera" then
            ae = aE.CFrame.Position
        elseif ad == "Player" then
            ae = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        end
        CheckRay = Ray.new(ae, aH - ae)
        Hit = workspace:FindPartOnRayWithIgnoreList(CheckRay, aI)
        return Hit == nil
    else
        return true
    end
end
function GetClosestPlayerToMouse()
    local aJ = nil
    Closest = math.huge
    for a0, X in pairs(game.Players:GetPlayers()) do
        pcall(
            function()
                if
                    X.Character and X.Character.Humanoid and X.Character.Humanoid.Health ~= 0 and
                        X.Character.HumanoidRootPart and
                        WallCheck(
                            X.Character.HumanoidRootPart.Position,
                            {game.Players.LocalPlayer.Character, X.Character}
                        ) and
                        X ~= game.Players.LocalPlayer
                 then
                    local J, aK = aE:WorldToScreenPoint(X.Character[ac].Position)
                    if aK then
                        local a1 = (Vector2.new(J.X, J.Y) - Vector2.new(aF.X, aF.Y + 35)).magnitude
                        if a1 < aG.Radius and a1 < Closest then
                            Closest = a1
                            aJ = X
                        end
                    end
                end
            end
        )
    end
    return aJ
end
function AimAtTarget(aL)
    WTSP = aE:WorldToScreenPoint(aL)
    mousemoverel((WTSP.X - aF.X) / a9, (WTSP.Y - aF.Y) / aa)
end
game:GetService("RunService").RenderStepped:Connect(
    function()
        UpdateFOV()
        if a5 then
            local MainTarget = GetClosestPlayerToMouse()
            if MainTarget then
                if a6 then
                    if MainTarget.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        if af then
                            if ah then
                                AimAtTarget(MainTarget.Character[ac].Position - MainTarget.Character[ac].Velocity * ag)
                            else
                                AimAtTarget(MainTarget.Character[ac].Position + MainTarget.Character[ac].Velocity * ag)
                            end
                        else
                            AimAtTarget(MainTarget.Character[ac].Position)
                        end
                    end
                else
                    if af then
                        if ah then
                            AimAtTarget(MainTarget.Character[ac].Position - MainTarget.Character[ac].Velocity * ag)
                        else
                            AimAtTarget(MainTarget.Character[ac].Position + MainTarget.Character[ac].Velocity * ag)
                        end
                    else
                        AimAtTarget(MainTarget.Character[ac].Position)
                    end
                end
            end
        else
            MainTarget = nil
        end
    end
)
local e = d.Section("Other")
local aM = 0
e.Component(
    "Slider2",
    "Spin Interval",
    0,
    5,
    true,
    function(m)
        aM = m
    end,
    aM
)
e.Component(
    "Toggle",
    "Very Cancer SpinBot",
    function(f)
        _G.SpinnyBoy = f
        while _G.SpinnyBoy and task.wait(aM) do
            if not game:GetService("Players").LocalPlayer.Character then
                game:GetService("Players").LocalPlayer.CharacterAdded:wait()
            end
            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame *
                CFrame.Angles(
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.X,
                    math.random(0, 180),
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.Z
                )
        end
    end,
    false
)
local d = b.Page("Other", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local e = d.Section("ESP")
e.Component("Card", "ESP made by skatbr", "(i modified it a bit)")
e.Component(
    "Toggle",
    "Enable Visuals",
    function(aN)
        if getgenv().esp_loaded == false and aN == true then
            getgenv().esp_loaded = true
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true)
            )()
        end
        getgenv().Visibility = aN
    end,
    false
)
e.Component(
    "Toggle",
    "Enable Boxes",
    function(aN)
        if getgenv().esp_loaded == false and aN == true then
            getgenv().esp_loaded = true
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true)
            )()
        end
        getgenv().boxESP = aN
    end,
    false
)
e.Component(
    "Toggle",
    "Enable Names",
    function(aN)
        if getgenv().esp_loaded == false and aN == true then
            getgenv().esp_loaded = true
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true)
            )()
        end
        getgenv().nameESP = aN
    end,
    false
)
e.Component(
    "Toggle",
    "Enable Chams",
    function(aN)
        if getgenv().esp_loaded == false and aN == true then
            getgenv().esp_loaded = true
            loadstring(
                game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true)
            )()
        end
        getgenv().cham = aN
    end,
    false
)
e.Component(
    "Toggle",
    "Team Colors",
    function(aN)
        getgenv().useTeamColor = aN
    end,
    false
)
local e = d.Section("Hitbox")
local aO = 0
e.Component(
    "Slider2",
    "Hitbox Size",
    0,
    100,
    true,
    function(m)
        aO = m
    end,
    aO
)
local aP = false
e.Component(
    "Toggle",
    "Team Check",
    function(aQ)
        aP = aQ
    end,
    false
)
e.Component(
    "Toggle",
    "Hitbox Expander",
    function(f)
        _G.HeadSize = aO
        _G.HitBoxExpander = f
        _G.TeamCheckEnabled = aP
        _G.CharacterAddedConnections = {}
        function expandHitbox(aR, k)
            if k and k:FindFirstChild("HumanoidRootPart") then
                local aS = k.HumanoidRootPart
                local aT = game.Teams
                if
                    _G.HitBoxExpander == true and
                        (not aR.Team or game.Teams:FindFirstChild("Neutral") and aR.Team == game.Teams.Neutral or
                            game.Teams:FindFirstChild(aR.Team.Name) and aR.Team == game.Teams[aR.Team.Name])
                 then
                    aS.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                    aS.Transparency = 0.7
                    aS.BrickColor = BrickColor.new("Eggplant")
                    aS.Material = Enum.Material.Neon
                    aS.CanCollide = false
                else
                    aS.Size = Vector3.new(2, 2, 1)
                    aS.Transparency = 1
                    aS.BrickColor = BrickColor.new("Medium stone grey")
                    aS.Material = Enum.Material.Plastic
                    aS.CanCollide = false
                end
            end
        end
        function onPlayerAdded(aR)
            _G.CharacterAddedConnections[aR] =
                aR.CharacterAdded:Connect(
                function(k)
                    expandHitbox(aR, k)
                end
            )
            expandHitbox(aR, aR.Character)
        end
        function onPlayerRemoving(aR)
            if _G.CharacterAddedConnections[aR] then
                _G.CharacterAddedConnections[aR]:Disconnect()
                _G.CharacterAddedConnections[aR] = nil
            end
        end
        game.Players.PlayerAdded:Connect(onPlayerAdded)
        game.Players.PlayerRemoving:Connect(onPlayerRemoving)
        while _G.HitBoxExpander == true do
            for o, aR in ipairs(game.Players:GetPlayers()) do
                if aR ~= game.Players.LocalPlayer then
                    onPlayerAdded(aR)
                end
            end
            wait(1)
        end
        if _G.HitBoxExpander == false then
            for o, aR in ipairs(game.Players:GetPlayers()) do
                local k = aR.Character
                if k then
                    local aS = k:FindFirstChild("HumanoidRootPart")
                    if aS then
                        aS.Size = Vector3.new(2, 2, 1)
                        aS.Transparency = 1
                        aS.BrickColor = BrickColor.new("Medium stone grey")
                        aS.Material = Enum.Material.Plastic
                        aS.CanCollide = false
                    end
                end
            end
        end
    end,
    false
)
local e = d.Section("Misc Scripts")
e.Component(
    "Button",
    "Owl Hub",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()
    end
)
e.Component(
    "Button",
    "Infinite Yield",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
)
e.Component(
    "Button",
    "CMDX",
    function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    end
)
local d = b.Page("Teleports", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local e = d.Section("Player Teleports")
local aU = "MoveTo"
e.Component(
    "Dropdown",
    "Player Teleport Type",
    {"MoveTo", "CFrame"},
    false,
    function(aV, f)
        aU = tostring(aV)
    end,
    false
)
e.Component(
    "Button",
    "Teleport to the void (close enough)",
    function()
        if aU == "MoveTo" then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, -375, 0))
        elseif aU == "CFrame" then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, -375, 0)
        end
    end
)
e.Component(
    "Button",
    "Teleport to Safe Area",
    function()
        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local aW = Instance.new("Part")
            aW.Name = "PlayerHubTeleportPlatform"
            aW.Size = Vector3.new(50, 7, 50)
            aW.Position = Vector3.new(-55282.639679, 571.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            aW.Anchored = true
            aW.CanCollide = true
            aW.Parent = game.Workspace
            if aU == "MoveTo" then
                game.Players.LocalPlayer.Character:MoveTo(
                    Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                )
            elseif aU == "CFrame" then
                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                    CFrame.new(-55282.639679, 573.8871727, 55107.760048)
            end
        end
    end
)
e.Component(
    "Toggle",
    "Auto Teleport to Safe Area",
    function(f)
        _G.AutoTpSafe = f
        if _G.AutoTpSafe == true then
            local aW = Instance.new("Part")
            aW.Name = "PlayerHubTeleportPlatform"
            aW.Size = Vector3.new(50, 7, 50)
            aW.Position = Vector3.new(-55282.639679, 571.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            aW.Anchored = true
            aW.CanCollide = true
            aW.Parent = game.Workspace
        end
        while _G.AutoTpSafe == true do
            if
                game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
             then
                if aU == "MoveTo" then
                    game.Players.LocalPlayer.Character:MoveTo(
                        Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    )
                elseif aU == "CFrame" then
                    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame =
                        CFrame.new(-55282.639679, 573.8871727, 55107.760048)
                end
            end
            task.wait(0.1)
        end
    end,
    false
)
e.Component(
    "Button",
    "Delete Safe Area Platform",
    function()
        for o, aW in ipairs(game.Workspace:GetChildren()) do
            if aW:IsA("Part") and aW.Name == "PlayerHubTeleportPlatform" then
                aW:Destroy()
            end
        end
    end
)
e.Component(
    "Button",
    "Teleport to 0,0,0",
    function()
        if aU == "MoveTo" then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
        elseif aU == "CFrame" then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, 0, 0)
        end
    end
)
local aX = 0
e.Component(
    "Slider2",
    "X Axis",
    -25000,
    25000,
    false,
    function(m)
        aX = m
    end,
    aX
)
local aY = 0
e.Component(
    "Slider2",
    "Y Axis",
    -2500,
    25000,
    false,
    function(m)
        aY = m
    end,
    aY
)
local aZ = 0
e.Component(
    "Slider2",
    "Z Axis",
    -25000,
    25000,
    false,
    function(m)
        aZ = m
    end,
    aZ
)
e.Component(
    "Button",
    "Teleport to Axis",
    function()
        if aU == "MoveTo" then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(aX, aY, aZ))
        elseif aU == "CFrame" then
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(aX, aY, aZ)
        end
    end
)
local e = d.Section("Teleport Service")
local a_ = game:GetService("AssetService"):GetGamePlacesAsync()
e.Component("Card", "This makes you teleport to a new", " game and will list every subplace connected ^")
while true do
    for o, b0 in pairs(a_:GetCurrentPage()) do
        e.Component(
            "Button",
            "TP: " .. tostring(b0.Name) .. " (" .. tostring(b0.PlaceId) .. ")",
            function()
                game:GetService("TeleportService"):Teleport(b0.PlaceId, LocalPlayer)
            end
        )
    end
    if a_.IsFinished then
        break
    end
    a_:AdvanceToNextPageAsync()
end
local d = b.Page("Settings", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local e = d.Section("Settings")
_G.JoinLogger = true
e.Component(
    "Toggle",
    "Enable Join Logger",
    function(f)
        _G.JoinLogger = f
    end,
    _G.JoinLogger
)
e.Component(
    "Button",
    "Antiafk/idle",
    function()
        wait(0.5)
        local b1 = game:service "VirtualUser"
        game:service "Players".LocalPlayer.Idled:connect(
            function()
                b1:CaptureController()
                b1:ClickButton2(Vector2.new())
            end
        )
        print("Antiafk enabled")
    end
)
e.Component(
    "Toggle",
    "3D Rendering (Helps with Device)",
    function(f)
        game:GetService("RunService"):Set3dRenderingEnabled(f)
    end,
    true
)
local b2 = game.Lighting.FogStart
local b3 = game.Lighting.FogEnd
e.Component(
    "Toggle",
    "Disable Fog",
    function(f)
        if f then
            game.Lighting.FogStart = 100000000
            game.Lighting.FogEnd = 100000000
        else
            game.Lighting.FogStart = b2
            game.Lighting.FogEnd = b3
        end
    end,
    false
)
e.Component(
    "Toggle",
    "Shadows",
    function(f)
        game.Lighting.GlobalShadows = f
    end,
    true
)
e.Component(
    "Slider2",
    "Brightness",
    0,
    30,
    true,
    function(m)
        game.Lighting.Brightness = m
    end,
    game.Lighting.Brightness
)
e.Component(
    "Slider2",
    "Time",
    0,
    24,
    true,
    function(m)
        game.Lighting.ClockTime = m
    end,
    game.Lighting.ClockTime
)
e.Component(
    "Slider2",
    "Exposure",
    0,
    25,
    true,
    function(m)
        game.Lighting.ExposureCompensation = m
    end,
    game.Lighting.ExposureCompensation
)
e.Component(
    "Slider2",
    "Geographic Latitude",
    -180,
    180,
    false,
    function(m)
        game.Lighting.GeographicLatitude = m
    end,
    game.Lighting.GeographicLatitude
)
e.Component(
    "Button",
    "YOU SHOULD KYS NOW!",
    function()
        game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
    end
)
e.Component(
    "Toggle",
    "Moonknight typa shit (Visual)",
    function(f)
        _G.MoonKnight = f
        while _G.MoonKnight == true do
            for a0 = 0, 23.99, 0.14 do
                game.Lighting.ClockTime = a0
                wait(0.0240)
            end
        end
    end,
    false
)
function penisjoingame(aR)
    if _G.JoinLogger == true then
        c.LogWithButtons("-[> New Player has joined the game! <]-")
        task.wait(0.05)
        c.LogWithButtons("->| Name: " .. aR.Name).Button(
            "Tell Join Info (Usually Tagged)",
            function()
                args = {
                    [1] = aR.Name .. " ( DisplayName: " .. aR.DisplayName .. " )  has joined the game!",
                    [2] = "All"
                }
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                    unpack(args)
                )
            end
        )
        c.LogWithButtons("DisplayName: " .. aR.DisplayName).Button(
            "Print Join Info",
            function()
                print(
                    string.format(
                        "Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!",
                        aR.Name,
                        aR.DisplayName,
                        aR.UserId
                    )
                )
            end
        )
        task.wait(0.05)
        c.LogWithButtons("UserID: " .. aR.UserId .. " |<-").Button(
            "Copy Join Info",
            function()
                setclipboard(
                    string.format(
                        "Name: %s \nDisplayName: %s \nUserID: %s \nhas joined the game!",
                        aR.Name,
                        aR.DisplayName,
                        aR.UserId
                    )
                )
            end
        )
    end
end
game:GetService("Players").PlayerAdded:Connect(penisjoingame)
