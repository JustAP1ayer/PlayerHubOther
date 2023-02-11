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
                                                                        