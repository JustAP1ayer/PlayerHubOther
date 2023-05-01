-- ignore how messy it is
getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false
if not isfolder("PlayerHub") then -- for the future idk yet
    makefolder("PlayerHub")
end
getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35,35,40);
    BrighterMainColor = Color3.fromRGB(40,40,45);
    IconsColor = Color3.fromRGB(100,100,120);
    Accent = Color3.fromRGB(0,100,255);
    DarkText = Color3.fromRGB(170,170,170);
    BrightText = Color3.fromRGB(145,145,145);
    Font = "Gotham";
    SoundVolume = 0.5;
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub")
local Logs = Main.Logs("Join Logs (Name/DisplayName/UserID)")
local Page = Main.Page("Important","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Important")

 Section.Component("Button","Copy Discord (Support) to clipboard",function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
    end)

     Section.Component("Button","Press 'LeftAlt' to Minimize GUI",function()
    end)

         Section.Component("Button","Use Mousescroll to go through pages",function()
            -- Code
            end)

             Section.Component("Button","Support us - Cashapp - $JustAPlayer",function()
                -- Code
                end)

                if game.PlaceId == 301549746 then
                    local Page = Main.Page("CB","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

                    local Section = Page.Section("kick idf")

                     Section.Component("Card", "Dont enable all kicks", "^ will cause replication lag (alot) ^")


                     Section.Component("Toggle","AntiKick",function(bool)
                        _G.antikickes = bool;
                        local players = game:GetService("Players"):GetPlayers()
                        local localPlayer = game:GetService("Players").LocalPlayer
                        
                        while _G.antikickes ==  true do
                            if #players > 1 then
                                local randomPlayer
                                repeat
                                    randomPlayer = players[math.random(#players)]
                                until randomPlayer ~= localPlayer
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)

                                end
                            task.wait(0)
                        end 
                       end,false)
                     Section.Component("Toggle","AntiKick (1)",function(bool)
                        _G.antiantiantikickerkickerkicker = bool;
                        local players = game:GetService("Players"):GetPlayers()
                        local localPlayer = game:GetService("Players").LocalPlayer
                        
                        while _G.antiantiantikickerkickerkicker ==  true do
                            if #players > 1 then
                                local randomPlayer
                                repeat
                                    randomPlayer = players[math.random(#players)]
                                until randomPlayer ~= localPlayer
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                                end
                            task.wait(0)
                        end 
                       end,false)
                        Section.Component("Toggle","AntiKick 69420",function(bool)
                        _G.antikickesr = bool;
                        local players = game:GetService("Players"):GetPlayers()
                        local localPlayer = game:GetService("Players").LocalPlayer
                        
                        game:GetService("RunService").Heartbeat:Connect(function()
                            if _G.antikickesr == true then
                            if #players > 1 then
                                local randomPlayer
                                repeat
                                    randomPlayer = players[math.random(#players)]
                                until randomPlayer ~= localPlayer
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                                game:GetService("ReplicatedStorage").Events.Vote:FireServer(randomPlayer.Name)
                            end
                        end
                        end)
                       end,false)
                        Section.Component("Button","kick yo self",function()
                        game:GetService("ReplicatedStorage").Events.Vote:FireServer(game.Players.LocalPlayer.Name)
                        end)

                        
                    local Section = Page.Section("Visual Trolling")

                    local pingfaker = 0

                     Section.Component("Toggle","0 ping lol",function(bool)
                        _G.pingvis = bool
                        game:GetService("RunService").Heartbeat:Connect(function()
                            if _G.pingvis == true then
                            game:GetService("ReplicatedStorage").Events.UpdatePing:FireServer(0)
                            end
                            end)
                        end)

                    local Section = Page.Section("Tps")


                     Section.Component("Toggle","Auto Teleport CT Area",function(bool)
                        _G.AutoTpCT = bool;
                        while _G.AutoTpCT == true do
                            local character = game.Players.LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(1, 4, 1))
                    end
                    wait(.5)

                end
                       end,false)

                        Section.Component("Toggle","Auto Teleport T Area",function(bool)
                        _G.AutoTpT = bool;
                        while _G.AutoTpT == true do
                            local character = game.Players.LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(1, 4, 1))
                        end 
                        wait(1)

                    end
                                end,false)

                        Section.Component("Toggle","Auto Teleport Bomb Site A",function(bool)
                        _G.AutoTpA = bool;
                        while _G.AutoTpA == true do
                            local character = game.Players.LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(1, 4, 1))
                        end   
                        wait(.5)

                    end 
                       end,false)

                        Section.Component("Toggle","Auto Teleport Bomb Site B",function(bool)
                        _G.AutoTpB = bool;
                        while _G.AutoTpB == true do
                            local character = game.Players.LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(1, 4, 1))
                        end  
                        wait(.5)

                    end  
                       end,false)

                        Section.Component("Button","Teleport CT Area",function()
                        local character = game.Players.LocalPlayer.Character
                        if character and character:FindFirstChild("HumanoidRootPart") then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea2"].Position + Vector3.new(1, 4, 1))
                        end
                    end)

                         Section.Component("Button","Teleport T Area",function()
                            local character = game.Players.LocalPlayer.Character
                            if character and character:FindFirstChild("HumanoidRootPart") then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["BuyArea"].Position + Vector3.new(1, 4, 1))
                            end
                            end)

                             Section.Component("Button","Teleport Bomb Site A",function()
                                local character = game.Players.LocalPlayer.Character
                                if character and character:FindFirstChild("HumanoidRootPart") then
                                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant2"].Position + Vector3.new(1, 4, 1))
                                end
                            end)

                                 Section.Component("Button","Teleport Bomb Site B",function()
                                    local character = game.Players.LocalPlayer.Character
                                    if character and character:FindFirstChild("HumanoidRootPart") then
                                    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(workspace.Map.SpawnPoints["C4Plant"].Position + Vector3.new(1, 4, 1))
                                    end
                                end)

                    

                                local Section = Page.Section("Other Scripts")
                                 Section.Component("Button","Noov's Script",function()
                                    loadstring(game:HttpGet("https://raw.githubusercontent.com/NooVster/404/main/Source",true))()
                                end)
                end

local Page = Main.Page("LocalPlayer","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Local Player Information")
                Section.Component("Card", "LocalPlayer DisplayName:", game:GetService("Players").LocalPlayer.DisplayName)
                        Section.Component("Card", "LocalPlayer Name:", game:GetService("Players").LocalPlayer.Name)
                        Section.Component("Card", "LocalPlayer UserID:", game:GetService("Players").LocalPlayer.UserId or game:GetService("Players").LocalPlayer.UserID )
                        Section.Component("Card", "LocalPlayer Account Age:", game:GetService("Players").LocalPlayer.AccountAge)

local Section = Page.Section("Humanoid Modifier")
local walkspeed = 16
 Section.Component("Slider2","Walkspeed",0,250,false,function(value)
    walkspeed = value
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkspeed
end,walkspeed)

 Section.Component("Toggle","Loop Walkspeed",function(bool)
_G.LoopWs = bool
while _G.LoopWs == true  and game.Players.LocalPlayer.Character  do
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = walkspeed
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = walkspeed
task.wait()
end
end,false)

local jumppower =  50
     Section.Component("Slider2","Jumppower",0,300,false,function(value)
        jumppower = value
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end,jumppower)
         Section.Component("Toggle","Loop Jumppower",function(bool)
            _G.LoopJP = bool
            while _G.LoopJP == true  and game.Players.LocalPlayer.Character do
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumppower
            game.Players.LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = jumppower
            task.wait()
            end
            end,false)
            
         Section.Component("Slider2","Gravity",0,333,true,function(value)
            game:GetService("Workspace").Gravity = value
            end,196.2)
    
         Section.Component("Slider2","Hip Height",0,100,false,function(value)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
            end,2)
            
             Section.Component("Toggle","Inf Jump",function(bool)
                InfiniteJump = bool

                game:GetService("UserInputService").JumpRequest:Connect(function()
                    if InfiniteJump then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                    end
                end)
               end,false)

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
                            if descendant:IsDescendantOf(character) and descendant.Name == "Humanoid" and descendant:FindFirstChild("Animator") then
                                descendant.Animator:Destroy()
                            end
                        end
                        task.wait(5)
                    end
                end
            end, false)
            local Section = Page.Section("Camera")
             Section.Component("Slider2","Min Camera Zoom Distance",0,300,false,function(value)
                game:GetService("Players").LocalPlayer.CameraMinZoomDistance = value
                end,game:GetService("Players").LocalPlayer.CameraMinZoomDistance or 0.5)
        
             Section.Component("Slider2","Max Camera Zoom Distance",0,30000,false,function(value)
                game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = value
                end,game:GetService("Players").LocalPlayer.CameraMaxZoomDistance or 400)

            local camer = "Classic"
            local DropdownCam = Section.Component("Dropdown", "Camera Type", {"Regular (Classic)", "First Person"}, false, function(selectedcamOption, bool)
                if selectedcamOption == "Regular (Classic)" then
                    camer = "Classic"
                elseif selectedOption == "First Person" then
                    camer = "LockFirstPerson"
                end
                game:GetService("Players").LocalPlayer.CameraMode = camer
            end, false)
             Section.Component("Button", "Lock Camera on Character", function()
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
            end)
            local CameraCurrentSubjects
            local DropdownCam = Section.Component("Dropdown", "Choose Locked Current Camera Subject", {"Character", "Humanoid","Head", "UpperTorso", "LowerTorso","HumanoidRootPart","RightUpperLeg","LeftHand","RightHand","LeftLowerArm","RightLowerArm","LeftUpperArm","RightUpperArm","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg"}, false, function(CameraCurrentSubject, bool)
                CameraCurrentSubjects = CameraCurrentSubject
            end, false)

             Section.Component("Toggle", "Loop Current Camera Subject", function(bool)
                _G.LoopCameraSubject = bool
                while _G.LoopCameraSubject == true and task.wait(0.1) do
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
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
                    elseif CameraCurrentSubjects == "LeftHand" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
                    elseif CameraCurrentSubjects == "RightHand" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
                    elseif CameraCurrentSubjects == "LeftLowerArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
                    elseif CameraCurrentSubjects == "RightLowerArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
                    elseif CameraCurrentSubjects == "LeftUpperArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
                    elseif CameraCurrentSubjects == "RightUpperArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
                    elseif CameraCurrentSubjects == "LeftFoot" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
                    elseif CameraCurrentSubjects == "LeftLowerLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
                    elseif CameraCurrentSubjects == "LeftUpperLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
                    elseif CameraCurrentSubjects == "RightFoot" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
                    elseif CameraCurrentSubjects == "RightLowerLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
                    end
                end
            end
               end,false)
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
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightUpperLeg")
                    elseif CameraCurrentSubjects == "LeftHand" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftHand")
                    elseif CameraCurrentSubjects == "RightHand" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightHand")
                    elseif CameraCurrentSubjects == "LeftLowerArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerArm")
                    elseif CameraCurrentSubjects == "RightLowerArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")
                    elseif CameraCurrentSubjects == "LeftUpperArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperArm")
                    elseif CameraCurrentSubjects == "RightUpperArm" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightUpperArm")
                    elseif CameraCurrentSubjects == "LeftFoot" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftFoot")
                    elseif CameraCurrentSubjects == "LeftLowerLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftLowerLeg")
                    elseif CameraCurrentSubjects == "LeftUpperLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg")
                    elseif CameraCurrentSubjects == "RightFoot" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightFoot")
                    elseif CameraCurrentSubjects == "RightLowerLeg" then
                        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character:FindFirstChild("RightLowerLeg")
                    end
                end
               end,false)
            local Section = Page.Section("Other")
            _G.DissembleBodyVersion = "Version 3"
            local function autoinvis()
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
        elseif  _G.DissembleBodyVersion == "Version 2" then
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
             Section.Component("Dropdown","Dissemble Body Verison",{"Version 1","Version 2","Version 3"},false,function(versionfor,bool)
                _G.DissembleBodyVersion = tostring(versionfor)
            end,false)
            Section.Component("Toggle","Auto Dissemble Body / Invisible",function(bool)
                _G.AutoInvisible = bool
                    autoinvis()
                                game.Players.LocalPlayer.CharacterAdded:Connect(
                    function()
                        repeat
                            wait()
                        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") and game.Players.LocalPlayer.Character:FindFirstChild("LeftUpperLeg") and game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso"):FindFirstChild("Waist") and game.Players.LocalPlayer.Character:FindFirstChild("UpperTorso") 
                 autoinvis()
                
                   end)           
            end,false)
            Section.Component("Button", "Dissemble Body (Basically Invis)", function()
                if _G.DissembleBodyVersion == "Version 1" then
                    if game.Players.LocalPlayer.Character  then
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
                elseif  _G.DissembleBodyVersion == "Version 2" then
                    if game.Players.LocalPlayer.Character  then
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
                      end)
            local Shifty = Section.Component("Toggle", "Enable ShiftLock in settings", function(bool)
                game:GetService('Players').LocalPlayer.DevEnableMouseLock = bool
               end,false)
            
            local AutoHopStyleSpace = true
            local AutoHop = Section.Component("Toggle", "Use Spacebar for Auto Hop", function(bool)
                AutoHopStyleSpace = bool
            end,true)

            local autoJumpEnabled = false
            local AutoHop = Section.Component("Toggle", "Enable Auto Hop", function(bool)

        autoJumpEnabled = bool
local holdEnabled = true
local spaceEnabled = true
if AutoHopStyleSpace  then


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


             Section.Component("Button","Click TP Tool",function()
                mouse = game.Players.LocalPlayer:GetMouse()
                tool = Instance.new("Tool")
                tool.RequiresHandle = false
                tool.Name = "Click Teleport"
                tool.Activated:connect(function()
                local pos = mouse.Hit+Vector3.new(0,2.5,0)
                pos = CFrame.new(pos.X,pos.Y,pos.Z)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                end)
                tool.Parent = game.Players.LocalPlayer.Backpack
                end)

                 Section.Component("Button","Equip all Tools",function()
                    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if tool:IsA("Tool") then
                             tool.Parent = game:GetService("Players").LocalPlayer.Character
                        end
                    end
                    end)

                     Section.Component("Button","Get ALL Possible Tools",function()
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

                local Page = Main.Page("Aim","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

                
               local  TriggerBotEnabled = false
               local TriggerBotTeamCheck = false
               local Delay = 50
                local Section = Page.Section("TriggerBot")

                 Section.Component("Card", "TriggerBot will not shoot sometimes", "^ This is because of meshes blocking it ^")

                
                local ToggleTriggerBot = Section.Component("Toggle", "Enable Triggerbot", function(bool)
                    TriggerBotEnabled = bool
                end, TriggerBotEnabled)
                
                local ToggleTeamCheck = Section.Component("Toggle", "Team Check", function(bool)
                    TriggerBotTeamCheck = bool
                end, TriggerBotTeamCheck)
                
                local TriggerBotDistance = math.huge
                 Section.Component("Slider2", "Distance", 0, 5000, false, function(value)
                    TriggerBotDistance = value * 5.4321
                end, TriggerBotDistance)
                
                local Slider3 = Section.Component("Slider2", "Clicking Delay Intervals", 0, 2500, false, function(value)
                    Delay = value / 2500
                end, Delay)
                
                function TriggerTeamCheck(v)
                    if TriggerBotTeamCheck then
                        if v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                            return true
                        else
                            return false
                        end
                    else
                        return true
                    end
                end
                
                local Players = game:GetService("Players")
                local lp = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() and Players.LocalPlayer
                local mouse = lp:GetMouse()
                
                function gettarget(instance)
                    if not instance then return false end
                    for i,v in next, Players:GetPlayers() do
                        if TriggerTeamCheck(v) and TriggerBotEnabled then
                            if v.Character and (instance == v.Character or instance:IsDescendantOf(v.Character)) then
                                if v.Character:FindFirstChild("Head") or (lp.Character and lp.Character:FindFirstChild("Head")) then
                                    local distance = (v.Character.Head.Position - lp.Character.Head.Position).magnitude
                                    if distance <= TriggerBotDistance then
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
                
                local function triggerbot()
                    local target = mouse.Target
                    if target and gettarget(target) then
                        local character = target.Parent
                        if character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0 then
                            mouse1press()
                            task.wait(Delay)
                            mouse1release()
                        end
                    else
                        return false
                    end
                end
                
                local con = game:GetService("RunService").Heartbeat:Connect(triggerbot)

                local Section = Page.Section("Assistance")
                 Section.Component("Card", "Aim stuff made by argyyy#1355", "modified bits but he made the most of it")

-- modified some bits of this
                local AimEnabled = false
local AimTeamCheck = true
local ASWallCheck = true
local ShowFov = false
local HorizontalSmoothness = 10
local VerticalSmoothness = 10
local FOVRadius3 = 50
local BodyHitbox = "HumanoidRootPart"
local WallCheckOrigin = "Camera"
local Origin = "Camera"

local Prediction = false
local PredictionAmount = 0
local BackTracing = false
task.wait(0.5)

                local AimbotToggle = Section.Component("Toggle","Enable Aim Assist",function(bool)
                    AimEnabled = bool
                   end,AimEnabled)

                   local TAimPart = "HumanoidRootPart"
                   local HitPartDropdown = Section.Component("Dropdown","Target Hit Part",{"Head", "UpperTorso", "LowerTorso","HumanoidRootPart","RightUpperLeg","LeftHand","RightHand","LeftLowerArm","RightLowerArm","LeftUpperArm","RightUpperArm","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg"},false,function(hitpart,bool)
                    TAimPart = hitpart
                    if TAimPart == "Head" then
                        BodyHitbox = "Head"
                    elseif TAimPart == "UpperTorso" then
                        BodyHitbox = "UpperTorso"
                    elseif TAimPart == "LowerTorso" then
                        BodyHitbox = "LowerTorso"
                    elseif TAimPart == "RightUpperLeg" then
                        BodyHitbox = "RightUpperLeg"
                    elseif TAimPart == "LeftHand" then
                        BodyHitbox = "LeftHand"
                    elseif TAimPart == "RightHand" then
                        BodyHitbox = "RightHand"
                    elseif TAimPart == "LeftLowerArm" then
                        BodyHitbox = "LeftLowerArm"
                    elseif TAimPart == "RightLowerArm" then
                        BodyHitbox = "RightLowerArm"
                    elseif TAimPart == "LeftUpperArm" then
                        BodyHitbox = "LeftUpperArm"
                    elseif TAimPart == "RightUpperArm" then
                        BodyHitbox = "RightUpperArm"
                    elseif TAimPart == "LeftFoot" then
                        BodyHitbox = "LeftFoot"
                    elseif TAimPart == "LeftLowerLeg" then
                        BodyHitbox = "LeftLowerLeg"
                    elseif TAimPart == "LeftUpperLeg" then
                        BodyHitbox = "LeftUpperLeg"
                    elseif TAimPart == "RightFoot" then
                        BodyHitbox = "RightFoot"
                    elseif TAimPart == "RightLowerLeg" then
                        BodyHitbox = "RightLowerLeg"
                    end
                end,false)
                local ASTeamCheck = Section.Component("Toggle", "Team Check", function(bool)
                    AimTeamCheck = bool
                end, AimTeamCheck)
                
                local ASWallCheckToggle = Section.Component("Toggle", "Wall Check", function(bool)
                    ASWallCheck = bool
                end, ASWallCheck)
                
                local HorizontalSmoothingSlider = Section.Component("Slider2", "Horizontal Smoothing", 1, 100, false, function(value)
                    HorizontalSmoothness = value
                end, HorizontalSmoothness)
                
                local VerticalSmoothingSlider = Section.Component("Slider2", "Vertical Smoothing", 1, 100, false, function(value)
                    VerticalSmoothness = value
                end, VerticalSmoothness)
                
                local OriginDropdown = Section.Component("Dropdown", "Position", {"Camera", "Player"}, false, function(Origin3, bool)
                    WallCheckOrigin = Origin3
                end, false)

                local Section = Page.Section("Predicter")


                local PredictionToggle = Section.Component("Toggle","Enable Prediction",function(bool)
                    Prediction = bool
                   end,Prediction)
                   local PredictionAmountSlider = Section.Component("Slider2","Prediction Amount", -50, 200, false,function(value)
                    PredictionAmount = value
                   end,PredictionAmount)
                   local BackTracingToggle = Section.Component("Toggle","Enable Backtracing",function(bool)
                    BackTracing = bool
                   end,BackTracing)

                local Section = Page.Section("FOV")

                
                local ShowFovToggle = Section.Component("Toggle", "Toggle Circle", function(bool)
                    ShowFov = bool
                end, false)

                
                local FovRadiusSlider = Section.Component("Slider2", "FOV Radius", 0, 300, false, function(value)
                    FOVRadius3 = value
                end, FOVRadius3)

                local FOVThick = 2
                local FovRadiusSlider = Section.Component("Slider2", "FOV Thickness", 0, 29.9, true, function(value)
                    FOVThick = value
                end, FOVThick)

                local rgbred = 190
local rgbgreen = 175
local rgbblue = 255

local RGBR = Section.Component("Slider2", "RGB RED COLOR", 0, 255, false, function(value)
    rgbred = value
end, rgbred)

local RGBG = Section.Component("Slider2", "RGB GREEN COLOR", 0, 255, false, function(value)
    rgbgreen = value
end, rgbgreen)

local RGBB = Section.Component("Slider2", "RGB BLUE COLOR", 0, 255, false, function(value)
    rgbblue = value
end, rgbblue)

                local CC = game.Workspace.CurrentCamera
                local Mouse = game.Players.LocalPlayer:GetMouse()
                
                local Fov = Drawing.new("Circle")
                function UpdateFOV()
                    if AimEnabled then
                        Fov.Visible = ShowFov
                    else
                        Fov.Visible = false
                    end
                    Fov.Radius = FOVRadius3 * 3.75
                    Fov.Thickness = tonumber(FOVThick)
                    Fov.Color = Color3.new(rgbred/255, rgbgreen/255, rgbblue/255)
                    Fov.Position = Vector2.new(Mouse.X, Mouse.Y+35)
                end
                
                function WallCheck(part, ignore) 
                    if ASWallCheck then
                        if WallCheckOrigin == "Camera" then
                        Origin = CC.CFrame.Position
                        elseif WallCheckOrigin == "Player" then
                        Origin = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        end
                        CheckRay = Ray.new(Origin, part- Origin)
                        Hit = workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
                        return Hit == nil
                    else
                        return true
                    end
                    end
                
                function GetClosestPlayerToMouse()
                    local Target = nil
                    Closest = math.huge
                    for i,v in pairs(game.Players:GetPlayers()) do
                        pcall(function()
                        if v.Character and v.Character.Humanoid and v.Character.Humanoid.Health ~= 0 and v.Character.HumanoidRootPart and WallCheck(v.Character.HumanoidRootPart.Position,{game.Players.LocalPlayer.Character,v.Character}) and v ~= game.Players.LocalPlayer then
                            local pos,onscreen = CC:WorldToScreenPoint(v.Character[BodyHitbox].Position)
                            if onscreen then
                                local distance = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y+35)).magnitude
                                if distance < Fov.Radius and distance < Closest then
                                    Closest = distance
                                    Target = v
                                end
                            end
                        end
                    end)
                    end
                    return Target
                end
                
                function AimAtTarget(Hitbox)
                    WTSP = CC:WorldToScreenPoint(Hitbox)
                    mousemoverel((WTSP.X - Mouse.X)/HorizontalSmoothness, (WTSP.Y - Mouse.Y)/VerticalSmoothness)
                end
                
                game:GetService("RunService").RenderStepped:Connect(function()
                    UpdateFOV()
                if AimEnabled then
                    local MainTarget = GetClosestPlayerToMouse()
                    if MainTarget then
                        if AimTeamCheck then
                            if MainTarget.TeamColor ~= game.Players.LocalPlayer.TeamColor then
                        if Prediction then
                            if BackTracing then
                                AimAtTarget(MainTarget.Character[BodyHitbox].Position-MainTarget.Character[BodyHitbox].Velocity * PredictionAmount)
                            else
                        AimAtTarget(MainTarget.Character[BodyHitbox].Position+MainTarget.Character[BodyHitbox].Velocity * PredictionAmount)
                            end
                        else
                        AimAtTarget(MainTarget.Character[BodyHitbox].Position)
                        end
                    end
                    else
                        if Prediction then
                            if BackTracing then
                                AimAtTarget(MainTarget.Character[BodyHitbox].Position-MainTarget.Character[BodyHitbox].Velocity * PredictionAmount)
                            else
                        AimAtTarget(MainTarget.Character[BodyHitbox].Position+MainTarget.Character[BodyHitbox].Velocity * PredictionAmount)
                            end
                        else
                        AimAtTarget(MainTarget.Character[BodyHitbox].Position)
                        end
                    end
                end
            else
                MainTarget = nil
            end
            
            
            end)

            local Section = Page.Section("Other")

            local SpinPower = 7

            Section.Component("Slider2","Better Spin Bot's Power",0,150,true,function(value)
                SpinPower = value
            end,SpinPower)
            
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
            
            Section.Component(
                "Toggle",
                "Better Spin Bot",
                function(bool)
                    _G.Spiner = bool
                    if _G.Spiner == true then
                        spinxdfromiy()
                    end
                    game.Players.LocalPlayer.CharacterAdded:Connect(
                        function()
                            repeat
                                wait()
                            until game.Players.LocalPlayer.Character and
                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and
                                game.Players.LocalPlayer.Character:FindFirstChild("Torso") -- function happens after character spawns / gets added
                            wait(1)
                            if _G.Spiner == true then
                                spinxdfromiy()
                            end
                        end
                    )
                end,
                false
            )
            
local spininterval = 0
Section.Component("Slider2","Spin Interval",0,5,true,function(value)
    spininterval = value
    end,spininterval)
        
                        Section.Component("Toggle","Very Cancer SpinBot",function(bool)
                        _G.SpinnyBoy = bool
                        while _G.SpinnyBoy and task.wait(spininterval) do
                            if not game:GetService("Players").LocalPlayer.Character then
                                game:GetService("Players").LocalPlayer.CharacterAdded:wait()
                            end
                            game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.X, math.random(0, 180), game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Rotation.Z)
                        end
                    end,false)

                       local Page = Main.Page("Other","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
                       
                       local Section = Page.Section("ESP")

                        Section.Component("Card", "ESP made by skatbr", "(i modified it a bit)")
        
                        Section.Component("Toggle","Enable Visuals",function(Value)
                             if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().Visibility = Value
                    end,false)
        
                     Section.Component("Toggle","Enable Boxes",function(Value)
                        if getgenv().esp_loaded == false and Value == true then
               getgenv().esp_loaded = true
               loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
           end
           getgenv().boxESP = Value
               end,false)
                     Section.Component("Toggle","Enable Names",function(Value)
                            if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().nameESP = Value
                    end,false)
                     Section.Component("Toggle","Enable Chams",function(Value)
                            if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().cham = Value
                    end,false)
                     Section.Component("Toggle","Team Colors",function(Value)
                                 getgenv().useTeamColor = Value
                    end,false)


                    local Section = Page.Section("Hitbox")
                    
                        local hitboxsize = 0
                         Section.Component("Slider2","Hitbox Size",0,100,true,function(value)
                            hitboxsize = value
                            end,hitboxsize)
        
                            local teamcheck = false
                                                 Section.Component("Toggle","Team Check",function(bool5)
                                                    teamcheck = bool5
                                                end,false)
                             Section.Component("Toggle","Hitbox Expander",function(bool)
        -- ignore all the random code i did trial and error on this and too lazy to clean
        _G.HeadSize = hitboxsize
        _G.HitBoxExpander = bool
        _G.TeamCheckEnabled = teamcheck
        _G.CharacterAddedConnections = {} 
        
        function expandHitbox(player, character)
            if character and character:FindFirstChild("HumanoidRootPart") then
                local humanoidRootPart = character.HumanoidRootPart
                local teams = game.Teams
                if _G.HitBoxExpander == true and (not player.Team or (game.Teams:FindFirstChild("Neutral") and player.Team == game.Teams.Neutral) or (game.Teams:FindFirstChild(player.Team.Name) and player.Team == game.Teams[player.Team.Name])) then
                    humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
                    humanoidRootPart.Transparency = 0.7
                    humanoidRootPart.BrickColor = BrickColor.new("Eggplant")
                    humanoidRootPart.Material = Enum.Material.Neon
                    humanoidRootPart.CanCollide = false
                else
                    humanoidRootPart.Size = Vector3.new(2, 2, 1)
                    humanoidRootPart.Transparency = 1
                    humanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
                    humanoidRootPart.Material = Enum.Material.Plastic
                    humanoidRootPart.CanCollide = false
                end
            end
        end
        
        
        function onPlayerAdded(player)
            _G.CharacterAddedConnections[player] = player.CharacterAdded:Connect(function(character)
                expandHitbox(player, character)
            end)
            expandHitbox(player, player.Character) 
        end
        
        function onPlayerRemoving(player)
            if _G.CharacterAddedConnections[player] then
                _G.CharacterAddedConnections[player]:Disconnect()
                _G.CharacterAddedConnections[player] = nil
            end
        end
        
        game.Players.PlayerAdded:Connect(onPlayerAdded)
        game.Players.PlayerRemoving:Connect(onPlayerRemoving)
        
        while _G.HitBoxExpander == true do
            for _, player in ipairs(game.Players:GetPlayers()) do
                if player ~= game.Players.LocalPlayer then 
                    onPlayerAdded(player)
                end
            end
            wait(1) 
        end
                if _G.HitBoxExpander == false then
            for _, player in ipairs(game.Players:GetPlayers()) do
                local character = player.Character
                if character then
                    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                    if humanoidRootPart then
                        humanoidRootPart.Size = Vector3.new(2, 2, 1)
                        humanoidRootPart.Transparency = 1
                        humanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
                        humanoidRootPart.Material = Enum.Material.Plastic
                        humanoidRootPart.CanCollide = false
                    end
                end
            end
        end
                               end,false)


                               local Section = Page.Section("Misc Scripts")

                                Section.Component("Button","Owl Hub",function()
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
                                end)

                                 Section.Component("Button","Infinite Yield",function()
                                    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                                                                    end)

                                     Section.Component("Button","CMDX",function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
                                                                            end)


                                                                            local Page = Main.Page("Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
                                                                            local Section = Page.Section("Player Teleports")
                                                                            -- for some reason it doesnt work without these
                                                                            local TeleportPlayerType = "MoveTo"
                                                                             Section.Component("Dropdown","Player Teleport Type",{"MoveTo","CFrame"},false,function(TeleportType,bool)
                                                                                TeleportPlayerType = tostring(TeleportType)
                                                                            end,false)
                                                                             Section.Component("Button","Teleport to the void (close enough)",function()
                                                                                if TeleportPlayerType == "MoveTo" then
                                                                                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, -375, 0)) -- most likely the void
                                                                            elseif TeleportPlayerType == "CFrame" then
                                                                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, -375, 0)
                                                                            end
                                                                                end)
 Section.Component("Button","Teleport to Safe Area",function()
    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local platform = Instance.new("Part")
        platform.Name = "PlayerHubTeleportPlatform"
        platform.Size = Vector3.new(50, 7, 50)
        platform.Position = Vector3.new(-55282.639679, 571.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
        platform.Anchored = true
        platform.CanCollide = true
        platform.Parent = game.Workspace
        if TeleportPlayerType == "MoveTo" then
            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1))
    elseif TeleportPlayerType == "CFrame" then
        game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-55282.639679, 573.8871727, 55107.760048)
    end
