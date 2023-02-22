getgenv().LibTheme = {
    MainColor = Color3.fromRGB(25,35,40);
    BrighterMainColor = Color3.fromRGB(35,40,45);
    IconsColor = Color3.fromRGB(80,100,120);
    Accent = Color3.fromRGB(100,255,155);
    DarkText = Color3.fromRGB(150,170,170);
    BrightText = Color3.fromRGB(125,145,145);
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

                local Page = Main.Page("Automation","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Tower Automation")

local Paragraph = Section.Component("Card", "Important", "Choose only ONE")


local Toggle = Section.Component("Toggle","Autofarm Rainbow Tower",function(bool)
    getgenv().RainbowTower = bool;
        while getgenv().RainbowTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Rainbow Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
    end,false)
    local Toggle = Section.Component("Toggle","Autofarm Candy Tower",function(bool)
    getgenv().CandyTower = bool;
        while getgenv().CandyTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Candy Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
    end,false)
    local Toggle = Section.Component("Toggle","Autofarm Hell Tower",function(bool)
        getgenv().HellTower = bool;
        while getgenv().HellTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Hell Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end
                                 end,false)
    local Toggle = Section.Component("Toggle","Autofarm Illumina Tower",function(bool)
        getgenv().IlluminaTower = bool;
        while getgenv().IlluminaTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Illumina Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
                                end,false)
    local Toggle = Section.Component("Toggle","Autofarm Bombastic Tower",function(bool)
        getgenv().BombasticTower = bool;
        while getgenv().BombasticTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Bombastic Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
    end,false)
    local Toggle = Section.Component("Toggle","Autofarm Christmas Tower",function(bool)
        getgenv().ChristmasTower = bool;
        while getgenv().ChristmasTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Christmas Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end
    end,false)
    local Toggle = Section.Component("Toggle","Autofarm Void Tower",function(bool)
        getgenv().VoidTower = bool;
        while getgenv().VoidTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Void Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
                               end,false)
    local Toggle = Section.Component("Toggle","Autofarm Beach Tower",function(bool)
        getgenv().BeachTower = bool;
        while getgenv().BeachTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Beach Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
                               end,false)
    local Toggle = Section.Component("Toggle","Autofarm Gold Tower",function(bool)
        getgenv().GoldTower = bool;
        while getgenv().GoldTower do
    
        task.wait(.05)
            local playerHead = game.Players.LocalPlayer.Character.Head
        for i, v in 
        pairs(game:GetService("Workspace")["__MAP"].Towers["Gold Tower"]:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(.07)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end end 
                               end,false)

local Section = Page.Section("Egg Automation")

 local Paragraph = Section.Component("Card", "Important", "Triple Hatch requires gamepass")

 local triblehatchicantspellffs
 local Toggle = Section.Component("Toggle","Enable Triple Hatch",function(bool)
triblehatchicantspellffs = bool
end,false)

local Toggle = Section.Component("Toggle","Auto Hatch Candy Egg",function(bool)
    getgenv().openCandyEgg = bool
        while getgenv().openCandyEgg do
            local args = {
                [1] = "S_Egg_Open",
                [2] = {
                    [1] = "Candy",
                    [2] = triblehatchicantspellffs
                }
            }
            
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
            wait(0.1)
        end
  end,false)

  local Toggle = Section.Component("Toggle","Auto Hatch Frosty Egg",function(bool)
    getgenv().openFrostyEgg = bool
        while getgenv().openFrostyEgg do
            local args = {
                [1] = "S_Egg_Open",
                [2] = {
                    [1] = "Frosty",
                    [2] = triblehatchicantspellffs
                }
            }
            
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
            wait(0.1) 
        end

  end,false)

  local Toggle = Section.Component("Toggle","Auto Hatch Crystal Egg",function(bool)
    getgenv().openCrystalEgg = bool
        while getgenv().openCrystalEgg do
            local args = {
                [1] = "S_Egg_Open",
                [2] = {
                    [1] = "Crystal",
                    [2] = triblehatchicantspellffs
                }
            }
            
            game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
            wait(0.1) 

end
  end,false)

  local Toggle = Section.Component("Toggle","Auto Hatch Cactus Egg",function(bool)
    getgenv().openCactusEgg = bool
    while getgenv().openCactusEgg do
        local args = {
            [1] = "S_Egg_Open",
            [2] = {
                [1] = "Cactus",
                [2] = triblehatchicantspellffs
            }
        }
        
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer(unpack(args))
        wait(0.1) 
    end
  end,false)


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
    

        local Slider2 = Section.Component("Slider2","Hip Height",2,100,false,function(value)
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
            end,2)
            local Section = Page.Section("Other")

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

