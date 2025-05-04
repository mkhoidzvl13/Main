
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local rs = game.ReplicatedStorage
local player = game.Players.LocalPlayer

function setTeam(teamName)
    local args = {
        [1] = "SetTeam",
        [2] = teamName
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

if getgenv().Config["AutoChooseTeam"] then
    local selectedTeam = getgenv().Config["Team"]
    setTeam(selectedTeam)
end


repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");


spawn(function()
    function MainWindow()
        function INIT()

            local UI = {}
            local ts = game:GetService("TweenService")

            UI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
            UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
            UI["1"].Enabled = true

            UI["2"] = Instance.new("Frame", UI["1"])
            UI["2"]["ZIndex"] = 0
            UI["2"]["BorderSizePixel"] = 0
            UI["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
            UI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
            UI["2"]["Size"] = UDim2.new(0, 1262, 0, 826)
            UI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
            UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
            UI["2"]["BackgroundTransparency"] = 1

            UI["3"] = Instance.new("CanvasGroup", UI["2"])
            UI["3"]["BorderSizePixel"] = 0
            UI["3"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30)
            UI["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
            UI["3"]["Size"] = UDim2.new(0, 529, 0, 365)
            UI["3"]["Position"] = UDim2.new(0.49921, 0, 0.49939, 0)
            UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

            UI["4"] = Instance.new("UICorner", UI["3"])
            UI["4"]["CornerRadius"] = UDim.new(0, 30)

        

            UI["1"].Enabled = true
        end
        MainWindow()
    end
end)

local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local rs = game.ReplicatedStorage
local player = game.Players.LocalPlayer

function setTeam(teamName)
    local args = {
        [1] = "SetTeam",
        [2] = teamName
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

if getgenv().Config["AutoChooseTeam"] then
    setTeam(getgenv().Config["Team"])
end
function Hop()
    function bQ(v)
        if v.Name == "ErrorPrompt" then
            if v.Visible then
                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                    v.Visible = false
                end
            end
            v:GetPropertyChangedSignal("Visible"):Connect(function()
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                        v.Visible = false
                    end
                end
            end)
        end
    end

    for i, v in game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren() do
        bQ(v) 
    end
    game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
    while player:GetAttribute("InCombat") do
        wt()
    end

    while wt() do
        randomy = math.random(90000, 100000)
        if Config["Custom Y Run"].Enabled then
            randomy = Config["Custom Y Run"]["Y Run"]
        end
        
        to(CFrame.new(-12463.8740234375, randomy, -7523.77392578125))
        
        if not player:GetAttribute("InCombat") then
            for r = 1, math.huge do
                if player:GetAttribute("InCombat") then
                    break
                end
                
                to(CFrame.new(-12463.8740234375, randomy, -7523.77392578125))
                game.Players.LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = "Singapore"
                for k, v in inv(rs.__ServerBrowser, {r}) do
                    if k ~= game.JobId and v["Count"] <= 11 then
                        inv(rs.__ServerBrowser, {"teleport", k})
                    end
                end
                wt()
            end
        end
    end
end


getgenv().Bounty = {
    Targ = nil,
    Checked = {},
    Hop = false,
    CanUseWeapon = false,
    CanUseSkill = false,
    UsingSkill = false,
    WeaponUsing = "",
    ToolTipUsing = "Melee",
    CFrameTarget = CFrame.new(Vector3.new(0,0,0)),
    Digit = CFrame.new(Vector3.new(0,0,0)),
}
local w = game.PlaceId
if w == 2753915549 then
    distbyp = 1500
elseif w == 4442272183 then
    distbyp = 3500
elseif w == 7449423635 then
    distbyp = 6000
end
function getPortal(check2)
    local check3 = check2.Position
    local w = game.PlaceId
    if w == 2753915549 then
        gQ = {
            Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406),
            Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif w == 4442272183 then
        gQ = {
            Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
            Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
            Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
            Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
        }
    elseif w == 7449423635 then
        gQ = {
            Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
            Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
            Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
            Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
            Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
            Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
        }
    end
    local aM, aN = Vector3.new(0,0,0), math.huge

    for _, aL in pairs(gQ) do
        if (aL-check3).Magnitude < aN and aM ~= aL then
            aM, aN = aL,  (aL-check3).Magnitude
        end 
    end
    return aM
end  
function getSpawn(wtf)
    local a, b = nil, math.huge
    for i,v in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(lp.Team)):GetChildren()) do
        if tostring(v) ~= "Leviathan" and (v:GetModelCFrame().Position-wtf.Position).Magnitude < b then
            a = v:GetModelCFrame()
            b = (v:GetModelCFrame().Position-wtf.Position).Magnitude
        end
    end
    return a
end
function request(check1)
    game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack({"requestEntrance", check1}))
end
function calcpos(I, II) 
    if not II then 
        II = game.Players.LocalPlayer.Character.PrimaryPart.CFrame 
    end 
    return (Vector3.new(I.X, 0, I.Z)-Vector3.new(II.X, 0, II.Z)).Magnitude 
end 
function to(Pos)
    if not Pos then return end 
    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") then
            v.CanCollide = false    
        end
    end
    if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Vang") then
        local ngu = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        ngu.Name = "Vang"
        ngu.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
        ngu.Velocity = Vector3.new(0,0,0)
    end 
    Portal = getPortal(Pos) 
    Spawn = getSpawn(Pos) 
    for mm = 0,3,1 do 
        if getSpawn(Pos) ~= Spawn then 
            return 
        end 
    end 
    MyCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    Distance = calcpos(MyCFrame, Pos)
    if Distance > calcpos(Portal, Pos) then
    return request(Portal)
end
if Spawn then 
    Pos0 = calcpos(Spawn, Pos)
    if Pos0 < Distance and calcpos(MyCFrame, Spawn) > Pos0 then
    end
end
    if Distance < 500 then
        Speed = 370
    elseif Distance < 1000 then
        Speed = 370
    elseif Distance >= 1000 then
        Speed = 375
    end
    if Speed ~= nil then
        tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
        tween:Play() 
    end
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
end

function equip(tool)
    for _, v in lp.Backpack:GetChildren() do 
        if v:IsA("Tool") and v.ToolTip == tool then
            wfh(lp):EquipTool(v)
            return v.Name
        end 
    end 
    return false
end

function down(key, hold)
    pcall(function()
        if not ffc(lp.Character, Bounty.WeaponUsing) then
            equip(Bounty.ToolTipUsing)
        end
        game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
        local spam = tick()
        repeat wt()
            if not ffc(lp.Character, Bounty.WeaponUsing) then
                equip(Bounty.ToolTipUsing)
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true, key, false, game)
        until (tick() - spam) >= hold or not (Bounty.CanUseWeapon and Bounty.CanUseSkill) or not (ffc(lp.Character, "Busy") and lp.Character.Busy.Value)
        game:GetService("VirtualInputManager"):SendKeyEvent(false, key, false, game)
    end) 
