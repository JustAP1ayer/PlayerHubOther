--[[ open sourced now cause you retards think everything obfuscated is a beam link 
hate was annoying
]]
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))() 
local w = library:CreateWindow("PlayerHub UGC") -- Creates the window

local b = w:CreateFolder("!    ! redblue.#4424") -- Creates the folder(U will put here your buttons,etc)
local limid
b:Box("Input Limited ID","string",function(value) -- "number" or "string"
   limid = value
end)
local updspeed = 0
b:Slider("Update Speed",{
   min = 0; -- min value of the slider
   max = 5; -- max value of the slider
   precise = true; -- max 2 decimals
},function(value)
   updspeed = value
end)
b:Button("Buy Limited",function()
   game:GetService("MarketplaceService"):PromptPurchase(game.Players.LocalPlayer, tostring(limid))
end)

local limsniper = false
b:Toggle("Toggle Auto Limited Sniper",function(bool)
   limsniper = bool
   while  task.wait(updspeed) and limsniper == true and limid ~= nil do
      game:GetService("MarketplaceService"):PromptPurchase(game.Players.LocalPlayer, tostring(limid))
      end
   end)

local gameid
b:Box("Insert Game ID","number",function(value) -- "number" or "string"
gameid = value
end)
b:Button("TP to game ID",function()
   game:GetService("TeleportService"):Teleport(gameid, LocalPlayer)

end)
local abc = w:CreateFolder("Subplaces") -- Creates the folder(U will put here your buttons,etc)
local pages = game:GetService("AssetService"):GetGamePlacesAsync()

while true do
   for _, place in pairs(pages:GetCurrentPage()) do
      b:Button("TP: " .. tostring(place.Name) .. " (" .. tostring(place.PlaceId) .. ")",function()
         game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
      end)
   end
   if pages.IsFinished then
      break
   end
   pages:AdvanceToNextPageAsync()
end
