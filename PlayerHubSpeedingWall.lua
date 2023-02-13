wait(0.25)
local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()
bb:ClickButton2(Vector2.new())
end)

getgenv().LibTheme = {
    MainColor = Color3.fromRGB(30,35,30);
    BrighterMainColor = Color3.fromRGB(35,40,35);
    IconsColor = Color3.fromRGB(100,100,120);
    Accent = Color3.fromRGB(0,255,100);
    DarkText = Color3.fromRGB(170,170,170);
    BrightText = Color3.fromRGB(145,145,145);
    Font = "Gotham";
    SoundVolume = 1;
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub Speeding Wall")

local Page = Main.Page("IMPORTANT!!","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Important stuff")


local Button = Section.Component("Button","Copy discord server",function()
setclipboard("https://discord.gg/nXERxPYUyZ")
end)


local Page = Main.Page("Main","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Farms n shit")

local Toggle = Section.Component("Toggle","Autofarm Points",function(bool)
    _G.autofarm = bool;
	
	while wait() do
		if _G.autofarm == true then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041.19165, 19.54175, 411.084503, 0.0160721727, 3.80275234e-09, -0.999870837, -4.04203782e-09, 1, 3.73827103e-09, 0.999870837, 3.98143341e-09, 0.0160721727)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-739.413086, 19.5398579, 236.24707, 0.0115235355, -8.92517988e-08, -0.9999336, 6.78112073e-08, 1, -8.84762485e-08, 0.9999336, -6.67871518e-08, 0.0115235355)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-440.637146, 19.5593281, 410.462341, -0.0202257615, -3.53708751e-09, -0.999795437, 5.65120573e-09, 1, -3.65213459e-09, 0.999795437, -5.7239169e-09, -0.0202257615)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-139.853806, 19.5298481, 239.541962, 0.0387617834, 2.64360089e-09, -0.999248505, 1.01479145e-08, 1, 3.0392362e-09, 0.999248505, -1.02580948e-08, 0.0387617834)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.028564, 13.0398264, 309.891296, -0.0610229038, -9.38057099e-08, -0.998136342, 5.17312984e-08, 1, -9.71435483e-08, 0.998136342, -5.75628718e-08, -0.0610229038)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(265.214264, -72.8728333, 323.250122, -0.031096708, 2.93349078e-09, 0.999516368, 6.52960921e-08, 1, -9.03433994e-10, -0.999516368, 6.52364207e-08, -0.031096708)
			task.wait(0.17)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1437.55811, 15.7254801, 193.869049, -0.99989152, -1.6025826e-08, 0.0147274826, -1.51199817e-08, 1, 6.16183797e-08, -0.0147274826, 6.13890165e-08, -0.99989152)

			task.wait(0.1)
			prev = game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame
			game:GetService("Players").LocalPlayer.Character.Parent = workspace.Terrain
			game:GetService("Players").LocalPlayer.Character:BreakJoints()
			game:GetService('Workspace'):WaitForChild(game:GetService("Players").LocalPlayer.Name)
			game:GetService("Players").LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = prev
		end
	end
	
wait(.05)
  end,false)

  local Toggle = Section.Component("Toggle","Autofarm Deaths",function(bool)
    -- Code
    _G.DeathFarm = bool;


    while _G.DeathFarm == true do
        game:GetService("Players").LocalPlayer.Character:BreakJoints()
        wait(1)
    end
  end,false)

  local Toggle = Section.Component("Toggle","Autofarm Activations",function(bool)
    getgenv().ButtonSpam = bool;
    while getgenv().ButtonSpam do             
    
    task.wait(.5)
        local playerHead = game.Players.LocalPlayer.Character.Head
    for i, v in 
    pairs(game:GetService("Workspace").Map.NeonPartsTunnel["1Ins"].Button:GetDescendants()) do
                                if v.name == "TouchInterest" and v.Parent then
                                  firetouchinterest(playerHead, v.Parent, 0)
                                wait(.3)
                                 firetouchinterest(playerHead, v.Parent, 1)
                            break;
                            end end end
  end,false)

local Page = Main.Page("Badges","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Free badges here")

local Button = Section.Component("Button","Get All Badges",function()
    for i = 1, 100 do
        wait(0.5)
        for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if
                v.Name == "BadgeID" and
                    not game:GetService("BadgeService"):UserHasBadge(game.Players.LocalPlayer.UserId, v.Value)
             then
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                wait(0.2)
                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
            end
        end
    end
        end)

