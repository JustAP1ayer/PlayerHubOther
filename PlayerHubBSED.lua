getgenv().LibTheme = {
    MainColor = Color3.fromRGB(81,111,259);
    BrighterMainColor = Color3.fromRGB(71,89,215);
    IconsColor = Color3.fromRGB(140,140,150);
    Accent = Color3.fromRGB(0,100,255);
    DarkText = Color3.fromRGB(170,170,170);
    BrightText = Color3.fromRGB(145,145,145);
    Font = "Arcade";
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

local Section = Page.Section("Main Stuff")

local Button = Section.Component("Button","Redeem all Codes",function()
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "openyoureyes"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "Bless2023"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "Revamp2022"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "BS:ED_Is_Bad"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "BS:ED_CONTINUED?"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "ΔΩΨ"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "Le_fishe_au_chocolat"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "SaturnXNeptune"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "EventBoosterPack"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "🤓"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "EnergySupply"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "929221841"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    
    local args = {
        [1] = game:GetService("Players").LocalPlayer.PlayerGui.PlayerGUI.CodesFrame,
        [2] = "BRING_BACK_LASTRE"
    }
    
    game:GetService("ReplicatedStorage").GameRemotes.RedeemCode:FireServer(unpack(args))
    end)

    local Toggle = Section.Component("Toggle","Autofarm Multipler (Shit one)",function(bool)
        getgenv().CheapMultiplerFarm= bool;
    while getgenv().CheapMultiplerFarm do             
    
    task.wait(0.15)
local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in pairs(game:GetService("Workspace").EventButtonsHolder["Geode Button"]:GetDescendants()) do
                            if v.name == "TouchInterest" and v.Parent then
                              firetouchinterest(playerHead, v.Parent, 0)
                            wait(0.25)
                             firetouchinterest(playerHead, v.Parent, 1)
                        break;
                        end end end
      end,false)

      local Toggle = Section.Component("Toggle","All Geode Buttons Farm ",function(bool)
        getgenv().GeodeButtonsFarm= bool;
    while getgenv().GeodeButtonsFarm do             
    
        task.wait(0.1)
local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in pairs(game:GetService("Workspace").GeodeButtons:GetDescendants()) do
                            if v.name == "TouchInterest" and v.Parent then
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.5)
                             firetouchinterest(playerHead, v.Parent, 1)
                        break;
                        end end end
      end,false)

      local Toggle = Section.Component("Toggle","All GrassLands Buttons Farm ",function(bool)
        getgenv().GrassLandsButtonsFarm= bool;
    while getgenv().GrassLandsButtonsFarm do             
    
        task.wait(0.1)
        local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in pairs(game:GetService("Workspace").Areas.Grasslands:GetDescendants()) do
                            if v.name == "TouchInterest" and v.Parent then
                              firetouchinterest(playerHead, v.Parent, 0)
                              wait(0.5)
                              firetouchinterest(playerHead, v.Parent, 1)
                        break;
                        end end end
      end,false)

      local Toggle = Section.Component("Toggle","All Event Buttons Farm ",function(bool)
        getgenv().EventButtonsFarm= bool;
    while getgenv().EventButtonsFarm do             
    
    task.wait(0.1)
local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in pairs(game:GetService("Workspace").EventButtonsHolder:GetDescendants()) do
                            if v.name == "TouchInterest" and v.Parent then
                              firetouchinterest(playerHead, v.Parent, 0)
                            wait(0.5)
                             firetouchinterest(playerHead, v.Parent, 1)
                        break;
                        end end end
      end,false)

        

    local Page = Main.Page("Cframe Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
    local Section = Page.Section("Area Teleport")
    local Section = Page.Section("Must load all areas")
    local Button = Section.Component("Button","Load All Areas",function()
        for _, folder in pairs(game:GetService("ReplicatedStorage").AreaStorage:GetChildren()) do
            if folder and folder:IsA("Folder") then
               local FolderCopy = folder:Clone()
               FolderCopy.Parent =  game:GetService("Workspace").Areas 
            end
         end
         local Button = Section.Component("Button","Grasslands",function()
            -- Code
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-241.464951, 1.2705462, -140.202484, -1, 0, 0, 0, 1, 0, 0, 0, -1)    
            end)
            local Button = Section.Component("Button","Extraterrestrial Orbits",function()
                -- Code
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10287.3818, 7286.36865, -8145.33154, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)    
                end)
                local Button = Section.Component("Button","Empyrean Island",function()
                    -- Code
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10323.0771, 4522.64307, 16070.4131, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)    
                    end)
                    local Button = Section.Component("Button","Uranium Wastelands",function()
                        -- Code
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14255.6797, 706.097473, -25663.5781, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
                        end)
                        local Button = Section.Component("Button","Cave",function()
                            -- Code
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1099.53809, 2508.32788, -1711.72839, 0.275688112, -0, -0.961247265, 0, 1, -0, 0.961247265, 0, 0.275688112)    
                            end)
                            local Button = Section.Component("Button","Crystals Beneaths",function()
                                -- Code
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3320.22314, 1564.15967, 38.2913475, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
                                 end)
                                local Button = Section.Component("Button","Mechanical Room",function()
                                    -- Code
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(56045.4609, 15025.4326, 913.464905, -4.12464142e-05, -0.78799355, 0.615683556, 1, -4.12464142e-05, 1.41859055e-05, 1.41859055e-05, 0.615683556, 0.78799355)    
                                    end)
                                    local Button = Section.Component("Button","Iron Shafts",function()
                                        -- Code
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1621.59204, -1.00000143, -2293.74438, 0.987685978, -0, -0.156449571, 0, 1, -0, 0.156449571, 0, 0.987685978)    
                                        end)
                                        local Button = Section.Component("Button","Quartz Walkway",function()
                                            -- Code
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2699.54492, -3126.12964, 10901.0801, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)    
                                            end)
                                            local Button = Section.Component("Button","Jade Forest",function()
                                                -- Code
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13496.9219, 11279.7646, -12394.8438, 0, 1, 0, 1, 0, 0, 0, 0, -1)    
                                                end)
                                                local Button = Section.Component("Button","Obsdian Abyss",function()
                                                    -- Code
                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6633.66309, 5181.11963, 135.854248, 0.987685978, -0, -0.156449571, 0, 1, -0, 0.156449571, 0, 0.987685978)    
                                                    end)
                                                    local Button = Section.Component("Button","Colour Temple",function()
                                                        -- Code
                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-454.929901, 7113.6543, 5211.12988, 0.819155693, 0.573571265, 0, -0.573571265, 0.819155693, -0, -0, 0, 1)                                                            end)
                                                        local Button = Section.Component("Button","Minty Grooves",function()
                                                            -- Code
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1676.97729, 412.883209, 2042.9032, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)    
                                                            end)
                                                            local Button = Section.Component("Button","Smooth Depths",function()
                                                                -- Code
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20466.5703, 10065.1279, 6081.19141, -1, 0, 0, 0, 1, 0, 0, 0, -1)    
                                                                end)
                                                                local Button = Section.Component("Button","Icy Palace",function()
                                                                    -- Code
                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-44279.4805, 10485.0371, 57298.8945, -1, 0, 0, 0, 1, 0, 0, 0, -1)    
                                                                    end)
                                                                    local Button = Section.Component("Button","Floating Purgatory",function()
                                                                        -- Code
                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-75284.8438, 13827.7178, 15624.7773, 0.890833557, -0, -0.454329818, 0, 1, -0, 0.454329818, 0, 0.890833557)                                                                            end)
                                                                        local Button = Section.Component("Button","Golden Quarry",function()
                                                                            -- Code
                                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2023.18884, 950.778503, 5153.01074, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)    
                                                                            end)
                                                                            local Button = Section.Component("Button","Tetratum",function()
                                                                                -- Code
                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10661.7637, 7784.22559, 14399.0498, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)    
                                                                                end)
                                                                                local Button = Section.Component("Button","Abyssal Trenches",function()
                                                                                    -- Code
                                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7649.83594, 7062.43604, 6414.7959, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)    
                                                                                    end)
                                                                                    local Button = Section.Component("Button","Candyland",function()
                                                                                        -- Code
                                                                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92987.0078, 15152.792, 24460.1406, -0.788017035, 0, -0.615653694, 0, 1, 0, 0.615653694, 0, -0.788017035)    
                                                                                        end)
                                                                                            local Button = Section.Component("Button","Geode Site",function()
                                                                                                -- Code
                                                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2079.44214, 39.7351952, -3649.88794, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
                                                                                                end)
                                                                                                local Button = Section.Component("Button","Voltaic Sector",function()
                                                                                                    -- Code
                                                                                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(41.8361168, 7122.98047, 8014.67773, -0.943766475, 0, -0.330612749, 0, 1, 0, 0.330612749, 0, -0.943766475)    
                                                                                                    end)
                end)
