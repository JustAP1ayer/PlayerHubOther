--[[ open sourced now cause you retards think everything obfuscated is a beam link 
hate was annoying
https://discord.gg/nXERxPYUyZ
]]

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))() 
local w = library:CreateWindow("PlayerHub UGC") -- Creates the window
local zz = w:CreateFolder("discord.gg/ugcleaks") -- Creates the folder(U will put here your buttons,etc)
zz:Button("Check if Adonis (Console)",function()
for _, v in pairs(game:GetDescendants()) do
    if (string.find(v.Name, "ADONIS")) or (v:IsA("ImageButton") and v.Image.Name == "rbxassetid://357249130") then
        print("May Have ADONIS")
    end
end
end)
local t = w:CreateFolder("redblue.") -- Creates the folder(U will put here your buttons,etc)

 t:Label("https://discord.gg/nXERxPYUyZ",{
    TextSize = 14; -- Self Explaining
    TextColor = Color3.fromRGB(255,255,255); -- Self Explaining
    BgColor = Color3.fromRGB(69,69,69); -- Self Explaining
    
}) 
t:Button("Script Finder",function()
   local Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0581/Iris-Exploit-Bundle/main/bundle.lua"))().Init(game.CoreGui)

   local result = {result={scripts={}}}
   local function search(query)
    query = query:gsub(" ", "+")
    result = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://\115\99\114\105\112\116\98\108\111\120.com/api/script/search?q=%s&max=500&mode=free"):format(query)))
   end
   
   local viewdetails = false
   local script = {}
   
   Iris:Connect(function()
    Iris.Window({"Script Browser - Powered By \83\99\114\105\112\116\66\108\111\120.com!"}) do
      Iris.SameLine() do
        local query = Iris.InputText({""}).text.value
        if Iris.Button({"Search"}).clicked then
          task.spawn(function()
            search(query)
            Iris.ForceRefresh()
          end)
        end
        if Iris.Button({"Clear"}).clicked then
          result = {result={scripts={}}}
          Iris.ForceRefresh()
        end
        Iris.End()
      end
      Iris.Table({3}) do
        Iris.Text({"Title"})
        Iris.NextColumn()
        Iris.Text({"Game"})
        Iris.NextColumn()
        Iris.Text({"Options"})
        Iris.NextColumn()
        for i,v in next, result.result.scripts do
          Iris.Text({v.title})
          Iris.NextColumn()
          Iris.Text({v.game.name})
          Iris.NextColumn()
          Iris.SameLine() do
            Iris.Text({""})
            if Iris.SmallButton({"Execute"}).clicked then
              task.spawn(function()
                loadstring(v.script)()
              end)
            end
            if Iris.SmallButton({"View Details"}).clicked then
              script = v
              viewdetails = true
            end
            Iris.End()
          end
          Iris.NextColumn()
        end
        Iris.End()
      end
      Iris.End()
    end
   
    if viewdetails then
      Iris.Window({"View Details", [Iris.Args.Window.NoClose] = false}) do
        if Iris.Button({"Close"}).clicked then
          viewdetails = false
        end
        Iris.Table({2}) do
          for i,v in next, script do
            if typeof(v) ~= "table" then
              Iris.Text({tostring(i)})
              Iris.NextColumn()
              Iris.Text({tostring(v)})
              Iris.NextColumn()
            end
          end
          Iris.End()
        end
        Iris.End()
      end
    end
   end)
end)
t:Button("Infinite Yield",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
 end)
 t:Button("My Universal Script",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubUniversal.lua",true))()
 end)
 t:Button("FLY GUI (mobile)",function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
end)
 local b = w:CreateFolder("._player") -- Creates the folder(U will put here your buttons,etc)
local limid 
b:Box("Input Limited ID","string",function(value) -- "number" or "string"
   limid = value
end)
b:Button("Print Limited Info",function()
    print("Asset ID: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).AssetId .. " \n" .. "Name: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Name .. " \n" .. "Description: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Description .. " \n Use This to Buy It!  \n   game:GetService('MarketplaceService'):PromptPurchase(game.Players.LocalPlayer, " .. limid .. ")")
end)
b:Button("Copy Limited Info",function()
   setclipboard("Asset ID: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).AssetId .. " \n" .. "Name: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Name .. " \n" .. "Description: " ..  game:GetService("MarketplaceService"):GetProductInfo(limid).Description .. " \n Use This to Buy It!  \n   game:GetService('MarketplaceService'):PromptPurchase(game.Players.LocalPlayer, " .. limid .. ")")
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
local chosenversionsubplace = "Teleport"
abc:Dropdown("What to do with Subplace",{"Teleport","Copy Script"},true,function(subplacethingy) 
   chosenversionsubplace = subplacethingy
end)

while true and task.wait(0.5) do
    for _, place in pairs(pages:GetCurrentPage()) do
      abc:Button(tostring(place.Name) .. " (" .. tostring(place.PlaceId) .. ")",function()
         if chosenversionsubplace == "Teleport" then
         game:GetService("TeleportService"):Teleport(place.PlaceId, LocalPlayer)
         elseif chosenversionsubplace == "Copy Script" then
            setclipboard("game:GetService('TeleportService'):Teleport(" .. tostring(place.PlaceId) .. ", LocalPlayer)")
         end
      end)
        task.wait(0.01)

   end
   if pages.IsFinished then
      break
   end
   pages:AdvanceToNextPageAsync()
end
