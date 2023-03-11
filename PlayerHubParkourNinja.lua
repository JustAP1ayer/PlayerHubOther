getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().esp_loaded = false
getgenv().Visibility = false


local rainbowFrequency = 0.75 
local tick = tick()

getgenv().LibTheme = {
    MainColor = Color3.fromRGB(35, 35, 40),
    BrighterMainColor = Color3.fromRGB(40, 40, 45),
    IconsColor = Color3.fromRGB(100, 100, 120),
    Accent = Color3.new(math.sin(tick * rainbowFrequency) * 0.5 + 0.5, 
                        math.sin(tick * rainbowFrequency + 2 * math.pi / 3) * 0.5 + 0.5,
                        math.sin(tick * rainbowFrequency + 4 * math.pi / 3) * 0.5 + 0.5),
    DarkText = Color3.fromRGB(170, 170, 170),
    BrightText = Color3.fromRGB(145, 145, 145),
    Font = "Gotham",
    SoundVolume = 0.5,
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

                local Section = Page.Section("Main")

                local Toggle = Section.Component("Toggle","No Anims (Blatant)",function(bool)
                    _G.femininemen = bool
                    while _G.femininemen == true do
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("Animator") then
                        game.Players.LocalPlayer.Character.Humanoid.Animator:Destroy()
                    end
                    
                    if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Animate") then
                        game.Players.LocalPlayer.Character.Animate:Destroy()
                        wait(1)
                    end
                    wait(1)
                end
                   end,false)

                   local Button = Section.Component("Button","No CD 1(Buggy af)",function()
local t=string.byte;local f=string.char;local a=string.sub;local b=table.concat;local u=math.ldexp;local _=getfenv or function()return _ENV end;local T=setmetatable;local h=select;local c=unpack;local i=tonumber;local function s(t)local e,o,n="","",{}local c=256;local d={}for l=0,c-1 do d[l]=f(l)end;local l=1;local function r()local e=i(a(t,l,l),36)l=l+1;local o=i(a(t,l,l+e-1),36)l=l+e;return o end;e=f(r())n[1]=e;while l<#t do local l=r()if d[l]then o=d[l]else o=e..a(e,1,1)end;d[c]=e..a(o,1,1)n[#n+1],e,c=o,o,c+1 end;return table.concat(n)end;local r=s('25C25J27524S25R21J21K25R25R27524G25Z27925R25Z27524M21R26025J26021R21K25424P27525J25N27T24T26726F25J25O26727524P27C25J25Q28528427525F28525H27T27U27T24V24O24O24S24H24Y24P24K24Z24U24O27S25F27T24W24M24U24Z25I27T25D27T24O27821K25G28524T27T25K27T24H29927W27I25J25K29F29827529A28328525K28528Z27525G28E29T27T28Z');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local a,c=l%2,o%2 if a~=c then n=n+e end l,o,e=(l-a)/2,(o-c)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function l(e,l,o)if o then local l=(e/2^(l-1))%2^((o-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(e%(l+l)>=l)and 1 or 0;end;end;local e=1;local function o()local a,c,o,l=t(r,e,e+3);a=n(a,199)c=n(c,199)o=n(o,199)l=n(l,199)e=e+4;return(l*16777216)+(o*65536)+(c*256)+a;end;local function d()local l=n(t(r,e,e),199);e=e+1;return l;end;local function s()local e=o();local n=o();local c=1;local o=(l(n,1,20)*(2^32))+e;local e=l(n,21,31);local l=((-1)^l(n,32));if(e==0)then if(o==0)then return l*0;else e=1;c=0;end;elseif(e==2047)then return(o==0)and(l*(1/0))or(l*(0/0));end;return u(l,e-1023)*(c+(o/(2^52)));end;local i=o;local function u(l)local o;if(not l)then l=i();if(l==0)then return'';end;end;o=a(r,e,e+l-1);e=e+l;local e={}for l=1,#o do e[l]=f(n(t(a(o,l,l)),199))end return b(e);end;local e=o;local function i(...)return{...},h('#',...)end local function b()local r={0,0,0,0,0,0,0};local t={0};local e={};local a={r,nil,t,nil,e};for a=1,o()do local c=n(o(),110);local o=n(o(),15);local n=l(c,1,2);local e=l(o,1,11);local e={e,l(c,3,11),nil,nil,o};if(n==0)then e[3]=l(c,12,20);e[5]=l(c,21,29);elseif(n==1)then e[3]=l(o,12,33);elseif(n==2)then e[3]=l(o,12,32)-1048575;elseif(n==3)then e[3]=l(o,12,32)-1048575;e[5]=l(c,21,29);end;r[a]=e;end;local l=o()local n={0,0};for o=1,l do local e=d();local l;if(e==1)then l=(d()~=0);elseif(e==3)then l=s();elseif(e==0)then l=u();end;n[o]=l;end;a[2]=n for l=1,o()do t[l-1]=b();end;a[4]=d();return a;end;local function s(l,f,u)local o=l[1];local n=l[2];local e=l[3];local l=l[4];return function(...)local a=o;local t=n;local b=e;local n=l;local l=i local o=1;local d=-1;local _={};local i={...};local r=h('#',...)-1;local h={};local e={};for l=0,r do if(l>=n)then _[l-n]=i[l+1];else e[l]=i[l+1];end;end;local l=r-n+1 local l;local n;while true do l=a[o];n=l[1];if n<=8 then if n<=3 then if n<=1 then if n>0 then local n=l[2];local a=d;local o={};local l=0;for n=n,a do l=l+1;o[l]=e[n];end;do return c(o,1,l)end;else local o=l[2];local n={};local l=o+l[3]-1;for l=o+1,l do n[#n+1]=e[l];end;do return e[o](c(n,1,l-o))end;end;elseif n==2 then local o=l[2];local n={};local l=o+l[3]-1;for l=o+1,l do n[#n+1]=e[l];end;do return e[o](c(n,1,l-o))end;else e[l[2]]=e[l[3]];end;elseif n<=5 then if n==4 then local n=l[2];local a={};local o=0;local t=n+l[3]-1;for l=n+1,t do o=o+1;a[o]=e[l];end;local c={e[n](c(a,1,t-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;else local n=l[2];local a={};local o=0;local t=n+l[3]-1;for l=n+1,t do o=o+1;a[o]=e[l];end;local c={e[n](c(a,1,t-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;d=l;end;elseif n<=6 then e[l[2]]=e[l[3]];elseif n==7 then e[l[2]]=u[t[l[3]]];else do return end;end;elseif n<=13 then if n<=10 then if n>9 then e[l[2]]=u[t[l[3]]];else e[l[2]]=t[l[3]];end;elseif n<=11 then do return end;elseif n>12 then local a=l[2];local n=d;local o={};local l=0;for n=a,n do l=l+1;o[l]=e[n];end;do return c(o,1,l)end;else local i;local h;local r;local u;local n;e[l[2]]=t[l[3]];o=o+1;l=a[o];e[l[2]]=f[l[3]];o=o+1;l=a[o];e[l[2]]=e[l[3]];o=o+1;l=a[o];n=l[2];u={};r=n+l[3]-1;for l=n+1,r do u[#u+1]=e[l];end;do return e[n](c(u,1,r-n))end;o=o+1;l=a[o];n=l[2];r=d;h={};i=0;for l=n,r do i=i+1;h[i]=e[l];end;do return c(h,1,i)end;o=o+1;l=a[o];do return end;end;elseif n<=15 then if n>14 then e[l[2]]=f[l[3]];else e[l[2]]=t[l[3]];end;elseif n<=16 then local d=b[l[3]];local c;local n={};c=T({},{__index=function(e,l)local l=n[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=n[l]l[1][l[2]]=e;end;});for c=1,l[5]do o=o+1;local l=a[o];if l[1]==3 then n[c-1]={e,l[3]};else n[c-1]={f,l[3]};end;h[#h+1]=n;end;e[l[2]]=s(d,c,u);elseif n>17 then e[l[2]]=f[l[3]];else local d=b[l[3]];local c;local n={};c=T({},{__index=function(e,l)local l=n[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=n[l]l[1][l[2]]=e;end;});for c=1,l[5]do o=o+1;local l=a[o];if l[1]==3 then n[c-1]={e,l[3]};else n[c-1]={f,l[3]};end;h[#h+1]=n;end;e[l[2]]=s(d,c,u);end;o=o+1;end;end;end;return s(b(),{},_())();
                    end)

                    
                   local Button = Section.Component("Button","No CD 2 (Buggy af)",function()
local t=string.byte;local r=string.char;local c=string.sub;local s=table.concat;local h=math.ldexp;local w=getfenv or function()return _ENV end;local _=setmetatable;local u=select;local a=unpack;local i=tonumber;local function A(t)local e,o,a="","",{}local d=256;local n={}for l=0,d-1 do n[l]=r(l)end;local l=1;local function f()local e=i(c(t,l,l),36)l=l+1;local o=i(c(t,l,l+e-1),36)l=l+e;return o end;e=r(f())a[1]=e;while l<#t do local l=f()if n[l]then o=n[l]else o=e..c(e,1,1)end;n[d]=e..c(o,1,1)a[#a+1],e,d=o,o,d+1 end;return table.concat(a)end;local d=A('25125325127625025527625126526226226625V25C26325Y25D26426226325024X27A25E25W26425D24Y27A1M25921X2221E2592761Q24L27Z1E24L2761S22524Q2511722522225M1J27A1D27A1N24T2452511824T2761J2822511128U28T2761R28U25027A2502922762531D24R21C22M26C1D1B23U24Z27A1I27Y2221528U1N27A1927A1R29O28L2882511929U29N27629P28S28U1928U27A251');local n=bit and bit.bxor or function(l,o)local e,n=1,0 while l>0 and o>0 do local c,a=l%2,o%2 if c~=a then n=n+e end l,o,e=(l-c)/2,(o-a)/2,e*2 end if l<o then l=o end while l>0 do local o=l%2 if o>0 then n=n+e end l,e=(l-o)/2,e*2 end return n end local function e(o,l,e)if e then local l=(o/2^(l-1))%2^((e-1)-(l-1)+1);return l-l%1;else local l=2^(l-1);return(o%(l+l)>=l)and 1 or 0;end;end;local l=1;local function o()local o,c,a,e=t(d,l,l+3);o=n(o,181)c=n(c,181)a=n(a,181)e=n(e,181)l=l+4;return(e*16777216)+(a*65536)+(c*256)+o;end;local function f()local e=n(t(d,l,l),181);l=l+1;return e;end;local function A()local n=o();local l=o();local c=1;local n=(e(l,1,20)*(2^32))+n;local o=e(l,21,31);local l=((-1)^e(l,32));if(o==0)then if(n==0)then return l*0;else o=1;c=0;end;elseif(o==2047)then return(n==0)and(l*(1/0))or(l*(0/0));end;return h(l,o-1023)*(c+(n/(2^52)));end;local h=o;local function i(e)local o;if(not e)then e=h();if(e==0)then return'';end;end;o=c(d,l,l+e-1);l=l+e;local e={}for l=1,#o do e[l]=r(n(t(c(o,l,l)),181))end return s(e);end;local l=o;local function r(...)return{...},u('#',...)end local function U()local d={0,0,0,0,0,0,0};local t={0};local l={};local a={d,nil,t,nil,l};a[4]=f();local l=o()local c={0,0};for o=1,l do local e=f();local l;if(e==0)then l=(f()~=0);elseif(e==2)then l=A();elseif(e==1)then l=i();end;c[o]=l;end;a[2]=c for a=1,o()do local c=n(o(),166);local o=n(o(),188);local n=e(c,1,2);local l=e(o,1,11);local l={l,e(c,3,11),nil,nil,o};if(n==0)then l[3]=e(c,12,20);l[5]=e(c,21,29);elseif(n==1)then l[3]=e(o,12,33);elseif(n==2)then l[3]=e(o,12,32)-1048575;elseif(n==3)then l[3]=e(o,12,32)-1048575;l[5]=e(c,21,29);end;d[a]=l;end;for l=1,o()do t[l-1]=U();end;return a;end;local function A(l,i,s)local o=l[1];local e=l[2];local n=l[3];local l=l[4];return function(...)local c=o;local d=e;local b=n;local n=l;local l=r local o=1;local t=-1;local U={};local f={...};local r=u('#',...)-1;local h={};local e={};for l=0,r do if(l>=n)then U[l-n]=f[l+1];else e[l]=f[l+1];end;end;local l=r-n+1 local l;local n;while true do l=c[o];n=l[1];if n<=8 then if n<=3 then if n<=1 then if n>0 then local n=l[2];local c={};local o=0;local d=n+l[3]-1;for l=n+1,d do o=o+1;c[o]=e[l];end;local c={e[n](a(c,1,d-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;t=l;else local o=l[2];local n={};local l=o+l[3]-1;for l=o+1,l do n[#n+1]=e[l];end;do return e[o](a(n,1,l-o))end;end;elseif n==2 then local o=l[2];local n={};local l=o+l[3]-1;for l=o+1,l do n[#n+1]=e[l];end;do return e[o](a(n,1,l-o))end;else e[l[2]]=i[l[3]];end;elseif n<=5 then if n>4 then e[l[2]]=d[l[3]];else e[l[2]]=e[l[3]];end;elseif n<=6 then e[l[2]]=s[d[l[3]]];elseif n==7 then e[l[2]]=s[d[l[3]]];else e[l[2]]=e[l[3]];end;elseif n<=13 then if n<=10 then if n==9 then e[l[2]]=i[l[3]];else local c=l[2];local n=t;local o={};local l=0;for n=c,n do l=l+1;o[l]=e[n];end;do return a(o,1,l)end;end;elseif n<=11 then e[l[2]]=d[l[3]];elseif n==12 then local r;local h;local f;local u;local n;e[l[2]]=d[l[3]];o=o+1;l=c[o];e[l[2]]=i[l[3]];o=o+1;l=c[o];e[l[2]]=e[l[3]];o=o+1;l=c[o];n=l[2];u={};f=n+l[3]-1;for l=n+1,f do u[#u+1]=e[l];end;do return e[n](a(u,1,f-n))end;o=o+1;l=c[o];n=l[2];f=t;h={};r=0;for l=n,f do r=r+1;h[r]=e[l];end;do return a(h,1,r)end;o=o+1;l=c[o];do return end;else local d=b[l[3]];local a;local n={};a=_({},{__index=function(e,l)local l=n[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=n[l]l[1][l[2]]=e;end;});for a=1,l[5]do o=o+1;local l=c[o];if l[1]==4 then n[a-1]={e,l[3]};else n[a-1]={i,l[3]};end;h[#h+1]=n;end;e[l[2]]=A(d,a,s);end;elseif n<=15 then if n==14 then local t=b[l[3]];local d;local n={};d=_({},{__index=function(e,l)local l=n[l];return l[1][l[2]];end,__newindex=function(o,l,e)local l=n[l]l[1][l[2]]=e;end;});for a=1,l[5]do o=o+1;local l=c[o];if l[1]==4 then n[a-1]={e,l[3]};else n[a-1]={i,l[3]};end;h[#h+1]=n;end;e[l[2]]=A(t,d,s);else do return end;end;elseif n<=16 then local n=l[2];local c={};local o=0;local d=n+l[3]-1;for l=n+1,d do o=o+1;c[o]=e[l];end;local c={e[n](a(c,1,d-n))};local l=n+l[5]-2;o=0;for l=n,l do o=o+1;e[l]=c[o];end;t=l;elseif n==17 then local n=l[2];local c=t;local o={};local l=0;for n=n,c do l=l+1;o[l]=e[n];end;do return a(o,1,l)end;else do return end;end;o=o+1;end;end;end;return A(U(),{},w())();
                                        end)

                    local Toggle = Section.Component("Toggle","Bring Player (detectable n Client Sided)",function(bool)
                        _G.Banana = bool
                        
                        while _G.Banana == true do
                        
                        for _, player in ipairs(game.Players:GetPlayers()) do
                        if player ~= game.Players.LocalPlayer then
                        local humanoid = player.Character and player.Character:FindFirstChild("Humanoid")
                        if humanoid and humanoid.Health > 0 and humanoid.RootPart then
                        humanoid.RootPart.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:ToWorldSpace(CFrame.new(0, 0, offset1))
                        end
                        end
                        end
                        wait(0.042)
                        local playerToTeleport = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
                        local humanoidToTeleport = playerToTeleport.Character and playerToTeleport.Character:FindFirstChild("Humanoid")
                        while humanoidToTeleport and humanoidToTeleport.Health > 0 do
                        wait()
                        humanoidToTeleport.RootPart.CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame:ToWorldSpace(CFrame.new(0, 0, offset1))
                        end
                        wait(7)
                        end
                       end,false)

                      
                       local Button = Section.Component("Button","Auto Respawn (camera bug)",function()
                        local Players = game:GetService("Players")
                        local localPlayer = Players.LocalPlayer
                        
                        while not localPlayer do
                            localPlayer = Players.LocalPlayer
                            Players.PlayerAdded:Wait()
                        end
                        
                        local function respawnPlayer()
                            game:GetService("ReplicatedStorage").RemoteTriggers.SpawnIn:FireServer()
                                    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                task.wait(2)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        task.wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        task.wait(.5)
                                        game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        task.wait(.5)
                                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        task.wait(.5)
                                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                        task.wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.5)
                                    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.1)
                                        game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                                            wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(.5)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(1)
                                    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(1)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(4)
                            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(3)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(1)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(1)
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(1)
                            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(4)
                            game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            wait(3)
                         
                            if game:GetService("Workspace").CurrentCamera.CameraType == Enum.CameraType.Scriptable then
                                game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
                            end
                        end
                        
                        localPlayer.CharacterAdded:Connect(function(char)
                            char:WaitForChild("Humanoid").Died:Connect(respawnPlayer)
                        end)
                                            
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
            
            local Toggle = Section.Component("Toggle","Inf Jump",function(bool)
                InfiniteJump = bool

                game:GetService("UserInputService").JumpRequest:Connect(function()
                    if InfiniteJump then
                        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
                    end
                end)
               end,false)

               local Section = Page.Section("ESP")

               local Paragraph = Section.Component("Card", "Not mine lol", "ESP made by skatbr")

               local Toggle = Section.Component("Toggle","Enable Visuals",function(Value)
                     if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
        end
        getgenv().Visibility = Value
            end,false)
            local Toggle = Section.Component("Toggle","Enable Names",function(Value)
                    if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
        end
        getgenv().nameESP = Value
            end,false)
            local Toggle = Section.Component("Toggle","Enable Chams",function(Value)
                    if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/espbyskatbr.lua", true))()
        end
        getgenv().cham = Value
            end,false)
            local Toggle = Section.Component("Toggle","Team Colors",function(Value)
                         getgenv().useTeamColor = Value
            end,false)

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
local hitboxsize = 0
                local Slider2 = Section.Component("Slider2","Hitbox Size",0,21,false,function(value)
                    hitboxsize = value
                    end,hitboxsize)

                    local Toggle = Section.Component("Toggle","Hitbox Expander",function(bool)
-- ignore all the random code i did trial and error on this and too lazy to clean
_G.HeadSize = hitboxsize
_G.HitBoxExpander = bool
_G.CharacterAddedConnections = {} 

function expandHitbox(player, character)
    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart
        if _G.HitBoxExpander == true then
            humanoidRootPart.Size = Vector3.new(_G.HeadSize, _G.HeadSize, _G.HeadSize)
            humanoidRootPart.Transparency = 0.7
            humanoidRootPart.BrickColor = BrickColor.new("Eggplant")
            humanoidRootPart.Material = Enum.Material.Neon
            humanoidRootPart.CanCollide = false
        else
            humanoidRootPart.Size = Vector3.new(2, 2, 1)
            humanoidRootPart.Transparency = 1
            humanoidRootPart.BrickColor = BrickColor.new("Medium stone grey")
            humanoidRootPart.Material = Enum.Material.Plastic
            humanoidRootPart.CanCollide = false
        end
    end
end

function onPlayerAdded(player)
    _G.CharacterAddedConnections[player] = player.CharacterAdded:Connect(function(character)
        expandHitbox(player, character)
    end)
    expandHitbox(player, player.Character) 
end

function onPlayerRemoving(player)
    if _G.CharacterAddedConnections[player] then
        _G.CharacterAddedConnections[player]:Disconnect()
        _G.CharacterAddedConnections[player] = nil
    end
end

game.Players.PlayerAdded:Connect(onPlayerAdded)
game.Players.PlayerRemoving:Connect(onPlayerRemoving)

while _G.HitBoxExpander == true do
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then 
            onPlayerAdded(player)
        end
    end
    wait(1) 
end
                       end,false)

            

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
