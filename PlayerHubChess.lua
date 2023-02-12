-- ignore the flunky ass code

wait(0.5)
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()
bb:ClickButton2(Vector2.new())
end)

getgenv().LibTheme = {
    MainColor = Color3.fromRGB(45,35,35);
    BrighterMainColor = Color3.fromRGB(45,40,40);
    IconsColor = Color3.fromRGB(105,105,125);
    Accent = Color3.fromRGB(260,0,105);
    DarkText = Color3.fromRGB(175,175,175);
    BrightText = Color3.fromRGB(150,150,150);
    Font = "Gotham";
    SoundVolume = 0.5;
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub Chess")

local Page = Main.Page("IMPORTANT!!","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Important stuff")


local Button = Section.Component("Button","Copy discord server",function()
setclipboard("https://discord.gg/nXERxPYUyZ")
end)
local Page = Main.Page("Main","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Main")

local Button = Section.Component("Button","Delete all gates",function()
    game:GetService("Workspace").Gates:Destroy()
        end)
        
local Page = Main.Page("Equip Skins","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Button = Section.Component("Button","Bring all chess balls to you (not mine)",function()
    local UserInputService = game:GetService("UserInputService")
    local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
    local Folder = Instance.new("Folder", game:GetService("Workspace"))
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1
    local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
    local NetworkAccess = coroutine.create(function()
        settings().Physics.AllowSleep = false
        while game:GetService("RunService").RenderStepped:Wait() do
            for _, Players in next, game:GetService("Players"):GetPlayers() do
                if Players ~= game:GetService("Players").LocalPlayer then
                    Players.MaximumSimulationRadius = 0 
                    sethiddenproperty(Players, "SimulationRadius", 0) 
                end 
            end
            game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)
            setsimulationradius(math.huge) 
        end 
    end) 
    coroutine.resume(NetworkAccess)
    local function ForcePart(v)
        if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
            Mouse.TargetFilter = v
            for _, x in next, v:GetChildren() do
                if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                    x:Destroy()
                end
            end
            if v:FindFirstChild("Attachment") then
                v:FindFirstChild("Attachment"):Destroy()
            end
            if v:FindFirstChild("AlignPosition") then
                v:FindFirstChild("AlignPosition"):Destroy()
            end
            if v:FindFirstChild("Torque") then
                v:FindFirstChild("Torque"):Destroy()
            end
            v.CanCollide = false
            local Torque = Instance.new("Torque", v)
            Torque.Torque = Vector3.new(100000, 100000, 100000)
            local AlignPosition = Instance.new("AlignPosition", v)
            local Attachment2 = Instance.new("Attachment", v)
            Torque.Attachment0 = Attachment2
            AlignPosition.MaxForce = 9999999999999999
            AlignPosition.MaxVelocity = math.huge
            AlignPosition.Responsiveness = 200
            AlignPosition.Attachment0 = Attachment2 
            AlignPosition.Attachment1 = Attachment1
        end
    end
    for _, v in next, game:GetService("Workspace"):GetDescendants() do
        ForcePart(v)
    end
    game:GetService("Workspace").DescendantAdded:Connect(function(v)
        ForcePart(v)
    end)
    UserInputService.InputBegan:Connect(function(Key, Chat)
        if Key.KeyCode == Enum.KeyCode.E and not Chat then
           Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        end
    end)
    spawn(function()
        while game:GetService("RunService").RenderStepped:Wait() do
            Attachment1.WorldCFrame = Updated
        end
    end)    
    
        end)

        local Button = Section.Component("Button","Serverhop",function()
            local PlaceID = game.PlaceId
            local AllIDs = {}
            local foundAnything = ""
            local actualHour = os.date("!*t").hour
            local Deleted = false
            local File = pcall(function()
                AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
            end)
            if not File then
                table.insert(AllIDs, actualHour)
                writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
            end
            function TPReturner()
                local Site;
                if foundAnything == "" then
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
                else
                    Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
                end
                local ID = ""
                if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                    foundAnything = Site.nextPageCursor
                end
                local num = 0;
                for i,v in pairs(Site.data) do
                    local Possible = true
                    ID = tostring(v.id)
                    if tonumber(v.maxPlayers) > tonumber(v.playing) then
                        for _,Existing in pairs(AllIDs) do
                            if num ~= 0 then
                                if ID == tostring(Existing) then
                                    Possible = false
                                end
                            else
                                if tonumber(actualHour) ~= tonumber(Existing) then
                                    local delFile = pcall(function()
                                        delfile("NotSameServers.json")
                                        AllIDs = {}
                                        table.insert(AllIDs, actualHour)
                                    end)
                                end
                            end
                            num = num + 1
                        end
                        if Possible == true then
                            table.insert(AllIDs, ID)
                            wait()
                            pcall(function()
                                writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                                wait()
                                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                            end)
                            wait(4)
                        end
                    end
                end
            end
            
            function Teleport()
                while wait() do
                    pcall(function()
                        TPReturner()
                        if foundAnything ~= "" then
                            TPReturner()
                        end
                    end)
                end
            end
            
            -- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
            Teleport()
                        end)
        
