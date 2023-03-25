getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false

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
local Page = Main.Page("Important","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Important")

local Button = Section.Component("Button","Copy Discord (Support) to clipboard",function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
    end)

    local Button = Section.Component("Button","Press 'LeftAlt' to Minimize GUI",function()
        -- Code
        end)

        local Button = Section.Component("Button","Use Mousescroll to go through pages",function()
            -- Code
            end)

            local Button = Section.Component("Button","Support us - Cashapp - $JustAPlayer",function()
                -- Code
                end)

                local Page = Main.Page("Main","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Wins")
local Paragraph = Section.Component("Card", "Go to the selected farming place", "If not, you will be kicked.")
local Paragraph = Section.Component("Card", "WARNING AUTOMATION IS DETECTED", "YOU'LL GET BANNED")

local Button = Section.Component("Button","Farm Spawn Win Once",function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

        firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Spawn["60"].CFrame * CFrame.new(0, 3, 0)
        wait(.2)
        firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Spawn.CFrame * CFrame.new(0, 3, 0)
        wait(.55)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Spawn:FindFirstChildOfClass("ProximityPrompt"), 1, true)
    end
end)
local Button = Section.Component("Button","Farm CandyLand Win Once",function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Candy["46"].CFrame * CFrame.new(0, 3, 0)
        wait(.2)
        firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Candy.CFrame * CFrame.new(0, 3, 0)
        wait(.55)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Candy:FindFirstChildOfClass("ProximityPrompt"), 1, true)   
    end
   end)
local Toggle = Section.Component("Toggle","Autofarm Spawn Wins (RISKY) ",function(bool)
    _G.autofarmercspawnwins = bool
    local function spawn()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
         firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Spawn["60"].CFrame * CFrame.new(0, 3, 0)
        wait(.2)
        firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Spawn.CFrame * CFrame.new(0, 3, 0)
        wait(.55)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Spawn:FindFirstChildOfClass("ProximityPrompt"), 1, true)
end
    if _G.autofarmercspawnwins ==  true then
    spawn()
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        wait(.25)
        if _G.autofarmercspawnwins == true then
            spawn()
        end
    end)
end,false)
local Toggle = Section.Component("Toggle","Autofarm CandyLand Wins (RISKY)",function(bool)
    _G.autofarmercandyspawnwins = bool
    function canndy()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                    firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Candy["46"].CFrame * CFrame.new(0, 3, 0)
        wait(.2)
        firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(.25)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Candy.CFrame * CFrame.new(0, 3, 0)
        wait(.55)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Candy:FindFirstChildOfClass("ProximityPrompt"), 1, true)   
    end
    if _G.autofarmercandyspawnwins == true then
        canndy()
end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        wait(.25)
        if _G.autofarmercandyspawnwins == true then
            canndy()
        end
    end)      
   end,false)

   local Toggle = Section.Component("Toggle","Autofarm Spawn Wins (Slow)",function(bool)
    _G.autofarmerccspawnwins = bool
    local function spawen()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
          firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Spawn["60"].CFrame * CFrame.new(0, 3, 0)
        wait(2)
        firetouchinterest(game:GetService("Workspace").Checkpoints.Spawn["60"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Spawn.CFrame * CFrame.new(0, 3, 0)
        wait(5.5)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Spawn:FindFirstChildOfClass("ProximityPrompt"), 1, true)
    end

    if _G.autofarmerccspawnwins ==  true then
        spawen()
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        wait(.25)
        if _G.autofarmerccspawnwins == true then
            spawen()
        end
    end)
end,false)

