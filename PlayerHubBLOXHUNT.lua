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

local Button = Section.Component("Button","Copy Discord to clipboard",function()
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

local Section = Page.Section("Automation")

local Toggle = Section.Component("Toggle","Autofarm Tokens1",function(bool)
    getgenv().TokenFarmer1 = bool;
    while getgenv().TokenFarmer1 do

    task.wait(0)
        local playerHead = game.Players.LocalPlayer.Character.Head
    for i, v in 
    pairs(game:GetService("Workspace").LavaObby.Token:GetDescendants()) do
                                if v.name == "TouchInterest" and v.Parent then
                                  firetouchinterest(playerHead, v.Parent, 0)
    task.wait(0)
                                 firetouchinterest(playerHead, v.Parent, 1)
                            break;
                            end end end
                          end,false)

                          local Toggle = Section.Component("Toggle","Autofarm Tokens2",function(bool)
                            getgenv().TokenFarmer2 = bool;
                            while getgenv().TokenFarmer2 do
                        
                            task.wait(0)
                                local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in 
                            pairs(game:GetService("Workspace").Lobby.LobbyObby.Token:GetDescendants()) do
                                                        if v.name == "TouchInterest" and v.Parent then
                                                          firetouchinterest(playerHead, v.Parent, 0)
                            task.wait(0)
                                                         firetouchinterest(playerHead, v.Parent, 1)
                                                    break;
                                                    end end end
                                                  end,false)


                                                  local Section = Page.Section("Tools")

                                                  local Paragraph = Section.Component("Card", "Important", "Must use Infinite Energy")

                                                  local Paragraph = Section.Component("Card", "Click on the person for the fast kill", "It will spam the shock")

                                                  local Paragraph = Section.Component("Card", "FAST ZAP CAN TEAM KILL LOL", "(Works in non-disguises)")


                                                  local Toggle = Section.Component("Toggle","Fast Zap",function(bool)
                                                    _G.InstantKill = bool;

                                                    while _G.InstantKill do
                                                        local args = {
                                                            [1] = "Hit",
                                                            [2] = nil,
                                                        }
                                                        
                                                        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                                                        local target = mouse.Target
                                                        
                                                        if target and target.Parent:FindFirstChild("Humanoid") then
                                                            args[2] = target.Parent
                                                            game:GetService("ReplicatedStorage").GameFunctions.Shock:FireServer(unpack(args))
                                                        end
                                                        
                                                        task.wait(0.042)
                                                    end
                                                    
                                                                                                      end,false)

                                                  local Paragraph = Section.Component("Card", "Click on the person for Server Lagger", "It will spam shock")

                                                  local Paragraph = Section.Component("Card", "Buggy AF", "Will lag you aswell")

                                                  local Toggle = Section.Component("Toggle","Server Lagger",function(bool)
                                                    _G.Lagger = bool;

                                                    while _G.Lagger do
                                                        local args = {
                                                            [1] = "Hit",
                                                            [2] = nil,
                                                        }
                                                        
                                                        local mouse = game:GetService("Players").LocalPlayer:GetMouse()
                                                        local replicatedStorage = game:GetService("ReplicatedStorage")
                                                        local gameFunctions = replicatedStorage.GameFunctions
                                                        
                                                        mouse.Button1Down:Connect(function()
                                                            local target = mouse.Target
                                                            if target and target.Parent:FindFirstChild("Humanoid") then
                                                                args[2] = target.Parent
                                                                gameFunctions.Shock:FireServer(unpack(args))
                                                            end
                                                        end)
                                                        
                                                        wait() -- Wait for the next iteration of the while loop
                                                    end
                                                                                                      end,false)


                          local Section = Page.Section("Hunter Tools")

                          local Paragraph = Section.Component("Card", "Only Execute Hider ESP once", " If Not it'll Overlap")


                          local Button = Section.Component("Button","Hider ESP (Press E)",function()
                            local Players = game:GetService("Players")
                            local UserInputService = game:GetService("UserInputService")
                            local ToggleKeyCode = Enum.KeyCode.E
                            local OutlineColor = Color3.new(0, 0, 1) -- Bright Blue
                            local CharacterOutlines = {}
                                                        local function CreateCharacterOutline(character)
                                local Outline = Instance.new("BoxHandleAdornment")
                                Outline.Name = "Outline"
                                Outline.Size = character:GetExtentsSize()
                                Outline.Adornee = character
                                Outline.AlwaysOnTop = true
                                Outline.ZIndex = 5
                                Outline.Color3 = OutlineColor
                                Outline.Transparency = 0.5
                                Outline.Parent = character
                            
                                return Outline
                            end
                                                        local function RemoveCharacterOutline(character)
                                local Outline = CharacterOutlines[character]
                            
                                if Outline then
                                    Outline:Destroy()
                                    CharacterOutlines[character] = nil
                                end
                            end
                                                    local function ToggleCharacterOutline(character)
                                if CharacterOutlines[character] then
                                    RemoveCharacterOutline(character)
                                else
                                    CharacterOutlines[character] = CreateCharacterOutline(character)
                                end
                            end
                                                        local function ShouldOutlineCharacter(character)
                                local Torso = character:FindFirstChild("Torso")
                                return Torso and Torso:IsA("BasePart") and Torso.BrickColor == BrickColor.new("Bright blue")
                            end
                                                        local function UpdateCharacterOutlines()
                                for _, Player in ipairs(Players:GetPlayers()) do
                                    local Character = Player.Character
                                    if Character and Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Character) then
                                        ToggleCharacterOutline(Character)
                                    else
                                        RemoveCharacterOutline(Character)
                                    end
                                end
                            end
                                                        UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
                                if not gameProcessedEvent and input.KeyCode == ToggleKeyCode then
                                    UpdateCharacterOutlines()
                                end
                            end)
                                                        Players.PlayerAdded:Connect(function(Player)
                                Player.CharacterAdded:Connect(function(Character)
                                    if Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Character) then
                                        ToggleCharacterOutline(Character)
                                    end
                                end)
                            end)
                                                        Players.PlayerRemoving:Connect(function(Player)
                                local Character = Player.Character
                                if Character then
                                    RemoveCharacterOutline(Character)
                                end
                            end)
                                                        for _, Player in ipairs(Players:GetPlayers()) do
                                if Player.Character and Player.Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Player.Character) then
                                    ToggleCharacterOutline(Player.Character)
                                end
                            end 
                                                   end)

                          local Button = Section.Component("Button","Teleport to a Hider",function()
                            local targetColor = BrickColor.new("Bright blue")
                            local teleportLocation = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
                            
                            local function teleportToPlayer(player)
                                local torso = player.Character:FindFirstChild("Torso")
                                if torso and torso:IsA("BasePart") and torso.BrickColor == targetColor then
                                    local humanoidRootPart = game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                                    if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
                                        humanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position)
                                        wait(1)
                                    end
                                end
                            end
                            local eligiblePlayers = {}
                            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                                if player ~= game:GetService("Players").LocalPlayer and player.Character then
                                    local torso = player.Character:FindFirstChild("Torso")
                                    if torso and torso:IsA("BasePart") and torso.BrickColor == targetColor then
                                        table.insert(eligiblePlayers, player)
                                    end
                                end
                            end
                            
                            if #eligiblePlayers > 0 then
                                local randomIndex = math.random(1, #eligiblePlayers)
                                local randomPlayer = eligiblePlayers[randomIndex]
                                teleportToPlayer(randomPlayer)
                            end
                                                    end)

