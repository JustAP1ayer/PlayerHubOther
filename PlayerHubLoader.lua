local Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0581/Iris-Exploit-Bundle/main/bundle.lua"))().Init(game.CoreGui)
local MD5 = loadstring(game:HttpGet("https://raw.githubusercontent.com/kikito/md5.lua/master/md5.lua"))()

local LINKVERTISE_ID = 611550

local DONT_RENDER_CONFIRMATION_WINDOW = true
local CREATOR_DISCORD_SERVER = "https://discord.gg/nXERxPYUyZ"
local API_HOST = "linkvertise.thisisusedfornothingotherthantohostafewscripts.xyz"

local Solved = Iris.State(false)
local Continue = Iris.State(DONT_RENDER_CONFIRMATION_WINDOW)
local SupportTheCreator = Iris.State(true)
local LearnMore = Iris.State(false)

local TaskID = "NONE"
local ExpireIn = 0
local APIVersion = game:HttpGet(("https://%s/tasks/version"):format(API_HOST))
local Rand = 0


local function CreateTask()
    Rand = math.random(1, 100000)
    Rand = Rand + math.random(1, 100000)
    Rand = Rand + math.random(1, 100000)
    Rand = Rand + Random.new():NextNumber()
    local Resp = game:HttpGet(("https://%s/tasks/create/%s/%s"):format(API_HOST, tostring(LINKVERTISE_ID), tostring(Rand)))

    local Data = game:GetService("HttpService"):JSONDecode(Resp)
    TaskID = Data.task_id
    ExpireIn = Data.expire_in

    task.spawn(function()
        while task.wait(1) do
            ExpireIn = ExpireIn - 1
        end
    end)
end

if DONT_RENDER_CONFIRMATION_WINDOW then
    CreateTask()
end

local function RenderMainWindow()
    Iris.Window({"Mike Cash - Support The Creator", [Iris.Args.Window.NoClose] = true, [Iris.Args.Window.NoResize] = true, [Iris.Args.Window.NoScrollbar] = true, [Iris.Args.Window.NoCollapse] = true}, {size = Iris.State(Vector2.new(450, 100))}) do
        Iris.Text({("Task ID: %s"):format(TaskID)})
        Iris.Text({("Task Expires In: %s second(s)"):format(tostring(ExpireIn))})
        -- Iris.Text({("API Version: %s"):format(APIVersion)})
        -- Iris.Text({("Host: %s"):format(API_HOST)})

        Iris.SameLine() do
            if Iris.Button({"I have visited the Website"}).clicked then
                task.spawn(function()
                    local Response = game:GetService("HttpService"):JSONDecode(game:HttpGet(("https://%s/tasks/validate/%s"):format(API_HOST, TaskID)))
                    if Response.exists and Response.solved and Response.rand_hash == MD5.sumhexa(tostring(Rand)) then
                        Solved.value = true
                    end
                end)
            end
            if Iris.Button({"Copy Website"}).clicked then
                setclipboard(("https://%s/tasks/begin/%s"):format(API_HOST, TaskID))
            end
            if Iris.Button({"Learn More"}).clicked then
                LearnMore.value = true
            end
            Iris.End()
        end
        Iris.End()
    end
end

local function RenderConfirmation()
    local Loading = Iris.State(false)

    Iris.Window({"Mike Cash - Support The Creator", [Iris.Args.Window.NoClose] = true, [Iris.Args.Window.NoResize] = true, [Iris.Args.Window.NoScrollbar] = true, [Iris.Args.Window.NoCollapse] = true}, {size = Iris.State(Vector2.new(300, 75))}) do
        if not Continue.value then
            Iris.Checkbox({"I wish to support the creator."}, {isChecked = SupportTheCreator})
            Iris.SameLine() do
                if Iris.Button({Loading.value and "Please wait.." or "Continue"}).clicked then
                    if SupportTheCreator.value then
                        if not Loading.value then
                            task.spawn(function()
                                Loading.value = true
                                CreateTask()
                                Continue.value = true
                            end)
                        end
                    else
                        Solved.value = true
                    end
                end
                if Iris.Button({"Learn More"}).clicked then
                    LearnMore.value = true
                end
                Iris.End()
            end
        end
        Iris.End()
    end
