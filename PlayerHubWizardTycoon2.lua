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

                local Section = Page.Section("Main")

                local Paragraph = Section.Component("Card", "Heads up", "Bringer only works once (for some reason)")


                local offset1 = -10
local Slider2 = Section.Component("Slider2","Bringer offset",-10,10,false,function(value)
 offset1 = value
end,offset1)

local Toggle = Section.Component("Toggle","Bringer",function(bool)
    _G.Banana = bool    

    
    while _G.Banana do
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
                if humanoid and humanoid.Health > 0 and humanoid.RootPart then
                    humanoid.RootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:ToWorldSpace(CFrame.new(0, 0, offset1))
                end
            end
        end
    
        wait(0.042)
    end
    
  end,false)

  local Button = Section.Component("Button","Safe Platform",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5513.499878, 155.72700024, 525.200073, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    
    local platform = Instance.new("Part")
    platform.Size = Vector3.new(15, 3, 15)
    platform.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 2, 0) 
    platform.Anchored = true
    platform.CanCollide = true
    platform.Parent = game.Workspace
    end)

local Section = Page.Section("Wand")

local DmgModifier = 15
                local Slider2 = Section.Component("Slider2","Damage Modifier (All below)",0,300,false,function(value)
                    DmgModifier = value
                    end,DmgModifier)

                    local isEnabled = false

                    local Toggle = Section.Component("Toggle","Enable Dmg Manipulator",function(bool)
                        isEnabled = bool

                        local mt = getrawmetatable(game)
                        local old = mt.__namecall
                        setreadonly(mt, false)
                        mt.__namecall = newcclosure(function(self, ...)
                            local args = {...}
                            if getnamecallmethod() == 'FireServer' and self.Name == 'Fire' then
                                if isEnabled then
                                    args[5] = DmgModifier
                                else
                                    args[5] = 15
                                end
                            end
                            return old(self, unpack(args))
                        end)
                                       end,isEnabled)