local Section = Page.Section("Hider Tools")

local Toggle = Section.Component("Toggle","Auto TP to Safe Zone",function(bool)
    _G.SafeSpot = bool
    while _G.SafeSpot do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-517.594971, 7545.3999786, -69.4001389)
            local platform = Instance.new("Part")
        platform.Size = Vector3.new(105, 4, 150) 
        platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 2, 0)
        platform.Anchored = true
        platform.CanCollide = true
        platform.Parent = game.Workspace
        wait(0.25)
    end  end,false)

local Paragraph = Section.Component("Card", "Only Execute Hunter ESP once", "If Not it'll Overlap")

local Button = Section.Component("Button","Hunter ESP (Press V)",function()
    local Players = game:GetService("Players")
    local UserInputService = game:GetService("UserInputService")
    local ToggleKeyCode = Enum.KeyCode.V
    local OutlineColor = Color3.new(1, 0, 0) -- Bright Red
    local CharacterOutlines = {}
                                local function CreateCharacterOutline(character)
        local Outline = Instance.new("BoxHandleAdornment")
        Outline.Name = "Outline"
        Outline.Size = character:GetExtentsSize()
        Outline.Adornee = character
        Outline.AlwaysOnTop = true
        Outline.ZIndex = 5
        Outline.Color3 = OutlineColor
        Outline.Transparency = 0.5
        Outline.Parent = character
    
        return Outline
    end
                                local function RemoveCharacterOutline(character)
        local Outline = CharacterOutlines[character]
    
        if Outline then
            Outline:Destroy()
            CharacterOutlines[character] = nil
        end
    end
                            local function ToggleCharacterOutline(character)
        if CharacterOutlines[character] then
            RemoveCharacterOutline(character)
        else
            CharacterOutlines[character] = CreateCharacterOutline(character)
        end
    end
                                local function ShouldOutlineCharacter(character)
        local Torso = character:FindFirstChild("Torso")
        return Torso and Torso:IsA("BasePart") and Torso.BrickColor == BrickColor.new("Bright red")
    end
                                local function UpdateCharacterOutlines()
        for _, Player in ipairs(Players:GetPlayers()) do
            local Character = Player.Character
            if Character and Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Character) then
                ToggleCharacterOutline(Character)
            else
                RemoveCharacterOutline(Character)
            end
        end
    end
                                UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
        if not gameProcessedEvent and input.KeyCode == ToggleKeyCode then
            UpdateCharacterOutlines()
        end
    end)
                                Players.PlayerAdded:Connect(function(Player)
        Player.CharacterAdded:Connect(function(Character)
            if Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Character) then
                ToggleCharacterOutline(Character)
            end
        end)
    end)
                                Players.PlayerRemoving:Connect(function(Player)
        local Character = Player.Character
        if Character then
            RemoveCharacterOutline(Character)
        end
    end)
                                for _, Player in ipairs(Players:GetPlayers()) do
        if Player.Character and Player.Character:IsDescendantOf(game.Workspace) and ShouldOutlineCharacter(Player.Character) then
            ToggleCharacterOutline(Player.Character)
        end
    end 
                           end)


