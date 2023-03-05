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

                local Section = Page.Section("Mob")

                local Button = Section.Component("Button","Automob is a bit buggy but idgaf",function()
                    -- Code
                    end)
                
                local selectedboss
                local debounce = false

local function teleportToBoss()
    if selectedboss and selectedboss.PrimaryPart then
        local primaryPart = selectedboss.PrimaryPart
        local character = game.Players.LocalPlayer.Character
        if character then
            character:SetPrimaryPartCFrame(primaryPart.CFrame * CFrame.new(3.44, 12, 3))
        end
    end
end


local arenaBosses = {
    Noob = "Noob",
    Knight = "Knight",
    Orc = "Orc",
    Wizard = "Wizard",
    Pirate = "Pirate",
    Ninja = "Ninja",
    Undead = "Undead",
    ["IceKing"] = "IceKing",
    Zeus = "Zeus",
    ["Black Knight"] = "Black Knight",
    ["Grim Reaper"] = "Grim Reaper",
    ["Crystal Warlord"] = "Crystal Warlord",
    Samurai = "Samurai",
}
                local Dropdown = Section.Component("Dropdown","Mob List (Will not choose if it's dead)",{"Noob","Knight","Orc","Wizard","Pirate","Ninja","Undead","IceKing","Zeus","Black Knight","Grim Reaper","Crystal Warlord","Samurai"},false,function(value,bool)
    selectedboss = game:GetService("Workspace").Arenas[value .. "Arena"].Boss:FindFirstChild(arenaBosses[value])
                end,false)
                
local Toggle = Section.Component("Toggle", "Enable Mob Farm", function(bool)
    getgenv().MobFarming = bool
    spawn(function()
        repeat
            task.wait()
            if not MobFarming then return end
            if selectedboss and selectedboss.Parent then 
                local humanoid = selectedboss:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.Health <= 0 then
                    debounce = true
                    repeat
                        task.wait()
                    until not selectedboss.Parent or selectedboss:FindFirstChildOfClass("Humanoid")
                    debounce = false
                    local parent = selectedboss.Parent
                    if parent then
                        selectedboss = parent:FindFirstChild(selectedboss.Name)
                    end
                    teleportToBoss()
                else
                    teleportToBoss()
                end
            end
        until false
end)
                    while getgenv().MobFarming do
                        local player = game:GetService("Players").LocalPlayer
                        local backpack = player.Backpack
                        while not backpack do
                            backpack = player.Backpack
                            task.wait(0.05)
                        end
                        for _, child in ipairs(backpack:GetChildren()) do
                            if child:IsA("Tool") then
                                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                                if humanoid then
                                    humanoid:EquipTool(child)
                                    break
                                end
                            end
                        end
                            for _, descendant in ipairs(game:GetService("Workspace").Arenas:GetDescendants()) do
                                if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") then
                                    local args = {
                                        [1] = descendant.HumanoidRootPart
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
                                    local args = {
                                        [1] = descendant.HumanoidRootPart
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
                                end
                            end           
                            wait(0.0007)
                        end
                end,false)

local Section = Page.Section("Power")

local Toggle = Section.Component("Toggle", "Autofarm Power", function(bool)
    _G.AutoPowerFarm = bool
    repeat
        local player = game:GetService("Players").LocalPlayer
        local backpack = player.Backpack
        while not backpack do
            backpack = player.Backpack
            task.wait(0.05)
        end
        for _, child in ipairs(backpack:GetChildren()) do
            if child:IsA("Tool") then
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:EquipTool(child)
                    break
                end
            end
        end
        local equippedTool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if equippedTool then
            local args = {
                [1] = equippedTool
            }
            game:GetService("ReplicatedStorage").Remotes.Power:FireServer(unpack(args))
        end
        task.wait(0.1)
    until not _G.AutoPowerFarm
end, false)

   local Toggle = Section.Component("Toggle","Autosell Power",function(bool)
   _G.AutoSellPower = bool;
   while _G.AutoSellPower do
game:GetService("ReplicatedStorage").Remotes.SellPower:InvokeServer()
task.wait(0.08)
   end
   end,false)


   local Section = Page.Section("Kill Aura")

   local Toggle = Section.Component("Toggle", "Player Kill Aura (Disable Autofarms)", function(bool)
    _G.PlayerKillAura = bool;
    while _G.PlayerKillAura do
        for _, player in ipairs(game:GetService("Players"):GetPlayers()) do
            local character = player.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local args = {
                    [1] = character.HumanoidRootPart
                }
                game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
                local args = {
                    [1] = character.HumanoidRootPart
                }
                game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
            end
        end
        wait(0.0007)
    end 
    

   end,false)

   local Toggle = Section.Component("Toggle", "Boss Kill Aura (Disable Autofarms)", function(bool)
    _G.MobKillAura = bool;
    while _G.MobKillAura do
    for _, descendant in ipairs(game:GetService("Workspace").Arenas:GetDescendants()) do
        if descendant:IsA("Model") and descendant:FindFirstChild("HumanoidRootPart") then
            local args = {
                [1] = descendant.HumanoidRootPart
            }
            game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
            local args = {
                [1] = descendant.HumanoidRootPart
            }
            game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
        end
    end
    wait(0.0007)
end
   end,false)

   local Section = Page.Section("Egg")

   local Toggle = Section.Component("Toggle","Auto open Common Egg",function(bool)
_G.CommonEgg = bool
while _G.CommonEgg == true do
local args = {
    [1] = "Common Egg"
}

game:GetService("ReplicatedStorage").Remotes.EggPurchase:InvokeServer(unpack(args))
wait(10)
end
   end,false)

   local Toggle = Section.Component("Toggle","Auto open Crystal Egg",function(bool)
    _G.CrystalEgg = bool
while _G.CrystalEgg == true do
local args = {
    [1] = "Crystal Egg"
}

game:GetService("ReplicatedStorage").Remotes.EggPurchase:InvokeServer(unpack(args))
wait(10)
end
   end,false)

   local Toggle = Section.Component("Toggle","Auto open Magma Egg",function(bool)
    _G.MagmaEgg = bool
    while _G.MagmaEgg == true do
    local args = {
        [1] = "Magma Egg"
    }
    
    game:GetService("ReplicatedStorage").Remotes.EggPurchase:InvokeServer(unpack(args))
    wait(10)
    end
   end,false)

   local Toggle = Section.Component("Toggle","Auto open Jade Egg",function(bool)
    _G.JadeEgg = bool
    while _G.JadeEgg == true do
    local args = {
        [1] = "Jade Egg"
    }
    
    game:GetService("ReplicatedStorage").Remotes.EggPurchase:InvokeServer(unpack(args))
    wait(10)
    end
   end,false)

   local Section = Page.Section("Other")

   local Toggle = Section.Component("Toggle","KoTH Afk",function(bool)
    _G.koTh = bool
    while _G.koTh == true do
        local platform = Instance.new("Part")
        platform.Size = Vector3.new(15, 3, 15)
        platform.Position = Vector3.new(-282.639679, 71.8871727, 107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1) 
        platform.Anchored = true
        platform.CanCollide = true
        platform.Parent = game.Workspace
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-282.639679, 72.8871727, 107.760048, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    wait(3)
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