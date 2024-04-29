local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "PlayerHub Hello Kitty Cafe",
    LoadingTitle = "Loading Resources",
    LoadingSubtitle = "by Redblue",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "Rayfield Interface Suite",
        FileName = "PlayerHub"
    },
    KeySystem = false,
    KeySettings = {
        Title = "Player Hub",
        Subtitle = "Player Hub",
        Note = "Player Hub",
        SaveKey = true,
        Key = "ABCDEF"
    }
})
local function interact(btn)
    for i, v in pairs(getconnections(btn.MouseButton1Click)) do
        v:Fire()
    end
    for i, v in pairs(getconnections(btn.MouseButton1Down)) do
        v:Fire()
    end
    for i, v in pairs(getconnections(btn.Activated)) do
        v:Fire()
    end
end
local Tab = Window:CreateTab("Autofarm", 4483362458) -- Title, Image
if game.PlaceId == 9682240267 or game.PlaceId == 9346060856 then
    local Section = Tab:CreateSection("Town!")

    local teleportoffsetx = 0
    local teleportoffsety = 5
    local teleportoffsetz = 0

    local Slider = Tab:CreateSlider({
        Name = "Teleport offset X Axis",
        Range = {-10, 10},
        Increment = 0.1,
        Suffix = "",
        CurrentValue = teleportoffsetx,
        Flag = "Teleport offset X Axis", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            teleportoffsetx = Value
        end
    })
    local Slider = Tab:CreateSlider({
        Name = "Teleport offset Y Axis",
        Range = {-10, 10},
        Increment = 0.1,
        Suffix = "",
        CurrentValue = teleportoffsety,
        Flag = "Teleport offset Y Axis", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            teleportoffsety = Value
        end
    })
    local Slider = Tab:CreateSlider({
        Name = "Teleport offset Z Axis",
        Range = {-10, 10},
        Increment = 0.1,
        Suffix = "",
        CurrentValue = teleportoffsetz,
        Flag = "Teleport offset Z Axis", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            teleportoffsetz = Value
        end
    })
    getgenv().CleanerTeleport = true
    local Toggle = Tab:CreateToggle({
        Name = "Cleaner Teleport",
        CurrentValue = getgenv().CleanerTeleport,
        Flag = "Cleaner Teleport", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().CleanerTeleport = Value
        end
    })

    local Toggle = Tab:CreateToggle({
        Name = "Treasure Chest Farm",
        CurrentValue = false,
        Flag = "Treasure Chest Farm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().TreasureFarm = Value
            if getgenv().TreasureFarm == true and getgenv().CleanerTeleport == true then
                pcall(function()
                    local BV = Instance.new('BodyVelocity', game.Workspace)
                    BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    BV.velocity = Vector3.new(0, 0, 0)
                    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                end)
            end
            while task.wait() and getgenv().TreasureFarm == true do
                for i, v in pairs(workspace.TreasureEntity:GetChildren()) do
                    if getgenv().TreasureFarm == true then
                        pcall(function()
                            game.Players.LocalPlayer.Character:PivotTo(v.TreasureLid.CFrame +
                                                                           Vector3.new(teleportoffsetx, teleportoffsety,
                                    teleportoffsetz))
                        end)
                        local btn =
                            game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"]
                                .ImageButton
                        repeat
                            task.wait(0.05)
                            pcall(function()
                                game.Players.LocalPlayer.Character:PivotTo(v.TreasureLid.CFrame +
                                                                               Vector3.new(teleportoffsetx,
                                        teleportoffsety, teleportoffsetz))
                            end)
                            interact(btn)
                        until not v:FindFirstChild("TreasureLid") or getgenv().TreasureFarm == false
                    end
                end
            end
            pcall(function()
                if getgenv().TreasureFarm == false or getgenv().CleanerTeleport == false then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
                end
            end)
        end
    })
    local Label = Tab:CreateLabel("Food")

    local energy = 500
    if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 40873685) then
        energy = 800
    end
    local autofeedinterval = 0.1
    local autofeedintervaloop = 300
    task.wait(0.1)
    local Slider = Tab:CreateSlider({
        Name = "Auto Feed Interval",
        Range = {0, 1},
        Increment = 0.01,
        Suffix = "",
        CurrentValue = autofeedinterval,
        Flag = "Auto Feed Interval", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            autofeedinterval = Value
        end
    })
    local Slider = Tab:CreateSlider({
        Name = "Auto Feed Loop Interval",
        Range = {60, 600},
        Increment = 1,
        Suffix = "",
        CurrentValue = autofeedintervaloop,
        Flag = "Auto Feed Loop Interval", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            autofeedintervaloop = Value
        end
    })
    getgenv().AutoBuyVanilliaAutoFeed = true
    local Toggle = Tab:CreateToggle({
        Name = "Auto Buy Vanillia (Auto Feed)",
        CurrentValue = getgenv().AutoBuyVanilliaAutoFeed,
        Flag = "Auto Buy Vanillia (Auto Feed)", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().AutoBuyVanilliaAutoFeed = Value
        end
    })

    local Toggle = Tab:CreateToggle({
        Name = "Auto Feed Employees",
        CurrentValue = false,
        Flag = "Auto Feed Employees", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().autofeed = Value
            while getgenv().autofeed do
                local hiredEmployees = {}
                local hiredEmployeesIDs = {}
                for i, v in pairs(
                    game.Players.LocalPlayer.PlayerGui.UIPlayer.UIEmploye.EmployeFrame.Job:GetDescendants()) do
                    if v.Name == "MingZi" and v.Parent.Name == "Icon" and v.Text ~= "" and v.Text ~= "HELLO KITTY" then
                        table.insert(hiredEmployees, v.Text)
                    end
                end
                for i, v in pairs(require(game:GetService("ReplicatedStorage").GameCommon.Template.Employe)) do
                    for x = 1, #hiredEmployees do
                        if require(game.ReplicatedFirst.LocalizationHandle):GetText(v.name, v.id) == hiredEmployees[x] then
                            table.insert(hiredEmployeesIDs, v.id)
                        end
                    end
                end

                if getgenv().AutoBuyVanilliaAutoFeed == true and
                    require(game.ReplicatedStorage.GameCommon.GameClient).node.localClientPlayer.playerItem:GetHavePartItemCount(
                        200010100) <= #hiredEmployeesIDs * (energy / 20) then
                    local args = {
                        [1] = 1,
                        [2] = 200010100,
                        [3] = #hiredEmployeesIDs * (energy / 20)
                    }

                    game:GetService("ReplicatedStorage").GameCommon.Messages.BuyAndSellItem:FireServer(unpack(args))
                end

                for i = 1, #hiredEmployeesIDs do
                    for j = 1, (energy / 20) do
                        local args = {
                            [1] = hiredEmployeesIDs[i],
                            [2] = 200010100
                        }
                        game:GetService("ReplicatedStorage").GameCommon.Messages.Employe.GiveItem:FireServer(
                            unpack(args))
                    end
                    task.wait(autofeedinterval)
                end
                task.wait(autofeedintervaloop)
            end
        end
    })