local Section = Page.Section("Others")

local Button = Section.Component("Button","Teleporters1",function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2437.69531, 13782.4766, 733.448608, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
    end)

    local Button = Section.Component("Button","Secret Obby Start",function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-209.220001, 175.919464, -302.329987, 1, 0, 0, 0, 1, 0, 0, 0, 1)    
        end)

        local Button = Section.Component("Button","Celestial Secret Button",function()
            -- Code
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-121.965118, 286.809753, -205.542328, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
            end)

            local Button = Section.Component("Button","ARG Secret Button",function()
                -- Code
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-154.939774, 181.044983, 51.5971603, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)    
                end)
                local Button = Section.Component("Button","Confusion Secret Button",function()
                    -- Code
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1981.13379, 874.32666, 5123.66504, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
                    end)
                    local Button = Section.Component("Button","Malware Secret Button",function()
                        -- Code
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-486.692871, 105.109238, 533.587036, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
                        end)

                        local Button = Section.Component("Button","Stellarite Secret Button",function()
                            -- Code
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9987.98633, 7379.73633, -8101.18018, -0.25875926, 0, -0.965941846, 0, 1, 0, 0.965941846, 0, -0.25875926)    
                            end)
                            local Button = Section.Component("Button","Polybasite Secret Button",function()
                                -- Code
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-349.849976, 122.634766, -266.399963, 0, 0, 1, 0, 1, -0, -1, 0, 0)    
                                end)
                                local Button = Section.Component("Button","Red Quartz Secret Button",function()
                                    -- Code
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-336.649994, 1.63434577, -185.100006, 0, 0, 1, 0, 1, -0, -1, 0, 0)    
                                    end)
                                    local Button = Section.Component("Button","Biotite Secret Button",function()
                                        -- Code
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-529.150024, 1.5449903, -184.100006, 0, 0, 1, 0, 1, -0, -1, 0, 0)    
                                        end)
                                        local Button = Section.Component("Button","Chorma Secret Button",function()
                                            -- Code
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-437.043182, 7801.51855, 4635.9585, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)    
                                            end)
                                            local Button = Section.Component("Button","Cytoplasm Secret Button",function()
                                                -- Code
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1307.28552, 2518.00024, -1674.02979, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
                                                end)          
