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


                local Section = Page.Section("Automation") 

                local autofarmdelay = 0.05

                local Slider2 = Section.Component("Slider2","Farm Delay",0,1,true,function(value)
                    autofarmdelay = value
                    end,autofarmdelay)


                local Toggle = Section.Component("Toggle","Enable Auto farm Gems / Wins",function(bool)
                _G.AutofarmWinnerGems = bool
                while _G.AutofarmWinnerGems == true do
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame =  CFrame.new(0, -8, -999999)
                    game:GetService("ReplicatedStorage")._replicationFolder.RoundSystemConstants.MapFinished:FireServer()
                    wait(autofarmdelay)
                end
                   end,false)

                   local Toggle = Section.Component("Toggle","Enable Auto rebirth",function(bool)
                    _G.Autorebirth = bool
                    while _G.Autorebirth == true do
                    game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer()
                        wait(1)
                    end
                       end,false)

                       local Toggle = Section.Component("Toggle","AutoClicker",function(bool)
                        _G.AutoClicker = bool
                        while _G.AutoClicker == true do
                        game:GetService("ReplicatedStorage").RemoteFunctions.ClickingRemote:InvokeServer()
                        game:GetService("ReplicatedStorage").RemoteFunctions.ClickingRemote:InvokeServer()
                        game:GetService("ReplicatedStorage").RemoteFunctions.ClickingRemote:InvokeServer()
                            wait(.014)
                        end
                           end,false)

                           local Page = Main.Page("Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

                           local Section = Page.Section("CFrame Teleports")

                           local Button = Section.Component("Button","Finish Obby",function()
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.EggObby.EggArrowBeam.Part1.CFrame + Vector3.new(0,4,0)

                            end)

                            
                           local Button = Section.Component("Button","Teleport to spawn",function()
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3.46957374, 2.9980247, -6.69284201, 0.959397912, -2.73485501e-08, -0.282056093, 4.08865688e-08, 1, 4.21119708e-08, 0.282056093, -5.19344425e-08, 0.959397912) + Vector3.new(0,4,0)

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