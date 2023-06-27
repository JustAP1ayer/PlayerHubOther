local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

if not isfolder("PlayerHub") then
    makefolder("PlayerHub")
end
getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35, 35, 40),
    BrighterMainColor = Color3.fromRGB(40, 40, 45),
    IconsColor = Color3.fromRGB(100, 100, 120),
    Accent = Color3.fromRGB(0, 100, 255),
    DarkText = Color3.fromRGB(170, 170, 170),
    BrightText = Color3.fromRGB(145, 145, 145),
    Font = "Gotham",
    SoundVolume = 0.5,
    HideKey = "LeftAlt"
}

local Library = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/JustAP1ayer/ASalfinUiBackup-/main/OcerLibBACKUP.lua"))()

local Main = Library.Main("P|ayerHub")
local Logs = Main.Logs("placeholder")
local Page = Main.Page("Important", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Important")

Section.Component("Button", "Copy Discord (Support) to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/nXERxPYUyZ")
end)
Section.Component("Button", "Copy Discord (UGC) to clipboard", function()
    -- Code
    setclipboard("https://discord.gg/ugcleaks")
end)
Section.Component("Button", "Press 'LeftAlt' to Minimize GUI", function()
end)

Section.Component("Button", "Use Mousescroll to go through pages", function()
    -- Code
end)

Section.Component("Button", "Support us - Cashapp - $JustAPlayer", function()
    -- Code
end)

local Page = Main.Page("Main", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))
local Section = Page.Section("Main")
Section.Component("Button", "Webhooks", function()
    local library = loadstring(game:HttpGet(
        ('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

    local w = library:CreateWindow("PlayerHub UGC Clicker") -- Creates the window

    local b = w:CreateFolder("Webhook stuff") -- Creates the folder(U will put here your buttons,etc)

    local updatespeed = 300
    b:Slider("Webhook update speed (Seconds)", {
        min = 30, -- min value of the slider
        max = 3600, -- max value of the slider
        precise = false -- max 2 decimals
    }, function(value1)
        updatespeed = value1
    end)
    local webhookURL1
    b:Box("Points Webhook", "string", function(value2) -- "number" or "string"
        webhookURL1 = value2
    end)

    b:Toggle("^ Enable Points Webhook ^", function(bool)
        function formatNumber(value)
            local suffixes = {
                B = 1000000000, -- billion
                M = 1000000   -- million
            }
        
            local numberString, suffix = string.match(value, "([%d.]+)(%a)")
            local multiplier = suffixes[suffix]
        
            if numberString and multiplier then
                local number = tonumber(numberString) * multiplier
                return string.format("%0.0f", number)
            else
                return value
            end
        end
        
        PointsWebhook = bool
        
        coroutine.wrap(function()
            local httpService = game:GetService("HttpService")
            local request = (syn and syn.request) or request or (http and http.request) or http_request
            local LastPointsAmount = formatNumber(game:GetService("Players").LocalPlayer.leaderstats.Points.Value)
        
            while PointsWebhook == true do
                local NewPoints = formatNumber(game:GetService("Players").LocalPlayer.leaderstats.Points.Value)
                request({
                    Url = webhookURL1,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode({
                        content = "",
                        embeds = {{
                            title = "|| " .. game.Players.LocalPlayer.Name .. "  || 's Points Update! " ..
                                os.date("%I:%M:%S %p "),
                            description = "Total Points Amount: " ..
                            formatNumber(game:GetService("Players").LocalPlayer.leaderstats.Points.Value) .. " Points",
                            color = 0x81ff57,
                            fields = {{
                                name = "Updated amount made",
                                value = "Made " .. tostring(NewPoints - LastPointsAmount) .. " Points ",
                                inline = true
                            }}
                        }}
                    })
                })
        
                LastPointsAmount = NewPoints
                task.wait(updatespeed)
            end
        end)()
        
    end)
    local WebhookURL3
    b:Box("Rebirth Webhook", "string", function(value5) -- "number" or "string"
        WebhookURL3 = value5
    end)

    b:Toggle("^ Enable Rebirth Webhook ^", function(bool)
        RebirthsWebhook = bool
        coroutine.wrap(function()
            local httpService = game:GetService("HttpService")
            local request = (syn and syn.request) or request or (http and http.request) or http_request
            local OldRebirthsAmount = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
            while RebirthsWebhook == true do
                local NewRebirths = game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value
                request({
                    Url = WebhookURL3,
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json"
                    },
                    Body = httpService:JSONEncode({
                        content = "",
                        embeds = {{
                            title = "|| " .. game.Players.LocalPlayer.Name .. "  || 's Rebirths Update! " ..
                                os.date("%I:%M:%S %p "),
                            description = "Total Rebirths Amount: " ..
                                game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value,
                            color = 0x81ff57,
                            fields = {{

                                name = "Updated amount made",
                                value = "Made " .. tostring(NewRebirths - OldRebirthsAmount) .. " Rebirths ",
                                inline = true
                            }}
                        }}
                    })
                })
                OldRebirthsAmount = NewRebirths
                task.wait(updatespeed)
            end
        end)()
    end)
end)
local Section = Page.Section("Mouse")

Section.Component("Card", "Dont talk or click or it'll break", "V2 is better but v1 can work")

_G.AutoClickType = "V2 (Better)"
local Dropdown = Section.Component("Dropdown", "Auto Click Type", {"V1", "V2 (Better)"}, false, function(death, bool)
    _G.AutoClickType = tostring(death)
end, _G.AutoClickType)
local AutoClickSpeed = 1.2
Section.Component("Slider2", "Auto Click and Hold Speed / Interval", 0.4, 10, true, function(value)
    AutoClickSpeed = value
end, AutoClickSpeed)
Section.Component("Button", "Disable Autoclick", function()
    _G.AutoClick = false
end)
Section.Component("Toggle", "Auto Click", function(troo)
    _G.AutoClick = troo
    while task.wait(AutoClickSpeed) and _G.AutoClick == true do
        if _G.AutoClickType == "V2 (Better)" then
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
        elseif _G.AutoClickType == "V1" then
            mouse1click()
        end
    end
end, false)
local AutoHoldTime = 8
Section.Component("Slider2", "Auto Hold Time", 0.5, 30, true, function(value)
    AutoHoldTime = value
end, AutoHoldTime)
Section.Component("Toggle", "Auto Hold mouse click", function(bool)
    _G.AutoHold = bool
    while wait(AutoClickSpeed) and _G.AutoHold == true do
        if _G.AutoClickType == "V2 (Better)" then
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, nil, 0)
            wait(AutoHoldTime)
            game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, nil, 0)
        elseif _G.AutoClickType == "V1" then
            mouse1press()
            wait(AutoHoldTime)
            mouse1release()
        end
    end
end, false)
local Section = Page.Section("Misc Scripts")