local Button = Section.Component("Button","Toxant Secret Button",function()
-- Code
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13750.2754, 650.705444, -25586.6738, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.866007447)    
end)  
    

local Page = Main.Page("TeleportService","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Teleport to a different game")
local Section = Page.Section("(Some of these game tps work)")


local Button = Section.Component("Button","[1]",function()
    game:GetService("TeleportService"):Teleport(7625300145, LocalPlayer)
end)

local Button = Section.Component("Button","[2]",function()
    game:GetService("TeleportService"):Teleport(7625697401, LocalPlayer)
end)

local Button = Section.Component("Button","[3]",function()
    game:GetService("TeleportService"):Teleport(7625962930, LocalPlayer)
end)

local Button = Section.Component("Button","[4]",function()
    game:GetService("TeleportService"):Teleport(7627826284, LocalPlayer)
end)

local Button = Section.Component("Button","[5]",function()
    game:GetService("TeleportService"):Teleport(7628618367, LocalPlayer)
end)

local Button = Section.Component("Button","[6]",function()
    game:GetService("TeleportService"):Teleport(7630771979, LocalPlayer)
end)

local Button = Section.Component("Button","[7]",function()
    game:GetService("TeleportService"):Teleport(7631499987, LocalPlayer)
end)

local Button = Section.Component("Button","[8]",function()
    game:GetService("TeleportService"):Teleport(7637318571, LocalPlayer)
end)

local Button = Section.Component("Button","[...]",function()
    game:GetService("TeleportService"):Teleport(7679443269, LocalPlayer)
end)

local Button = Section.Component("Button","P.A.I.N.",function()
    game:GetService("TeleportService"):Teleport(7701785129, LocalPlayer)
end)

local Button = Section.Component("Button","Phantasm Depths",function()
    game:GetService("TeleportService"):Teleport(7766487951, LocalPlayer)
end)

local Button = Section.Component("Button","Fallen Over-world",function()
    game:GetService("TeleportService"):Teleport(7788475208, LocalPlayer)
end)

local Button = Section.Component("Button","The Temple",function()
    game:GetService("TeleportService"):Teleport(7810768471, LocalPlayer)
end)

local Button = Section.Component("Button","Fountain of Infinity",function()
    game:GetService("TeleportService"):Teleport(7812506749, LocalPlayer)
end)

local Button = Section.Component("Button","Iridium Laboratories",function()
    game:GetService("TeleportService"):Teleport(7919079489, LocalPlayer)
end)

local Button = Section.Component("Button","Greed",function()
    game:GetService("TeleportService"):Teleport(7940473829, LocalPlayer)
end)