local Toggle = Section.Component("Toggle","Autofarm CandyLand Wins (Slow)",function(bool)
    _G.autofarmercandyecspawnwins = bool
    function canncady()
        repeat
            wait()
        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Checkpoints.Candy["46"].CFrame * CFrame.new(0, 3, 0)
        wait(2)
        firetouchinterest(Workspace.Checkpoints.Candy["46"], game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RebirthButtons.Candy.CFrame * CFrame.new(0, 3, 0)
        wait(5.5)
        fireproximityprompt(game:GetService("Workspace").RebirthButtons.Candy:FindFirstChildOfClass("ProximityPrompt"), 1, true)   
    end
    if _G.autofarmercandyecspawnwins == true then
        canncady()
end
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        wait(.25)
        if _G.autofarmercandyecspawnwins == true then
            canncady()
        end
    end)      
   end,false)

   local Section = Page.Section("Pets")

   local Toggle = Section.Component("Toggle","Auto Enable best pet",function(bool)
    _G.bestpet = bool
while _G.bestpet == true do
game:GetService("ReplicatedStorage").RecodeRemotes.EquipBest:FireServer()
wait(1)
end
    end,false)


   local triplex = false
   local Toggle = Section.Component("Toggle","Enable Triple Hatch",function(bool)
    triplex = bool
    end,triplex)

    local Toggle = Section.Component("Toggle","Auto Hatch Grass Egg",function(bool)
        _G.AutoHatchGrass = bool
        while _G.AutoHatchGrass == true do
        if triplex == true then
local args = {
    [1] = "Grass Egg",
    [2] = 3
}

game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
wait(1)
elseif triplex == false then
local args = {
    [1] = "Grass Egg",
    [2] = 1
}

game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
wait(1)
end
        end
        end,false)

        local Toggle = Section.Component("Toggle","Auto Hatch Jungle Egg",function(bool)
            _G.AutoHatchJungle = bool
            while _G.AutoHatchJungle == true do
            if triplex == true then
    local args = {
        [1] = "Jungle Egg",
        [2] = 3
    }
    
    game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
    wait(1)
    elseif triplex == false then
    local args = {
        [1] = "Jungle Egg",
        [2] = 1
    }
    
    game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
    wait(1)
    end
            end
            end,false)

            local Toggle = Section.Component("Toggle","Auto Hatch Noob Egg",function(bool)
                _G.AutoHatchNoob = bool
                while _G.AutoHatchNoob == true do
                if triplex == true then
        local args = {
            [1] = "Noob Egg",
            [2] = 3
        }
        
        game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
        wait(1)
        elseif triplex == false then
        local args = {
            [1] = "Noob Egg",
            [2] = 1
        }
        
        game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
        wait(1)
        end
                end
                end,false)

                local Toggle = Section.Component("Toggle","Auto Hatch Demonic Egg",function(bool)
                    _G.AutoHatchDemonic = bool
                    while _G.AutoHatchDemonic == true do
                    if triplex == true then
            local args = {
                [1] = "Demonic Egg",
                [2] = 3
            }
            
            game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
            wait(1)
            elseif triplex == false then
            local args = {
                [1] = "Demonic Egg",
                [2] = 1
            }
            
            game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
            wait(1)
            end
                    end
              end,false)

                    local Toggle = Section.Component("Toggle","Auto Hatch Hell Egg",function(bool)
                        _G.AutoHatchHell = bool
                        while _G.AutoHatchHell == true do
                        if triplex == true then
                local args = {
                    [1] = "Hell Egg",
                    [2] = 3
                }
                
                game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
                wait(1)
                elseif triplex == false then
                local args = {
                    [1] = "Hell Egg",
                    [2] = 1
                }
                
                game:GetService("ReplicatedStorage").RecodeRemotes.BuyEgg:InvokeServer(unpack(args))
                wait(1)
                end
                        end
             end,false)


   local Section = Page.Section("Other")

   local Button = Section.Component("Button","Delete VIP Door",function()
    if Workspace["Lobby stuff"].VIPHolder["VIP Room"]["muro vip"]:FindFirstChild("VIPDoor") then
        Workspace["Lobby stuff"].VIPHolder["VIP Room"]["muro vip"].VIPDoor:Destroy()
    end
    end)

    local Page = Main.Page("Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

    local Section = Page.Section("Teleports")

    local Button = Section.Component("Button","Teleport to Spawn End Platform",function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.132111, 1280.27234, -936.734314, 0.656741321, -1.13213339e-07, -0.754115939, 6.01249397e-08, 1, -9.77658772e-08, 0.754115939, 1.88657143e-08, 0.656741321)
        end)

        local Button = Section.Component("Button","Teleport to Spawn VIP Room",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196.622787, 6.16140413, 249.003433, -0.999938548, 3.45462831e-06, -0.0110838274, 3.36606445e-06, 1, 8.00901853e-06, 0.0110838274, 7.97121811e-06, -0.999938548)
            end)
    
            local Button = Section.Component("Button","Teleport to Obby Finish 1",function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(758.899902, 18.4336281, 101.769722, -0.0354122482, 9.99977061e-08, -0.99937278, 1.00304078e-07, 1, 9.65062412e-08, 0.99937278, -9.6823662e-08, -0.0354122482)
                end)

                local Button = Section.Component("Button","Teleport to Obby Finish 2",function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(814.974121, 21.2057896, 199.111877, -0.448606163, 1.15901152e-07, -0.893729568, -2.57705466e-08, 1, 1.42618063e-07, 0.893729568, 8.70112373e-08, -0.448606163)
                    end)

                    
                local Button = Section.Component("Button","Teleport to Obby Finish 3",function()
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(814.379333, 7.30789328, 273.232819, 0.249363318, -8.08169318e-08, -0.968410015, -2.7394087e-08, 1, -9.05071289e-08, 0.968410015, 4.90978671e-08, 0.249363318)
                    end)

                    local Button = Section.Component("Button","Teleport to Obby Finish 4",function()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(763.007812, 7.30789328, 380.64151, -0.938048542, 1.18533954e-07, -0.346503824, 7.78964164e-08, 1, 1.31205852e-07, 0.346503824, 9.60860547e-08, -0.938048542)
                        end)

                        local Button = Section.Component("Button","Teleport to Obby Finish 5",function()
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(763.007812, 7.30789328, 380.64151, -0.938048542, 1.18533954e-07, -0.346503824, 7.78964164e-08, 1, 1.31205852e-07, 0.346503824, 9.60860547e-08, -0.938048542)
                            end)

                            local Button = Section.Component("Button","Teleport to Obby Finish 6",function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(859.427612, 29.6308002, 466.002899, 0.0119586382, 3.86509003e-09, -0.999928474, 6.62163302e-09, 1, 3.94455801e-09, 0.999928474, -6.66833122e-09, 0.0119586382)
                                end)

                                local Button = Section.Component("Button","Teleport to Obby Finish 7",function()
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(861.539429, 5.77924204, 571.501831, 0.020307539, -5.03050899e-08, -0.999793768, -1.00997418e-07, 1, -5.23668966e-08, 0.999793768, 1.02040033e-07, 0.020307539)
                                    end)

                                    local Button = Section.Component("Button","Teleport to Obby Finish 8",function()
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(622.194397, 288.597412, 870.630432, -0.165466145, -1.00103634e-07, -0.986215472, -1.27100392e-07, 1, -8.01780331e-08, 0.986215472, 1.12081622e-07, -0.165466145)
                                        end)

