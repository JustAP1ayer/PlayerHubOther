
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
-- ignore how messy it is
getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false
-- for the future idk yet
if not isfolder("PlayerHub") then 
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
local Logs = Main.Logs("Lucky Blocks Notifier")
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
                local Page = Main.Page("Game","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
                local Section = Page.Section("Tycoon Farm")
                Section.Component("Button","Lewmr pls return 4 sniper :pray: <3",function()
                    -- Code
                    end)
                Section.Component("Toggle","Auto Melt",function(bool)
                    _G.AutoMelt = bool
                    while _G.AutoMelt == true and wait(0.025) do
                        local args = {
                            [1] = "Molten"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))                        
                end
                   end,false)
                Section.Component("Toggle","Auto Collect ores V1",function(bool)
                    _G.AutoCollectores = bool
                    while _G.AutoCollectores == true and wait(0.025) do
                    local player = game:GetService("Players").LocalPlayer

                    -- Get the value of TycoonValue
                    local tycoonValue = player:WaitForChild("TycoonValue").Value
                    
                    -- Access the folder based on the value of TycoonValue
                    local folderName = tostring(tycoonValue)
                    local tycoonFolder = workspace:FindFirstChild(folderName)
                    local oreFolder = tycoonFolder and tycoonFolder:FindFirstChild("OreFolder")
                    
                    if oreFolder then
                        local descendants = oreFolder:GetDescendants()
                        for _, descendant in ipairs(descendants) do
                            if descendant:IsA("BasePart") and descendant.Name == "Union" and descendant and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                pcall(function()
                                    firetouchinterest(descendant, player.Character.HumanoidRootPart, 1)
                                    wait(0.05)
                                    firetouchinterest(descendant, player.Character.HumanoidRootPart, 0)
                                end)
                            end
                        end
                    end
                end
                   end,false)
                   Section.Component("Toggle","Auto Collect ores V2",function(bool)
                    _G.AutoCollectores1 = bool
                    while _G.AutoCollectores1 == true and wait(0.025) do
                        local args = {
                            [1] = "CollectAll"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))                            
                end
                   end,false)
                   Section.Component("Toggle","Auto Merge",function(bool)
                    _G.AutMerge = bool
                    while _G.AutMerge == true and wait(0.025) do
                        local args = {
                            [1] = "Merge"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))          
                end
                   end,false)
                   Section.Component("Toggle","Auto Buy Rates",function(bool)
                    _G.AutoBuyRates = bool
                    while _G.AutoBuyRates == true and wait(0.025) do
                        local args = {
                            [1] = "BuyRates"
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))                                
                end
                   end,false)
                   local SelectedMinorAmountName = "1xMiner"
                    Section.Component("Dropdown", "Choose Miner Amount", {"1", "10", "24"}, false, function(SelectedMinorAmount, bool)
                       if SelectedMinorAmount == "1" then
                        SelectedMinorAmountName = "1xMiner"
                       elseif SelectedMinorAmount == "10" then
                        SelectedMinorAmountName = "10xMiner"
                        elseif SelectedMinorAmount == "24" then
                            SelectedMinorAmountName = "24xMiner"
                       end
                       game:GetService("Players").LocalPlayer.CameraMode = camer
                   end, false)
                   Section.Component("Toggle","Auto Buy Miner",function(bool)
                    _G.AutoBuyMinor = bool
                    while _G.AutoBuyMinor == true and wait(0.025) do
                        local args = {
                            [1] = tostring(SelectedMinorAmountName)
                        }
                        
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(args))                                
                end
                   end,false)
                   local Section = Page.Section("ESP")
                   Section.Component("Toggle","Enable Lucky Block ESP",function(bool)
                    _G.LuckyBlock = bool                 
if _G.LuckyBlock == true and workspace:FindFirstChild("LuckyBlockModel") then
    local highlight = Instance.new("Highlight")
        for _, child in ipairs(workspace:FindFirstChild("LuckyBlockModel"):GetChildren()) do
        if child:IsA("BasePart") then
            highlight.Parent = child
            highlight.Name = "PlayerHubHighLight"
        end
    end
elseif not _G.LuckyBlock == true and workspace:FindFirstChild("LuckyBlockModel") and workspace.LuckyBlockModel:FindFirstChild("PlayerHubHighLight") then
    for _, child in ipairs(workspace:FindFirstChild("LuckyBlockModel"):GetChildren()) do
        if child:IsA("BasePart") and child:FindFirstChild("PlayerHubHighLight") then
            child:FindFirstChild("PlayerHubHighLight"):Destroy()
        end
    end
end

                   end,false)
                   Section.Component("Toggle","Delete Game LuckyBlock Highlights",function(bool)
                    if workspace.LuckyBlockModel:FindFirstChild("Highlight") then
                    workspace.LuckyBlockModel:FindFirstChild("Highlight"):Destroy()
                    end
                   end,false)
                   workspace.LuckyBlockModel.ChildAdded:Connect(function(child)
                    if _G.LuckyBlock == true and child:IsA("BasePart") then
                        local highlight = Instance.new("Highlight")
                        highlight.Parent = child
                        highlight.Name = "PlayerHubHighLight"
                    end
                end)                
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

            local animspeed = 1