local Page = Main.Page("Equip Skins","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

    
   
        local Button = Section.Component("Button","Test skins",function()

local args = {
    [1] = true,
    [2] = 1
}

game:GetService("ReplicatedStorage").Connections.StartSoloGame:FireServer(unpack(args))

                end)

local Section = Page.Section("White Pieces")

local Button = Section.Component("Button","Equip LightGlass",function()
local args = {
    [1] = "LightGlass"
}

game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
    end)
    
local Button = Section.Component("Button","Equip LightWood",function()
local args = {
[1] = "LightWood"
}
    
game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
end)
    
            
            local Button = Section.Component("Button","Equip LightMarble",function()
                local args = {
                    [1] = "LightMarble"
                }
                
                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                    end)
    
                    
                    local Button = Section.Component("Button","Equip BrightExotic",function()
                        local args = {
                            [1] = "BrightExotic"
                        }
                        
                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                            end)
    
                            
                            local Button = Section.Component("Button","Equip BrightSkeleton",function()
                                local args = {
                                    [1] = "BrightSkeleton"
                                }
                                
                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                    end)
    
                                    
                                    local Button = Section.Component("Button","Equip Ruby",function()
                                        local args = {
                                            [1] = "Ruby"
                                        }
                                        
                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                            end)
    
                                            
                                            local Button = Section.Component("Button","Equip EnchantedKingdom",function()
                                                local args = {
                                                    [1] = "EnchantedKingdom"
                                                }
                                                
                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                    end)
    
                                                    
                                                    local Button = Section.Component("Button","Equip StellarTesseract",function()
                                                        local args = {
                                                            [1] = "StellarTesseract"
                                                        }
                                                        
                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                            end)
    
                                                            
                                                            local Button = Section.Component("Button","Equip LightCorruption",function()
                                                                local args = {
                                                                    [1] = "LightCorruption"
                                                                }
                                                                
                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                    end)
    
                                                                    
                                                                    local Button = Section.Component("Button","Equip VIP_White",function()
                                                                        local args = {
                                                                            [1] = "VIP_White"
                                                                        }
                                                                        
                                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                            end)
    
                                                                            
                                                                            local Button = Section.Component("Button","Equip BasicWhite",function()
                                                                                local args = {
                                                                                    [1] = "BasicWhite"
                                                                                }
                                                                                
                                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                    end)
    
                                                                                    
                                                                                    local Button = Section.Component("Button","Equip LightElectric",function()
                                                                                        local args = {
                                                                                            [1] = "LightElectric"
                                                                                        }
                                                                                        
                                                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                            end)
    
                                                                                            
                                                                                            local Button = Section.Component("Button","Equip CyberWhite",function()
                                                                                                local args = {
                                                                                                    [1] = "CyberWhite"
                                                                                                }
                                                                                                
                                                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                                    end)
    
                                                                                                    
                                                                                                    local Button = Section.Component("Button","Equip unicornwhite",function()
                                                                                                        local args = {
                                                                                                            [1] = "unicornwhite"
                                                                                                        }
                                                                                                        
                                                                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                                            end)
    
                                                                                                            
                                                                                                            local Button = Section.Component("Button","Equip WhiteSand",function()
                                                                                                                local args = {
                                                                                                                    [1] = "WhiteSand"
                                                                                                                }
                                                                                                                
                                                                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                                                    end)
    
                                                                                                                    
                                                                                                                    local Button = Section.Component("Button","Equip Jade_Amber_White",function()
                                                                                                                        local args = {
                                                                                                                            [1] = "Jade_Amber_White"
                                                                                                                        }
                                                                                                                        
                                                                                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                                                            end)
    
                                                                                                                            
                                                                                                                            local Button = Section.Component("Button","Equip LightIce",function()
                                                                                                                                local args = {
                                                                                                                                    [1] = "LightIce"
                                                                                                                                }
                                                                                                                                
                                                                                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                                                                                    end)

   local Section = Page.Section("Black Pieces")
   local Button = Section.Component("Button","Equip DarkGlass",function()
    local args = {
    [1] = "DarkGlass"
    }
        
    game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
    end)
    
    local Button = Section.Component("Button","Equip DarkWood",function()
        local args = {
        [1] = "DarkWood"
        }
            
        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
        end)
    
        local Button = Section.Component("Button","Equip DarkMarble",function()
            local args = {
            [1] = "DarkMarble"
            }
                
            game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
            end)
    
            local Button = Section.Component("Button","Equip DarkSkeleton",function()
                local args = {
                [1] = "DarkSkeleton"
                }
                    
                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                end)
    
                local Button = Section.Component("Button","Equip CursedKingdom",function()
                    local args = {
                    [1] = "CursedKingdom"
                    }
                        
                    game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                    end)
    
                    local Button = Section.Component("Button","Equip DarkExotic",function()
                        local args = {
                        [1] = "DarkExotic"
                        }
                            
                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                        end)
    
                        local Button = Section.Component("Button","Equip Emerald",function()
                            local args = {
                            [1] = "Emerald"
                            }
                                
                            game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                            end)
    
                            local Button = Section.Component("Button","Equip VoidTesseract",function()
                                local args = {
                                [1] = "VoidTesseract"
                                }
                                    
                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                end)
    
                                local Button = Section.Component("Button","Equip DarkCorruption",function()
                                    local args = {
                                    [1] = "DarkCorruption"
                                    }
                                        
                                    game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                    end)
    
                                    local Button = Section.Component("Button","Equip VIP_Black",function()
                                        local args = {
                                        [1] = "VIP_Black"
                                        }
                                            
                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                        end)
    
                                        local Button = Section.Component("Button","Equip BasicBlack",function()
                                            local args = {
                                            [1] = "BasicBlack"
                                            }
                                                
                                            game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                            end)
    
                                            local Button = Section.Component("Button","Equip DarkElectric",function()
                                                local args = {
                                                [1] = "DarkElectric"
                                                }
                                                    
                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                end)
    
                                                local Button = Section.Component("Button","Equip CyberBlack",function()
                                                    local args = {
                                                    [1] = "CyberBlack"
                                                    }
                                                        
                                                    game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                    end)
    
                                                    local Button = Section.Component("Button","Equip unicornblack",function()
                                                        local args = {
                                                        [1] = "unicornblack"
                                                        }
                                                            
                                                        game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                        end)
    
                                                        local Button = Section.Component("Button","Equip DarkIce",function()
                                                            local args = {
                                                            [1] = "DarkIce"
                                                            }
                                                                
                                                            game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                            end)
    
                                                            local Button = Section.Component("Button","Equip BlackSand",function()
                                                                local args = {
                                                                [1] = "BlackSand"
                                                                }
                                                                    
                                                                game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                end)
    
                                                                local Button = Section.Component("Button","Equip Jade_Amber_Black",function()
                                                                    local args = {
                                                                    [1] = "Jade_Amber_Black"
                                                                    }
                                                                        
                                                                    game:GetService("ReplicatedStorage").Connections.SelectSkin:FireServer(unpack(args))
                                                                    end)
                                                                        
                                                                        