Section.Component("Button", "Owl Hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
end)

Section.Component("Button", "Infinite Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section.Component("Button", "CMDX", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()

end)
local Page = Main.Page("Auto", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("AutoClicker")
Section.Component("Card", "Warning! Too much and too fast can", "Lag you alot, check your ping!")

local acamountspeed = 0
Section.Component("Slider2", "AutoClick Speed", 0, 5, true, function(value)
    acamountspeed = value
end, acamountspeed)
local acamount = 3
Section.Component("Slider2", "Amount Per Click", 0, 30, false, function(value)
    acamount = value
end, acamount)
Section.Component("Toggle", "Enable Auto click", function(bool)
    _G.AutoClick55 = bool
    while _G.AutoClick55 and task.wait(acamountspeed) do
        task.spawn(function()
            for i = 1, tonumber(acamount) do

                local args = {
                    [1] = "pointUpdate"
                }
                game:GetService("ReplicatedStorage").OptimizingFunction:InvokeServer(unpack(args))
            end

        end)
    end
end, false)
local Section = Page.Section("PowerUp")
local powerupinv = 1
Section.Component("Slider2", "Power up Interval", 0, 30, true, function(value)
    powerupinv = value
end, powerupinv)
Section.Component("Toggle", "Autobuy Power Ups", function(bool)
    _G.AutoPowerUp = bool
    while _G.AutoPowerUp and task.wait(powerupinv) do
        local args = {
            [1] = "PowerUpPurchase"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("OptimizingFunction"):InvokeServer(unpack(args))
    end
end, false)

local Section = Page.Section("Multiplier")
local multityple = 1
Section.Component("Slider2", "Choose Multiplier Type", 1, 10, false, function(value)
    multityple = value
end, multityple)
local multiinv = 1
Section.Component("Slider2", "Multi Buy Interval", 0, 30, true, function(value)
    multiinv = value
end, multiinv)
Section.Component("Toggle", "Enable Multiplier buying", function(bool)
    _G.AutoMulti = bool
    while _G.AutoMulti and task.wait(multiinv) do
        local args = {
            [1] = "AutoClickerPurchase",
            [2] = tonumber(multityple)
        }

        game:GetService("ReplicatedStorage"):WaitForChild("OptimizingFunction"):InvokeServer(unpack(args))

    end
end, false)

local Section = Page.Section("Other")
local Rebirthinv = 1
Section.Component("Slider2", "Rebirth Interval", 0, 28, true, function(value)
    Rebirthinv = value
end, Rebirthinv)
Section.Component("Toggle", "Auto Rebirth", function(bool)
    _G.AutoRebirth = bool
    while _G.AutoRebirth and task.wait(Rebirthinv) do
        local args = {
            [1] = "rebirth"
        }

        game:GetService("ReplicatedStorage"):WaitForChild("OptimizingFunction"):InvokeServer(unpack(args))

    end
end, false)

local Page = Main.Page("Settings", "3926305904", Vector2.new(924, 204), Vector2.new(36, 36))

local Section = Page.Section("Settings")
Section.Component("Button", "Antiafk/idle", function()
    wait(0.5)
    local bb = game:service 'VirtualUser'
    game:service 'Players'.LocalPlayer.Idled:connect(function()
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end)

    print("Antiafk enabled")
end)
Section.Component("Button", "Antiafk/idle v2", function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
        v:Disable()
    end
end)

Section.Component("Toggle", "3D Rendering (Helps with Device)", function(bool)
    game:GetService("RunService"):Set3dRenderingEnabled(bool)
end, false)