Section.Component("Slider2","Animation Speed",0,300,false,function(value)
animspeed = value
end,animspeed)

Section.Component("Toggle","Enable Animation Speed",function(bool)
    _G.AutoAnimsSpeed = bool
    while wait(0.25) and _G.AutoAnimsSpeed == true and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")  do
        Char = game:GetService("Players").LocalPlayer.Character
        Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
       for i,v in next, Hum:GetPlayingAnimationTracks() do
           v:AdjustSpeed(animspeed)
       end
    end
    end,false)
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
               local Section = Page.Section("Tool")
               local ToolOffsetX = 0
               local ToolOffsetY = 0
               local ToolOffsetZ = 0
                               Section.Component("Slider2","Tool Offset X",-30,30,true,function(value)
                                   ToolOffsetX = value
                               end,ToolOffsetX)
                               Section.Component("Slider2","Tool Offset Y",-30,30,true,function(value)
                                   ToolOffsetY = value
                               end,ToolOffsetY)
                               Section.Component("Slider2","Tool Offset Z",-30,30,true,function(value)
                                   ToolOffsetZ = value
                               end,ToolOffsetZ)
               
                               Section.Component("Button","Fix Offset",function()
                                if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                    tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                                    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
                                    tool.Parent = game.Players.LocalPlayer.Backpack
                                    tool.Parent = game.Players.LocalPlayer.Character
                                end
                                       end)
                                       Section.Component("Button","Set Offset",function()
                                        if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                                            tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                                            tool.Grip = CFrame.new(Vector3.new(ToolOffsetX, ToolOffsetY, ToolOffsetZ))
                                            tool.Parent = game.Players.LocalPlayer.Backpack
                                            tool.Parent = game.Players.LocalPlayer.Character
                                        end
                                               end)
                                       Section.Component("Toggle","Auto Set Tool Offset",function(bool)
                                        _G.ToolOffseter = bool
                                        local function offsetTool()
            while _G.ToolOffseter == true and game.Players.LocalPlayer.Character  and task.wait(0.1) do     
                if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip ~= Vector3.new(ToolOffsetX, ToolOffsetY, ToolOffsetZ) then
                tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                tool.Grip = CFrame.new(Vector3.new(ToolOffsetX, ToolOffsetY, ToolOffsetZ))
                tool.Parent = game.Players.LocalPlayer.Backpack
                tool.Parent = game.Players.LocalPlayer.Character
            end
            end
            end
            offsetTool()
            
            game.Players.LocalPlayer.CharacterAdded:Connect(
                function()
                    repeat
                        wait()
                    until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    wait(1)
                    offsetTool()
                end)  
            
                                        end,false)

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
                        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") -- function happens after character spawns / gets added
                        wait(1)
                        if NoClip == true then
                        NoclipLoop()
                        end
                    end)
            
                    if NoClip == false  then
                        characterAddedConnection:Disconnect()
                        Noclipping:Disconnect()
                    end             
            end, false)
            Section.Component("Button", "Disable Noclip", function()
            NoClip = false  
           end)
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

                                                                            local Section = Page.Section("Player Teleports")
                                                                            -- for some reason it doesnt work without these
                                                                            local TeleportPlayerType = "MoveTo"
                                                                             Section.Component("Dropdown","Player Teleport Type",{"MoveTo","CFrame"},false,function(TeleportType,bool)
                                                                                TeleportPlayerType = tostring(TeleportType)
                                                                            end,false)
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
_G.LuckyBlockNotifier = true
Section.Component("Toggle", "Enable Lucky Block Notifier", function(bool)
    _G.LuckyBlockNotifier = bool
end, false)

_G.JoinLogger = true
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
                        workspace.LuckyBlockModel.ChildAdded:Connect(function(child)
                            if _G.LuckyBlockNotifier == true then
                            Logs.LogWithButtons("A Lucky Block has Spawned!").Button("Teleport to it", function()
                                if child then
                                if TeleportPlayerType == "MoveTo" then
                                    game.Players.LocalPlayer.Character:MoveTo(child.CFrame.Position)
                                elseif TeleportPlayerType == "CFrame" and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = child.CFrame
                                end
                            end
                            end)
                        end
                        end)
                        