end

function cd(I, II) 
    if not II then II = lp.Character.PrimaryPart.CFrame end
    return (Vector3.new(I.X, 0, I.Z) - Vector3.new(II.X, 0, II.Z)).Magnitude 
end 
function int(num)
    if not num then return end
    return tonumber(num)
end
function str(string)
    if not string then return end
    return tostring(string)
end
function wt(num)
    if not num then return task.wait(0.05) end
    return task.wait(int(num))
end

function ffc(obj, child)
    if not obj or not child then return end
    return obj:FindFirstChild(str(child))
end
function wfc(obj, child)
    if not obj or not child then return end
    return obj:WaitForChild(str(child), 9)
end
function wfh(mob)
    if not mob then return end
    return wfc(mob.Character, "Humanoid")
end
function wfhrp(mob)
    if not mob then return end
    return wfc(mob.Character, "HumanoidRootPart")
end
function checkmon(mob)
    if not mob then return end
    if mob and ffc(mob.Character, "Humanoid") and mob.Character.Humanoid.Health > 0 and ffc(mob.Character, "HumanoidRootPart") then
        return true
    end
    return
end
function inv(obj, child)
    if not obj or not child then return end
    return obj:InvokeServer(unpack(child))
end

function checkfruit(targcheck)
    local pdf = targcheck and ffc(targcheck, "Data") and ffc(targcheck.Data, 'DevilFruit') and targcheck.Data.DevilFruit.Value
    for _, v in Config["Skip"]["Fruit"]["List"] do 
        if str(v) == str(pdf) then 
            return true
        end
    end
    return false
end

local function rejoin()
    -- Kiểm tra cấu hình có bật Rejoin không
    if getgenv().Config["Rejoin"] then
        -- Teleport lại vào cùng server
        local teleportService = game:GetService("TeleportService")
        teleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId)
    end
end

