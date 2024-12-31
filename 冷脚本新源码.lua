local dropdown = {}
local playernamedied = ""

for i, player in pairs(game.Players:GetPlayers()) do
    dropdown[i] = player.Name
end

function Notify(top, text, ico, dur)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = top,
    Text = text,
    Icon = ico,
    Duration = dur,
  })
end

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("小冷时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local FpsGui = Instance.new("ScreenGui") local FpsXS = Instance.new("TextLabel") FpsGui.Name = "FPSGui" FpsGui.ResetOnSpawn = false FpsGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling FpsXS.Name = "FpsXS" FpsXS.Size = UDim2.new(0, 100, 0, 50) FpsXS.Position = UDim2.new(0, 10, 0, 10) FpsXS.BackgroundTransparency = 1 FpsXS.Font = Enum.Font.SourceSansBold FpsXS.Text = "帧率: 0" FpsXS.TextSize = 20 FpsXS.TextColor3 = Color3.new(1, 1, 1) FpsXS.Parent = FpsGui function updateFpsXS() local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) FpsXS.Text = "帧率: " .. fps end game:GetService("RunService").RenderStepped:Connect(updateFpsXS) FpsGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local Lengui = loadstring(game:HttpGet("https://raw.githubusercontent.com/LENG8123/UI/refs/heads/main/%E5%86%B7library.lua"))()     
local win = Lengui:new("冷脚本")
--
local UITab1 = win:Tab("『信息』",'16060333448')

local about = UITab1:section("『LENG Script』",true)

about:Label("冷脚本")
about:Label("作者QQ：2368002332")
about:Label("QQ群：815883059")
about:Label("作者：冷")
about:Label("进群发最新冷脚本")
about:Label("脚本持续更新中")
about:Label("帮助者:月星,小皮,lishichuan丁丁")
about:Label("月星,小皮,lishichuan丁丁是冷一辈子的恩人")
about:Label("脚本懒得优化")
about:Label("欢迎使用🤓")

local UITab2 = win:Tab("『帮助榜』",'16060333448')

local about = UITab2:section("『LENG Script』",true)

about:Label("NO.1:月星")
about:Label("NO.2:lishichuan丁丁")
about:Label("NO.3:小玄奘")
about:Label("NO.4:小云")
about:Label("NO.5:林")

local UITab3 = win:Tab("『出生榜』",'16060333448')

local about = UITab3:section("『LENG Script』",true)
    
about:Label("NO.1:念初")
about:Label("NO.2:小鹤")
about:Label("NO.3:神青")
about:Label("NO.4:红毛狗头")

local UITab4 = win:Tab("『加入服务器』",'16060333448')

local about = UITab4:section("『LENG Script』",true)

about:Button("加入极速传奇",function()
local game_id = 3101667897
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入鲨口生求2",function()
local game_id = 8908228901
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入监狱人生",function()
local game_id = 155615604
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入忍者传奇",function()
local game_id = 3956818381
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入Break in (故事)",function()
local game_id = 1318971886
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入自然灾害生存游戏",function()
local game_id = 189707
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入力量传奇",function()
local game_id = 3623096087
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)

about:Button("加入餐厅大亨2",function()
local game_id = 3398014311
        local game_url = "https://www.roblox.com/games/"..game_id
        game:GetService("TeleportService"):Teleport(game_id, game.Players.LocalPlayer)
end)
    
local UITab5 = win:Tab("『复制冷脚本群系列』",'16060333448')

local about = UITab5:section("『LENG Script』",true)

    about:Button("点我复制冷脚本交流群群",function()
    setclipboard("815883059")
end)

    about:Button("点我复制2群",function()
    setclipboard("825789553")
end)

about:Button("点我复制脚本群",function()
    setclipboard("1007217151")
end)

    about:Button("点我复制作者QQ",function()
    setclipboard("2368002332")
end)

local UITab6 = win:Tab("『通用』",'16060333448')

local about = UITab6:section("『通用』",true)

local Players = about:Dropdown("选择玩家", 'Dropdown', dropdown, function(v)
    playernamedied = v
end)

game.Players.ChildAdded:Connect(function(player)
    dropdown[player.UserId] = player.Name
    Players:AddOption(player.Name)
end)

game.Players.ChildRemoved:Connect(function(player)
    Players:RemoveOption(player.Name)
    for k, v in pairs(dropdown) do
        if v == player.Name then
            dropdown[k] = nil
        end
    end
end)

about:Button("传送到玩家旁边", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        HumRoot.CFrame = tp_player.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
        Notify("冷", "已经传送到玩家身边", "rbxassetid://", 5)
    else
        Notify("冷", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Button("把玩家传送过来", function()
    local HumRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
    local tp_player = game.Players:FindFirstChild(playernamedied)
    if tp_player and tp_player.Character and tp_player.Character.HumanoidRootPart then
        tp_player.Character.HumanoidRootPart.CFrame = HumRoot.CFrame + Vector3.new(0, 3, 0)
        Notify("冷", "已传送过来", "rbxassetid://", 5)
    else
        Notify("冷", "无法传送 玩家已消失", "rbxassetid://", 5)
    end
end)

about:Toggle("查看玩家", 'Toggleflag', false, function(state)
    if state then
        game:GetService('Workspace').CurrentCamera.CameraSubject =
            game:GetService('Players'):FindFirstChild(playernamedied).Character.Humanoid
            Notify("冷", "已开启", "rbxassetid://", 5)
    else
        Notify("冷", "已关闭", "rbxassetid://", 5)
        local lp = game.Players.LocalPlayer
        game:GetService('Workspace').CurrentCamera.CameraSubject = lp.Character.Humanoid
    end
end)

about:Button("玩家加入游戏提示",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
end)

about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
about:Toggle("移除UI辉光", "DHG", false, function(DHG)
    if DHG then
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
    else
        game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
    end
end)

local about = UITab6:section("『自瞄与子追』",true)

about:Button("冷自瞄（死亡消失）",function()
loadstring(game:HttpGet("https://pastefy.app/ZYMlyhhz/raw",true))()
end)

about:Button("宙斯自瞄",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()
end)

about:Button("英文自瞄",function()
loadstring(game:HttpGet("https://rentry.co/n55gmtpi/raw", true))()
end)

about:Button("自瞄50",function()
loadstring(game:HttpGet("https://pastefy.app/b3uXjRF6/raw",true))()
end)

about:Button("自瞄100",function()
loadstring(game:HttpGet("https://pastefy.app/tQrd2r0L/raw",true))()
end)

about:Button("自瞄150",function()
loadstring(game:HttpGet("https://pastefy.app/UOQWFvGp/raw",true))()
end)

about:Button("自瞄200",function()
loadstring(game:HttpGet("https://pastefy.app/b5CuDuer/raw",true))()
end)

about:Button("自瞄250",function()
loadstring(game:HttpGet("https://pastefy.app/p2huH7eF/raw",true))()
end)

about:Button("自瞄300",function()
loadstring(game:HttpGet("https://pastefy.app/nIyVhrvV/raw",true))()
end)

about:Button("自瞄350",function()
loadstring(game:HttpGet("https://pastefy.app/pnjKHMvV/raw",true))()
end)

about:Button("自瞄400",function()
loadstring(game:HttpGet("https://pastefy.app/LQuP7sjj/raw",true))()
end)

about:Button("自瞄600",function()
loadstring(game:HttpGet("https://pastefy.app/WmcEe2HB/raw",true))()
end)

about:Button("自瞄全屏",function()
loadstring(game:HttpGet("https://pastefy.app/n5LhGGgf/raw",true))()
end)

about:Button("阿尔子追",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/sgbs/main/%E4%B8%81%E4%B8%81%20%E6%B1%89%E5%8C%96%E8%87%AA%E7%9E%84.txt"))()
end)

about:Button("俄州子追",function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/ClasiniZukov/e7547e7b48fa90d10eb7f85bd3569147/raw/f95cd3561a3bb3ac6172a14eb74233625b52e757/gistfile1.txt"))()
end)

local about = UITab6:section("『范围』",true)

about:Button("修复范围",function()
    _G.HeadSize = 15
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

about:Textbox("自定义范围!", "HitBox", "输入", function(Value)
   _G.HeadSize = Value
    _G.Disabled = true 
   game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then 
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize) 
   v.Character.HumanoidRootPart.Transparency = 0.7 
   v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
    v.Character.HumanoidRootPart.Material = "Neon"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end 
   end 
   end
    end)
end)

about:Button("普通范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("中等范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
end)

about:Button("全图范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
end)

about:Button("终极范围",function()
loadstring(game:HttpGet("https://pastebin.com/raw/CAQ9x4A7"))()
end)

local about = UITab6:section("『飞』",true)

about:Button("飞车",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V2.0/refs/heads/main/%E5%86%B7%E9%A3%9E%E8%BD%A6%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("飞行v1",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\90\66\122\99\84\109\49\102\34\41\41\40\41\10")()
end)

about:Button("冷飞行",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/-V3.0/refs/heads/main/%E9%A3%9E%E8%A1%8C%E8%84%9A%E6%9C%ACV3(%E5%85%A8%E6%B8%B8%E6%88%8F%E9%80%9A%E7%94%A8)%20(1).txt"))()
end)

local about = UITab6:section("『剩下懒得排了』",true)

about:Button("反挂机v2",function()
  loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)
    
about:Button("获得管理员权限",function()
loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
end)

about:Button("死亡笔记",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
end)

about:Button("汉化穿墙",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()
end)

about:Button("透视",function()  
    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        local function ApplyESP(v)
       if v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
           v.Character.Humanoid.NameDisplayDistance = 9e9
           v.Character.Humanoid.NameOcclusion = "NoOcclusion"
           v.Character.Humanoid.HealthDisplayDistance = 9e9
           v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
           v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
       end
    end
    for i,v in pairs(game.Players:GetPlayers()) do
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end
    
    game.Players.PlayerAdded:Connect(function(v)
       ApplyESP(v)
       v.CharacterAdded:Connect(function()
           task.wait(0.33)
           ApplyESP(v)
       end)
    end)
    
        local Players = game:GetService("Players"):GetChildren()
    local RunService = game:GetService("RunService")
    local highlight = Instance.new("Highlight")
    highlight.Name = "Highlight"
    
    for i, v in pairs(Players) do
        repeat wait() until v.Character
        if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = v.Character
            highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlightClone.Name = "Highlight"
        end
    end
    
    game.Players.PlayerAdded:Connect(function(player)
        repeat wait() until player.Character
        if not player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
            local highlightClone = highlight:Clone()
            highlightClone.Adornee = player.Character
            highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
            highlightClone.Name = "Highlight"
        end
    end)
    
    game.Players.PlayerRemoving:Connect(function(playerRemoved)
        playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
    end)
    
    RunService.Heartbeat:Connect(function()
        for i, v in pairs(Players) do
            repeat wait() until v.Character
            if not v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") then
                local highlightClone = highlight:Clone()
                highlightClone.Adornee = v.Character
                highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
                highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                highlightClone.Name = "Highlight"
                task.wait()
            end
    end
    end)
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("自动互动", "Auto Interact", false, function(state)
        if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
    end)

about:Toggle("无限跳","Toggle",false,function(Value)
        Jump = Value
        game.UserInputService.JumpRequest:Connect(function()
            if Jump then
                game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            end
        end)
    end)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Button("甩人",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
end)
about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)
    
about:Button("替身",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
end)

about:Button("爬墙",function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("iw指令", function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

about:Button("工具挂",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()
end)

about:Button("铁拳",function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
end)

about:Toggle("ESP 显示名字", "AMG", ENABLED, function(enabled)
    if enabled then ENABLED = true for _, player in ipairs(Players:GetPlayers()) do onPlayerAdded(player) end Players.PlayerAdded:Connect(onPlayerAdded) Players.PlayerRemoving:Connect(onPlayerRemoving) local localPlayer = Players.LocalPlayer if localPlayer and localPlayer.Character then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end RunService.Heartbeat:Connect(function() if ENABLED then for _, player in ipairs(Players:GetPlayers()) do if player.Character then createNameLabel(player) end end end end) else ENABLED = false for _, player in ipairs(Players:GetPlayers()) do onPlayerRemoving(player) end RunService:UnbindFromRenderStep("move") end
end)

about:Toggle("Circle ESP", "ESP", false, function(state)
        for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer then
                if state then
                    local highlight = Instance.new("Highlight")
                    highlight.Parent = player.Character
                    highlight.Adornee = player.Character

                    local billboard = Instance.new("BillboardGui")
                    billboard.Parent = player.Character
                    billboard.Adornee = player.Character
                    billboard.Size = UDim2.new(0, 100, 0, 100)
                    billboard.StudsOffset = Vector3.new(0, 3, 0)
                    billboard.AlwaysOnTop = true

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Parent = billboard
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.new(1, 1, 1)
                    nameLabel.TextStrokeTransparency = 0.5
                    nameLabel.TextScaled = true

                    local circle = Instance.new("ImageLabel")
                    circle.Parent = billboard
                    circle.Size = UDim2.new(0, 50, 0, 50)
                    circle.Position = UDim2.new(0.5, 0, 0.5, 0) -- Center the circle
                    circle.AnchorPoint = Vector2.new(0.5, 0.5) -- Set the anchor point to the center
                    circle.BackgroundTransparency = 1
                    circle.Image = "rbxassetid://2200552246" -- Replace with your circle image asset ID
                else
                    if player.Character:FindFirstChildOfClass("Highlight") then
                        player.Character:FindFirstChildOfClass("Highlight"):Destroy()
                    end
                    if player.Character:FindFirstChildOfClass("BillboardGui") then
                        player.Character:FindFirstChildOfClass("BillboardGui"):Destroy()
                    end
                end
            end
        end
    end)

about:Button("透视1",function()
loadstring(game:HttpGet('https://pastebin.com/raw/MA8jhPWT'))()
end)

about:Button("透视2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

about:Button("无敌『不适用』",function()
loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
end)

about:Button("隐身（E）",function()
loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
end)

about:Button("电脑键盘",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

about:Button("改fps",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
end)

about:Button("fps显示",function()
loadstring(game:HttpGet("https://pastefy.app/d9j82YJr/raw",true))()
end)

about:Button("解帧",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-FpsBoost-9260"))()
end)

about:Button("踏空行走",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
end)

about:Button("紫莎",function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end)

about:Button("飞檐走壁",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end)

about:Button("夜视仪",function()
    _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
end)

about:Button("反挂机",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
end)

about:Button("无限跳",function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
end)

about:Button("转圈",function()
loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
end)

about:Button("操人脚本",function()
loadstring(game:HttpGet("https://pastebin.com/raw/bzmhRgKL"))();
end)

about:Button("操b脚本", function()
  local SimpleSexGUI = Instance.new("ScreenGui") local FGUI = Instance.new("Frame") local btnNaked = Instance.new("TextButton") local btnSex = Instance.new("TextButton") local tbxVictim = Instance.new("TextBox") local lblFUCKEMALL = Instance.new("TextLabel") local ImageLabel = Instance.new("ImageLabel") local lbltitle = Instance.new("TextLabel") local TextLabel = Instance.new("TextLabel") SimpleSexGUI.Name = "SimpleSexGUI" SimpleSexGUI.Parent = game.CoreGui FGUI.Name = "FGUI" FGUI.Parent = SimpleSexGUI FGUI.BackgroundColor3 = Color3.new(255,255,255) FGUI.BorderSizePixel = 1 FGUI.Position = UDim2.new(0,0, 0.667, 0) FGUI.Size = UDim2.new(0,317, 0,271) FGUI.Draggable = true lbltitle.Name = "Title" lbltitle.Parent = FGUI lbltitle.BackgroundColor3 = Color3.new(255,255,255) lbltitle.BorderSizePixel = 1 lbltitle.Position = UDim2.new (0, 0,-0.122, 0) lbltitle.Size = UDim2.new (0, 317,0, 33) lbltitle.Visible = true lbltitle.Active = true lbltitle.Draggable = false lbltitle.Selectable = true lbltitle.Font = Enum.Font.SourceSansBold lbltitle.Text = "一个简单的操蛋脚本!!" lbltitle.TextColor3 = Color3.new(0, 0, 0) lbltitle.TextSize = 20 btnSex.Name = "Sex" btnSex.Parent = FGUI btnSex.BackgroundColor3 = Color3.new(255,255,255) btnSex.BorderSizePixel = 1 btnSex.Position = UDim2.new (0.044, 0,0.229, 0) btnSex.Size = UDim2.new (0, 99,0, 31) btnSex.Visible = true btnSex.Active = true btnSex.Draggable = false btnSex.Selectable = true btnSex.Font = Enum.Font.SourceSansBold btnSex.Text = "让我们操蛋吧!!" btnSex.TextColor3 = Color3.new(0, 0, 0) btnSex.TextSize = 20 tbxVictim.Name = "VictimTEXT" tbxVictim.Parent = FGUI tbxVictim.BackgroundColor3 = Color3.new(255,255,255) tbxVictim.BorderSizePixel = 1 tbxVictim.Position = UDim2.new (0.533, 0,0.229, 0) tbxVictim.Size = UDim2.new (0, 133,0, 27) tbxVictim.Visible = true tbxVictim.Active = true tbxVictim.Draggable = false tbxVictim.Selectable = true tbxVictim.Font = Enum.Font.SourceSansBold tbxVictim.Text = "名字" tbxVictim.TextColor3 = Color3.new(0, 0, 0) tbxVictim.TextSize = 20 lblFUCKEMALL.Name = "FUCKEMALL" lblFUCKEMALL.Parent = FGUI lblFUCKEMALL.BackgroundColor3 = Color3.new(255,255,255) lblFUCKEMALL.BorderSizePixel = 1 lblFUCKEMALL.Position = UDim2.new (0.025, 0,0.856, 0) lblFUCKEMALL.Size = UDim2.new (0, 301,0, 27) lblFUCKEMALL.Visible = true lblFUCKEMALL.Font = Enum.Font.SourceSansBold lblFUCKEMALL.Text = "操蛋和操蛋" lblFUCKEMALL.TextColor3 = Color3.new(0, 0, 0) lblFUCKEMALL.TextSize = 20 ImageLabel.Name = "ImageLabel" ImageLabel.Parent = FGUI ImageLabel.Image = "http://www.roblox.com/asset/?id=42837..." ImageLabel.BorderSizePixel = 1 ImageLabel.Position = UDim2.new (0.274, 0,0.358, 0) ImageLabel.Size = UDim2.new (0, 106,0, 121) btnSex.MouseButton1Click:Connect(function() local player = tbxVictim.Text local stupid = Instance.new('Animation') stupid.AnimationId = 'rbxassetid://148840371' hummy = game:GetService("Players").LocalPlayer.Character.Humanoid pcall(function() hummy.Parent.Pants:Destroy() end) pcall(function() hummy.Parent.Shirt:Destroy() end) local notfunny = hummy:LoadAnimation(stupid) notfunny:Play() notfunny:AdjustSpeed(10) while hummy.Parent.Parent ~= nil do wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[tbxVictim.Text].Character.HumanoidRootPart.CFrame end end)
end)

about:Button("Dex抓包",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoFenHG/Dex-Explorer/refs/heads/main/Dex-Explorer.lua"))()
end)

local UITab7 = win:Tab("『画质光影』",'16060333448')

local about = UITab7:section("『画质光影』",true)

about:Button("光影", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("光影滤镜", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("超高画质",function()
loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

about:Button("光影V4",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)

about:Button("RTX高仿",function()
loadstring(game:HttpGet('https://pastebin.com/raw/Bkf0BJb3'))()
end)

about:Button("光影深", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end)
about:Button("光影浅", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
end)

local UITab8 = win:Tab("『无限Robux』",'16060333448')

local about = UITab8:section("『无限Robux』",true)

about:Button("20Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("50Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("100Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("200Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("500Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

about:Button("1000Robux",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
end)

local UITab99 = win:Tab("『FE』",'16060333448')

local about = UITab99:section("『FE』",true)

about:Button("FE C00lgui", function()
loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
end)
about:Button("FE 1x1x1x1", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
end)
about:Button("FE大长腿", function()
    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
end)
about:Button("FE用头", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
end)
about:Button("复仇者", function()
    loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
end)
about:Button("鼠标", function()
    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
end)
about:Button("变怪物", function()
    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
end)
about:Button("香蕉枪", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
end)
about:Button("超长🐔巴", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
end)
about:Button("操人", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA", true))()
end)
about:Button("FE动画中心", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
end)
about:Button("FE变玩家", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
end)
about:Button("FE猫娘R63", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
end)
about:Button("FE", function()
    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()
end)

local UITab9 = win:Tab("『音乐』",'16060333448')

local about = UITab9:section("『音乐』",true)

about:Button("彩虹瀑布",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1837879082"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("防空警报", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://792323017"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("义勇军进行曲", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://1845918434"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("火车音", function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://3900067524"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("Gentry Road",function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://5567523008"
    sound.Parent = game.Workspace
    sound:Play()
    end)
about:Button("植物大战僵尸",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://158260415" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("早安越南",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8295016126" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("愤怒芒西 Evade?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://5029269312" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("梅西",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://7354576319" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("永春拳",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845973140" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("带劲的音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://18841891575" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("韩国国歌",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837478300" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
      about:Button("哥哥你女朋友不会吃醋吧?",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8715811379" 
     sound.Parent = game.Workspace 
     sound:Play()  
     end) 
      about:Button("蜘蛛侠出场声音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9108472930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("消防车",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://317455930" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
      about:Button("万圣节1🎃",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1837467198" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("好听的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1844125168" 
     sound.Parent = game.Workspace 
     sound:Play()
     end) 
 about:Button("国外音乐脚本",function()          
 loadstring(game:HttpGet(('https://pastebin.com/raw/g97RafnE'),true))()                   
end) 
   about:Button("国歌[Krx版]",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1845918434" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("妈妈生的",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6689498326" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Music Ball-CTT",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://9045415830" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("电音",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6911766512" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("梗合集",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://8161248815" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Its been so long",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6913550990" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("Baller",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://13530439660" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end)
   about:Button("男娘必听",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6797864253" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("螃蟹之舞",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://54100886218" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("布鲁克林惨案",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://6783714255" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
   about:Button("航空模拟器音乐",function() 
         local sound = Instance.new("Sound") 
     sound.SoundId = "rbxassetid://1838080629" 
     sound.Parent = game.Workspace 
     sound:Play() 
     end) 
     
local UITab11 = win:Tab("『其他作者』",'16060333448')

local about = UITab11:section("『其他作者』",true)

about:Button("LS",function()
KingandJM = "King Advanced and Roaming prohibition center"LS = "LSTMArchive"Free = "My.Conscience"loadstring(game:HttpGet("https://github.com/XiaoyeQWQ/Bs/raw/refs/heads/main/LS.by.Moxiaobai.JM%20Studio.KingAdvancedteam.Members.loveme.LSTAB"))()
end)

about:Button("皮脚本",function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/QQ1002100032-Roblox-Pi-script.lua"))()
end)

about:Button("禁漫中心",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/anlushanjinchangantangwanle/main/jmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjm.lua"))()
end)

about:Button("XK",function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
end)

about:Button("初脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/nianchuchuchuchuchu/refs/heads/main/Protected_2427816874224132.txt"))()
end)

about:Button("鹤脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/qazpin66/-/refs/heads/main/%E9%B9%A41.5.lua"))()
end)

about:Button("鱼龙脚本(破解)",function()
getgenv().FH = "鱼龙脚本"loadstring(game:HttpGet(string.char(104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,102,50,48,105,51,48,115,52,48,104,47,70,72,47,109,97,105,110,47,70,72,46,108,117,97)))()
end)

about:Button("丁丁脚本(破解)",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/xiu/main/%E4%B8%81%E4%B8%81%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%81.txt"))()
end)

about:Button("云脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/VIP/main/%E4%BA%91%E8%84%9A%E6%9C%AC/UNIVERSAL%20VERSION.LUA", true))()
end)

about:Button("king",function()
KingScript = "By King" Roblox= "新飞月二飞春"
KingTeam= "KingQQ新主群https://qm.qq.com/q/SU0hmhIvwk"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ShenJiaoBen/ShenJiaoBen/main/King-------------Script.txt"))()
end)

about:Button("情云",function()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\67\104\105\110\97\81\89\47\83\99\114\105\112\116\115\47\77\97\105\110\47\83\99\114\105\112\116"))()
end)

about:Button("剑客",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/JianKeCX/JianKeV5/refs/heads/main/QQqun155160100"))()
end)

about:Button("神青",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/roblox-ye/QQ515966991/refs/heads/main/SHEN-QINNG-SCRIPT.lua"))()
end)

about:Button("落叶中心",function()
getgenv().LS="落叶中心" loadstring(game:HttpGet("https://raw.githubusercontent.com/krlpl/Deciduous-center-LS/main/%E8%90%BD%E5%8F%B6%E4%B8%AD%E5%BF%83%E6%B7%B7%E6%B7%86.txt"))()
end)

about:Button("北脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fjhkl/qw/refs/heads/main/%E5%8C%97%E8%84%9A%E6%9C%AC.txt"))()
end)

about:Button("名脚本",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wumingjiaoben/z/refs/heads/main/%E6%97%A0%E5%90%8D%E8%84%9A%E6%9C%AC%E6%BA%90%E7%A0%813.0%20(1).lua"))()
end)

about:Button("斌脚本2.0.1",function() loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\66\73\78\46\108\117\97\34\41\41\40\41\10")
end)
  
about:Button("复制斌脚本卡密",function()
     setclipboard("bin2024HADE")
end)

local UITab12:section = win:Tab("『战争大亨』",'16060333448')

local SGV_Tab = UITab12:section("基地模式",true)

SGV_Tab:Button("删除门",function()
    for k,v in pairs(Workspace.Tycoon.Tycoons:GetChildren()) do
        for x,y in pairs(v.PurchasedObjects:GetChildren()) do
            if(y.Name:find("Door") or y.Name:find("Gate")) then y:destroy(); end;
        end;
    end;
end)


local SGV_Tab = UITab12:section("速度模式",true)

SGV_Tab:Toggle("速度 (开/关)","开关",false,function(v)
    if v == true then
        sudu = game:GetService("RunService").Heartbeat:Connect(function()
            if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                    game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                end
            end
        end)
    elseif not v and sudu then
        sudu:Disconnect()
        sudu = nil
    end
end)

SGV_Tab:Slider('速度设置', '拉条',  1, 0, 100,false, function(v)
    Speed = v
end)

local SGV_Tab = UITab12:section("跳跃模式",true)

SGV_Tab:Button("无限跳跃",function()
    game:GetService("UserInputService").JumpRequest:connect(function()
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
    end)
end)

local SGV_Tab = UITab12:section("透视模式",true)

SGV_Tab:Button("开启透视",function()

    _G.FriendColor = Color3.fromRGB(0, 0, 255)
        _G.EnemyColor = Color3.fromRGB(255, 0, 0)
        _G.UseTeamColor = true
        
        --------------------------------------------------------------------
        local Holder = Instance.new("Folder", game.CoreGui)
        Holder.Name = "ESP"
        
        local Box = Instance.new("BoxHandleAdornment")
        Box.Name = "nilBox"
        Box.Size = Vector3.new(1, 2, 1)
        Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
        Box.Transparency = 0.7
        Box.ZIndex = 0
        Box.AlwaysOnTop = false
        Box.Visible = false
        
        local NameTag = Instance.new("BillboardGui")
        NameTag.Name = "nilNameTag"
        NameTag.Enabled = false
        NameTag.Size = UDim2.new(0, 200, 0, 50)
        NameTag.AlwaysOnTop = true
        NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
        local Tag = Instance.new("TextLabel", NameTag)
        Tag.Name = "Tag"
        Tag.BackgroundTransparency = 1
        Tag.Position = UDim2.new(0, -50, 0, 0)
        Tag.Size = UDim2.new(0, 300, 0, 20)
        Tag.TextSize = 15
        Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
        Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
        Tag.TextStrokeTransparency = 0.4
        Tag.Text = "nil"
        Tag.Font = Enum.Font.SourceSansBold
        Tag.TextScaled = false
        
        local LoadCharacter = function(v)
            repeat wait() until v.Character ~= nil
            v.Character:WaitForChild("Humanoid")
            local vHolder = Holder:FindFirstChild(v.Name)
            vHolder:ClearAllChildren()
            local b = Box:Clone()
            b.Name = v.Name .. "Box"
            b.Adornee = v.Character
            b.Parent = vHolder
            local t = NameTag:Clone()
            t.Name = v.Name .. "NameTag"
            t.Enabled = true
            t.Parent = vHolder
            t.Adornee = v.Character:WaitForChild("Head", 5)
            if not t.Adornee then
                return UnloadCharacter(v)
            end
            t.Tag.Text = v.Name
            b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            local Update
            local UpdateNameTag = function()
                if not pcall(function()
                        v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                        local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                        local h = math.floor(v.Character.Humanoid.Health)
                    end) then
                    Update:Disconnect()
                end
            end
            UpdateNameTag()
            Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
        end
        
        local UnloadCharacter = function(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
                vHolder:ClearAllChildren()
            end
        end
        
        local LoadPlayer = function(v)
            local vHolder = Instance.new("Folder", Holder)
            vHolder.Name = v.Name
            v.CharacterAdded:Connect(function()
                pcall(LoadCharacter, v)
            end)
            v.CharacterRemoving:Connect(function()
                pcall(UnloadCharacter, v)
            end)
            v.Changed:Connect(function(prop)
                if prop == "TeamColor" then
                    UnloadCharacter(v)
                    wait()
                    LoadCharacter(v)
                end
            end)
            LoadCharacter(v)
        end
        
        local UnloadPlayer = function(v)
            UnloadCharacter(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder then
                vHolder:Destroy()
            end
        end
        
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            spawn(function() pcall(LoadPlayer, v) end)
        end
        
        game:GetService("Players").PlayerAdded:Connect(function(v)
            pcall(LoadPlayer, v)
        end)
        
        game:GetService("Players").PlayerRemoving:Connect(function(v)
            pcall(UnloadPlayer, v)
        end)
        
        game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
        
        if _G.Reantheajfdfjdgs then
            return
        end
        
        _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
        
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        
        function esp(target, color)
            if target.Character then
                if not target.Character:FindFirstChild("GetReal") then
                    local highlight = Instance.new("Highlight")
                    highlight.RobloxLocked = true
                    highlight.Name = "GetReal"
                    highlight.Adornee = target.Character
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.FillColor = color
                    highlight.Parent = target.Character
                else
                    target.Character.GetReal.FillColor = color
                end
            end
        end
        
        while task.wait() do
            for i, v in pairs(players:GetPlayers()) do
                if v ~= plr then
                    esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                end
            end
        end
end)


local SGV_Tab = UITab12:section("范围hixbox模式",true)
SGV_Tab:Textbox("脖子范围", "Gravity", "输入", function(v)
    _G.HeadSize = v
    _G.Disabled = true
    game:GetService('RunService').RenderStepped:connect(function()
    if _G.Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
    pcall(function()
    v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
    v.Character.Head.Transparency = 1
    v.Character.Head.BrickColor = BrickColor.new("Red")
    v.Character.Head.Material = "Neon"
    v.Character.Head.CanCollide = false
    v.Character.Head.Massless = true
    end)
    end
    end
    end
    end)
end)

local SGV_Tab = UITab12:section("甩飞模式",true)

SGV_Tab:Button("打开甩飞窗口",function()
    local lplayer = game:GetService('Players').LocalPlayer

function GetPlayer(String)
local Found = {}
local strl = String:lower()
if strl == "all" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
table.insert(Found,v)
end
elseif strl == "others" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name ~= lplayer.Name then
table.insert(Found,v)
end
end 
elseif strl == "me" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name == lplayer.Name then
table.insert(Found,v)
end
end 
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Name:lower():sub(1, #String) == String:lower() then
table.insert(Found,v)
end
end 
end
return Found 
end


local AutoFlingGui = Instance.new("ScreenGui")
local AutoFlingFrame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")

AutoFlingGui.Parent = game.CoreGui

AutoFlingFrame.Parent = AutoFlingGui
AutoFlingFrame.BackgroundTransparency = 1
AutoFlingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
AutoFlingFrame.BorderColor3 = Color3.new(1,1,1)
AutoFlingFrame.BorderSizePixel = 2
AutoFlingFrame.Position = UDim2.new(0.63040276, 0, 0.1, 0)
AutoFlingFrame.Size = UDim2.new(0.1,0.2,0.1)
AutoFlingFrame.Active = true
AutoFlingFrame.Draggable = true

TextBox.Parent = AutoFlingFrame
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0.3
TextBox.BorderColor3 = Color3.new(1,1,1)
TextBox.BorderSizePixel = 1
TextBox.Position = UDim2.new(0.103524067, 0, 0.25, 0)
TextBox.Size = UDim2.new(0.8,0.9,0.2)
TextBox.TextColor3 = Color3.new(1,1,1)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = "冷"
TextBox.TextScaled = true
TextBox.TextSize = 8
TextBox.TextWrapped = true

TextButton.Parent = AutoFlingFrame
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 0.3
TextButton.BorderColor3 = Color3.new(1,1,1)
TextButton.BorderSizePixel = 1
TextButton.Position = UDim2.new(0.2,0,0.6)
TextButton.Size = UDim2.new(0.6,0.9,0.2)
TextButton.TextColor3 = Color3.new(1,1,1)
TextButton.Text = "开始甩飞"
TextButton.TextScaled = true
TextButton.TextScaled = 22
TextButton.TextWrapped = false

ImageLabel.Parent = AutoFlingFrame
ImageLabel.Size = UDim2.new(0, 191, 0, 97)
ImageLabel.Position = UDim2.new(0.630402744, -34, 0.100000001,313)
ImageLabel.BackgroundTransparency = 1 
ImageLabel.Image = "rbxassetid://137843890417181"
ImageLabel.ImageTransparency = 0.5
ImageLabel.Position = UDim2.new(0.5, -95.5, 0.4, -48.5)
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderSizePixel = 0



local function ActiveAutoFling()
getgenv().flingloop = true
while getgenv().flingloop do
function flingloopfix()

local Targets = {""..TextBox.Text} -- "All", "Target Name"

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local AllBool = false

local GetPlayer = function(Name)
    Name = Name:lower()
    if Name == "all" or Name == "others" then
        AllBool = true
        return
    elseif Name == "random" then
        local GetPlayers = Players:GetPlayers()
        if table.find(GetPlayers,Player) then
        table.remove(GetPlayers,table.find(GetPlayers,Player))
        end
        return GetPlayers[math.random(#GetPlayers)]
    elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
        for _,x in next, Players:GetPlayers() do
            if x ~= Player then
                if x.Name:lower():match("^"..Name) then
                    return x;
                elseif x.DisplayName:lower():match("^"..Name) then
                    return x;
                end
            end
        end
    else
        return
    end
end

local Message = function(_Title, _Text, Time)
    --game:GetService("StarterGui"):SetCore("SendNotification", {Title = _Title, Text = _Text, Duration = Time})
end

local SkidFling = function(TargetPlayer)
    local Character = Player.Character
    local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
    local RootPart = Humanoid and Humanoid.RootPart

    local TCharacter = TargetPlayer.Character
    local THumanoid
    local TRootPart
    local THead
    local Accessory
    local Handle

    if TCharacter:FindFirstChildOfClass("Humanoid") then
        THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
    end
    if THumanoid and THumanoid.RootPart then
        TRootPart = THumanoid.RootPart
    end
    if TCharacter:FindFirstChild("Head") then
        THead = TCharacter.Head
    end
    if TCharacter:FindFirstChildOfClass("Accessory") then
        Accessory = TCharacter:FindFirstChildOfClass("Accessory")
    end
    if Accessoy and Accessory:FindFirstChild("Handle") then
        Handle = Accessory.Handle
    end

    if Character and Humanoid and RootPart then
        if RootPart.Velocity.Magnitude < 50 then
            getgenv().OldPos = RootPart.CFrame
        end
        if THumanoid and THumanoid.Sit and not AllBool then
            --return Message("Error Occurred", "Targeting is sitting", 5) -- u can remove dis part if u want lol
        end
        if THead then
            workspace.CurrentCamera.CameraSubject = THead
        elseif not THead and Handle then
            workspace.CurrentCamera.CameraSubject = Handle
        elseif THumanoid and TRootPart then
            workspace.CurrentCamera.CameraSubject = THumanoid
        end
        if not TCharacter:FindFirstChildWhichIsA("BasePart") then
            return
        end

        local FPos = function(BasePart, Pos, Ang)
            RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
            Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
            RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
            RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
        end

        local SFBasePart = function(BasePart)
            local TimeToWait = 2
            local Time = tick()
            local Angle = 0

            repeat
                if RootPart and THumanoid then
                    if BasePart.Velocity.Magnitude < 50 then
                        Angle = Angle + 100

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle),0 ,0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection,CFrame.Angles(math.rad(Angle), 0, 0))
                        task.wait()
                    else
                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()
                        
                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5 ,0), CFrame.Angles(math.rad(-90), 0, 0))
                        task.wait()

                        FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
                        task.wait()
                    end
                else
                    break
                end
            until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or not TargetPlayer.Character == TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait or getgenv().flingloop == false
        end

        workspace.FallenPartsDestroyHeight = 0/0

        local BV = Instance.new("BodyVelocity")
        BV.Name = "EpixVel"
        BV.Parent = RootPart
        BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
        BV.MaxForce = Vector3.new(1/0, 1/0, 1/0)

        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

        if TRootPart and THead then
            if (TRootPart.CFrame.p - THead.CFrame.p).Magnitude > 5 then
                SFBasePart(THead)
            else
                SFBasePart(TRootPart)
            end
        elseif TRootPart and not THead then
            SFBasePart(TRootPart)
        elseif not TRootPart and THead then
            SFBasePart(THead)
        elseif not TRootPart and not THead and Accessory and Handle then
            SFBasePart(Handle)
        else
            --return Message("Error Occurred", "Target is missing everything", 5)
        end

        BV:Destroy()
        Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        workspace.CurrentCamera.CameraSubject = Humanoid

        repeat
            RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
            Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
            Humanoid:ChangeState("GettingUp")
            table.foreach(Character:GetChildren(), function(_, x)
                if x:IsA("BasePart") then
                    x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
                end
            end)
            task.wait()
        until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
        workspace.FallenPartsDestroyHeight = getgenv().FPDH
    else
        --return Message("Error Occurred", "Random error", 5)
    end
end

if not Welcome then Message("剑客团队", "初夏", 5) end
getgenv().Welcome = true
if Targets[1] then for _,x in next, Targets do GetPlayer(x) end else return end

if AllBool then
    for _,x in next, Players:GetPlayers() do
        SkidFling(x)
    end
end

for _,x in next, Targets do
    if GetPlayer(x) and GetPlayer(x) ~= Player then
        if GetPlayer(x).UserId ~= 1414978355 then
            local TPlayer = GetPlayer(x)
            if TPlayer then
                SkidFling(TPlayer)
            end
        else
            --Message("Error Occurred", "This user is whitelisted! (Owner)", 5)
        end
    elseif not GetPlayer(x) and not AllBool then
        --Message("Error Occurred", "Username Invalid", 5)
    end
end
task.wait()
end
wait()
pcall(flingloopfix)
end
end
--



TextButton.MouseButton1Click:connect(function()
if TextBox.Text == ";All" then
TextBox.Text = "All"
else
TextBox.Text = unpack(GetPlayer(TextBox.Text)).Name
end
if TextButton.Text == "开始甩飞" and TextBox.Text ~= game.Players.LocalPlayer.Name and TextBox.Text ~= Ghostplayer then
TextButton.Text = "关闭甩飞"
ActiveAutoFling()
else
TextButton.Text = "开始甩飞"
getgenv().flingloop = false
end
end)
end)

local SGV_Tab = UITab12:section("旗帜传送",true)

SGV_Tab:Button("捕捉点",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-652.087158203125, 121.78434753417969, -1259.2510986328125)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

SGV_Tab:Button("捕捉点玻璃窗顶部",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-646.4267578125, 187.38427734375, -1265.0452880859375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

SGV_Tab:Button("捕捉点高楼",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-216.8485565185547, 447.56982421875, -1514.64599609375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

local SGV_Tab = UITab12:section("断桥传送",true)

SGV_Tab:Button("断桥Ⅰ",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-69.81941223144531, 70.02616119384766, -793.1098022460938)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

SGV_Tab:Button("断桥Ⅱ",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-680.5787963867188, 68.09300994873047, -1425.0596923828125)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

SGV_Tab:Button("断桥Ⅲ",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-1127.9139404296875, 70.02674865722656, -1737.7227783203125)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)



local SGV_Tab = UITab12:section("基地传送",true)

SGV_Tab:Button("Alpha",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-446.5848693847656, 67.15837860107422, -4655.828125)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)

SGV_Tab:Button("Bravo",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(877.7924194335938, 67.15836334228516, -4854.021484375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Charlie",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(2178.3076171875, 67.2578125, -4048.072021484375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Delta",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(2886.37060546875, 67.2578125, -3045.22802734375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Echo",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(3182.239013671875, 67.2578125, -1740.0211181640625)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Foxtrot",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(3515.21044921875, 67.2578125, -511.40130615234375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Golf",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(3416.2080078125, 67.25782775878906, 660.7476196289062)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Hotel",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(3074.851318359375, 67.2578125, 1885.713623046875)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Kilo",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(2663.734619140625, 67.2578353881836, 3036.18115234375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
end)


SGV_Tab:Button("Lima",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(1101.6029052734375, 67.2578125, 3509.763671875)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Loading",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(856.9780883789062, 48.26701354980469, -2275.72998046875)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Omega",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-369.8501892089844, 67.2578125, 4070.253662109375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Romeo",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-1581.2449951171875, 67.25782775878906, 3823.52734375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Sierra",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-2652.007568359375, 67.15837097167969, 2606.130615234375)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Tango",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-3150.487548828125, 67.15837097167969, 1535.2030029296875)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

SGV_Tab:Button("Victor",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-3718.847900390625, 67.25780487060547, 679.558837890625)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
     
end)

SGV_Tab:Button("Zulu",function()
    local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
    local location = CFrame.new(-3712.465087890625, 67.2578125, -932.3665161132812)
    local Humanoid = game.Players.LocalPlayer.Character.Humanoid
    Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    wait(0.2)
    pl.CFrame = location
        
end)

local about = UITab12:section("『护盾』",true)

about:Button("玩家护盾电箱",function(state)
    local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local downwardVector = Vector3.new(0, -1, 0)
    local targetPosition = localPlayerPosition + downwardVector * 500

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso
            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                    and workspace.Tycoon.Tycoons[playerTeamName]:FindFirstChild("PurchasedObjects")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects:FindFirstChild("Base Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"]:FindFirstChild("Shield")
                    and workspace.Tycoon.Tycoons[playerTeamName].PurchasedObjects["Base Shield"].Shield:FindFirstChild("Shield4")
                
                if shield then
                    local args = table.clone(argsTemplate)
                    args[1] = targetPosition
                    args[5] = shield
                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                end
            end
        end
    end

    local playerTeamName = localPlayer.Team and localPlayer.Team.Name
    for _, tycoon in pairs(workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):GetChildren()) do
        if tycoon.Name ~= playerTeamName then
            for _, object in pairs(tycoon:WaitForChild("PurchasedObjects"):GetChildren()) do
                if object:FindFirstChild("ElectricalBox") then
                    local electricalBox = object:FindFirstChild("ElectricalBox")
                    if electricalBox:FindFirstChild("Effect") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                    if electricalBox:FindFirstChild("Effect2") then
                        local args = table.clone(argsTemplate)
                        args[1] = targetPosition
                        args[5] = electricalBox:FindFirstChild("Effect2")
                        game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                    end
                end
            end
        end
    end

    wait(0)
end
end)

about:Button("玩家与护盾",function(state)
local argsTemplate = {
    [1] = Vector3.new(),
    [2] = Vector3.new(0, 1, 0),
    [3] = game:GetService("Players").LocalPlayer.Character.RPG,
    [4] = game:GetService("Players").LocalPlayer.Character.RPG,
    [7] = "zxcvbnm4189Rocket2"
}

local localPlayer = game:GetService("Players").LocalPlayer
local localPlayerTeam = localPlayer.Team

while true do
    local players = game:GetService("Players"):GetPlayers()
    local localPlayerPosition = localPlayer.Character.HumanoidRootPart.Position
    local upwardVector = Vector3.new(0, 1, 0)
    local targetPosition = localPlayerPosition + upwardVector * 1000

    for _, player in ipairs(players) do
        if player ~= localPlayer and player.Character and player.Character:FindFirstChild("Torso") then
            local args = table.clone(argsTemplate)
            args[1] = targetPosition
            args[5] = player.Character.Torso

            game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
        end

        if player ~= localPlayer and player.Team ~= localPlayerTeam then
            local playerTeamName = player.Team and player.Team.Name
            if playerTeamName then
                local shield = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons"):FindFirstChild(playerTeamName)
                if shield then
                    shield = shield:FindFirstChild("PurchasedObjects")
                    if shield then
                        shield = shield:FindFirstChild("Base Shield")
                        if shield then
                            shield = shield:FindFirstChild("Shield")
                            if shield then
                                shield = shield:FindFirstChild("Shield4")
                                if shield then
                                    local args = table.clone(argsTemplate)
                                    args[1] = targetPosition
                                    args[5] = shield

                                    game:GetService("ReplicatedStorage"):WaitForChild("RocketSystem"):WaitForChild("RocketHit"):FireServer(unpack(args))
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    wait(0)
end
end)

local about = UITab12:section("『枪械』",true)

about:Button("枪械全自动",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 1
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["Mode"] then
            gun["Mode"] = "Auto"
        end
        
        if gun["FireModes"] and gun["FireModes"]["Auto"] ~= nil then
            gun["FireModes"]["Auto"] = true
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end
end
end)

about:Button("枪械连射400发",function(state)
local player = game.Players.LocalPlayer
local backpack = player.Backpack

for _, tool in ipairs(backpack:GetChildren()) do
    local settingsModule = tool:FindFirstChild("ACS_Modulo") and tool["ACS_Modulo"]:FindFirstChild("Variaveis") and tool["ACS_Modulo"]["Variaveis"]:FindFirstChild("Settings")
    if settingsModule then
        local gun = require(settingsModule)
        
        if gun["Bullets"] then
            gun["Bullets"] = 400
        end
        
        if gun["Ammo"] then
            gun["Ammo"] = 5000000
        end
        
        if gun["FireRate"] then
            gun["FireRate"] = 1000000000
        end
        
        if gun["DamageMultiplier"] then
            gun["DamageMultiplier"] = 1000000000
        end
        
        if gun["Distance"] then
            gun["Distance"] = 1000000000
        end
        
        if gun["VRecoil"] then
            gun["VRecoil"] = {0, 0}
        end
        
        if gun["HRecoil"] then
            gun["HRecoil"] = {0, 0}
        end
        
        if gun["RecoilPunch"] then
            gun["RecoilPunch"] = 0
        end
        
        if gun["VPunchBase"] then
            gun["VPunchBase"] = 0
        end
        
        if gun["HPunchBase"] then
            gun["HPunchBase"] = 0
        end
        
        if gun["DPunchBase"] then
            gun["DPunchBase"] = 0
        end
        
        if gun["MinRecoilPower"] then
            gun["MinRecoilPower"] = 0
        end
        
        if gun["MaxRecoilPower"] then
            gun["MaxRecoilPower"] = 0
        end

        if gun["BSpeed"] then
            gun["BSpeed"] = 100000000
        end
        
        if gun["BDrop"] then
            gun["BDrop"] = 0
        end

        if gun["MinSpread"] then
            gun["MinSpread"] = 0
        end
        
        if gun["MaxSpread"] then
            gun["MaxSpread"] = 0
        end
    end

    local rocketModule = tool:FindFirstChild("RocketSettings")
    if rocketModule then
        local rocket = require(rocketModule)
        
        if rocket["velocity"] then
            rocket["velocity"] = 1000000000000
        end
        
        if rocket["Distance"] then
            rocket["Distance"] = 1000000000000
        end
        
        if rocket["RocketAmount"] then
            rocket["RocketAmount"] = 10000000000
        end
        
        if rocket["Acceleration"] then
            rocket["Acceleration"] = 1000000000000
        end
        
        if rocket["FireRate"] then
            rocket["FireRate"] = 10000000000000
        end
        
        if rocket["ExpRadius"] then
            rocket["ExpRadius"] = 10000000000
        end
    end
end
end)

local about = UITab12:section("『赠送』",true)

about:Button("赠送弹窗循环",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

while true do
    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= Players.LocalPlayer then
            local args = {
                [1] = "StarterCase",
                [2] = 1e20,
                [3] = player
            }

            ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
        end
    end
    wait(0)
end
end)

about:Button("一次性赠送弹窗",function(state)
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function giveCaseToPlayer(player)
    if player ~= Players.LocalPlayer then
        local args = {
            [1] = "StarterCase",
            [2] = 1e20,
            [3] = player
        }

        ReplicatedStorage:WaitForChild("Attachments System"):WaitForChild("CamoCaseGift"):FireServer(unpack(args))
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    giveCaseToPlayer(player)
end

Players.PlayerAdded:Connect(giveCaseToPlayer)
end)

about:Button("一枪秒人",function()
loadstring(game:HttpGet('https://pastebin.com/raw/6b4XEjQF'))()
end)

about:Button("战争大亨1",function()
loadstring(game:HttpGet'https://raw.githubusercontent.com/Macintosh1983/ChillHubMain/main/ChillHubOilWarfareTycoon.lua')()
end)

about:Button("战争大亨2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nivex123456/War-Tycoon/main/Script"))() 
end)

about:Button("战争大亨3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))() 
end)

about:Button("战争大亨4",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/nici002018/GNHub/master/GNHub.lua", true))()
end)

about:Button("战争大亨5",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MariyaFurmanova/Library/main/WarTycoon", true))()
end)

about:Button("战争大亨6",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraScript/Script/main/WarTycoon'))()
end)

about:Button("战争大亨7",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
end)

local UITab13 = win:Tab("『忍者传奇』",'16060333448')

local about = UITab13:section("『忍者传奇』",true)
 
about:Button("获取所有元素", function()
    if game:GetService("ReplicatedStorage") and game:GetService("ReplicatedStorage").Elements and game.ReplicatedStorage and game.ReplicatedStorage.rEvents and game.ReplicatedStorage.rEvents.elementMasteryEvent then
        for i, v in pairs(game:GetService("ReplicatedStorage").Elements:GetChildren()) do
            local allelement = v.Name
            game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer(allelement)
        end
    end
end)

about:Button("传送",function()
loadstring(game:HttpGet("https://pastebin.com/raw/UzaUDSPK"))()
end)

about:Button("忍者传奇1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
end)

about:Button("忍者传奇2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatBlueDevil/Bleus/main/Ninja%20Legends/Source.lua"))()
end)

about:Button("忍者传奇3",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇4",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Zyb150933/zyb/main/123'))()
end)

about:Button("忍者传奇汉化",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/renzhechuanqihanhua/refs/heads/main/%E5%BF%8D%E8%80%85%E4%BC%A0%E5%A5%87%E6%B1%89%E5%8C%96%E8%84%9A%E6%9C%AC%20(1).txt"))()
end)

about:Toggle("吸所有环", "Hoops", false, function(state)
    LS.hoops = state
    if LS.hoops then
        while LS.hoops do
            for i, v in ipairs(workspace.Hoops:GetChildren()) do
                if v.Name == "Hoop" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            wait()
            for i, v in ipairs(workspace.Hoops.Hoop:GetChildren()) do
                if v.Name == "touchPart" then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
end)

local UITab14 = win:Tab("『监狱人生』",'16060333448')

local about = UITab14:section("『传送』",true)

about:Button("警卫室",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(847.7261352539062, 98.95999908447266, 2267.387451171875)
end)

about:Button("监狱室内",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.2575073242188, 98.95999908447266, 2379.74169921875)
end)

about:Button("监狱室外",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(760.6033325195312, 96.96992492675781, 2475.405029296875)
end)

about:Button("犯罪复活点",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-937.5891723632812, 93.09876251220703, 2063.031982421875)
end)

about:Button("传送院子", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(788.5759887695312, 97.99992370605469, 2455.056640625)
end)
about:Button("传送警车库", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(602.7301635742188, 98.20000457763672, 2503.56982421875)
end)
about:Button("传送死人下水道", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(917.4256591796875, 78.69828033447266, 2416.18359375)
end)
about:Button("传送食堂", function()
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.0059204101562, 99.98993682861328, 2289.23095703125)
end)

local about = UITab14:section("『脚本』",true)

about:Button("无敌模式", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/LdTVujTA"))()
end)
about:Button("杀死所有人", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/kXjfpFPh"))()
end)

about:Button("变钢铁侠", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/7prijqYH"))()
end)
about:Button("变死神", function()
  loadstring(game:HttpGet("https://pastebin.com/ewv9bbRp"))()
end)
about:Button("变车模型", function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zLe3e4BS"))()
end)

about:Button("变成警察", function()
    workspace.Remote.TeamEvent:FireServer("Bright blue");
end)
about:Button("变成囚犯", function()
    workspace.Remote.TeamEvent:FireServer("Bright orange");
end)

about:Button("手里剑秒杀",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/jian"))()
end)

about:Button("监狱人生1",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
end)

about:Button("监狱人生2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
end)

about:Button("监狱人生汉化",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fYMnAEeJ"))()
end)

local UITab15 = win:Tab("『南极洲探险』",'16060333448')

local about = UITab15:section("『传送』",true)

about:Button("营地1", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3675.547607421875, 228.99801635742188, 218.94447326660156)
end)

about:Button("汽车制造点", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2282.958251953125, 100.99801635742188, -62.833335876464844)
end)

about:Button("营地2", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1797.17822265625, 104.79232025146484, -123.54420471191406)
end)

about:Button("攀冰处", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3197.6259765625, 848.4337158203125, -51.407386779785156)
end)

about:Button("营地3", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5921.45703125, 320.99798583984375, -11.849882125854492)
end)

about:Button("营地4", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8973.5390625, 596.2758178710938, 102.99405670166016)
end)

about:Button("南极点", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10940.6982421875, 548.9979858398438, 16.84609031677246)
end)

local UITab16 = win:Tab("『攀登珠穆朗玛峰模拟器』",'16060333448')

local about = UITab16:section("『传送』",true)

about:Button("直接登顶", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5183.84228515625, 8488.1103515625, 1100.88525390625)
end)