end
                                            end)    
                                             Section.Component("Toggle","Auto Teleport to Safe Area",function(bool)
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
                                                            game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-55282.639679, 573.8871727, 55107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                                                    elseif TeleportPlayerType == "CFrame" then
                                                            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(-55282.639679, 573.8871727, 55107.760048)
                                                    end
                                                end
                                            task.wait(0.1)
                                        end
                                               end,false)
                                                Section.Component("Button","Delete Safe Area Platform",function()
                                                for _, platform in ipairs(game.Workspace:GetChildren()) do
                                                    if platform:IsA("Part") and platform.Name == "PlayerHubTeleportPlatform" then
                                                        platform:Destroy()
                                                    end
                                                end
                                                                                        end)
                                    Section.Component("Button","Teleport to 0,0,0",function()
if TeleportPlayerType == "MoveTo" then
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 0, 0))
elseif TeleportPlayerType == "CFrame" then
    game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(0, 0, 0)
end
                                        end)
                                        local XAxis = 0
                                        Section.Component("Slider2","X Axis",-25000,25000,false,function(value)
                                            XAxis = value
                                        end,XAxis)
                                            local YAxis = 0
Section.Component("Slider2","Y Axis",-2500,25000,false,function(value)
    YAxis = value
    end,YAxis)
    local ZAxis = 0