-- Sự kiện khi người chơi bị kick hoặc rời khỏi game
game.Players.PlayerRemoving:Connect(function(player)
    if player == game.Players.LocalPlayer then
        -- Nếu người chơi bị kick hoặc rời khỏi game, thực hiện rejoin
        rejoin()
    end
end)
function findtarget()

    table.insert(Bounty.Checked, Bounty.Targ)
    Bounty.CanUseWeapon = false
    Bounty.CanUseSkill = false
    
    if Config["Chat Kill"]["Enabled"] then
        ffc(wfc(rs, "DefaultChatSystemChatEvents"), "SayMessageRequest"):FireServer(Config["Chat Kill"]["Message"][math.random(1, #Config["Chat Kill"]["Message"])], "All")
    end

    if not Bounty.Hop then
        local closestTarget, minDistance = nil, math.huge
        for _, v in pairs(plrs:GetChildren()) do
            if v ~= lp and v.Team and v.Team.Name and string.find(v.Team.Name, "es") then
                if not table.find(Bounty.Checked, v) and
                   (str(lp.Team.Name) == "Pirates" or str(v.Team.Name) == "Pirates") and
                   math.abs(lp.Data.Level.Value - v.Data.Level.Value) < 600 and
                   (not Config["Skip"]["Fruit"]["Enabled"] or not checkfruit(v)) and
                   (not Config["Skip"]["V4"] or not (ffc(v.Backpack, "Awakening") or ffc(v.Character, "Awakening"))) and
                   cd(getSpawn(wfhrp(v).CFrame), wfhrp(v).CFrame) <= 3000 and
                   not ffc(v.Character, "TempSafeZone") and checkmon(v) then
                    local distance = cd(wfhrp(v).CFrame, wfhrp(lp).CFrame)
                    if distance < minDistance then
                        closestTarget = v
                        minDistance = distance
                    end
                end
            end
        end
    
        if closestTarget then
            Bounty.Targ = closestTarget
            getgenv().troi = closestTarget.Name
            return false
        end
    end
    
    -- Kiểm tra trạng thái InCombat trong GUI trước khi tiếp tục
    if game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomHUDList.InCombat.Visible then
        repeat
            wait(5)
        until not game:GetService("Players").LocalPlayer.PlayerGui.Main.BottomHUDList.InCombat.Visible
    end
    
    -- Sau khi hết InCombat, đợi thêm 10 giây trước khi thực hiện hop
    wait(1)
    
    -- Sau khi đợi 10 giây, thực hiện hop
    Bounty.Hop = true
    Hop()
    return false
end

function checknotify(msg, msg1)
    msg1 = msg1 or ""
    for i, v in pairs(lp.PlayerGui.Notifications:GetChildren()) do
        if v and v.Text and string.find(string.lower(v.Text), string.lower(msg)) and string.find(string.lower(v.Text), string.lower(msg1)) then
            v:Destroy()
            return true
        end
    end
    return false
end

function checkraid(target)
    if ffc(workspace["_WorldOrigin"].Locations, "Island 1") then
        if cd(wfhrp(target).CFrame, workspace["_WorldOrigin"].Locations["Island 1"].CFrame) < 3000 then 
            return true 
        end 
    end 
    return false
end

function checksafezone(pos)
    for _, v in workspace._WorldOrigin.SafeZones:GetChildren() do
        if cd(v.CFrame, pos) < (v.Mesh.Scale.Magnitude / 2) then
            return true
        end
    end
    return false
end  

local oldtarg = Bounty.Targ
local oldtime = tick()
local oldspamskill = tick()
local startuse = false

function checktarg()
    if not checkmon(Bounty.Targ) then
        return findtarget()
    end
    if checksafezone(wfhrp(Bounty.Targ).CFrame) then
        return findtarget()
    end
    if checkraid(Bounty.Targ) then
        return findtarget()
    end
    if Bounty.Targ == oldtarg then
        if Bounty.UsingSkill and not startuse then
            oldspamskill = tick()
            startuse = true
        end
        if startuse and (tick() - oldspamskill) >= 3 and not (Bounty.Targ.Character:GetAttribute("InCombat") == 0 or Bounty.Targ.Character:GetAttribute("InCombat") == 1) then
            return findtarget()
        end
    else
        startuse = false
        oldtarg = Bounty.Targ
    end
    return true
end

if not Bounty or not Bounty.CFrameTarget or not Bounty.Digit or not Bounty.Digit.Position then
    warn("Shinichi Hub - Auto Bounty!")
    return
end

if getgenv().Config["Misc"]["FPS Boost"] then
    pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/catdzs1tg/Shnichi-check-blox-kid/refs/heads/main/FPSBOOST.lua"))()
    end)
end



local player = game.Players.LocalPlayer
local Mouse = player:GetMouse()

local PredictionAmount = 0.165 
local SmoothnessAmount = 0.5

local oldIndex
oldIndex = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse then
        if type(Index) == "string" and Index:lower() == "hit" then
            if Bounty.Targ and Bounty.Targ.Character then
                local targetHRP = Bounty.Targ.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP then
                    local predictedPos = targetHRP.Position + (targetHRP.Velocity * PredictionAmount)
                    local smoothPos = targetHRP.Position:Lerp(predictedPos, SmoothnessAmount)
                    return CFrame.new(smoothPos)
                end
            end
            return Bounty.CFrameTarget or Mouse.Hit
        end
    end
    return oldIndex(self, Index)
end))

