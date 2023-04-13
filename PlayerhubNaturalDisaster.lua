getgenv().LibTheme = {
    MainColor = Color3.fromRGB(45,55,111);
    BrighterMainColor = Color3.fromRGB(60,70,125);
    IconsColor = Color3.fromRGB(100,100,120);
    Accent = Color3.fromRGB(0,100,255);
    DarkText = Color3.fromRGB(170,170,170);
    BrightText = Color3.fromRGB(145,145,145);
    Font = "Gotham";
    SoundVolume = 1;
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayer Hub NDS")

local Page = Main.Page("IMPORTANT!!","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Important stuff")


local Button = Section.Component("Button","Copy discord server",function()
setclipboard("https://discord.gg/nXERxPYUyZ")
end)

local Page = Main.Page("Main","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))
local Section = Page.Section("AutoMation")

local Toggle = Section.Component("Toggle","Auto Farm Wins",function(bool)
  -- Code
  
    _G.autowinfarm = bool;
    while wait(.1) do
        if _G.autowinfarm == true then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-236, 180, 360, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        end
end
end)

local Section = Page.Section("Other")

local earfuckeryspeed = 0.5
local Slider2 = Section.Component("Slider2","Earrape speed",0.1,2,true,function(value)
    earfuckeryspeed = value
    end,earfuckeryspeed)

local Toggle = Section.Component("Toggle","(Troll) Earrape everyone",function(bool)
    _G.earfuckery = bool;
while task.wait(earfuckeryspeed) do
        if _G.earfuckery == true then
for _, sound in next, workspace:GetDescendants() do
   if sound:IsA("Sound") then
       sound:Play()
   end
end

end end
  end,false)

  local Toggle = Section.Component("Toggle","Map Voting UI",function(bool)
    if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
    end
end
if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
    end
end
  end,false)

  local Button = Section.Component("Button","Print Next Disaster (/console)",function()
    -- Code
    warn(game.Players.LocalPlayer.Character.SurvivalTag.Value)
    end)

    local Button = Section.Component("Button","Remove Disaster UI (Blizzard n Sandstorm)",function()
        -- Code
		game.Players.LocalPlayer.PlayerGui.BlizzardGui:destroy()
		game.Players.LocalPlayer.PlayerGui.SandStormGui:destroy()
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

                    local Toggle = Section.Component("Toggle","Jesus (Walk on water)",function(bool)
                        -- Code
                        if bool == false then do game.Workspace.WaterLevel.CanCollide = false
                            game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
                        end
                    end
                    if bool == true then do game.Workspace.WaterLevel.CanCollide = true
                            game.Workspace.WaterLevel.Size = Vector3.new(5000, 1, 5000)
                        end
                    end
                        end,false)

                        local Toggle = Section.Component("Toggle","Auto Disable Fall Damage",function(bool)
                            -- Code
                            _G.NoFallDamage = bool;
                            while wait(0.5) do
                                    if _G.NoFallDamage == true then
                            local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                            if FallDamageScript then
                            FallDamageScript:Destroy()
                            end end end
                            end,false)

                            local Button = Section.Component("Button","Disable Fall Damage",function()
                                -- Code
                                local FallDamageScript = (game.Players.LocalPlayer.Character ~= nil) and game.Players.LocalPlayer.Character:FindFirstChild("FallDamageScript") or nil
                                if FallDamageScript then
                                FallDamageScript:Destroy()
                                end
                                end)
    

                        local Toggle = Section.Component("Toggle","Game Island Cliff Collision",function(bool)
                            -- Code
                            for i, v in pairs (game.workspace:GetDescendants())do
                                if v.Name == 'LowerRocks' then
                                    v.CanCollide = bool
                                end
                            end 
                            end,false)
    

                    local Page = Main.Page("Teleports","3926305904",Vector2.new(924, 204),Vector2.new(36, 36))

local Section = Page.Section("Cframes")

local Button = Section.Component("Button","Game Island",function()
    -- Code
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-83.5, 38.5, -27.5, -1, 0, 0, 0, 1, 0, 0, 0, -1) --Game Island
    end)

    local Button = Section.Component("Button","Spawn Tower",function()
        -- Code
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-280, 170, 341, 1, 0, 0, 0, 1, 0, 0, 0, 1) -- Spawn Tower

        end)

        local Section = Page.Section("Teleport Service")

        local Button = Section.Component("Button","Chinese Version",function()
            -- Code
            game:GetService("TeleportService"):Teleport(3696971654, LocalPlayer)    
            end)

