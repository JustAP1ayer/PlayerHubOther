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

                local Section = Page.Section("Teleport to games")

                local Button = Section.Component("Button","Teleport to Longest Answer Wins",function()
                    game:GetService("TeleportService"):Teleport(9992339729, LocalPlayer)
                                    end)

                    local Button = Section.Component("Button","Teleport to Closest Answer Wins",function()
                        game:GetService("TeleportService"):Teleport(12496197327, LocalPlayer)
                                            end)

local Section = Page.Section("Answer Wins Game")

local AutoAnswer = false
local Toggle = Section.Component("Toggle","Auto Answer",function(bool)
    AutoAnswer = bool
    while AutoAnswer do
    local value = game:GetService("ReplicatedStorage").HintAnswer.Value
    local numLetters = string.len(value)
    
    local args = {
        [1] = value,
        [2] = numLetters
    }
    
    game:GetService("ReplicatedStorage").SubmittedAnswer:FireServer(unpack(args))
    wait(0.05)
    end
     end,false)

     local Button = Section.Component("Button","Copy Answer to clipboard",function()
        setclipboard(game:GetService("ReplicatedStorage").HintAnswer.Value)
        end)

        local autoSayEnabled = false

        local Toggle = Section.Component("Toggle", "Auto Say Answer", function(bool)
            autoSayEnabled = bool
            while autoSayEnabled do
                wait(1.5)
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The Answer is: " .. game:GetService("ReplicatedStorage").HintAnswer.Value, "All")
                wait(5.5)
            end
        end,false)

        local Button = Section.Component("Button","Say Answer",function()
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The Answer is:  " .. game:GetService("ReplicatedStorage").HintAnswer.Value,"All")
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