local Button = Section.Component("Button","Impossible Obby Badge",function()
    local playerHead = game.Players.LocalPlayer.Character.Head
    for i, v in pairs(game:GetService("Workspace").ImpossibleObby.BadgeAwarder.Platform:GetDescendants()) do
    if v.name == "TouchInterest" and v.Parent then
      firetouchinterest(playerHead, v.Parent, 0)
    wait(1)
     firetouchinterest(playerHead, v.Parent, 1)
break;
end end
        end)

        local Button = Section.Component("Button","Glitch Badge",function()
            local playerHead = game.Players.LocalPlayer.Character.Head
            for i, v in pairs(game:GetService("Workspace")["12 Trial Stuff"].GlitchBadge:GetDescendants()) do
            if v.name == "TouchInterest" and v.Parent then
              firetouchinterest(playerHead, v.Parent, 0)
            wait(1)
             firetouchinterest(playerHead, v.Parent, 1)
        break;
        end end
                end)
        
                local Button = Section.Component("Button","Hidden Badge ",function()
                    local playerHead = game.Players.LocalPlayer.Character.Head
                    for i, v in pairs(game:GetService("Workspace").Map.HiddenBadge:GetDescendants()) do
                    if v.name == "TouchInterest" and v.Parent then
                      firetouchinterest(playerHead, v.Parent, 0)
                    wait(1)
                     firetouchinterest(playerHead, v.Parent, 1)
                break;
                end end
                        end)
                
                        local Button = Section.Component("Button","12 Secret Trials Badge ",function()
                            local playerHead = game.Players.LocalPlayer.Character.Head
                            for i, v in pairs(game:GetService("Workspace")["Final Climb (Done)"].BadgeAwarder.Lifebrick:GetDescendants()) do
                            if v.name == "TouchInterest" and v.Parent then
                              firetouchinterest(playerHead, v.Parent, 0)
                            wait(1)
                             firetouchinterest(playerHead, v.Parent, 1)
                        break;
                        end end
                                end)

                                local Button = Section.Component("Button","Winner, Winner Badge",function()
                                    local playerHead = game.Players.LocalPlayer.Character.Head
                                    for i, v in pairs(game:GetService("Workspace").Baseplate:GetDescendants()) do
                                    if v.name == "TouchInterest" and v.Parent then
                                      firetouchinterest(playerHead, v.Parent, 0)
                                    wait(1)
                                     firetouchinterest(playerHead, v.Parent, 1)
                                break;
                                end end
                                        end)

local Page = Main.Page("Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Teleports")

local Button = Section.Component("Button","Teleport to Vip Item Giver Room",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(524.901367, 53.6778374, 335.333588, 0, 0, -1, 0, 1, 0, 1, 0, 0)    
    end)

    local Button = Section.Component("Button","Teleport to Winner Room",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(268.214264, -72.8728333, 323.250122, -0.031096708, 2.93349078e-09, 0.999516368, 6.52960921e-08, 1, -9.03433994e-10, -0.999516368, 6.52364207e-08, -0.031096708)
            end)

            local Button = Section.Component("Button","Teleport to Leet Door",function()
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18490.1387, 10023.7734, -7373.1379, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                    end)

                    local Button = Section.Component("Button","Teleport to NZ Door",function()
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18490.2188, 10023.8896, -7305.2876, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                            end)

                            local Button = Section.Component("Button","Teleport to Owner Door",function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18483.3047, 10675.3447, -6191.62695, 0, 0, -1, -1, 0, 0, 0, 1, 0)    
                                end)
                            
                                local Button = Section.Component("Button","Teleport to Begin Door",function()
                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(406.837799, 21.550209, 390.885376, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                        end)
                            
                                        local Button = Section.Component("Button","Teleport to Maze Door",function()
                                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19087.5059, 9636.28906, -7241.43799, 0.999972463, -8.79234867e-05, -0.00742362347, 8.47193442e-05, 0.999999881, -0.000431927474, 0.00742366072, 0.000431286666, 0.999972343)
                                                end)
                            
                                                local Button = Section.Component("Button","Teleport to Green Door",function()
                                                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18491.0371, 10611.1768, -6161.83594, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                                                        end)

                                                        local Button = Section.Component("Button","Teleport to Friendship Door",function()
                                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18517.248, 10678.6387, -6207.31348, -1, 0, 0, 0, 1, 0, 0, 0, -1)    
                                                            end)
                                                        
                                                            local Button = Section.Component("Button","Teleport to Face Door",function()
                                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(19260.3555, 9635.91602, -7192.06494, 0.999459088, -0.000431551685, -0.0328842402, 0.000431551685, 0.999999881, -7.09754431e-06, 0.0328842402, -7.09754431e-06, 0.999459147)
                                                                    end)
                                                        
                                                                    local Button = Section.Component("Button","Teleport to Descriptive Door",function()
                                                                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18490.1387, 10021.7734, -7373.1377, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                                                                            end)
                                                        
                                                                            local Button = Section.Component("Button","Teleport to Sparta Egg",function()
                                                                                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18942.9961, 10014.4326, -7236.69482, -2.27019191e-05, -0.000463879027, -1.00000012, 9.72946436e-05, 1, -0.000463902426, 1.00000012, -9.75298608e-05, -2.26423144e-05)
                                                                                    end)
        

    local Page = Main.Page("Player","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Local Player")

local Slider2 = Section.Component("Slider2","Walkspeed",0,250,false,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end,18)

    local Slider2 = Section.Component("Slider2","Jump Power",0,300,false,function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
        end,50)

            local Slider2 = Section.Component("Slider2","Hip Height",2,100,false,function(value)
                game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
            end,2)

                local Button = Section.Component("Button","Click Tp Tool",function()
                    -- Code
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