local Button = Section.Component("Button","Desire",function()
    game:GetService("TeleportService"):Teleport(7950541243, LocalPlayer)
end)

local Button = Section.Component("Button","Pride",function()
    game:GetService("TeleportService"):Teleport(7956928706, LocalPlayer)
end)
local Button = Section.Component("Button","Petrol",function()
    game:GetService("TeleportService"):Teleport(7994483492, LocalPlayer)
end)

local Button = Section.Component("Button","Chroma",function()
    game:GetService("TeleportService"):Teleport(7994522854, LocalPlayer)
end)

local Button = Section.Component("Button","Envy",function()
    game:GetService("TeleportService"):Teleport(8008669857, LocalPlayer)
end)
    local Button = Section.Component("Button","Gluttony",function()
    game:GetService("TeleportService"):Teleport(8063599882, LocalPlayer)
end)

local Button = Section.Component("Button","Wrath",function()
    game:GetService("TeleportService"):Teleport(8065071708, LocalPlayer)
end)

local Button = Section.Component("Button","Sloth",function()
    game:GetService("TeleportService"):Teleport(8071442861, LocalPlayer)
end)

local Button = Section.Component("Button","Sheol",function()
    game:GetService("TeleportService"):Teleport(8163557693, LocalPlayer)
end)

local Button = Section.Component("Button","Wormhole's Breech",function()
    game:GetService("TeleportService"):Teleport(8204978667, LocalPlayer)
end)

local Button = Section.Component("Button","Shining Shrine",function()
    game:GetService("TeleportService"):Teleport(8215830091, LocalPlayer)
end)

local Button = Section.Component("Button","Moonbase",function()
    game:GetService("TeleportService"):Teleport(8283179854, LocalPlayer)
end)

local Button = Section.Component("Button","._-White Folds-_.",function()
    game:GetService("TeleportService"):Teleport(8357821642, LocalPlayer)
end)

local Button = Section.Component("Button","BS:ED [Obby Based Edition]",function()
    game:GetService("TeleportService"):Teleport(8503902002, LocalPlayer)
end)


local Button = Section.Component("Button","Martian Probe",function()
    game:GetService("TeleportService"):Teleport(8894148396, LocalPlayer)
end)

local Button = Section.Component("Button","CY-47",function()
    game:GetService("TeleportService"):Teleport(8990066467, LocalPlayer)
end)

local Button = Section.Component("Button","White Core.",function()
    game:GetService("TeleportService"):Teleport(8993680316, LocalPlayer)
end)

local Button = Section.Component("Button","You have asked for this.",function()
    game:GetService("TeleportService"):Teleport(9010995620, LocalPlayer)
end)

local Button = Section.Component("Button","REAL DESIRE",function()
    game:GetService("TeleportService"):Teleport(9011591293, LocalPlayer)
end)

local Button = Section.Component("Button","REAL GREED",function()
    game:GetService("TeleportService"):Teleport(9011956621, LocalPlayer)
end)

local Button = Section.Component("Button","REAL WRATH",function()
    game:GetService("TeleportService"):Teleport(9013842975, LocalPlayer)
end)

local Button = Section.Component("Button","Yalkàndra's Maelstrom",function()
    game:GetService("TeleportService"):Teleport(9055856592, LocalPlayer)
end)

local Button = Section.Component("Button","Migrating to New Update!",function()
    game:GetService("TeleportService"):Teleport(9106438888, LocalPlayer)
end)

local Button = Section.Component("Button","A Pulsating Dimension",function()
    game:GetService("TeleportService"):Teleport(12376048413, LocalPlayer)
end)

local Button = Section.Component("Button","Bolical World",function()
    game:GetService("TeleportService"):Teleport(9200676949, LocalPlayer)
end)

local Button = Section.Component("Button","Esadrhium",function()
    game:GetService("TeleportService"):Teleport(9204590147, LocalPlayer)
end)

local Button = Section.Component("Button","Sumpuzzleplacescrappedidk",function()
    game:GetService("TeleportService"):Teleport(9204596051, LocalPlayer)
end)

local Button = Section.Component("Button","Sky-high Structuring",function()
    game:GetService("TeleportService"):Teleport(9209342051, LocalPlayer)
end)

local Button = Section.Component("Button","le fishe au Death.",function()
    game:GetService("TeleportService"):Teleport(9242382965, LocalPlayer)
end)

local Button = Section.Component("Button","Nostalgia World",function()
    game:GetService("TeleportService"):Teleport(9317663095, LocalPlayer)
end)

local Button = Section.Component("Button","White Space",function()
    game:GetService("TeleportService"):Teleport(9389156861, LocalPlayer)
end)