local Page = Main.Page("Player","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

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
    
        local Slider2 = Section.Component("Slider2","Hip Height",0,100,false,function(value)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
            end,0)

            local Toggle = Section.Component("Toggle","Infinite Hit Points",function(bool)
_G.InfHP = bool;
while _G.InfHP do
    local args = {
        [1] = "Health",
        [2] = 10000
    }
    
    game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer(unpack(args))
    wait(0.5)
end
              end,false)

              local Toggle = Section.Component("Toggle","Infinite Energy",function(bool)
                _G.InfEnergy = bool;
                while _G.InfEnergy do
                    local args = {
                        [1] = "Energy",
                        [2] = 10000
                    }
                    
                    game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer(unpack(args))
                    wait(0.5)
                end
               end,false)

            local Section = Page.Section("Other")

            local Button = Section.Component("Button","Free Gamepasses",function()
local args = {
    [1] = "Radar"
}

game:GetService("ReplicatedStorage").ShopFunctions.PutOnGamepass:FireServer(unpack(args))
local args = {
    [1] = "Walkspeed"
}

game:GetService("ReplicatedStorage").ShopFunctions.PutOnGamepass:FireServer(unpack(args))
                end)

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


    local Button = Section.Component("Button","YOU SHOULD KYS NOW!",function()
        --// Services
        local players = game:GetService("Players")
         
        --// Other
        local client = players.LocalPlayer
         
                    client.Character.Humanoid.Health = 0
                    exit(0)
                       end)