local Page = Main.Page("Local Player","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Humanoid Modifier")

local Slider2 = Section.Component("Slider2","Walkspeed",0,250,false,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end,18)

    local Slider2 = Section.Component("Slider2","Jumppower",0,300,false,function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end,50)

        local Slider2 = Section.Component("Slider2","Gravity",0,333,true,function(value)
            game:GetService("Workspace").Gravity = value
            end,196.2)
    
        local Slider2 = Section.Component("Slider2","Hip Height",2,100,false,function(value)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
            end,2)
            
            local Toggle = Section.Component("Toggle","Inf Jump",function(bool)
                InfiniteJump = bool

                game:GetService("UserInputService").JumpRequest:Connect(function()
                    if InfiniteJump then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                    end
                end)
               end,false)

               local Section = Page.Section("Misc Modifiers")

               local Toggle = Section.Component("Toggle", "Remove Anims1", function(bool)
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
            
            local Toggle = Section.Component("Toggle", "Remove Anims2 (Blatant + Buggy)", function(bool)
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
            
            local Section = Page.Section("Other")

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


            local Button = Section.Component("Button","Click TP Tool",function()
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

                local Button = Section.Component("Button","Equip all Tools",function()
                    for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                        if tool:IsA("Tool") then
                             tool.Parent = game:GetService("Players").LocalPlayer.Character
                        end
                    end
                    end)

                    local Button = Section.Component("Button","Get ALL Possible Tools",function()
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

                       local Page = Main.Page("Other","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
                       local Section = Page.Section("ESP")

                       local Paragraph = Section.Component("Card", "ESP made by skatbr", "(i modified it a bit)")
        
                       local Toggle = Section.Component("Toggle","Enable Visuals",function(Value)
                             if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().Visibility = Value
                    end,false)
        
                    local Toggle = Section.Component("Toggle","Enable Boxes",function(Value)
                        if getgenv().esp_loaded == false and Value == true then
               getgenv().esp_loaded = true
               loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
           end
           getgenv().boxESP = Value
               end,false)
                    local Toggle = Section.Component("Toggle","Enable Names",function(Value)
                            if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().nameESP = Value
                    end,false)
                    local Toggle = Section.Component("Toggle","Enable Chams",function(Value)
                            if getgenv().esp_loaded == false and Value == true then
                    getgenv().esp_loaded = true
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
                end
                getgenv().cham = Value
                    end,false)
                    local Toggle = Section.Component("Toggle","Team Colors",function(Value)
                                 getgenv().useTeamColor = Value
                    end,false)

                               local Section = Page.Section("Misc Scripts")

                               local Button = Section.Component("Button","Owl Hub",function()
                                loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
                                end)

                                local Button = Section.Component("Button","Infinite Yield",function()
                                    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
                                                                    end)

                                    local Button = Section.Component("Button","CMDX",function()
                                        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
                                                                            end)




local Page = Main.Page("Settings","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Settings")

local Button = Section.Component("Button","Antiafk/idle",function()
    wait(0.5)
    local bb=game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    bb:CaptureController()
    bb:ClickButton2(Vector2.new())
    end)
    
    print("Antiafk enabled")
    end)

    local Toggle = Section.Component("Toggle","3D Rendering (Helps with Device)",function(bool)
        game:GetService("RunService"):Set3dRenderingEnabled(bool)
                       end,true)

                       local CurrentFogStart = game.Lighting.FogStart
                       local CurrentFogEnd = game.Lighting.FogEnd
                       
                       local Toggle = Section.Component("Toggle", "Disable Fog", function(bool)
                           if bool then
                               game.Lighting.FogStart = 100000000
                               game.Lighting.FogEnd = 100000000
                           else
                               game.Lighting.FogStart = CurrentFogStart
                               game.Lighting.FogEnd = CurrentFogEnd
                           end
                       end, false)
                       
                                                           local Toggle = Section.Component("Toggle","Shadows",function(bool)
                                                            game.Lighting.GlobalShadows = bool
                                                        end,true)

                                                        local Slider2 = Section.Component("Slider2", "Brightness", 0, 30, true, function(value)
                                                            game.Lighting.Brightness  = value
                                                        end, game.Lighting.Brightness )

                                                        local Slider2 = Section.Component("Slider2", "Time", 0, 24, true, function(value)
                                                            game.Lighting.ClockTime = value
                                                        end, game.Lighting.ClockTime )

                                                        local Slider2 = Section.Component("Slider2", "Exposure", 0, 2, true, function(value)
                                                            game.Lighting.ExposureCompensation = value
                                                        end, game.Lighting.ExposureCompensation )
                                                        
                                                        local Button = Section.Component("Button","YOU SHOULD KYS NOW!",function()
                                                            game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0
                                                               end)


                       local Toggle = Section.Component("Toggle", "Moonknight typa shit (Visual)", function(bool)
                        _G.MoonKnight = bool
                        while _G.MoonKnight == true do
                            for i = 0, 23.99, 0.14 do
                                game.Lighting.ClockTime = i
                                wait(0.0240)
                            end
                        end
                    end, false)