spawn(function()
    local mt = getrawmetatable(game)
    local oldNamecall = mt.__namecall 
    setreadonly(mt, false)
    
    mt.__namecall = newcclosure(function(...)
        local args = {...}
        local method = getnamecallmethod()
        if tostring(method) == "FireServer" then
            if args[1] and tostring(args[1]) == "RemoteEvent" then
                if args[2] and tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if Bounty.Targ and Bounty.Targ.Character then
                        local targetHRP = Bounty.Targ.Character:FindFirstChild("HumanoidRootPart")
                        if targetHRP then
                            local predictedPos = targetHRP.Position + (targetHRP.Velocity * PredictionAmount)
                            args[2] = predictedPos
                            return oldNamecall(table.unpack(args))
                        end
                    end
                    args[2] = Bounty.Digit.Position or args[2]
                    return oldNamecall(table.unpack(args))
                end
            end
        end
        return oldNamecall(...)
    end)
    
    setreadonly(mt, true)
end)

local oldtw = tick() 
local lastBusoTime = 0 
local busoCooldown = 10  

spawn(function()
    while wt() do
        if checktarg() then
            if (tick() - lastBusoTime) >= busoCooldown then
                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                    local rel = game.ReplicatedStorage
                    rel.Remotes.CommF_:InvokeServer("Buso")
                    lastBusoTime = tick()
                end
            end

            if ffc(lp, "PlayerGui") and ffc(lp.PlayerGui, "ScreenGui") and ffc(lp.PlayerGui.ScreenGui, "ImageLabel") then
            else
                game:service("VirtualUser"):CaptureController()
                game:service("VirtualUser"):SetKeyDown("0x65")
                game:service("VirtualUser"):SetKeyUp("0x65")
            end

            if ffc(workspace._WorldOrigin.Locations, "Dimensional Rift") and 
                (workspace._WorldOrigin.Locations["Dimensional Rift"].Position - wfhrp(lp).Position).Magnitude <= 1000 and 
                (wfhrp(Bounty.Targ).Position - workspace._WorldOrigin.Locations["Dimensional Rift"].Position).Magnitude <= 1000 then
                Bounty.CanUseWeapon = false
                Bounty.CanUseSkill = false
                to(CFrame.new(workspace._WorldOrigin.Locations["Dimensional Rift"].Position + Vector3.new(0, 190, 0)))
            else
                if tonumber(wfh(lp).Health) > 0 and 
                    (tonumber(wfh(lp).Health) < (Config["Panic % Health"][1] / 100 * tonumber(wfh(lp).MaxHealth))) or 
                    (hide and tonumber(wfh(lp).Health) < (Config["Panic % Health"][2] / 100 * tonumber(wfh(lp).MaxHealth))) then
                    Bounty.CanUseWeapon = false
                    Bounty.CanUseSkill = false
                    hide = true
                    randomy = math.random(90000, 100000)
                    if Config["Custom Y Run"].Enabled then
                        randomy = Config["Custom Y Run"]["Y Run"]
                    end
                    to(CFrame.new(wfhrp(Bounty.Targ).Position + Vector3.new(0, randomy, 0)))
                else
                    hide = false
                    Bounty.CFrameTarget = wfhrp(Bounty.Targ).CFrame
                    if tick() - oldtw >= 0.05 then
                        Bounty.Digit = Bounty.CFrameTarget + wfhrp(Bounty.Targ).Velocity / 2
                    end
                    if Bounty.Digit.Y < 5 then 
                        Bounty.Digit = CFrame.new(Bounty.Digit.X, 4, Bounty.Digit.Z) 
                    end 

                    if (wfhrp(lp).Position - Bounty.CFrameTarget.Position).Magnitude <= 80 then
                        if not ffc(Bounty.Targ.Character, "Busy") or not Bounty.Targ.Character.Busy.Value then
                            Bounty.CanUseWeapon = true
                            Bounty.CanUseSkill = true
                        else
                            Bounty.CanUseWeapon = true
                            Bounty.CanUseSkill = false
                        end
                        if Config["Hunt Method"]["Use Move Predict"] then
                            if Config["Hunt Method"]["Hit and Run"] then
                                if Bounty.UsingSkill then
                                    to(Bounty.Digit + Vector3.new(0, 4, 0))
                                else
                                    to(Bounty.Digit + Vector3.new(0, 30, 0))
                                end
                            else
                                to(Bounty.Digit + Vector3.new(0, 4, 0))
                            end
                        else
                            if Config["Hunt Method"]["Hit and Run"] then
                                if Bounty.UsingSkill then
                                    to(Bounty.CFrameTarget + Vector3.new(0, 4, 0))
                                else
                                    to(Bounty.CFrameTarget + Vector3.new(0, 30, 0))
                                end
                            else
                                to(Bounty.CFrameTarget + Vector3.new(0, 4, 0))
                            end
                        end
                    else
                        to(Bounty.CFrameTarget + Vector3.new(0, 4, 0))
                        Bounty.CanUseSkill = false
                    end
                end
            end
        end
    end
end)