Section.Component("Slider2","Z Axis",-25000,25000,false,function(value)
    ZAxis = value
    end,ZAxis)
                                         Section.Component("Button","Teleport to Axis",function()
                                            if TeleportPlayerType == "MoveTo" then
                                                game.Players.LocalPlayer.Character:MoveTo(Vector3.new(XAxis, YAxis, ZAxis))
                                            elseif TeleportPlayerType == "CFrame" then
                                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = CFrame.new(XAxis, YAxis, ZAxis)
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
local Page = Main.Page("Settings","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Settings")
_G.JoinLogger = true
 Section.Component("Toggle","Enable Join Logger",function(bool)
    _G.JoinLogger = bool
end,_G.JoinLogger)
 Section.Component("Button","Antiafk/idle",function()
    wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)
    
    print("Antiafk enabled")
    end)
    Section.Component("Button","Antiafk/idle v2",function()
        if not game:IsLoaded() then
            game.Loaded:Wait()
            end
            
            for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
            v:Disable()
            end
        end)

     Section.Component("Toggle","3D Rendering (Helps with Device)",function(bool)
        game:GetService("RunService"):Set3dRenderingEnabled(bool)
                       end,true)

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
                       
                                                            Section.Component("Toggle","Shadows",function(bool)
                                                            game.Lighting.GlobalShadows = bool
                                                        end,true)

                                                         Section.Component("Slider2", "Brightness", 0, 30, true, function(value)
                                                            game.Lighting.Brightness  = value
                                                        end, game.Lighting.Brightness )

                                                         Section.Component("Slider2", "Time", 0, 24, true, function(value)
                                                            game.Lighting.ClockTime = value
                                                        end, game.Lighting.ClockTime )

                                                         Section.Component("Slider2", "Exposure", 0, 25, true, function(value)
                                                            game.Lighting.ExposureCompensation = value
                                                        end, game.Lighting.ExposureCompensation )

                                                         Section.Component("Slider2", "Geographic Latitude", -180, 180, false, function(value)
                                                            game.Lighting.GeographicLatitude = value
                                                        end, game.Lighting.GeographicLatitude )
                                                        
                                                         Section.Component("Button","YOU SHOULD KYS NOW!",function()
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

