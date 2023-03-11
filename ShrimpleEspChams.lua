local Players = game:GetService("Players")
local function addHighlight(character)
    local highlight = Instance.new("Highlight", character)
end
local function onCharacterAdded(character)
    if not character:FindFirstChildOfClass("Highlight") then
        addHighlight(character)
    end
    character.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("Humanoid") then
            descendant.Died:Connect(function()
                highlight = descendant.Parent:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight:Destroy()
                end
            end)
        end
    end)
end
for _, player in ipairs(Players:GetPlayers()) do
    player.CharacterAdded:Connect(function(character)
        onCharacterAdded(character)
    end)
    if player.Character then
        onCharacterAdded(player.Character)
    end
end
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        onCharacterAdded(character)
    end)
end)
Players.PlayerRemoving:Connect(function(player)
    local character = player.Character
    if character then
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight:Destroy()
        end
    end
end)