local Toggle = Section.Component("Toggle","Kill All (Wand)",function(bool)
    _G.WandKillAll = bool
    local function killallplayers(player)
        if player.Character then
            for i, v in pairs(game.Workspace:GetChildren()) do
                if player.Character:FindFirstChild("Humanoid") and v.Name == game.Players.LocalPlayer.Name then
                    if player.Character.Humanoid.Health > 0 and player.Character:FindFirstChild("HumanoidRootPart") then
                        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand") then
                            local args = {
                                [1] = player.Character.HumanoidRootPart.CFrame,
                                [2] = DmgModifier,
                                [3] = DmgModifier,
                                [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                [5] = DmgModifier,
                                [6] = workspace:WaitForChild(game.Players.LocalPlayer.Name)
                            }
                            game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                            wait()
                        end
                    end
                end
            end
        end
    end
    
    while _G.WandKillAll == true do
        for _, player in pairs(game.Players:GetPlayers()) do
            killallplayers(player)

            task.wait(.03)
        end
    end
                   end,false)

                   local Paragraph = Section.Component("Card", "Heads up", "Killing Teams is inaccurate")


                   local Toggle = Section.Component("Toggle","Kill Yellow Team (Wand)",function(bool)
                    _G.WandKillYellow = bool
                    local yellowTeam = game:GetService("Teams").Yellow

                    local function killallyellowplayers(player)
                        if player.Character and player.Team == yellowTeam then
                            local humanoid = player.Character:FindFirstChild("Humanoid")
                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                            local wand = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand")
                            if humanoid and humanoidRootPart and wand then
                                if humanoid.Health > 0 then
                                    local args = {
                                        [1] = humanoidRootPart.CFrame,
                                        [2] = DmgModifier,
                                        [3] = DmgModifier,
                                        [4] = wand,
                                        [5] = DmgModifier,
                                        [6] = workspace:WaitForChild(player.Name)
                                    }
                                    wand.Fire:FireServer(unpack(args))
                                    wait()
                                end
                            end
                        end
                    end
                    
                    while _G.WandKillYellow == true do
                        for _, player in pairs(yellowTeam:GetPlayers()) do
                            killallyellowplayers(player)
                
                            task.wait(.05)
                        end
                    end
                                   end,false)

                                   local Toggle = Section.Component("Toggle","Kill Green Team (Wand)",function(bool)
                                    _G.WandKillGreen = bool
                                    local GreenTeam = game:GetService("Teams").Green
                
                                    local function killallgreenplayers(player)
                                        if player.Character and player.Team == GreenTeam then
                                            local humanoid = player.Character:FindFirstChild("Humanoid")
                                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                            local wand = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand")
                                            if humanoid and humanoidRootPart and wand then
                                                if humanoid.Health > 0 then
                                                    local args = {
                                                        [1] = humanoidRootPart.CFrame,
                                                        [2] = DmgModifier,
                                                        [3] = DmgModifier,
                                                        [4] = wand,
                                                        [5] = DmgModifier,
                                                        [6] = workspace:WaitForChild(player.Name)
                                                    }
                                                    wand.Fire:FireServer(unpack(args))
                                                    wait()
                                                end
                                            end
                                        end
                                    end
                                    
                                    while _G.WandKillGreen == true do
                                        for _, player in pairs(GreenTeam:GetPlayers()) do
                                            killallgreenplayers(player)
                                
                                            task.wait(.05)
                                        end
                                    end
                                                   end,false)

                                                   local Toggle = Section.Component("Toggle","Kill Blue Team (Wand)",function(bool)
                                                    _G.WandKillBlue = bool
                                                    local blueTeam = game:GetService("Teams").Blue
                                
                                                    local function killallblueplayers(player)
                                                        if player.Character and player.Team == blueTeam then
                                                            local humanoid = player.Character:FindFirstChild("Humanoid")
                                                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                                            local wand = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand")
                                                            if humanoid and humanoidRootPart and wand then
                                                                if humanoid.Health > 0 then
                                                                    local args = {
                                                                        [1] = humanoidRootPart.CFrame,
                                                                        [2] = DmgModifier,
                                                                        [3] = DmgModifier,
                                                                        [4] = wand,
                                                                        [5] = DmgModifier,
                                                                        [6] = workspace:WaitForChild(player.Name)
                                                                    }
                                                                    wand.Fire:FireServer(unpack(args))
                                                                    wait()
                                                                end
                                                            end
                                                        end
                                                    end
                                                    
                                                    while _G.WandKillBlue == true do
                                                        for _, player in pairs(blueTeam:GetPlayers()) do
                                                            killallblueplayers(player)
                                                
                                                            task.wait(.05)
                                                        end
                                                    end
                                                                   end,false)

                                                                   local Toggle = Section.Component("Toggle","Kill Red Team (Wand)",function(bool)
                                                                    _G.WandKillRed = bool
                                                                    local redTeam = game:GetService("Teams").Red
                                                
                                                                    local function killallredplayers(player)
                                                                        if player.Character and player.Team == redTeam then
                                                                            local humanoid = player.Character:FindFirstChild("Humanoid")
                                                                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                                                            local wand = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand")
                                                                            if humanoid and humanoidRootPart and wand then
                                                                                if humanoid.Health > 0 then
                                                                                    local args = {
                                                                                        [1] = humanoidRootPart.CFrame,
                                                                                        [2] = DmgModifier,
                                                                                        [3] = DmgModifier,
                                                                                        [4] = wand,
                                                                                        [5] = DmgModifier,
                                                                                        [6] = workspace:WaitForChild(player.Name)
                                                                                    }
                                                                                    wand.Fire:FireServer(unpack(args))
                                                                                    wait()
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    
                                                                    while _G.WandKillRed == true do
                                                                        for _, player in pairs(redTeam:GetPlayers()) do
                                                                            killallredplayers(player)
                                                                
                                                                            task.wait(.05)
                                                                        end
                                                                    end
                                                                                   end,false)

                                                                                   local Toggle = Section.Component("Toggle","Kill For Hire Team (Wand)",function(bool)
                                                                                    _G.WandKillForHire = bool
                                                                                    local forehireTeam = game:GetService("Teams")["For Hire"]
                                                                
                                                                                    local function killallforhireplayers(player)
                                                                                        if player.Character and player.Team == forehireTeam then
                                                                                            local humanoid = player.Character:FindFirstChild("Humanoid")
                                                                                            local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                                                                                            local wand = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Wand")
                                                                                            if humanoid and humanoidRootPart and wand then
                                                                                                if humanoid.Health > 0 then
                                                                                                    local args = {
                                                                                                        [1] = humanoidRootPart.CFrame,
                                                                                                        [2] = DmgModifier,
                                                                                                        [3] = DmgModifier,
                                                                                                        [4] = wand,
                                                                                                        [5] = DmgModifier,
                                                                                                        [6] = workspace:WaitForChild(player.Name)
                                                                                                    }
                                                                                                    wand.Fire:FireServer(unpack(args))
                                                                                                    wait()
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                    
                                                                                    while _G.WandKillForHire == true do
                                                                                        for _, player in pairs(forehireTeam:GetPlayers()) do
                                                                                            killallforhireplayers(player)
                                                                                            task.wait(.05)
                                                                                        end
                                                                                    end
                                                                                                   end,false)

                   local Toggle = Section.Component("Toggle","Automatic AutoFire (Wand)",function(bool)
                    _G.WandAutomaticAutoFire = bool
                    while _G.WandAutomaticAutoFire == true do
                        local player = game:GetService("Players").LocalPlayer
                        if player.Character and player.Character:FindFirstChild("Wand") then
                            local args = {
                                [1] = player.Character.HumanoidRootPart.CFrame,
                                [2] = 100,
                                [3] = 1.5,
                                [4] = player.Character.Wand,
                                [5] = DmgModifier,
                                [6] = player.Character
                            }
                            
                            player.Character.Wand.Fire:FireServer(unpack(args))
                            local args = {
                                [1] = player.Character.HumanoidRootPart.CFrame,
                                [2] = 100,
                                [3] = 1.5,
                                [4] = player.Character.Wand,
                                [5] = DmgModifier,
                                [6] = player.Character
                            }
                            
                            player.Character.Wand.Fire:FireServer(unpack(args))
                            wait(.01)
                        else
                            wait(1)
                        end
                    end
                                   end,false)

                                   local Button = Section.Component("Button","Lag / Crash server (Wand)",function()
                                    while true do
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    
                                    local args = {
                                        [1] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame,
                                        [2] = 100,
                                        [3] = 1.5,
                                        [4] = game:GetService("Players").LocalPlayer.Character.Wand,
                                        [5] = 15,
                                        [6] = game:GetService("Players").LocalPlayer.Character
                                    }
                                    
                                    game:GetService("Players").LocalPlayer.Character.Wand.Fire:FireServer(unpack(args))
                                    wait()
                                end
                                    end)

                                    local Section = Page.Section("Teleports")

                                    local Button = Section.Component("Button","Teleport to Red",function()
                                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["berezaa's Tycoon Kit"]["Medium red"].Base.CFrame + Vector3.new(1, 6, 1)
                                        end
                                    end)
                    
                    
                                        local Button = Section.Component("Button","Teleport to Green",function()
                                            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace")["berezaa's Tycoon Kit"]["Medium green"].Base.CFrame + Vector3.new(1, 6, 1)
                                            end
                                        end)
                    
                    
                                            local Button = Section.Component("Button","Teleport to Yellow",function()
                                                if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["berezaa's Tycoon Kit"]["Cool yellow"].Base.CFrame + Vector3.new(1, 6, 1)
                                                end
                                            end)
                    
                    
                                                local Button = Section.Component("Button","Teleport to Blue",function()
                                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["berezaa's Tycoon Kit"]["Pastel Blue"].Base.CFrame + Vector3.new(1, 6, 1)
                                                    end
                                                end)
                    
                    
                                                    local Button = Section.Component("Button","Teleport to For Hire Spawn",function()
                                                        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, 77.1699982, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1)                                                        end
                                                        end)


                   local Page = Main.Page("Tools","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
                   local Section = Page.Section("Tools")

                   local Button = Section.Component("Button","Get Gravity Disruptor",function()
                    game:GetService("Lighting").Potions["Gravity Disruptor"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                    end)

                   local Section = Page.Section("Potions")

                   local Button = Section.Component("Button","Get Ice Potion",function()
                    game:GetService("Lighting").Potions["Ice Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                    end)
                    local Button = Section.Component("Button","Get Chameleon Potion",function()
                        game:GetService("Lighting").Potions["Chameleon Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                        end)
                        local Button = Section.Component("Button","Get Ninja Potion",function()
                            game:GetService("Lighting").Potions["Ninja Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                            end)
                            local Button = Section.Component("Button","Get Black Belt Potion",function()
                                game:GetService("Lighting").Potions["Black Belt Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end)
                                local Button = Section.Component("Button","Get Frost Potion",function()
                                    game:GetService("Lighting").Potions["Frost Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                                    end)
                                    local Button = Section.Component("Button","Get Wizard Potion",function()
                                        game:GetService("Lighting").Potions["Wizard Potion"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                                        end)


                   local Section = Page.Section("Brooms")

                   local Button = Section.Component("Button","Get Wind Broom",function()
                    game:GetService("Lighting").Brooms["Wind Broom"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                    end)
                    local Button = Section.Component("Button","Get Lightning Broom",function()
                        game:GetService("Lighting").Brooms["Lightning Broom"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                        end)
                        local Button = Section.Component("Button","Get Fire Broom",function()
                            game:GetService("Lighting").Brooms["Fire Broom"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                            end)
                            local Button = Section.Component("Button","Get Broom",function()
                                game:GetService("Lighting").Brooms["Broom"]:Clone().Parent = game.Players.LocalPlayer.Backpack
                                end)

                   local Section = Page.Section("Gamepasses")
            
                    local Button = Section.Component("Button","Get Dark Tool",function()
                        game.ReplicatedStorage.Dark:Clone().Parent = game.Players.LocalPlayer.Backpack
                        end)
            
                        local Button = Section.Component("Button","Get Light tool",function()
                            game.ReplicatedStorage.Light:Clone().Parent = game.Players.LocalPlayer.Backpack
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

               local Section = Page.Section("ESP")

               local Paragraph = Section.Component("Card", "Not mine lol", "ESP made by skatbr")

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
            
                local hitboxsize = 0
                local Slider2 = Section.Component("Slider2","Hitbox Size",0,100,false,function(value)
                    hitboxsize = value
                    end,hitboxsize)

                    local teamcheck
                                        local Toggle = Section.Component("Toggle","Team Check",function(bool5)
                                            teamcheck = bool5
                                        end,false)
                    local Toggle = Section.Component("Toggle","Hitbox Expander",function(bool)
-- ignore all the random code i did trial and error on this and too lazy to clean
_G.HeadSize = hitboxsize
_G.HitBoxExpander = bool
_G.TeamCheckEnabled = true
_G.CharacterAddedConnections = {} 

function expandHitbox(player, character)
    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart
        if _G.HitBoxExpander == true and (_G.TeamCheckEnabled == false or player.Team ~= game.Players.LocalPlayer.Team) then -- check if player is not on local player's team if _G.TeamCheckEnabled is true
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
                       end,false)


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