end

local function RenderLearnMore()
    Iris.Window({"Mike Cash - Support The Creator", [Iris.Args.Window.NoClose] = true, [Iris.Args.Window.NoResize] = true, [Iris.Args.Window.NoScrollbar] = true, [Iris.Args.Window.NoCollapse] = true}, {size = Iris.State(Vector2.new(600, 275))}) do
        Iris.Text({"Mike Cash is created to let script creators easily monetize their script"})
        Iris.Text({"without them having to pay for some sort of a license or hosting so they"})
        Iris.Text({"can host their own \"Key System\" of some sorts."})
        Iris.Text({""})
        Iris.Text({"Mike Cash does not use keys, instead it uses Task IDs, which allow us"})
        Iris.Text({"to identify if you have visited or have not visited the linkvertise yet."})
        Iris.Text({""})
        Iris.SameLine() do
            Iris.Text({"Join the Creators Discord Server!"})
            if Iris.Button({"Copy Invite"}).clicked then
                setclipboard(CREATOR_DISCORD_SERVER)
            end
            Iris.End()
        end
        Iris.SameLine() do
            Iris.Text({"Use MikeCash yourself!"})
            if Iris.Button({"Copy GitHub Link"}).clicked then
                setclipboard("https://github.com/x0581/MikeCash")
            end
            Iris.End()
        end
        Iris.Text({""})
        if Iris.Button({"Close"}).clicked then
            LearnMore.value = false
        end
        Iris.End()
    end
end

-- Pcall because errors on finish and i aint gonna bother
pcall(function()
    Iris:Connect(function()
        if not Solved.value then
            if Continue.value then
                RenderMainWindow()
            else
                RenderConfirmation()
            end
        end
        if LearnMore.value then
            RenderLearnMore()
        end
    end)
end)

repeat task.wait() until Solved.value
if game.PlaceId == 9796685905 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubSuperHeroRaceClicker.lua",true))()
    elseif game.PlaceId == 115917693 or game.PlaceId == 4562879976 or game.PlaceId ==  4534813581 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubMML2.lua",true))()
elseif game.PlaceId == 13455598887 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubSuperBridgeRunner.lua",true))()
    elseif game.PlaceId == 281489669 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubWizardTycoon2.lua",true))()
        elseif game.PlaceId == 12376364177 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubMinerMergeTycoon.lua",true))()
    elseif game.PlaceId == 11166344460 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubEasyStudJumpsObby.lua",true))()
elseif game.PlaceId == 147848991 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubParkourNinja.lua",true))() 
    elseif game.PlaceId == 11480900381 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubRojiGenjiBall.lua",true))() 
elseif game.PlaceId == 4872321990 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/IslandsPlayerHub/main/webhook.lua",true))()
wait(1)
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JustAP1ayer/IslandsPlayerHub/main/IslandsPlayerHub1.6Obfuscated.lua'),true))()
        elseif game.PlaceId == 12736459172 then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubSurviveTheWave.lua",true))()
elseif game.PlaceId == 9992339729 or game.PlaceId == 12496197327 then
loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubAnswerWinsGame.lua",true))()
elseif game.PlaceId == 4246487209 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubBossFightingSimulator.lua",true))()
elseif game.PlaceId == 70005410 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubBLOXHUNT.lua",true))()
elseif game.PlaceId == 8507479511 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubHigherJumpEverySecond.lua",true))()
elseif game.PlaceId == 1215581239 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PLAYERHUBDOOMSPIRE.lua",true))()
elseif game.PlaceId == 183364845 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubSpeedRun4.lua",true))()
elseif game.PlaceId == 7269094850 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubBSED.lua",true))()
elseif game.PlaceId == 189707 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerhubNaturalDisaster.lua",true))()
elseif game.PlaceId == 482742811 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubSpeedingWall.lua",true))()
elseif game.PlaceId == 6222531507 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubChess.lua",true))()
elseif game.PlaceId == 537413528 then
loadstring(game:HttpGet(('https://raw.githubusercontent.com/JustAP1ayer/BABFTPLAYERHUB/main/BABFTV2.lua'),true))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubUniversal.lua",true))()
end