local races = { 
    ["Human"] = "Last Resort", 
    ["Mink"] = "Agility", 
    ["Fishman"] = "Water Body", 
    ["Skypea"] = "Heavenly Blood", 
    ["Ghoul"] = "Heightened Senses",
    ["Cyborg"] = "Energy Core",
    ["Draco"] = "Primordial Reign"
} 

function transformAndDash()
    if ffc(lp.Character, "RaceTransformed") and ffc(lp.Character, "RaceEnergy") and lp.Character.RaceEnergy.Value >= 1 and not lp.Character.RaceTransformed.Value then
        down("Y", 0) 
        repeat wt() until lp.Character.RaceTransformed.Value
        if lp.Data.Race.Value == "Ghoul" or lp.Data.Race.Value == "Mink" then
            while lp.Character.RaceTransformed.Value do
                down("Q", 0)
                wt()  
            end
        end
    end
end

local killcount = 0
local attackbool = false
spawn(function()
    while wt() do
        transformAndDash() 
        if lp.PlayerGui.Main.PvpDisabled.Visible then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
        end
        
        if Bounty.CanUseWeapon then
            if not ffc(lp.Character, races[lp.Data.Race.Value]) and inv(game.ReplicatedStorage.Remotes.CommF_, {"Wenlocktoad", "1"}) == -2 then
                down("T", 0)
            end
            if Config["Spam All Skill On V4"].Enabled and ffc(lp.Character, "RaceTransformed") and ffc(lp.Character, "RaceTransformed").Value then
                for _, v in Config["Spam All Skill On V4"]["Weapons"] do 
                    if Bounty.CanUseSkill then
                        local EqWeapon = equip(v)
                        if EqWeapon then
                            Bounty.WeaponUsing = EqWeapon
                            Bounty.ToolTipUsing = v
                            
                            Bounty.UsingSkill = true
                            if EqWeapon and Config.Items[v].Enable then

                                wt(Config.Items[v].Delay)
                    
                                for k, skill in pairs(Config.Items[v].Skills) do
                                    local skillCooldown = lp.PlayerGui.Main.Skills[EqWeapon] and lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale or 1
                                    local canUseSkill = Bounty.CanUseSkill and skill.Enable and ffc(lp.PlayerGui.Main.Skills[EqWeapon], k)
                    

                                    if canUseSkill and ((lp.Data.Race.Value == "Ghoul" and ffc(lp.Character, "Heightened Senses") and skillCooldown <= 0.4)
                                        or skillCooldown <= 0) then
                    

                                        down(k, skill.HoldTime)
                    
                                        repeat wt() until ffc(lp.Character, "Busy") and not lp.Character.Busy.Value
                    
                                        killcount = killcount + 1
                                    end
                                end
                            end
                            
                            Bounty.UsingSkill = false
                            attackbool = false
                        end
                    end    
                end                
            else
                for _, v in Config.Items.Use do
                    if Bounty.CanUseSkill then
                        EqWeapon = equip(v)
                        Bounty.WeaponUsing = EqWeapon
                        Bounty.ToolTipUsing = v

                        Bounty.UsingSkill = true
                        if EqWeapon and Config.Items[v].Enable then
                            wt(Config.Items[v].Delay)
                            for k, skill in pairs(Config.Items[v].Skills) do
                                if Bounty.CanUseSkill and skill.Enable and ffc(lp.PlayerGui.Main.Skills[EqWeapon], k) 
                                and ((lp.Data.Race.Value == "Ghoul" and ffc(lp.Character, "Heightened Senses") and lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0.4) 
                                or lp.PlayerGui.Main.Skills[EqWeapon][k].Cooldown.Size.X.Scale <= 0) then
                                    down(k, skill.HoldTime)
                                    repeat wt()
                                    until ffc(lp.Character, "Busy") and not lp.Character.Busy.Value
                                    killcount = killcount + 1
                                end
                            end
                        end
                        attackbool = true
                        wt(0.25)
                        Bounty.UsingSkill = true
                        attackbool = false
                    end
                end
            end
        end
    end
end)



        function ClickDelay()
            local VirtualInputManager = game:GetService("VirtualInputManager")
            local targetPlayer = Bounty.Targ
            if targetPlayer and targetPlayer.Character then
                local targetHRP = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
                if targetHRP then
                    local screenPosition = workspace.CurrentCamera:WorldToViewportPoint(targetHRP.Position)
                    VirtualInputManager:SendMouseButtonEvent(screenPosition.X, screenPosition.Y, 0, true, game, 0)
                    task.wait()
                    VirtualInputManager:SendMouseButtonEvent(screenPosition.X, screenPosition.Y, 0, false, game, 0)
                end
            end
        end
        
        spawn(function()
            while wt() do
                if attackbool then
                    wt(getgenv().Config["Misc"]["ClickDelay"])
                    ClickDelay()
                end
            end
        end)

