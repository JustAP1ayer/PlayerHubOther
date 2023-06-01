--[[ open sourced now cause you retards think everything obfuscated is a beam link 
hate was annoying
https://discord.gg/nXERxPYUyZ
]]

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))() 
local w = library:CreateWindow("PlayerHub UGC") -- Creates the window

local t = w:CreateFolder("!    ! redblue.#4424") -- Creates the folder(U will put here your buttons,etc)
t:Button("Infinite Yield",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
 end)
 t:Button("My Universal Script",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubUniversal.lua",true))()
 end)
 local b = w:CreateFolder("P|ayer#6812") -- Creates the folder(U will put here your buttons,etc)
local limid 
b:Box("Input Limited ID","string",function(value) -- "number" or "string"
   limid = value
end)
b:Button("Print Limited Info",function()
    print("Asset ID: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).AssetId .. " \n" .. "Name: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Name .. " \n" .. "Description: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Description .. " \n Use This to Buy It!  \n   game:GetService('MarketplaceService'):PromptPurchase(game.Players.LocalPlayer, " .. limid)
end)
b:Button("Copy Limited Info",function()
   setclipboard("Asset ID: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).AssetId .. " \n" .. "Name: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Name .. " \n" .. "Description: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Description .. " \n Use This to Buy It!  \n   game:GetService('MarketplaceService'):PromptPurchase(game.Players.LocalPlayer, " .. limid)
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

b:Toggle("Toggle Auto Limited Sniper V1 (AutoPrompts)", function(bool1)
    limsniper = bool1
    while task.wait(updspeed) and limsniper and limid ~= nil do
        game:GetService("MarketplaceService"):PromptPurchase(game.Players.LocalPlayer, tostring(limid))
    end
end)


   local limsniper1 = false
   b:Toggle("Toggle Auto Limited Sniper V2 (Prompt when Onsale)", function(bool)
       limsniper1 = bool
       while task.wait(updspeed) and limsniper1 == true and game:GetService("MarketplaceService"):GetProductInfo(tonumber(limid)).IsForSale do
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

while true and task.wait(0.5) do
    for _, place in pairs(pages:GetCurrentPage()) do
      abc:Button(tostring(place.Name) .. " (" .. tostring(place.PlaceId) .. ")",function()
         game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
      end)
   end
   if pages.IsFinished then
      break
   end
   pages:AdvanceToNextPageAsync()
end