local Button = Section.Component("Button","Molus",function()
    game:GetService("TeleportService"):Teleport(9392210907, LocalPlayer)
end)

local Button = Section.Component("Button","Asteroids Belt",function()
    game:GetService("TeleportService"):Teleport(9392210925, LocalPlayer)
end)

local Button = Section.Component("Button","Projected Grounds",function()
    game:GetService("TeleportService"):Teleport(9392210958, LocalPlayer)
end)

local Button = Section.Component("Button","Toxo ta city",function()
    game:GetService("TeleportService"):Teleport(9392210990, LocalPlayer)
end)

local Button = Section.Component("Button","Algun",function()
    game:GetService("TeleportService"):Teleport(9392211132, LocalPlayer)
end)

local Button = Section.Component("Button","Dark Star",function()
    game:GetService("TeleportService"):Teleport(9392211167, LocalPlayer)
end)

local Button = Section.Component("Button","Futurm",function()
    game:GetService("TeleportService"):Teleport(9392211205, LocalPlayer)
end)
local Button = Section.Component("Button","Horzon1",function()
    game:GetService("TeleportService"):Teleport(9392211251, LocalPlayer)
end)

local Button = Section.Component("Button","Horzon2",function()
    game:GetService("TeleportService"):Teleport(9392211963, LocalPlayer)
end)

local Button = Section.Component("Button","Entropia",function()
    game:GetService("TeleportService"):Teleport(9392212014, LocalPlayer)
end)

local Button = Section.Component("Button","Desert Car",function()
    game:GetService("TeleportService"):Teleport(9397295632, LocalPlayer)
end)

local Button = Section.Component("Button","Curion",function()
    game:GetService("TeleportService"):Teleport(9426353042, LocalPlayer)
end)

local Button = Section.Component("Button","aawtiymns but in bsed",function()
    game:GetService("TeleportService"):Teleport(9568958654, LocalPlayer)
end)

local Button = Section.Component("Button","Elysian World",function()
    game:GetService("TeleportService"):Teleport(9695080764, LocalPlayer)
end)

local Button = Section.Component("Button","The Cup",function()
    game:GetService("TeleportService"):Teleport(9819353508, LocalPlayer)
end)

local Button = Section.Component("Button","Cathedral",function()
    game:GetService("TeleportService"):Teleport(9819355008, LocalPlayer)
end)

local Button = Section.Component("Button","Maze of Regret",function()
    game:GetService("TeleportService"):Teleport(9819355149, LocalPlayer)
end)

local Button = Section.Component("Button","Lotus",function()
    game:GetService("TeleportService"):Teleport(9819355178, LocalPlayer)
end)

local Button = Section.Component("Button","NVM IDK WHAT THE !Q!! ! !!! !",function()
    game:GetService("TeleportService"):Teleport(9819355185, LocalPlayer)
end)

local Button = Section.Component("Button","Ancient Colosseum",function()
    game:GetService("TeleportService"):Teleport(9823982249, LocalPlayer)
end)

local Button = Section.Component("Button","Justice Landscape",function()
    game:GetService("TeleportService"):Teleport(10155218632, LocalPlayer)
end)

local Button = Section.Component("Button","Time-Lost Ascension",function()
    game:GetService("TeleportService"):Teleport(10910578318, LocalPlayer)
end)

local Button = Section.Component("Button","Twilight Domain",function()
    game:GetService("TeleportService"):Teleport(10925039157, LocalPlayer)
end)

local Button = Section.Component("Button","Deadly Abyss",function()
    game:GetService("TeleportService"):Teleport(11079376073, LocalPlayer)
end)

local Button = Section.Component("Button","Alpinism",function()
    game:GetService("TeleportService"):Teleport(11081589651, LocalPlayer)
end)

local Button = Section.Component("Button","Risk of Rain",function()
    game:GetService("TeleportService"):Teleport(11084248873, LocalPlayer)
end)

local Button = Section.Component("Button","The Dark Room",function()
    game:GetService("TeleportService"):Teleport(11233108714, LocalPlayer)
end)


local Page = Main.Page("Player","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Humanoid Modifier")

local Slider2 = Section.Component("Slider2","Walkspeed",0,250,false,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end,18)

    local Slider2 = Section.Component("Slider2","Jumppower",0,300,false,function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end,50)

        local Slider2 = Section.Component("Slider2","Hip Height",0,100,false,function(value)
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

    local Button = Section.Component("Button","YOU SHOULD KYS NOW!",function()
        --// Services
        local players = game:GetService("Players")
         
        --// Other
        local client = players.LocalPlayer
         
                    client.Character.Humanoid.Health = 0
                    exit(0)
                       end)