lp.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wt(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)



_G.RandomFruits = true
if _G.RandomFruits then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit",v:GetAttribute("OriginalName"),v)
        end
    end
end

CamFarm = getgenv().Config.Misc["Cam Farm"]
if CamFarm == false then
    game.Players.LocalPlayer.CameraMinZoomDistance = 127
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
else
    CamFarm = true
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
    game.Players.LocalPlayer.CameraMaxZoomDistance = 0
    game.Players.LocalPlayer.CameraMaxZoomDistance = 127
    game.Players.LocalPlayer.CameraMinZoomDistance = 0
end

if getgenv().Config.Misc["Hide Map"] then
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") then
            obj.Transparency = 1
            obj.CanCollide = false
            obj.CanTouch = false
            obj.CanQuery = false
            if obj:IsA("UnionOperation") or obj:IsA("MeshPart") then
                obj.RenderFidelity = Enum.RenderFidelity.Precise
            end
        end
    end
    if workspace:FindFirstChild("Terrain") then
        workspace.Terrain.WaterTransparency = 1
    end
end

function CheckStun()
    local character = game:GetService('Players').LocalPlayer.Character
    if character and character:FindFirstChild("Stun") then
        return character.Stun.Value ~= 0
    end
    return false
end

CheckStun()

if getgenv().Config.Misc["White Screen"] == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
elseif getgenv().Config.Misc["White Screen"] == false then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
        end

local playerGui = game:GetService("Players").LocalPlayer.PlayerGui.Main

if getgenv().Config.Misc["HightLight Mode"] then
    playerGui.Beli.Visible = false
    playerGui.Energy.Visible = false
    playerGui.StatsButton.Visible = false
    playerGui.ShopButton.Visible = false
    playerGui.Skills.Visible = false
    playerGui.Level.Visible = false
    playerGui.MenuButton.Visible = false
    playerGui.Code.Visible = false
    playerGui.Settings.Visible = false
    playerGui.Mute.Visible = false
    playerGui.CrewButton.Visible = false
else
    playerGui.Beli.Visible = true
    playerGui.Energy.Visible = false
    playerGui.StatsButton.Visible = false
    playerGui.ShopButton.Visible = true
    playerGui.Skills.Visible = true
    playerGui.Level.Visible = true
    playerGui.MenuButton.Visible = false
    playerGui.Code.Visible = true
    playerGui.Settings.Visible = true
    playerGui.Mute.Visible = true
    playerGui.CrewButton.Visible = true
end


local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local InfoFrame = Instance.new("Frame") 
local ScriptName = Instance.new("TextLabel")
local BountyTextLabel = Instance.new("TextLabel")
local TimerTextLabel = Instance.new("TextLabel")
local TitleTextLabel = Instance.new("TextLabel") 
local Logo = Instance.new("ImageButton")
local ScriptMadeByLabel = Instance.new("TextLabel")
local DiscordButton = Instance.new("TextButton")

ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "Main"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255) 
MainFrame.BorderSizePixel = 2 
MainFrame.Position = UDim2.new(0.5, -250, 0.5, -150) 
MainFrame.Size = UDim2.new(0, 500, 0, 230) 
MainFrame.BackgroundTransparency = 1 
MainFrame.Visible = false 

UICorner.Parent = MainFrame

TitleTextLabel.Name = "TitleTextLabel"
TitleTextLabel.Parent = ScreenGui
TitleTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleTextLabel.BackgroundTransparency = 1.000
TitleTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleTextLabel.BorderSizePixel = 0
TitleTextLabel.Position = UDim2.new(0.5, -100, 0.1, -20) 
TitleTextLabel.Size = UDim2.new(0, 200, 0, 40)
TitleTextLabel.Font = Enum.Font.FredokaOne
TitleTextLabel.Text = "GRAYX HUB"
TitleTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleTextLabel.TextSize = 30.000
TitleTextLabel.TextXAlignment = Enum.TextXAlignment.Center
TitleTextLabel.BackgroundTransparency = 1  

InfoFrame.Parent = MainFrame
InfoFrame.BackgroundTransparency = 1 
InfoFrame.Position = UDim2.new(0, 0, 0, 0)
InfoFrame.Size = UDim2.new(1, 0, 1, 0) 

ScriptName.Name = "ScriptName"
ScriptName.Parent = InfoFrame
ScriptName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptName.BackgroundTransparency = 1.000
ScriptName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptName.BorderSizePixel = 0
ScriptName.Position = UDim2.new(0, 10, 0, 0)
ScriptName.Size = UDim2.new(1, -20, 0, 40)
ScriptName.Font = Enum.Font.FredokaOne
ScriptName.Text = "Name: " .. game.Players.LocalPlayer.Name
ScriptName.TextColor3 = Color3.fromRGB(178, 218, 255)
ScriptName.TextSize = 20.000
ScriptName.TextXAlignment = Enum.TextXAlignment.Left
ScriptName.BackgroundTransparency = 1  

BountyTextLabel.Name = "BountyTextLabel"
BountyTextLabel.Parent = InfoFrame
BountyTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BountyTextLabel.BackgroundTransparency = 1.000
BountyTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
BountyTextLabel.BorderSizePixel = 0
BountyTextLabel.Position = UDim2.new(0, 10, 0, 50)
BountyTextLabel.Size = UDim2.new(1, -20, 0, 40)
BountyTextLabel.Font = Enum.Font.FredokaOne
BountyTextLabel.Text = "Bounty/Honor: 0"
BountyTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
BountyTextLabel.TextSize = 20.000
BountyTextLabel.TextXAlignment = Enum.TextXAlignment.Left
BountyTextLabel.BackgroundTransparency = 1  

TimerTextLabel.Name = "TimerTextLabel"
TimerTextLabel.Parent = InfoFrame
TimerTextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TimerTextLabel.BackgroundTransparency = 1.000
TimerTextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TimerTextLabel.BorderSizePixel = 0
TimerTextLabel.Position = UDim2.new(0, 10, 0, 100) 
TimerTextLabel.Size = UDim2.new(1, -20, 0, 40)
TimerTextLabel.Font = Enum.Font.FredokaOne
TimerTextLabel.Text = "Time: 0s"
TimerTextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TimerTextLabel.TextSize = 20.000
TimerTextLabel.TextXAlignment = Enum.TextXAlignment.Left
TimerTextLabel.BackgroundTransparency = 1  

ScriptMadeByLabel.Name = "ScriptMadeByLabel"
ScriptMadeByLabel.Parent = InfoFrame
ScriptMadeByLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptMadeByLabel.BackgroundTransparency = 1.000
ScriptMadeByLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptMadeByLabel.BorderSizePixel = 0
ScriptMadeByLabel.Position = UDim2.new(0, 10, 0, 150)
ScriptMadeByLabel.Size = UDim2.new(1, -20, 0, 40)
ScriptMadeByLabel.Font = Enum.Font.FredokaOne
ScriptMadeByLabel.Text = "Script Made By: ! Grayx"
ScriptMadeByLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptMadeByLabel.TextSize = 20.000
ScriptMadeByLabel.TextXAlignment = Enum.TextXAlignment.Left
ScriptMadeByLabel.BackgroundTransparency = 1 

DiscordButton.Name = "DiscordButton"
DiscordButton.Parent = MainFrame
DiscordButton.BackgroundColor3 = Color3.fromRGB(0, 153, 255)
DiscordButton.Position = UDim2.new(0.5, -60, 1, -50)
DiscordButton.Size = UDim2.new(0, 120, 0, 30) 
DiscordButton.Font = Enum.Font.FredokaOne
DiscordButton.Text = "Discord Link"
DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordButton.TextSize = 18.000
DiscordButton.BackgroundTransparency = 0.4 

local DiscordButtonUICorner = Instance.new("UICorner")
DiscordButtonUICorner.CornerRadius = UDim.new(0, 10)
DiscordButtonUICorner.Parent = DiscordButton

DiscordButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/3KZSWtB7") 
    

    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Discord Link",
        Text = "GAY",
        Duration = 5  
    })
end)


Logo.Name = "Logo"
Logo.Parent = ScreenGui
Logo.BackgroundTransparency = 1
Logo.Position = UDim2.new(0.5, -30, 0.1, 20)
Logo.Size = UDim2.new(0, 60, 0, 60)
Logo.Image = "rbxassetid://78774998900413"
Logo.ImageColor3 = Color3.fromRGB(255, 255, 255)
Logo.ImageTransparency = 0
Logo.ScaleType = Enum.ScaleType.Crop
local LogoUICorner = Instance.new("UICorner")
LogoUICorner.CornerRadius = UDim.new(0, 10)
LogoUICorner.Parent = Logo
local isUIVisible = false
-- Thiết lập MainFrame không hiển thị khi mới chạy script
MainFrame.Visible = true -- Đảm bảo MainFrame ban đầu không hiển thị

Logo.MouseButton1Click:Connect(function()
    if isUIVisible then
        -- Nếu UI đang hiển thị, ẩn nó đi
        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Logo, tweenInfo, {Size = UDim2.new(0, 60, 0, 60)})
        tween:Play()

        tween.Completed:Connect(function()
            local tweenBack = TweenService:Create(Logo, tweenInfo, {Size = UDim2.new(0, 70, 0, 70)})
            tweenBack:Play()
        end)

        -- Ẩn MainFrame khi nhấn vào Logo
        local closeTween = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {BackgroundTransparency = 1})
        closeTween:Play()

        MainFrame.Visible = true
        isUIVisible = false
    else
        -- Nếu UI không hiển thị, mở nó lên
        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = TweenService:Create(Logo, tweenInfo, {Size = UDim2.new(0, 70, 0, 70)})
        tween:Play()

        tween.Completed:Connect(function()
            local tweenBack = TweenService:Create(Logo, tweenInfo, {Size = UDim2.new(0, 60, 0, 60)})
            tweenBack:Play()
        end)

        -- Hiển thị MainFrame khi nhấn vào Logo
        MainFrame.Visible = true
        local openTween = TweenService:Create(MainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5})
        openTween:Play()

        isUIVisible = true
    end
end)



local startTime = tick()  


RunService.Heartbeat:Connect(function()
    BountyTextLabel.Text = "Bounty/Honor: " .. tostring(LocalPlayer.leaderstats:FindFirstChild("Bounty/Honor") and LocalPlayer.leaderstats["Bounty/Honor"].Value or 0)
    
    local elapsedTime = tick() - startTime 
    TimerTextLabel.Text = "Time: " .. math.floor(elapsedTime) .. "s"
end)



function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
                StartPosition.X.Scale,
                StartPosition.X.Offset + Delta.X,
                StartPosition.Y.Scale,
                StartPosition.Y.Offset + Delta.Y
            )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

MakeDraggable(MainFrame, MainFrame)


-- Hàm để áp dụng black screen
local function applyBlackScreen()
    local playerGui = game:GetService("Players").LocalPlayer.PlayerGui.Main

    -- Tạo một frame đen bao phủ toàn bộ màn hình
    local blackScreenFrame = Instance.new("Frame")
    blackScreenFrame.Parent = playerGui
    blackScreenFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Màu nền đen
    blackScreenFrame.Size = UDim2.new(1, 0, 1, 0)  -- Chiếm toàn bộ màn hình
    blackScreenFrame.ZIndex = 999  -- Đảm bảo nó ở trên các UI khác

end

-- Gọi hàm áp dụng black screen khi game bắt đầu hoặc khi cấu hình thay đổi
if getgenv().Config["Black Screen"] then
    applyBlackScreen()
end

local foldername = "Shinichi Hub | Auto Bounty"
local filename = foldername.."/Config.json"
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(getgenv().Config)
    if not isfolder(foldername) then makefolder(foldername) end
    writefile(filename, json)
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfolder(foldername) and isfile(filename) then
        getgenv().Config = HttpService:JSONDecode(readfile(filename))
    end
end

loadSettings()