local UITab17 = win:Tab("『驾驶帝国』",'7734068321')

local about = UITab17:section("『驾驶帝国』",true)

about:Button("驾驶帝国1",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/zeuise0002/SSSWWW222/main/README.md'),true))()
end)

about:Button("驾驶帝国2",function()
loadstring(game:HttpGet("https://soggyhubv2.vercel.app"))()
end)

about:Button("驾驶帝国3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", true))()
end)

about:Button("驾驶帝国NEO",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/Lightux/main/README.md'),true))()
end)

local UITab18 = win:Tab("『铲雪模拟器』",'16060333448')

local about = UITab18:section("『铲雪模拟器』",true)

about:Toggle("自动收集雪","Value", false, function(Value)
        toggle = Value
    while toggle do wait()
    local args = {
        [1] = workspace:WaitForChild("HitParts"):WaitForChild("Snow1"),
        [2] = "Snow1",
        [3] = "MagicWand"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("e8eGb8RgRXFcug8q"):FireServer(unpack(args))
        end
    end)
    
about:Toggle("自动出售雪（要传送到指定地方）",   "Value",false, function(Value)
    toggle = Value
    while toggle do wait()
    local args = {
        [1] = "SellSnow",
        [2] = "Frosty"
    }
    
    game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Network"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
        end
    end)
    
about:Button("传送出售雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(481.4659423828125, 15.846257209777832, -66.55204010009766)
end)
    
about:Button("传送买车的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90.10160064697266, 16.051794052124023, -141.703125)
end)
    
about:Button("传送买工具的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131.7429962158203, 16.39700698852539, -12.935890197753906)
    end)
    
    about:Button("传送买背包的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(348.6633605957031, 17.03822898864746, -16.793842315673828)
end)
    
about:Button("传送买假日礼物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.57424926757812, 16.215335845947266, 147.10423278808594)
end)
    
about:Button("传送买宠物的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(138.49563598632812, 17.887277603149414, 278.3686218261719)
end)
    
about:Button("传送超大铲雪的地方", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-391.4309997558594, 15.84949016571045, 150.15187072753906)
end)
    
local UITab19 = win:Tab("『鱼🐟』",'7734068321')

local about = UITab19:section("『整合』",true)

about:Button("乌托邦",function()
loadstring(game:HttpGet("https://pastefy.app/xXwLngQD/raw"))()
end)

 local SGV_Tab = UITab19:section("速度模式",true)
 
 SGV_Tab:Toggle("速度 (开/关)","开关",false,function(v)
            if v == true then
                sudu = game:GetService("RunService").Heartbeat:Connect(function()
                    if game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.Humanoid and game:GetService("Players").LocalPlayer.Character.Humanoid.Parent then
                        if game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                            game:GetService("Players").LocalPlayer.Character:TranslateBy(game:GetService("Players").LocalPlayer.Character.Humanoid.MoveDirection * Speed / 10)
                        end
                    end
                end)
            elseif not v and sudu then
                sudu:Disconnect()
                sudu = nil
            end
        end)

        SGV_Tab:Slider('速度设置', '拉条',  1, 1, 1000,false, function(v)
            Speed = v
        end)
        local SGV_Tab = UITab19:section("水上模式",true)

        SGV_Tab:Toggle("水上行走","开关",false,function(v)
            for i,v in pairs(workspace.zones.fishing:GetChildren()) do
                if v.Name == "Ocean" then
                    v.CanCollide = Value
                end
            end
        end)
        
local SGV_Tab = UITab19:section("氧气设置",true)
 
SGV_Tab:Toggle("无限氧气","开关",false,function(Value)
            LocalPlayer.Character.client.oxygen.Disabled = Value
        end)

local SGV_Tab = UITab19:section("跳跃模式",true)

SGV_Tab:Button("无限跳跃",function()
            game:GetService("UserInputService").JumpRequest:connect(function()
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")		
              end)
        end)

local SGV_Tab = UITab19:section("雷达与坐标",true)

SGV_Tab:Toggle("雷达","开关",false,function(Value)
            for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
                if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
                    v.Enabled = Value
                end
            end
        end)

SGV_Tab:Toggle("坐标","开关",false,function(Value)
            if Value then
                local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
                XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
                local Pos = GetPosition()
                local StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
                XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
    
                BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function() -- Line 26
                    local Pos = GetPosition()
                    StringInput = string.format("%s,%s,%s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
                    XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
                end)
            else
                if PlayerGui.hud.safezone.backpack:FindFirstChild("xyz") then
                    PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()
                end
                if BypassGpsLoop then
                    BypassGpsLoop:Disconnect()
                    BypassGpsLoop = nil
                end
            end
        end)
 
local about = UITab19:section("『钓鱼与定身和出售』",true)

about:Button("在出生点自动钓鱼",function()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(321.46282958984375, 133.61595153808594, 268.07733154296875)

local args = {
    [1] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flimsy Rod")
}

game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.backpack.events.equip:FireServer(unpack(args))

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod").events.reset:FireServer()

local args = {
    [1] = 82.00000000000003,
    [2] = 1
}

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod").events.cast:FireServer(unpack(args))       
end)

about:Button("在任何地点自动钓鱼",function()
local args = {
    [1] = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flimsy Rod")
}

game:GetService("Players").LocalPlayer.PlayerGui.hud.safezone.backpack.events.equip:FireServer(unpack(args))

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod").events.reset:FireServer()

local args = {
    [1] = 82.00000000000003,
    [2] = 1
}

about:Toggle("开关","开关",false,function(state)
            Config['钓'] = state 
            if state then
                AllFuncs['钓']() 
            end
        end)
        
about:Toggle("定身","开关",false,function(Value)
            local oldpos = HumanoidRootPart.CFrame
            FreezeChar = Value
            task.wait()
            while WaitForSomeone(RenderStepped) do
                if FreezeChar and HumanoidRootPart ~= nil then
                    task.wait()
                    HumanoidRootPart.CFrame = oldpos
                else
                    break
                end
            end
        end)

about:Toggle("出售","开关",false,function(state)
            autoSellEnabled = state 
        if autoSellEnabled then
            
            task.spawn(function()
                while autoSellEnabled do
                    local success, err = pcall(function()
                        ReplicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
                    end)
                    if not success then
                        warn(" " .. err)
                    end
                    wait(1)
                end
            end)
        end
        end)

game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flimsy Rod").events.cast:FireServer(unpack(args))       
end)    

local SGV_Tab = UITab19:section("NPC",true)

SGV_Tab:Label("必要条件1:跟梅林对话一次")
        SGV_Tab:Label("必要条件2:在阳光岛内使用")
        
        SGV_Tab:Button("传送梅林",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-930.4, 225.7, -993.9) 
        end)

        SGV_Tab:Button("购买魔法遗迹",function()
            local merlin = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("power")
            merlin:InvokeServer()
        end)

        SGV_Tab:Button("购买幸运",function()
            local merlin = workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Merlin"):WaitForChild("Merlin"):WaitForChild("luck")
            merlin:InvokeServer()
        end)
 
local SGV_Tab = UITab19:section("鉴定与出售",true)

SGV_Tab:Label("必要条件:需要和检定员聊天一次")
        SGV_Tab:Button("传送鉴定员",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(449.2, 150.5, 208.9) 
        end)

        SGV_Tab:Button("鉴定",function()           Workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
        end)
        
        SGV_Tab:Button("出售所有鱼",function()          ReplicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
        end)

        SGV_Tab:Button("出售手中鱼",function()
            workspace.world.npcs:FindFirstChild("Marc Merchant").merchant.sell:InvokeServer()
        end) 
              
local SGV_Tab = UITab19:section("传送功能", true)
  
SGV_Tab:Button("阳光石岛",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-913.630615234375, 137.29348754882812, -1129.8995361328125) 
        end)
        
        SGV_Tab:Button("罗斯利特湾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1501.675537109375, 133, 416.2070007324219)
        end)

        
        SGV_Tab:Button("Mo木",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(382.6944580078125, 134.34976196289062, 245.103424072265625)
        end)

        
        SGV_Tab:Button("灯塔",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-36.46199035644531, -246.55001831054688, 205.77120971679688)
        end)

        
        SGV_Tab:Button("魅惑祭坛",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1310.048095703125, -805.292236328125, -162.34507751464844)
        end)

        
        SGV_Tab:Button("主权雕像",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(22.098665237426758, 159.01470947265625, -1039.8543701171875)
        end)

        
        SGV_Tab:Button("蘑菇沼泽",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2442.805908203125, 130.904052734375, -686.1648559570312)
        end)

        
        SGV_Tab:Button("雪岛",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2601.7, 135.7, 2413.7)
        end)

        
        SGV_Tab:Button("特拉平岛",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(152.3716278076172, 154.91015625, 2000.9171142578125)
        end)

        
        SGV_Tab:Button("???",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1476.7, -225.7, -2349.7)
        end)

        
        SGV_Tab:Button("桦树岛",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1757.7, 142.7, -2518.7)
        end)

        
        SGV_Tab:Button("被遗弃的海岸",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2487.7, 133.7, 1553.7)
        end)

        
        SGV_Tab:Button("收割者尖刺",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1352.7, 400.7, 1579.7)
        end)

        
        SGV_Tab:Button("荒凉深渊",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-997.7, -244.7, -2718.7)
        end)

        
        SGV_Tab:Button("盐水池",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1793.7, -142.7, -3411.7)
        end)

        
        SGV_Tab:Button("火山",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1891.7, 167.7, 329.7)
        end)

        
        SGV_Tab:Button("钥匙门",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.7, -703.7, 1229.7)
        end)

        
        SGV_Tab:Button("75万鱼竿",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1703.7, -902.7, 1433.7)
        end)

        
        SGV_Tab:Button("深度",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(976.7, -697.7, 1274.7)
        end)

        
        SGV_Tab:Button("头晕",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-118.7, -513.7, 1086.7)
        end)

        
        SGV_Tab:Button("拱门",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(999.7, 131.7, -1237.7)
        end)


    local SGV_Tab = UITab19:section("图腾模式",true)

        SGV_Tab:Button("风暴图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.2, 132.7, 1940.7)
        end)

        SGV_Tab:Button("时间图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1146.7, 134.7, -1073.7)
        end)

        SGV_Tab:Button("起风图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2846.7, 178.7, 2702.7)
        end)

        SGV_Tab:Button("起雾图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2793.7, 139.7, -629.7)
        end)

        SGV_Tab:Button("极光图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1812.4, -136.9, -3282.1)
        end)

        SGV_Tab:Button("日蚀图腾",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5964.4, 269.9, 848.1)
        end)

        local SGV_Tab = UITab19:section("碎片模式",true)
        
        SGV_Tab:Button("橙色碎片(需要开日蚀图腾)",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6068.4, 443.9, 685.1)
        end)

        SGV_Tab:Button("青色石头",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5969.4, 274.9, 845.1)
        end)

        SGV_Tab:Button("蓝色碎片(看水下)",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5799, 135.90478515625, 402.775634765625)
        end)



        local SGV_Tab = UITab19:section("制作模式",true)
        
        SGV_Tab:Button("先点我 下去后在传送制作鱼竿台",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5956, 154.90478515625, 482.775634765625)
        end)

        SGV_Tab:Button("制作鱼竿台",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3160, -745.90478515625, 1685.775634765625)
        end)

        local SGV_Tab = UITab19:section("亮度模式",true)
        
        SGV_Tab:Button("亮度Ⅰ",function()
            game.Lighting.Ambient = Color3.new(1, 1, 1)
        end)

        SGV_Tab:Button("亮度Ⅱ",function()
            game.Lighting.Ambient = Color3.new(2, 2, 2)
        end)

        SGV_Tab:Button("亮度Ⅲ",function()
            game.Lighting.Ambient = Color3.new(3, 3, 3)
        end)

        local SGV_Tab = UITab19:section("隐藏模式",true)
        
        SGV_Tab:Button("隐藏头衔",function()
            local LocalPlayerName = LocalPlayer.Name
            game:GetService("ReplicatedStorage").playerstats:FindFirstChild(LocalPlayerName).Settings.nametag.Value = false
        end)

        local SGV_Tab = UITab19:section("天气模式",true)
        
        SGV_Tab:Toggle("驱雾","开关",false,function(Value)
    		if Value then
                if game:GetService("Lighting"):FindFirstChild("Sky") then
                    game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
                end
            else
                if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
                    game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
                end
            end
        end)

        SGV_Tab:Toggle("白天","开关",false,function(Value)
    		if Value then
                DayOnlyLoop = RunService.Heartbeat:Connect(function()
                    game:GetService("Lighting").TimeOfDay = "12:00:00"
                end)
            else
                if DayOnlyLoop then
                    DayOnlyLoop:Disconnect()
                    DayOnlyLoop = nil
                end
            end
        end)
        
local UITab20 = win:Tab("『scp角色扮演』",'16060333448')

local about = UITab20:section("『LENG Script』",true)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("传送到怪物点位",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/scp%20rp2", true))()
end)

about:Button("FreeLean-Hub",function()  
loadstring(game:HttpGet("https://raw.githubusercontent.com/KeoneGithub/KeoneGithub/main/FreeLeanSCP",true))()
end)

about:Button("发疯Bot",function() loadstring(game:HttpGet("https://gist.githubusercontent.com/cerealwithmilk/83c17f6e383b2fa0d70a887e14523593/raw/d0bee380c2e3ec3f72dc34d1b8ca345c4efc19d8/scp-roleplay.lua"))()
end)

about:Button("快速开门、广播+++",function()
    local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
end)

about:Button("SCPF COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","SCPF COMMUNICATIONS")
end)

about:Button("CLASS-D COMMUNICATIONS RADIO",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("Normal Chat",function()
game:GetService("ReplicatedStorage").Team.Radio:FireServer("msg","hi guys!","CLASS-D COMMUNICATIONS")
end)

about:Button("SCP可用范围",function()
    _G.HeadSize = 15
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)
about:Button("快速射击",function()
local g = getgc(true)
local t = {}
local p = game:GetService("Players").LocalPlayer
local function editCurrentGuns()
    for _, v in pairs(g) do
        if typeof(v) == "table" then
            if rawget(v, "Ammo") and rawget(v, "CurrentAmmo") then
                table.insert(t,v)
            end
        end
    end
    
    for _,v in pairs(t) do
        v.TBS = 0
    end
end
task.spawn(editCurrentGuns)

p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
for _,v in pairs(p.Backpack:GetChildren()) do
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end; for _, v in pairs(game:GetService("ReplicatedStorage").GunSettings:GetChildren()) do
    if v:IsA("ModuleScript") then
        local m = require(v)
        if m.TBS then
            m.TBS = 0
        end
    end
end; p.Backpack.ChildAdded:Connect(function(v)
    p.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
    if v:IsA("Tool") and v:FindFirstChild("identifier") then
        v:FindFirstChild("identifier"):Destroy()
    end
end)
end)

about:Button("自动换蛋+++",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua"))()
end)

about:Button("SCP最强脚本",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnomalyRBLX/Database/main/Scripts/SCP%3A%20Roleplay"))()
end)

local UITab21 = win:Tab("『极速传奇』",'16060333448')

local SGV_Tab = UITab21:section("『卡宠模式』",true)

SGV_Tab:Toggle("城市","开关",false,function(v)
            getgenv().cs = v
            cs()
        end)

        SGV_Tab:Toggle("雪城","开关",false,function(v)
            getgenv().xc = v
            xc()
        end)

        SGV_Tab:Toggle("火山","开关",false,function(v)
            getgenv().hs = v
            hs()
        end)

        SGV_Tab:Toggle("公路","开关",false,function(v)
            getgenv().gl = v
            gl()
        end)

        local SGV_Tab = UITab21:section("宝石模式",true)
    
        SGV_Tab:Toggle("城市","开关",false,function(v)
            getgenv().sbsA = v
            sbsA()
        end)
            
        SGV_Tab:Toggle("雪城","开关",false,function(v)
            getgenv().sbsB = v
            sbsB()
        end)
            
        SGV_Tab:Toggle("火山","开关",false,function(v)
            getgenv().sbsC = v
            sbsC()
        end)

        SGV_Tab:Toggle("火山","开关",false,function(v)
            getgenv().sbsD = v
            sbsD()
        end)

        local SGV_Tab = UITab21:section("重生模式",true)

        SGV_Tab:Toggle("重生","开关",false,function(v)
            getgenv().autocs = v
            autocs()
        end)

        local SGV_Tab = UITab21:section("刷圈模式",true)

        SGV_Tab:Toggle("刷圈","开关",false,function(v)
            autoHoop = v
            if v then
                AutoHoop()
            end
        end)

        local SGV_Tab = UITab21:section("比赛模式",true)
        SGV_Tab:Toggle("自动比赛","开关",false,function(bool)
            autoRace = bool
            if bool then
                AutoRace()
            end
        end)       

        SGV_Tab:Dropdown("比赛终点传送", "下拉菜单", Maps, function(v)
            selectedMap = v
        end)

        SGV_Tab:Button("点击传送",function()
            TeleportTO(game.workspace.raceMaps[selectedMap].finishPart.CFrame)
        end)

        local SGV_Tab = UITab21:section("购买模式",true)

        SGV_Tab:Toggle("红色水晶[300宝石]","开关",false,function(v)
            getgenv().egg1 = v
            egg1()
        end)

        SGV_Tab:Toggle("蓝色水晶[600宝石]","开关",false,function(v)
            getgenv().egg2 = v
            egg2()
        end)

        SGV_Tab:Toggle("黄色水晶[1.2K宝石]","开关",false,function(v)
            getgenv().egg3 = v
            egg3()
        end)

        SGV_Tab:Toggle("绿色闪电水晶 [2.5K宝石]","开关",false,function(v)
            getgenv().egg4 = v
            egg4()
        end)

        SGV_Tab:Toggle("雪花水晶[4K宝石]","开关",false,function(v)
            getgenv().egg5 = v
            egg5()
        end)

        SGV_Tab:Toggle("熔岩水晶[8K宝石]","开关",false,function(v)
            getgenv().egg6 = v
            egg6()
        end)

        SGV_Tab:Toggle("闪电水晶 [8K宝石]","开关",false,function(v)
            getgenv().egg7 = v
            egg7()
        end)

        SGV_Tab:Toggle("沙漠水晶 [40K宝石]","开关",false,function(v)
            getgenv().egg8 = v
            egg8()
        end)

        SGV_Tab:Toggle("电光水晶[50K宝石]","开关",false,function(v)
            getgenv().egg9 = v
            egg9()
        end)

        SGV_Tab:Toggle("电光传奇水晶 [100K宝石]","开关",false,function(v)
            getgenv().egg10 = v
            egg10()
        end)

        local SGV_Tab = UITab21:section("选择传送点",true)

        SGV_Tab:Button("城市",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2002.0133056640625, 1.2624330520629883, 985.2265625)
        end)

        SGV_Tab:Button("雪城",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9675.25, 59.63568115234375, 3783.50146484375)
        end)

        SGV_Tab:Button("火山",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11052.4189453125, 217.59571838378906, 4898.76416015625)
        end)

        SGV_Tab:Button("公路",function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13095.255859375, 217.59567260742188, 5905.240234375)
        end)
        
local about = UITab21:section("『修改』",true)

about:Textbox("修改经验值", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.exp.Value=arg
end)

about:Textbox("修改等级", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.level
.Value=arg
end)

about:Textbox("修改比赛数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Races.Value=arg
end)

about:Textbox("修改圈数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Hoops.Value=arg
end)

about:Textbox("修改重生", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Rebirths.Value=arg
end)

about:Textbox("修改步数", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.leaderstats.Steps.Value=arg
end)

about:Textbox("修改尾迹容量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宠物位数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.maxPetCapacity.Value=arg
end)

about:Textbox("修改宝石数量", "arg", "输入",function(arg)
game:GetService("Players").LocalPlayer.Gems.Value=arg
end)

local about = UITab21:section("『自动』",true)

about:Toggle("自动设置最大速度", "SD", false, function(SD)
    if SD then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeSpeed,math.huge")
 wait() end end
end)

about:Toggle("自动设置最大跳跃", "TY", false, function(TY)
    if TY then while true do game:GetService("ReplicatedStorage").rEvents.changeSpeedJumpRemote:InvokeServer("changeJump,math.huge")
 wait() end end
end)

local about = UITab21:section("『无』",true)

about:Button("boa",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/BoaHacker/ROBLOX/main/cheat', true))()
end)

about:Button("汉化",function()
loadstring(game:HttpGet("https://pastebin.com/raw/egMXJcwB", true))()
end)

local UITab22 = win:Tab("『格林维尔』",'16060333448')

local about = UITab22:section("『格林维尔』",true)

about:Button("格林维尔",function()
loadstring(game:HttpGet("https://github.com/root-jiege/new/raw/refs/heads/main/KO"))()
end)

about:Button("格林维尔2",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8643/test/main/green"))()
end)

about:Button("格林维尔3",function()
loadstring(game:HttpGet("https://pastefy.app/WBYAsWJm/raw"))()
end)

local UITab23 = win:Tab("『CDID』",'16060333448')

local about = UITab23:section("『CDID』",true)

about:Button("CDID",function()
loadstring(game:HttpGet("https://scriptblox.com/raw/Car-Driving-Indonesia-Lunar-hub-v2-12376"))()
end)

about:Button("CDID2",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Marco8643/test/main/cdid%20script'))()
end)

about:Button("冷",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/lengcdid/refs/heads/main/%E5%86%B7cdid%E6%BA%90.lua"))()
end)

local UITab24 = win:Tab("『挖到中国』",'16060333448')

local about = UITab24:section("『挖到中国』",true)

about:Button("远程购买炸弹",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/odhdshhe/wachuzhongguo/refs/heads/main/jm%E6%8C%96%E5%88%B0%E4%B8%AD%E5%9B%BD%E8%BF%9C%E7%A8%8B%E8%B4%AD%E4%B9%B0%E7%82%B8%E5%BC%B9.lua"))()
end)

local UITab26 = win:Tab("『起床战争』",'16060333448')

local about = UITab26:section("『起床战争』",true)

about:Button("起床vape",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
end)

about:Button("起床战争",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/OWJBWKQLAISH/Inferno-X/main/inferno%20X%20V2"))()
end)

local UITab27 = win:Tab("『拔出一把剑』",'16060333448')

local about = UITab27:section("『拔出一把剑』",true)

about:Toggle("自动打怪前提(必开)", "Daguai", false, function(state)
    if state then
        while state do
            game:GetService("ReplicatedStorage").RemoveC:FireServer(1)
            wait()
            end
        end
end)
about:Toggle("自动打怪", "automatic", false, function(state)
    if state then
        while state do
            game:GetService("ReplicatedStorage").HALLOWEEN2024FOLDER.WinBossEvent:FireServer(26)
            wait()
            end
        end
end)
about:Toggle("自动传送到活动区域(用于刷南瓜)", "deliver", false, function(state)
    if state then
        while state do
            game:GetService("ReplicatedStorage").PortalC:FireServer("-4", game:GetService("Players").LocalPlayer.Character, false)
            wait()
            end
        end
end)

about:Label("感谢ato送的功能")

local UITab28 = win:Tab("『兵工厂』",'16060333448')

local SGV_Tab = UITab28:section("『武器』",true)

SGV_Tab:Button("无限子弹",function()
            while wait(0.5) do
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 100
                game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 100
            end
        end)

        SGV_Tab:Button("快速射击",function()
            local replicationstorage = game.ReplicatedStorage
                    
            for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
                if v.Name == "Auto" then
                    v.Value = true
                end
                if v.Name == "RecoilControl" then
                    v.Value = 0
                end
                if v.Name == "MaxSpread" then
                    v.Value = 0
                end
                if v.Name == "ReloadTime" then
                    v.Value = 0
                end
                if v.Name == "FireRate" then
                    v.Value = 0.05
                end
                if v.Name == "Crit" then
                    v.Value = 20
                end
            end       
        end)

local SGV_Tab = UITab28:section("『透视』",true)

            SGV_Tab:Button("开启透视",function()
                _G.FriendColor = Color3.fromRGB(0, 0, 255)
                    _G.EnemyColor = Color3.fromRGB(255, 0, 0)
                    _G.UseTeamColor = true
                    
                    --------------------------------------------------------------------
                    local Holder = Instance.new("Folder", game.CoreGui)
                    Holder.Name = "ESP"
                    
                    local Box = Instance.new("BoxHandleAdornment")
                    Box.Name = "nilBox"
                    Box.Size = Vector3.new(1, 2, 1)
                    Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
                    Box.Transparency = 0.7
                    Box.ZIndex = 0
                    Box.AlwaysOnTop = false
                    Box.Visible = false
                    
                    local NameTag = Instance.new("BillboardGui")
                    NameTag.Name = "nilNameTag"
                    NameTag.Enabled = false
                    NameTag.Size = UDim2.new(0, 200, 0, 50)
                    NameTag.AlwaysOnTop = true
                    NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
                    local Tag = Instance.new("TextLabel", NameTag)
                    Tag.Name = "Tag"
                    Tag.BackgroundTransparency = 1
                    Tag.Position = UDim2.new(0, -50, 0, 0)
                    Tag.Size = UDim2.new(0, 300, 0, 20)
                    Tag.TextSize = 15
                    Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
                    Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
                    Tag.TextStrokeTransparency = 0.4
                    Tag.Text = "nil"
                    Tag.Font = Enum.Font.SourceSansBold
                    Tag.TextScaled = false
                    
                    local LoadCharacter = function(v)
                        repeat wait() until v.Character ~= nil
                        v.Character:WaitForChild("Humanoid")
                        local vHolder = Holder:FindFirstChild(v.Name)
                        vHolder:ClearAllChildren()
                        local b = Box:Clone()
                        b.Name = v.Name .. "Box"
                        b.Adornee = v.Character
                        b.Parent = vHolder
                        local t = NameTag:Clone()
                        t.Name = v.Name .. "NameTag"
                        t.Enabled = true
                        t.Parent = vHolder
                        t.Adornee = v.Character:WaitForChild("Head", 5)
                        if not t.Adornee then
                            return UnloadCharacter(v)
                        end
                        t.Tag.Text = v.Name
                        b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                        t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
                        local Update
                        local UpdateNameTag = function()
                            if not pcall(function()
                                    v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                                    local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                                    local h = math.floor(v.Character.Humanoid.Health)
                                end) then
                                Update:Disconnect()
                            end
                        end
                        UpdateNameTag()
                        Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
                    end
                    
                    local UnloadCharacter = function(v)
                        local vHolder = Holder:FindFirstChild(v.Name)
                        if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
                            vHolder:ClearAllChildren()
                        end
                    end
                    
                    local LoadPlayer = function(v)
                        local vHolder = Instance.new("Folder", Holder)
                        vHolder.Name = v.Name
                        v.CharacterAdded:Connect(function()
                            pcall(LoadCharacter, v)
                        end)
                        v.CharacterRemoving:Connect(function()
                            pcall(UnloadCharacter, v)
                        end)
                        v.Changed:Connect(function(prop)
                            if prop == "TeamColor" then
                                UnloadCharacter(v)
                                wait()
                                LoadCharacter(v)
                            end
                        end)
                        LoadCharacter(v)
                    end
                    
                    local UnloadPlayer = function(v)
                        UnloadCharacter(v)
                        local vHolder = Holder:FindFirstChild(v.Name)
                        if vHolder then
                            vHolder:Destroy()
                        end
                    end
                    
                    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
                        spawn(function() pcall(LoadPlayer, v) end)
                    end
                    
                    game:GetService("Players").PlayerAdded:Connect(function(v)
                        pcall(LoadPlayer, v)
                    end)
                    
                    game:GetService("Players").PlayerRemoving:Connect(function(v)
                        pcall(UnloadPlayer, v)
                    end)
                    
                    game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
                    
                    if _G.Reantheajfdfjdgs then
                        return
                    end
                    
                    _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
                    
                    local players = game:GetService("Players")
                    local plr = players.LocalPlayer
                    
                    function esp(target, color)
                        if target.Character then
                            if not target.Character:FindFirstChild("GetReal") then
                                local highlight = Instance.new("Highlight")
                                highlight.RobloxLocked = true
                                highlight.Name = "GetReal"
                                highlight.Adornee = target.Character
                                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                highlight.FillColor = color
                                highlight.Parent = target.Character
                            else
                                target.Character.GetReal.FillColor = color
                            end
                        end
                    end
                    
                    while task.wait() do
                        for i, v in pairs(players:GetPlayers()) do
                            if v ~= plr then
                                esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                            end
                        end
                    end
            end)

local Player = UITab28:section("玩家调整功能",true)

Player:Textbox("丝滑加速速度", "TPSpeed", "输入", function(value)
getgenv().TPSpeed = value
end)

Player:Toggle('开启丝滑加速', "TPWalk", false, function(s)
getgenv().TPWalk = s
local hb = game:GetService("RunService").Heartbeat
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while getgenv().TPWalk and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if getgenv().TPSpeed and isNumber(getgenv().TPSpeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(getgenv().TPSpeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

Player:Toggle("穿墙", "LSTM", false, function(Value)
    if Value then
        Noclip = true
        Stepped = game.RunService.Stepped:Connect(function()
            if Noclip == true then
                for a, b in pairs(game.Workspace:GetChildren()) do
                    if b.Name == game.Players.LocalPlayer.Name then
                        for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            else
                Stepped:Disconnect()
            end
        end)
    else
        Noclip = false
    end
end)

local Main = UITab28:section("主要",true)

Main:Toggle("子弹追踪", "silent", false, function(silent)
        if silent then
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
    local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    else
        local CurrentCamera = workspace.CurrentCamera
local Players = game.Players
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
function ClosestPlayer()
    local MaxDist, Closest = math.huge
    for I,V in pairs(Players.GetPlayers(Players)) do
        if V == LocalPlayer then continue end
        if V.Team == LocalPlayer then continue end
        if not V.Character then continue end
        local Head = V.Character.FindFirstChild(V.Character, "Head")
        if not Head then continue end
        local Pos, Vis = CurrentCamera.WorldToScreenPoint(CurrentCamera, Head.Position)
        if not Vis then continue end
        local MousePos, TheirPos = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 0, workspace.CurrentCamera.ViewportSize.Y / 0), Vector2.new(Pos.X, Pos.Y)
        local Dist = (TheirPos - MousePos).Magnitude
        if Dist < MaxDist then
            MaxDist = Dist
            Closest = V
        end
    end
    return Closest
end
local MT = getrawmetatable(game)
local OldNC = MT.__namecall
local OldIDX = MT.__index
setreadonly(MT, false)
MT.__namecall = newcclosure(function(self, ...)
    local Args, Method = {...}, getnamecallmethod()
    if Method == "FindPartOnRayWithIgnoreList" and not checkcaller() then
        local CP = ClosestPlayer()
        if CP and CP.Character and CP.Character.FindFirstChild(CP.Character, "Head") then
            Args[1] = Ray.new(CurrentCamera.CFrame.Position, (CP.Character.Head.Position - CurrentCamera.CFrame.Position).Unit * 1000)
            return OldNC(self, unpack(Args))
        end
    end
    return OldNC(self, ...)
end)
MT.__index = newcclosure(function(self, K)
    if K == "Clips" then
        return workspace.Map
    end
    return OldIDX(self, K)
end)
setreadonly(MT, true)
    end
    end)

Main:Button("无后坐力射击", function()
	local replicationstorage = game.ReplicatedStorage
    for i, v in pairs(replicationstorage.Weapons:GetDescendants()) do
       if v.Name == "Auto" then
           v.Value = true
       end
       if v.Name == "RecoilControl" then
           v.Value = 0
       end
       if v.Name == "MaxSpread" then
           v.Value = 0
       end
       if v.Name == "ReloadTime" then
          v.Value = 0
       end
       if v.Name == "FireRate" then
           v.Value = 0.05
       end
       if v.Name == "Crit" then
           v.Value = 20
       end
   end
end)

Main:Button("ESP", function()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
          local billboard = Instance.new("BillboardGui")
          billboard.Parent = player.Character
          billboard.Adornee = player.Character
          billboard.Size = UDim2.new(0, 100, 0, 50)
          billboard.StudsOffset = Vector3.new(0, 3, 0)
          billboard.AlwaysOnTop = true

          local nameLabel = Instance.new("TextLabel")
          nameLabel.Parent = billboard
          nameLabel.Size = UDim2.new(1, 0, 1, 0)
          nameLabel.BackgroundTransparency = 1
          nameLabel.Text = player.Name
          nameLabel.TextColor3 = player.TeamColor
          nameLabel.TextStrokeTransparency = 0.5
          nameLabel.TextScaled = true
        end
    end
end)

local UITab29 = win:Tab("『杀手vs警长』",'16060333448')

local SGV_Tab = UITab29:section("『透视和范围』",true)

SGV_Tab:Button("透视",function(v)
    while wait(1) do
        local function ApplyESP(v)
            if	v.Character and v.Character:FindFirstChildOfClass'Humanoid' then
            v.Character.Humanoid.NameDisplayDistance = 9e9
            v.Character.Humanoid.NameOcclusion = "NoOcclusion"
            v.Character.Humanoid.HealthDisplayDistance = 9e9
            v.Character.Humanoid.HealthDisplayType = "AlwaysOn"
            v.Character.Humanoid.Health = v.Character.Humanoid.Health -- triggers changed
            end
        end
        for i,v in pairs(game.Players:GetPlayers()) do
        ApplyESP(v)
            v.CharacterAdded:Connect(function()
            task.wait(0.33)
            ApplyESP(v)
            end)
        end
        
        game.Players.PlayerAdded:Connect(function(v)
        ApplyESP(v)
        v.CharacterAdded:Connect(function()
            task.wait(0.33)
            ApplyESP(v)
        end)
        end)
    end
end)

SGV_Tab:Slider('范围', '拉条',  1, 1, 50,false, function(v)
    _G.HeadSize = v
	_G.Disabled = true
		game:GetService('RunService').RenderStepped:connect(function()
			if _G.Disabled then
				for i,v in next, game:GetService('Players'):GetPlayers() do
				if v.Name ~= game:GetService('Players').LocalPlayer.Name then
					pcall(function()
					v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
					v.Character.HumanoidRootPart.Transparency = 0.9
					v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
					v.Character.HumanoidRootPart.Material = "Neon"
					v.Character.HumanoidRootPart.CanCollide = false
				end)
			end
		end
	end
end) 
end)

local UITab30 = win:Tab("『一路向西』",'16060333448')

local SGV_Tab = UITab30:section("人物模式",true)

SGV_Tab:Toggle("无限跳跃","开关",false,function(v)
    Jump = v
    game.UserInputService.JumpRequest:Connect(function()
        if Jump then
            game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end)

SGV_Tab:Toggle("动物透视","开关",false,function(v)
	getgenv().esp = v
	esp()
end)

SGV_Tab:Button("开启透视",function()

        _G.FriendColor = Color3.fromRGB(0, 0, 255)
        _G.EnemyColor = Color3.fromRGB(255, 0, 0)
        _G.UseTeamColor = true
        
        --------------------------------------------------------------------
        local Holder = Instance.new("Folder", game.CoreGui)
        Holder.Name = "ESP"
        
        local Box = Instance.new("BoxHandleAdornment")
        Box.Name = "nilBox"
        Box.Size = Vector3.new(1, 2, 1)
        Box.Color3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
        Box.Transparency = 0.7
        Box.ZIndex = 0
        Box.AlwaysOnTop = false
        Box.Visible = false
        
        local NameTag = Instance.new("BillboardGui")
        NameTag.Name = "nilNameTag"
        NameTag.Enabled = false
        NameTag.Size = UDim2.new(0, 200, 0, 50)
        NameTag.AlwaysOnTop = true
        NameTag.StudsOffset = Vector3.new(0, 1.8, 0)
        local Tag = Instance.new("TextLabel", NameTag)
        Tag.Name = "Tag"
        Tag.BackgroundTransparency = 1
        Tag.Position = UDim2.new(0, -50, 0, 0)
        Tag.Size = UDim2.new(0, 300, 0, 20)
        Tag.TextSize = 15
        Tag.TextColor3 = Color3.new(100 / 255, 100 / 255, 100 / 255)
        Tag.TextStrokeColor3 = Color3.new(0 / 255, 0 / 255, 0 / 255)
        Tag.TextStrokeTransparency = 0.4
        Tag.Text = "nil"
        Tag.Font = Enum.Font.SourceSansBold
        Tag.TextScaled = false
        
        local LoadCharacter = function(v)
            repeat wait() until v.Character ~= nil
            v.Character:WaitForChild("Humanoid")
            local vHolder = Holder:FindFirstChild(v.Name)
            vHolder:ClearAllChildren()
            local b = Box:Clone()
            b.Name = v.Name .. "Box"
            b.Adornee = v.Character
            b.Parent = vHolder
            local t = NameTag:Clone()
            t.Name = v.Name .. "NameTag"
            t.Enabled = true
            t.Parent = vHolder
            t.Adornee = v.Character:WaitForChild("Head", 5)
            if not t.Adornee then
                return UnloadCharacter(v)
            end
            t.Tag.Text = v.Name
            b.Color3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            t.Tag.TextColor3 = Color3.new(v.TeamColor.r, v.TeamColor.g, v.TeamColor.b)
            local Update
            local UpdateNameTag = function()
                if not pcall(function()
                        v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
                        local maxh = math.floor(v.Character.Humanoid.MaxHealth)
                        local h = math.floor(v.Character.Humanoid.Health)
                    end) then
                    Update:Disconnect()
                end
            end
            UpdateNameTag()
            Update = v.Character.Humanoid.Changed:Connect(UpdateNameTag)
        end
        
        local UnloadCharacter = function(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder and (vHolder:FindFirstChild(v.Name .. "Box") ~= nil or vHolder:FindFirstChild(v.Name .. "NameTag") ~= nil) then
                vHolder:ClearAllChildren()
            end
        end
        
        local LoadPlayer = function(v)
            local vHolder = Instance.new("Folder", Holder)
            vHolder.Name = v.Name
            v.CharacterAdded:Connect(function()
                pcall(LoadCharacter, v)
            end)
            v.CharacterRemoving:Connect(function()
                pcall(UnloadCharacter, v)
            end)
            v.Changed:Connect(function(prop)
                if prop == "TeamColor" then
                    UnloadCharacter(v)
                    wait()
                    LoadCharacter(v)
                end
            end)
            LoadCharacter(v)
        end
        
        local UnloadPlayer = function(v)
            UnloadCharacter(v)
            local vHolder = Holder:FindFirstChild(v.Name)
            if vHolder then
                vHolder:Destroy()
            end
        end
        
        for i,v in pairs(game:GetService("Players"):GetPlayers()) do
            spawn(function() pcall(LoadPlayer, v) end)
        end
        
        game:GetService("Players").PlayerAdded:Connect(function(v)
            pcall(LoadPlayer, v)
        end)
        
        game:GetService("Players").PlayerRemoving:Connect(function(v)
            pcall(UnloadPlayer, v)
        end)
        
        game:GetService("Players").LocalPlayer.NameDisplayDistance = 0
        
        if _G.Reantheajfdfjdgs then
            return
        end
        
        _G.Reantheajfdfjdgs = ":suifayhgvsdghfsfkajewfrhk321rk213kjrgkhj432rj34f67df"
        
        local players = game:GetService("Players")
        local plr = players.LocalPlayer
        
        function esp(target, color)
            if target.Character then
                if not target.Character:FindFirstChild("GetReal") then
                    local highlight = Instance.new("Highlight")
                    highlight.RobloxLocked = true
                    highlight.Name = "GetReal"
                    highlight.Adornee = target.Character
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.FillColor = color
                    highlight.Parent = target.Character
                else
                    target.Character.GetReal.FillColor = color
                end
            end
        end
        
        while task.wait() do
            for i, v in pairs(players:GetPlayers()) do
                if v ~= plr then
                    esp(v, _G.UseTeamColor and v.TeamColor.Color or ((plr.TeamColor == v.TeamColor) and _G.FriendColor or _G.EnemyColor))
                end
            end
        end
end)

SGV_Tab:Button("无跌落伤害",function()
    local gamemt = getrawmetatable(game)
	local oldNc = gamemt.__namecall
	setreadonly(gamemt, false)
	
	gamemt.__namecall = newcclosure(function(self, ...)
	if (getnamecallmethod() == 'FireServer' and self.Name == 'ChangeCharacter') then
		local args = {...}
		if (args[1] and args[1] == 'Damage') then
		return nil
		end
	end 
	return oldNc(self, ...)
	end)
end)

SGV_Tab:Button("快速拾取",function()
    local v15 = require(game:GetService("Workspace")[game.Players.LocalPlayer.Name].ContextActions.ContextMain);
	v15:New({
	RobPlayerLength = 0.1, 
	FixWallLength = 0.1, 
	CrackSafeLength = 0.1, 
	RobSafeLength = 0.1, 
	RobRegisterLength = 0.1, 
	PickCellLength = 0.1, 
	SkinAnimalLength = 0.1
	}, 200, 
	{ "Get out of my shop! Outlaws are not welcome here!", "Hey, scoundrel! Get out before I call the sheriff!", "You're an outlaw! We don't serve your type here!" }, 
	{ "This here's a bandit camp! Get out!", "Get lost, cowboy!", "Are you an outlaw? Didn't think so! Scram!" });
end)

SGV_Tab:Button("范围伤害",function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/rLGRxq0W')))()
end)

local SGV_Tab = UITab30:section("武器模式",true)

SGV_Tab:Button("无后座力",function()
	local mods = {
		FanFire = true, 
		camShakeResist = 0, 
		prepTime = 0, 
		equipTime = 0, 
		Spread = 0, 
		InstantFireAnimation = true
	}

	for _, gun in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
		for prop, value in pairs(mods) do
			if gun[prop] then
				gun[prop] = value
			end
		end
	end
end)

SGV_Tab:Button("一秒换弹",function()
    local mods = {
		FanFire = true, 
		prepTime = 0, 
		equipTime = 0, 
		camShakeResist = 0, 
		ReloadAnimationSpeed = 10, 
		ReloadSpeed = 0, 
		Spread = 0, 
		InstantFireAnimation = true
	}

	for _, gun in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
		for prop, value in pairs(mods) do
			if gun[prop] then
				gun[prop] = value
			end
		end
	end
end)

SGV_Tab:Button("子弹汇聚",function()
    local mods = {
		FanFire = true, 
		prepTime = 0, 
		equipTime = 0, 
		camShakeResist = 0, 
		ReloadAnimationSpeed = 10, 
		ReloadSpeed = 0, 
		Spread = 0, 
		HipFireAccuracy = 0, 
		ZoomAccuracy = 0, 
		InstantFireAnimation = true
	}

	for _, gun in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
		for prop, value in pairs(mods) do
			if gun[prop] then
				gun[prop] = value
			end
		end
	end
end)

SGV_Tab:Button("无限备弹 死亡后会卡无限子弹 需手动打几发子弹然后切换一下枪",function()
    local mods = {
		FanFire = true, 
		prepTime = 0, 
		equipTime = 0, 
		MaxShots = math.huge, 
		camShakeResist = 0, 
		ReloadAnimationSpeed = 10, 
		ReloadSpeed = 0, 
		Spread = 0, 
		InstantFireAnimation = true
	}

	for _, gun in pairs(require(game:GetService("ReplicatedStorage").GunScripts.GunStats)) do
		for prop, value in pairs(mods) do
			if gun[prop] then
				gun[prop] = value
			end
		end
	end
end)

local SGV_Tab = UITab30:section("传送模式",true)
SGV_Tab:Label("牛仔传送点")

SGV_Tab:Button("滚筒",function()
	local args = {[1] = "StoneCreek",[2] = false}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Button("岩石溪",function()
    local args = {[1] = "StoneCreek",[2] = false}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Button("灰色山脊",function()
    local args = {[1] = "Grayridge",[2] = false}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Button("大矿洞",function()
    local args = {[1] = "Quarry",[2] = false}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Label("不法之徒传送点")

SGV_Tab:Button("堡垒",function()
    local args = {[1] = "FortCassidy",[2] = true}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Button("阿瑟堡",function()
    local args = {[1] = "FortArthur",[2] = true}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

SGV_Tab:Button("红色岩石营地",function()
    local args = {[1] = "RedRocks",[2] = true}game:GetService("ReplicatedStorage"):WaitForChild("GeneralEvents"):WaitForChild("Spawn"):FireServer(unpack(args))
end)

local SGV_Tab = UITab30:section("购买模式",true)

SGV_Tab:Label("需要靠近NPC")

SGV_Tab:Toggle("自动出售","开关",false,function(v)
	getgenv().sell = v
	sell()
end)

SGV_Tab:Toggle("手枪子弹","开关",false,function(v)
	getgenv().buyammo1 = v
	buyammo1()
end)

SGV_Tab:Toggle("步枪子弹","开关",false,function(v)
	getgenv().buyammo2 = v
	buyammo2()
end)

SGV_Tab:Toggle("购买箭矢","开关",false,function(v)
	getgenv().buyammo3 = v
	buyammo3()
end)

SGV_Tab:Toggle("霰弹子弹","开关",false,function(v)
	getgenv().buyammo4 = v
	buyammo4()
end)

SGV_Tab:Toggle("狙击子弹","开关",false,function(v)
	getgenv().buyammo5 = v
	buyammo5()
end)

SGV_Tab:Toggle("小型炸药","开关",false,function(v)
	getgenv().buyammo6 = v
	buyammo6()
end)

SGV_Tab:Toggle("大型炸药","开关",false,function(v)
	getgenv().buyammo7 = v
	buyammo7()
end)

local SGV_Tab = UITab30:section("白天模式",true)

SGV_Tab:Toggle("白天","开关",false,function()
    if not _G.FullBrightExecuted then

        _G.FullBrightEnabled = false
    
        _G.NormalLightingSettings = {
            Brightness = game:GetService("Lighting").Brightness,
            ClockTime = game:GetService("Lighting").ClockTime,
            FogEnd = game:GetService("Lighting").FogEnd,
            GlobalShadows = game:GetService("Lighting").GlobalShadows,
            Ambient = game:GetService("Lighting").Ambient
        }
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
            if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
                _G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Brightness = 1
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
            if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
                _G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").ClockTime = 12
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
            if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
                _G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").FogEnd = 786543
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
            if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
                _G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").GlobalShadows = false
            end
        end)
    
        game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
            if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
                _G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
                if not _G.FullBrightEnabled then
                    repeat
                        wait()
                    until _G.FullBrightEnabled
                end
                game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
            end
        end)
    
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").ClockTime = 12
        game:GetService("Lighting").FogEnd = 786543
        game:GetService("Lighting").GlobalShadows = false
        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
    
        local LatestValue = true
        spawn(function()
            repeat
                wait()
            until _G.FullBrightEnabled
            while wait() do
                if _G.FullBrightEnabled ~= LatestValue then
                    if not _G.FullBrightEnabled then
                        game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
                        game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
                        game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
                        game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
                        game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
                    else
                        game:GetService("Lighting").Brightness = 1
                        game:GetService("Lighting").ClockTime = 12
                        game:GetService("Lighting").FogEnd = 786543
                        game:GetService("Lighting").GlobalShadows = false
                        game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
                    end
                    LatestValue = not LatestValue
                end
            end
        end)
    end
    
    _G.FullBrightExecuted = true
    _G.FullBrightEnabled = not _G.FullBrightEnabled
end)

local SGV_Tab = UITab30:section("全图击杀",true)

SGV_Tab:Button("手持近战",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CX5200/Sword-Guest/main/killQWQ'))()
end)

local UITab31 = win:Tab("『Doors』",'16060333448')

local about = UITab31:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab32 = win:Tab("『河北唐县』",'16060333448')

local about = UITab32:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab33 = win:Tab("『力量传奇』",'16060333448')

local about = UITab33:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab34 = win:Tab("『格蕾丝』",'16060333448')

local about = UITab34:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab35 = win:Tab("『伐木大亨2』",'16060333448')

local about = UITab35:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab36 = win:Tab("『俄亥俄州』",'16060333448')

local about = UITab36:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab37 = win:Tab("『狗熊岭』",'16060333448')

local about = UITab37:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab38 = win:Tab("『颜色或者死亡』",'16060333448')

local about = UITab38:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab39 = win:Tab("『火箭发射模拟器』",'16060333448')

local about = UITab39:section("提示",true)

about:Label("请进入服务器后再执行脚本")

local UITab40 = win:Tab("『造船寻宝』",'16060333448')

local about = UITab40:section("功能",true)

about:Button("复制别人的船",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/autobuild.txt"))()
end)

about:Button("刷钱",function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua'),true))()
end)

about:Button("快速宝箱",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/ng/refs/heads/main/%E5%86%B7.txt"))()
end)