end
if game.PlaceId == 13542186363 then
    local Section = Tab:CreateSection("Cinnamoroll Cafe")
    local cinnamorollinteraction = "Both"
    local Dropdown = Tab:CreateDropdown({
        Name = "Interaction Method",
        Options = {"Remote", "Button", "Both"},
        CurrentOption = cinnamorollinteraction,
        Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Option)
            cinnamorollinteraction = Option[1]
            print(Option[1])
        end
    })
    local Toggle = Tab:CreateToggle({
        Name = "Auto Farm (Cashier)",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().CinnamorollCashier = Value
            while getgenv().CinnamorollCashier and task.wait() do
                pcall(function()
                    game.Players.LocalPlayer.Character:PivotTo(CFrame.new(27, 5.36, 122))
                    if game:GetService("Players").LocalPlayer.PlayerGui.UIPlayerInteraction["Interaction-InteractionF"]
                        .Visible == true then
                        if cinnamorollinteraction == "Both" then
                            local args = {
                                [1] = "E74"
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("Common"):WaitForChild("Messages")
                                :WaitForChild("OperateInteraction"):FireServer(unpack(args))
                            local args = {
                                [1] = "E75"
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("Common"):WaitForChild("Messages")
                                :WaitForChild("OperateInteraction"):FireServer(unpack(args))

                            interact(
                                game:GetService("Players").LocalPlayer.PlayerGui.UIPlayerInteraction["Interaction-InteractionF"]
                                    .ImageButton)
                        elseif cinnamorollinteraction == "Button" then
                            interact(
                                game:GetService("Players").LocalPlayer.PlayerGui.UIPlayerInteraction["Interaction-InteractionF"]
                                    .ImageButton)
                        elseif cinnamorollinteraction == "Remote" then
                            local args = {
                                [1] = "E74"
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("Common"):WaitForChild("Messages")
                                :WaitForChild("OperateInteraction"):FireServer(unpack(args))
                            local args = {
                                [1] = "E75"
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("Common"):WaitForChild("Messages")
                                :WaitForChild("OperateInteraction"):FireServer(unpack(args))

                        end
                    end
                end)
            end
        end
    })
end
if game.PlaceId == 14379445094 then
    local endteleportinveral = 1

    local Section = Tab:CreateSection("Keroppi Dash!")
    local Slider = Tab:CreateSlider({
        Name = "Teleport Interval",
        Range = {0.5, 5},
        Increment = 0.1,
        Suffix = "",
        CurrentValue = endteleportinveral,
        Flag = "Teleport Interval", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            endteleportinveral = Value
        end
    })
    local Toggle = Tab:CreateToggle({
        Name = "Auto Finish Obbies (Slow for Anticheat)",
        CurrentValue = false,
        Flag = "Auto Finish Obbies (Slow for Anticheat)", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().KeroppiDash = Value
            while getgenv().KeroppiDash do
                pcall(function()
                    if string.find(game:GetService("Players").LocalPlayer.PlayerGui.UIMain.Frame.Countdown.Text,
                        "The game will end in ") then
                        for i, v in pairs(workspace:GetChildren()) do
                            if string.find(v.Name, "Baffle") then
                                game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
                                v.CanTouch = true
                                v.CanCollide = false
                                task.spawn(function()
                                    for i = 1, 15 do
                                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Jump = true
                                        task.wait(0.25)
                                    end
                                end)
                                task.wait(endteleportinveral)
                            end
                            task.wait()
                        end
                    else
                        game.Players.LocalPlayer.Character:PivotTo(
                            workspace["\231\173\137\229\190\133\229\140\186"].SpawnLocation.CFrame)
                    end
                end)
                task.wait()
            end
        end
    })
end
if game.PlaceId == 15697538468 then

    local Section = Tab:CreateSection("Hello Kitty 50 Year Mystery Museum!")
    getgenv().CleanerTeleport = true
    local Toggle = Tab:CreateToggle({
        Name = "Cleaner Teleport",
        CurrentValue = getgenv().CleanerTeleport,
        Flag = "Cleaner Teleport", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().CleanerTeleport = Value
        end
    })
    local Toggle = Tab:CreateToggle({
        Name = "Auto Farm Pink 50 Coins",
        CurrentValue = false,
        Flag = "Auto Farm Pink 50 Coins", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().AutofarmPink50 = Value
            if getgenv().AutofarmPink50 == true and getgenv().CleanerTeleport == true then
                pcall(function()
                    local BV = Instance.new('BodyVelocity', game.Workspace)
                    BV.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                    BV.velocity = Vector3.new(0, 0, 0)
                    BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
                end)
            end
            while getgenv().AutofarmPink50 do
                repeat
                    task.wait()
                    pcall(function()
                        game.Players.LocalPlayer.Character:PivotTo(
                            CFrame.new(-0.135320663, 5027.35596, 115.330177, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    end)
                until workspace:FindFirstChild("_Apples") and
                    game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("UIBottom") and
                    game:GetService("Players").LocalPlayer.PlayerGui.UIBottom:FindFirstChild("rootFrame").Visible ==
                    true
                for i = 1, 2 do
                    for i, v in pairs(workspace._Apples:GetChildren()) do
                        if v.Name == "DynAppleCoin" and v.Transparency ~= 1 then
                            pcall(function()
                                game.Players.LocalPlayer.Character:PivotTo(v.CFrame)
                            end)
                            task.wait(0.25)
                        end
                    end
                end
                pcall(function()
                    game.Players.LocalPlayer.Character.Humanoid.Health = 0

                    game.Players.LocalPlayer.Character:BreakJoints()
                end)
                repeat
                    task.wait()
                until game.Players.LocalPlayer.Character and
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") and
                    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid").Health ~= 0
                task.wait()
            end
            pcall(function()
                if getgenv().AutofarmPink50 == false or getgenv().CleanerTeleport == false then
                    game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity"):Destroy()
                end
            end)
        end
    })
end
if game.PlaceId == 9346060856 then
    local Section = Tab:CreateSection("City")
    local Toggle = Tab:CreateToggle({
        Name = "Auto Get Hello Kitty Items",
        CurrentValue = false,
        Flag = "Auto Get Hello Kitty Items", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            getgenv().AuthelloItems = Value
            while getgenv().AuthelloItems do
                for i, v in pairs(workspace.StampCollection:GetChildren()) do
                    if v:IsA("Model") and (v:FindFirstChild("Animation") or v:FindFirstChild("Root")) then
                        print(v)
                        local part = v:FindFirstChildOfClass("MeshPart") or v:FindFirstChildOfClass("Part")
                        pcall(function()
                            game.Players.LocalPlayer.Character:PivotTo(part.CFrame)
                            interact(
                                game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"]
                                    .ImageButton)
                        end)
                        for i = 1, 5 do
                            pcall(function()
                                game.Players.LocalPlayer.Character:PivotTo(part.CFrame)
                                interact(
                                    game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIPlayerInteraction["Interaction-InteractionF"]
                                        .ImageButton)
                            end)
                            task.wait(0.15)
                        end
                        task.wait(1)
                    end
                end
                task.wait()
            end
        end
    })
end
local Label = Tab:CreateLabel("Label Example")

local Paragraph = Tab:CreateParagraph({
    Title = "Paragraph Example",
    Content = "Paragraph Example"
})

local Input = Tab:CreateInput({
    Name = "Input Example",
    PlaceholderText = "Input Placeholder",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        -- The function that takes place when the input is changed
        -- The variable (Text) is a string for the value in the text box
    end
})

local Keybind = Tab:CreateKeybind({
    Name = "Keybind Example",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Keybind)
        -- The function that takes place when the keybind is pressed
        -- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
    end
})

local Dropdown = Tab:CreateDropdown({
    Name = "Dropdown Example",
    Options = {"Option 1", "Option 2"},
    CurrentOption = "Option 1",
    Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        -- The function that takes place when the selected option is changed
        -- The variable (Option) is a string for the value that the dropdown was changed to
    end
})
local Tab = Window:CreateTab("Other", 4483362458) -- Title, Image
pcall(function()
    if game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIFriends.Background:FindFirstChild("Content") then
        local Section = Tab:CreateSection("Party (Invitations)")
        local invitemessage = "Please give me hearts, thank you!"
        local Input = Tab:CreateInput({
            Name = "Invitation Message",
            PlaceholderText = invitemessage,
            RemoveTextAfterFocusLost = true,
            Callback = function(Text)
                invitemessage = Text
                print(Text)
            end
        })
        local invited = {} -- to not be annoying lul
        local Toggle = Tab:CreateToggle({
            Name = "Auto Invite Others",
            CurrentValue = false,
            Flag = "Auto Invite Others", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                getgenv().Autoinv = Value
                while getgenv().Autoinv == true do
                    local invitations = {}
                    local invitationamount = {}
                    local btn = game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIMain.Frame.UpButtons.UL
                                    .BnVisiteFriend
                    interact(btn)
                    task.spawn(function()
                        task.wait(5)
                        interact(btn)
                    end)
                    task.wait(1.5)
                    for i, v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.UIPlayer.UIFriends.Background
                                          .Content.Bottom.FriendList.List:GetChildren()) do
                        if #invitationamount >= 20 then
                            local args = {
                                [1] = invitations,
                                [2] = invitemessage
                            }

                            game:GetService("ReplicatedStorage"):WaitForChild("GameCommon"):WaitForChild("Messages")
                                :WaitForChild("Party"):WaitForChild("RequestInviteListTo"):FireServer(unpack(args))
                            print("Invited: " .. tostring(invitations) .. "\nMessage: " .. tostring(invitemessage))
                            invitations = {}
                            invitationamount = {}
                            task.wait(55)
                        end
                        if v:IsA("ImageLabel") then
                            local userid = v.Id.Value
                            if not table.find(invited, userid) then
                                table.insert(invited, userid)
                                table.insert(invitationamount, userid)
                                invitations[userid] = userid
                            end
                        end
                    end
                    task.wait(5.5)
                end
            end
        })
    end
end)
local chosenversionsubplace = "Teleport"
local Section = Tab:CreateSection("Places")
local Dropdown = Tab:CreateDropdown({
    Name = "What to do with subplace",
    Options = {"Teleport", "Copy Script", "Copy Game Link"},
    CurrentOption = chosenversionsubplace,
    Flag = "What to do with subplace", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Option)
        chosenversionsubplace = tostring(Option[1])
    end
})
local pages = game:GetService("AssetService"):GetGamePlacesAsync()

while true and task.wait(0.555) do
    for _, place in pairs(pages:GetCurrentPage()) do
        local Button = Tab:CreateButton({
            Name = "[" .. tostring(_) .. tostring("] ") .. place.Name .. " (" .. tostring(place.PlaceId) .. ")",
            Callback = function()
                if chosenversionsubplace == "Teleport" then
                    game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
                elseif chosenversionsubplace == "Copy Script" then
                    setclipboard(
                        "-- This Script was Generated by Redblue's PlayerHub Script \n game:GetService('TeleportService'):Teleport(" ..
                            tostring(place.PlaceId) .. ", LocalPlayer)")
                    Rayfield:Notify("PlayerHub", "Copied Game Link", 4483362458) -- Notfication -- Title, Content, Image

                elseif chosenversionsubplace == "Copy Game Link" then
                    setclipboard(
                        "-- This Script was Generated by Redblue's PlayerHub Script\n https://www.roblox.com/games/" ..
                            tostring(place.PlaceId))
                    Rayfield:Notify("PlayerHub", "Copied Game Link", 4483362458) -- Notfication -- Title, Content, Image
                end
            end
        })

        task.wait(0.0333)

    end
    if pages.IsFinished then
        break
    end
    pages:AdvanceToNextPageAsync()
    task.wait(0.025)

end


-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns
