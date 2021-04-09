--Created by iiOMQGZ on V3rmillion
--Key: "test"
--Type "/e cmds" and check console for commands


local Players = game:GetService("Players")
local ws = game:GetService("Workspace")
local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local adminKey =
{
"skfhasjgASgw623323eyhwy"; -- Maddie
"ASGHSYEwu738u4eUweu3483e4uhe3"; -- Sav
"SAGshaY732UHWE7348uwSEJu4u4848"; -- Josh
"FAGYWEu73743u8$#UEdu484rue44erf4848$Re4"; --Ry
"AlryseGsdye7$*4ruerie84Ie4495"; --Mar
"523kgfuiwty3ht63uweht";--Lior
"SGHSdhu848dr595";--Gory
"DFHDR484rUE%i8ij548995riu5i95";--Macy
"FAS&373weHWEu7484834er";--Tk
"TWE3734esew47#$eu4748$#r";--Tn
"SHEE$*84uER$4e84ei484893syw373723";--Dean
"SAGSUyeyedhHSjeu84uduei";--Bryce
"3523gsHAShs7yedhew384afa";--JohnNort
"GSget36ew89753ehgvksegjkeyo3893ethgjk363263";--Em
"53j2kjk23hgsew8tg7e89763hegheuity386yehdguithw963";--CRIM
"23636#@^Wsegwyw&$#Egy47u4eu4eur"; -- Reyna
"SDSEGREY&$&%RHERU*%$*%RTJVFR%I*%TR"; -- Devin
"SGSE&#$74ryhue$*$#ruhe48484ruje4"; -- Iris
"%#@ETGSEWY&$&#$ERSYH$&#$SEWR$U&$ERYH$U*$u84"; --linds
}
local Admins =
{

}
local masterKey =
{
"test"; -- Angel
"ThisIsCrazsKeyLololol215"; --Obviously mine
"NikeBolha"; -- Base
"Key" --Kim
}


local masterAdmin =
{

}

local whitelisted = " Welcome, To Supremacy."

local notwhitelisted = "Thy Has Been Judged, Unworthy."

local Prefix = "/e"

local loopk = false

local rloop = false

local vloop = false

local mloop = false

local killL = false

local dloop = false

local spoop = false

local door = false

local check = false

local looph = false

local RVampSpam = false

local loopallL = false

local taserLoop = false

local venom

function view(plr)
if plr.Character.Humanoid ~= nil then
ws.CurrentCamera.CameraSubject = plr.Character.Humanoid
else
ws.CurrentCamera.CameraSubject = plr.Character.Head
end
end

local function Freeze()
game.workspace.Events.ChangeVabil:FireServer("Freeze")
game.workspace.Events.Vampire.FireballIce:FireServer(Mouse.hit.p, Mouse.hit.p, Mouse.hit.p)
   game:GetService("Workspace").Events.Vampire:FireServer(false, "http://www.roblox.com/asset?id=394253848")
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

local function Flame()
game.workspace.Events.ChangeVabil:FireServer("Flame")
game.workspace.Events.Vampire.Fireball:FireServer(Mouse.hit.p, Mouse.hit.p, Mouse.hit.p)
   game:GetService("Workspace").Events.Vampire:FireServer(false, "http://www.roblox.com/asset?id=158853971")
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

local function ae()
   local m = game.Players.LocalPlayer:GetMouse()
   db = true
   m.KeyDown:connect(function(k)
       k = k:lower()
       if k == "f" then
           if db == true then
               game.Workspace.Events.Vampire.EscapeVampire:FireServer(true)
               db = false
               wait()
               db = true
           end
       end
   end)
end

local function invis()
   game.Workspace.Events.ChangeVabil:FireServer("Invisibility")
   game.Workspace.Events.Vampire.Invisibility:FireServer(true)
end

local function vis()
   game.Workspace.Events.ChangeVabil:FireServer("Invisibility")
   game.Workspace.Events.Vampire.Invisibility:FireServer(false)
   game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
   game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

local function lagall()
   loadstring(game:HttpGet(('https://pastebin.com/raw/x3xEEjJp'),true))()
end

local function aimbot()
loadstring(game:HttpGet(('https://pastebin.com/raw/Z2Q9DSD7'),true))()
end

function IsAdmin(Player)
for _,Admin in pairs (Admins) do
if type(Admin) == "number" and Admin == Player.UserId then
return true
end
end
return false
end


function isMasterAdmin(Player)
for _,MasterAdmin in pairs (masterAdmin) do
if type(MasterAdmin) == "number" and MasterAdmin == Player.UserId then
return true
end
end
return false
end

local function ClickTp()
local USP = game:GetService("UserInputService")
local TPButton = Enum.KeyCode.R
local mouse = LP:GetMouse()

local function ButtonKeyPressed()
return USP:IsKeyDown(TPButton)
end

local function Buttoninput(input, gameProcessedEvent)
if (ButtonKeyPressed() and not gameProcessedEvent) then
LP.Character.HumanoidRootPart.CFrame = mouse.hit
end
end
USP.InputBegan:Connect(Buttoninput)
warn("ClickTp Loaded")
end

local function Esp()
local USP = game:GetService("UserInputService")
local ESPButton = Enum.KeyCode.J

local function ButtonKeyPressed()
return USP:IsKeyDown(ESPButton)
end

local function Buttoninput(input, gameProcessedEvent)
if (ButtonKeyPressed() and not gameProcessedEvent) then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
local ESPBillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")

ESPBillboardGui.Parent = game:GetService("CoreGui")
ESPBillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPBillboardGui.Active = true
ESPBillboardGui.Adornee = game.Workspace[v.Name].Head
ESPBillboardGui.AlwaysOnTop = true
ESPBillboardGui.ExtentsOffset = Vector3.new(0, 2, 0)
ESPBillboardGui.LightInfluence = 1.000
ESPBillboardGui.Size = UDim2.new(0, 200, 0, 50)
ESPBillboardGui.ResetOnSpawn = false
ESPBillboardGui.Name  = "ESPBillboardGui"

TextLabel.Parent = ESPBillboardGui
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = v.Name
if v.Pstats.Curr.Mode.Value == 1 then
TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
elseif v.Pstats.Curr.Mode.Value == 2 then
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 255)
elseif v.Pstats.Curr.Mode.Value == 3 then
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
end
TextLabel.TextSize = 30.000
end
end
end
USP.InputBegan:Connect(Buttoninput)
warn("Esp Loaded")
end

local function ByeEsp()
local USP = game:GetService("UserInputService")
local FButton = Enum.KeyCode.F

local function ButtonKeyPressed()
return USP:IsKeyDown(FButton)
end

local function FKeyPressed(input, gameProcessedEvent)
if (ButtonKeyPressed() and not gameProcessedEvent) then
for i,v in pairs(game:GetService("CoreGui"):GetDescendants()) do
if v.Name == "ESPBillboardGui" then
v:Destroy()
end
end
end
end


USP.InputBegan:Connect(FKeyPressed)
warn("Press F To Remove ESP")
end


local function GuisLoaded()

warn("Important Guis Loaded")
-- Gui to Lua
-- Version: 3

-- Instances:

local VampSpam = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpamStatus = Instance.new("TextLabel")
local SpamOn = Instance.new("TextButton")
local SpamOff = Instance.new("TextButton")

--Properties:

VampSpam.Name = "VampSpam"
VampSpam.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
VampSpam.ResetOnSpawn = false

Frame.Parent = VampSpam
Frame.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame.Position = UDim2.new(0.332027435, 0, 0.155378491, 0)
Frame.Size = UDim2.new(0, 242, 0, 216)
Frame.Visible = false

SpamStatus.Name = "SpamStatus"
SpamStatus.Parent = Frame
SpamStatus.BackgroundColor3 = Color3.new(0.666667, 0, 0)
SpamStatus.BorderColor3 = Color3.new(0.666667, 0, 0)
SpamStatus.Position = UDim2.new(0.0839721262, 0, 0.0372768305, 0)
SpamStatus.Size = UDim2.new(0, 200, 0, 50)
SpamStatus.Font = Enum.Font.SourceSans
SpamStatus.Text = "Vampire Spamming: "
SpamStatus.TextColor3 = Color3.new(0, 0, 0)
SpamStatus.TextSize = 14

SpamOn.Name = "SpamOn"
SpamOn.Parent = Frame
SpamOn.BackgroundColor3 = Color3.new(0.666667, 0, 0)
SpamOn.BorderColor3 = Color3.new(0.666667, 0, 0)
SpamOn.Position = UDim2.new(0.0826446265, 0, 0.384259254, 0)
SpamOn.Size = UDim2.new(0, 200, 0, 50)
SpamOn.Font = Enum.Font.SourceSans
SpamOn.Text = "On"
SpamOn.TextColor3 = Color3.new(0, 0, 0)
SpamOn.TextSize = 14

SpamOff.Name = "SpamOff"
SpamOff.Parent = Frame
SpamOff.BackgroundColor3 = Color3.new(0.666667, 0, 0)
SpamOff.BorderColor3 = Color3.new(0.666667, 0, 0)
SpamOff.Position = UDim2.new(0.0839721337, 0, 0.699184716, 0)
SpamOff.Size = UDim2.new(0, 200, 0, 50)
SpamOff.Font = Enum.Font.SourceSans
SpamOff.Text = "Off"
SpamOff.TextColor3 = Color3.new(0, 0, 0)
SpamOff.TextSize = 14

-- Scripts:

local function WYOZ_fake_script() -- SpamOn.SpamOnScript
local script = Instance.new('LocalScript', SpamOn)

function grabon()
local TouchedPart = Players.LocalPlayer.Character.Humanoid
TouchedPart.Touched:Connect(function(touched)
local GrabbedPlayer = Players:GetPlayerFromCharacter(touched.Parent)
if (GrabbedPlayer and game:GetService("Players")[LP.Name].Pstats.Curr.Mode.Value == 3 and VampSpam == true) then
game.workspace.Events.Vampire.CatchPlayer:FireServer(GrabbedPlayer, true)
wait(1)
game.workspace.Events.Vampire.CatchPlayer:FireServer(GrabbedPlayer, false)
wait(1)
end
end)
end

script.Parent.MouseButton1Click:Connect(function()

VampSpam = true


script.Parent.Parent.SpamStatus.Text = "Vampire Spamming: On"


grabon()




end)
end
coroutine.wrap(WYOZ_fake_script)()
local function CENKS_fake_script() -- SpamOff.SpamOffScript
local script = Instance.new('LocalScript', SpamOff)

script.Parent.MouseButton1Click:Connect(function()

VampSpam = false

script.Parent.Parent.SpamStatus.Text = "Vampire Spamming: Off"

end)
end
coroutine.wrap(CENKS_fake_script)()
local function AEOE_fake_script() -- Frame.MoveGui
local script = Instance.new('LocalScript', Frame)

local UserInputService = game:GetService("UserInputService")

local gui = script.Parent

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(AEOE_fake_script)()
local function FAJGQXG_fake_script() -- Frame.VSpamCloseScript
local script = Instance.new('LocalScript', Frame)

local USP = game:GetService("UserInputService")

local  YKey = Enum.KeyCode.Y

local function YKeyPressed()
return USP:IsKeyDown(YKey)
end

local function Yinput(input, gameProcessedEvent)
if (YKeyPressed()and not gameProcessedEvent) then
if Frame.Visible == true then
Frame.Visible = false
elseif Frame.Visible == false then
Frame.Visible = true
end
end
end
USP.InputBegan:Connect(Yinput)
end
coroutine.wrap(FAJGQXG_fake_script)()



-- Gui to Lua
-- Version: 3

-- Instances:

local MusicGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local idhere = Instance.new("TextBox")
local Stop = Instance.new("TextButton")
local Play = Instance.new("TextButton")
local Open = Instance.new("TextButton")

--Properties:

MusicGui.Name = "MusicGui"
MusicGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MusicGui.ResetOnSpawn = false

Frame.Parent = MusicGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.060159415, 0, 0.153649062, 0)
Frame.Size = UDim2.new(0, 277, 0, 294)
Frame.Visible = false

idhere.Name = "idhere"
idhere.Parent = Frame
idhere.BackgroundColor3 = Color3.new(0.666667, 0, 1)
idhere.BorderColor3 = Color3.new(0, 0, 0)
idhere.Position = UDim2.new(0.135085434, 0, 0.251995802, 0)
idhere.Size = UDim2.new(0, 200, 0, 50)
idhere.Font = Enum.Font.SourceSans
idhere.PlaceholderColor3 = Color3.new(0, 0, 0)
idhere.PlaceholderText = "id here"
idhere.Text = ""
idhere.TextColor3 = Color3.new(0, 0, 0)
idhere.TextSize = 27

Stop.Name = "Stop"
Stop.Parent = Frame
Stop.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Stop.BorderColor3 = Color3.new(0, 0, 0)
Stop.Position = UDim2.new(0.135085434, 0, 0.784539104, 0)
Stop.Size = UDim2.new(0, 200, 0, 50)
Stop.Font = Enum.Font.SourceSans
Stop.Text = "Stop"
Stop.TextColor3 = Color3.new(0, 0, 0)
Stop.TextSize = 27

Play.Name = "Play"
Play.Parent = Frame
Play.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Play.BorderColor3 = Color3.new(0, 0, 0)
Play.Position = UDim2.new(0.135085434, 0, 0.576432645, 0)
Play.Size = UDim2.new(0, 200, 0, 50)
Play.Font = Enum.Font.SourceSans
Play.Text = "Play"
Play.TextColor3 = Color3.new(0, 0, 0)
Play.TextSize = 27

Open.Name = "Open"
Open.Parent = MusicGui
Open.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.Position = UDim2.new(-0.000818908215, 0, 0.92586863, 0)
Open.Size = UDim2.new(0, 39, 0, 36)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 14

-- Scripts:

local function IKOVKWR_fake_script() -- Stop.stopscript
local script = Instance.new('LocalScript', Stop)

script.Parent.MouseButton1Click:Connect(function()

game.workspace.Events.ChangeVabil:FireServer("Invisibility")
game.workspace.Events.Vampire.Invisibility:FireServer(false, 0, 0, 0)
game.workspace[LP.Name].Torso["Invis"]:Destroy()
wait(0.3)
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")


end)
end
coroutine.wrap(IKOVKWR_fake_script)()
local function PYBR_fake_script() -- Play.playscript
local script = Instance.new('LocalScript', Play)

local LP = game:GetService("Players").LocalPlayer
script.Parent.MouseButton1Click:Connect(function()
local songID = script.Parent.Parent.idhere.Text
game.workspace.Events.ChangeVabil:FireServer("Invisibility")
warn(songID)
local t = songID
   local ns = "http://www.roblox.com/asset/?id="
   local s = "http://www.roblox.com/asset/?id=".. t
   game.workspace.Events.Vampire.Invisibility:FireServer(true, ns, ns, ns)
   game.workspace.Events.Vampire.Invisibility:FireServer(true, s, s, s)
game.workspace.Events.Vampire.Invisibility:FireServer(false, ns, ns, ns)
wait(0.3)
game.workspace[LP.Name].Torso["Invis"]:Destroy()
wait(0.3)
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")


end)
end
coroutine.wrap(PYBR_fake_script)()
local function SVUTGU_fake_script() -- Frame.DragScript
local script = Instance.new('LocalScript', Frame)

local UserInputService = game:GetService("UserInputService")

local gui = script.Parent

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(SVUTGU_fake_script)()
local function KXLQLET_fake_script() -- Frame.closescript
local script = Instance.new('LocalScript', Frame)

local USP = game:GetService("UserInputService")

local  MKey = Enum.KeyCode.M

local function MKeyPressed()
return USP:IsKeyDown(MKey)
end

local function Minput(input, gameProcessedEvent)
if (MKeyPressed() and not gameProcessedEvent) then
if Frame.Visible == true then
Frame.Visible = false
elseif Frame.Visible == false then
Frame.Visible = true
end
end
end
USP.InputBegan:Connect(Minput)
end
coroutine.wrap(KXLQLET_fake_script)()


-- Gui to Lua
-- Version: 3

-- Instances:

local LoopHealGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local On = Instance.new("TextButton")
local Off = Instance.new("TextButton")
local Loophealnoti = Instance.new("TextLabel")

--Properties:

LoopHealGui.Name = "LoopHealGui"
LoopHealGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LoopHealGui.ResetOnSpawn = false

Frame.Parent = LoopHealGui
Frame.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame.Position = UDim2.new(0.568494856, 0, 0.153386459, 0)
Frame.Size = UDim2.new(0, 345, 0, 256)
Frame.Visible = false

On.Name = "On"
On.Parent = Frame
On.BackgroundColor3 = Color3.new(0.666667, 0, 0)
On.BorderColor3 = Color3.new(0.666667, 0, 0)
On.Position = UDim2.new(0.207293689, 0, 0.39848417, 0)
On.Size = UDim2.new(0, 200, 0, 50)
On.Font = Enum.Font.SourceSans
On.Text = "On"
On.TextColor3 = Color3.new(0, 0, 0)
On.TextSize = 14

Off.Name = "Off"
Off.Parent = Frame
Off.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Off.BorderColor3 = Color3.new(0.666667, 0, 0)
Off.Position = UDim2.new(0.207293689, 0, 0.692651272, 0)
Off.Size = UDim2.new(0, 200, 0, 50)
Off.Font = Enum.Font.SourceSans
Off.Text = "Off"
Off.TextColor3 = Color3.new(0, 0, 0)
Off.TextSize = 14

Loophealnoti.Name = "Loopheal noti"
Loophealnoti.Parent = Frame
Loophealnoti.BackgroundColor3 = Color3.new(0, 0, 1)
Loophealnoti.BorderColor3 = Color3.new(0.666667, 0, 0)
Loophealnoti.Position = UDim2.new(-0.000154808164, 0, -0.00161851943, 0)
Loophealnoti.Size = UDim2.new(0, 345, 0, 59)
Loophealnoti.Font = Enum.Font.SourceSans
Loophealnoti.Text = "Loop Heal: Off"
Loophealnoti.TextColor3 = Color3.new(0, 0, 0)
Loophealnoti.TextSize = 14

-- Scripts:

local function TXRWZ_fake_script() -- On.onscript
local script = Instance.new('LocalScript', On)

script.Parent.MouseButton1Click:Connect(function()
game.workspace.Events.ChangeSabil:FireServer("Strength")
looph = true
script.Parent.Parent["Loopheal noti"].Text = "Loop Heal: On"
warn("Loop Started")
if (game:GetService("Players")[LP.Name].Pstats.Curr.Mode.Value == 0 or game:GetService("Players")[LP.Name].Pstats.Curr.Mode.Value == 1 or game:GetService("Players")[LP.Name].Pstats.Curr.Mode.Value == 2) then
while looph do
game.workspace.Events.Surv.Strength:FireServer()
wait()
for i,v in pairs(game:GetService("Workspace")[LP.Name].Humanoid:GetChildren())do
if v.Name == "GivenStrength" then
game:GetService("Workspace")[LP.Name].Humanoid.GivenStrength:Destroy()
end
end
end
elseif game:GetService("Players")[LP.Name].Pstats.Curr.Mode.Value == 3 then
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
while looph do
game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
wait()
for i,v in pairs(game:GetService("Workspace")[LP.Name].Humanoid:GetChildren())do
if v.Name == "SetVAbilDiamondSkin" then
game:GetService("Workspace")[LP.Name].Humanoid.SetVAbilDiamondskin:Destroy()
warn("Deleted Value For Loop")
end
end
end
end
end)
end
coroutine.wrap(TXRWZ_fake_script)()
local function APJYV_fake_script() -- Off.offscript
local script = Instance.new('LocalScript', Off)

script.Parent.MouseButton1Click:Connect(function()

script.Parent.Parent["Loopheal noti"].Text = "Loop Heal: Off"
looph = false


end)
end
coroutine.wrap(APJYV_fake_script)()
local function FXAOPT_fake_script() -- Frame.LoophealMove
local script = Instance.new('LocalScript', Frame)

local UserInputService = game:GetService("UserInputService")

local gui =  script.Parent

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(FXAOPT_fake_script)()
local function NWBMJRM_fake_script() -- Frame.MiniScript
local script = Instance.new('LocalScript', Frame)

local USP = game:GetService("UserInputService")

local  LKey = Enum.KeyCode.L

local function LKeyPressed()
return USP:IsKeyDown(LKey)
end

local function Linput(input, gameProcessedEvent)
if (LKeyPressed()and not gameProcessedEvent) then
if Frame.Visible == true then
Frame.Visible = false
elseif Frame.Visible == false then
Frame.Visible = true
end
end
end
USP.InputBegan:Connect(Linput)
end

coroutine.wrap(NWBMJRM_fake_script)()


-- Gui to Lua
-- Version: 3

-- Instances:

local changename = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local ChangeNickName = Instance.new("TextButton")

--Properties:

changename.Name = "changename"
changename.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
changename.ResetOnSpawn = false

Frame.Parent = changename
Frame.BackgroundColor3 = Color3.new(0.545098, 0, 0.407843)
Frame.Position = UDim2.new(0.274161726, 0, 0.264940232, 0)
Frame.Size = UDim2.new(0, 407, 0, 211)
Frame.Visible = false

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BorderColor3 = Color3.new(0.545098, 0, 0.407843)
TextBox.Position = UDim2.new(0.0137194889, 0, 0.254781872, 0)
TextBox.Size = UDim2.new(0, 394, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.new(1, 0, 0)
TextBox.PlaceholderText = "New nickname here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 0, 0)
TextBox.TextSize = 14

ChangeNickName.Name = "ChangeNickName"
ChangeNickName.Parent = Frame
ChangeNickName.BackgroundColor3 = Color3.new(0.545098, 0, 0.407843)
ChangeNickName.BorderColor3 = Color3.new(0.545098, 0, 0.407843)
ChangeNickName.Position = UDim2.new(0.253071249, 0, 0.630331755, 0)
ChangeNickName.Size = UDim2.new(0, 200, 0, 50)
ChangeNickName.Font = Enum.Font.SourceSans
ChangeNickName.Text = "Change"
ChangeNickName.TextColor3 = Color3.new(0, 0, 0)
ChangeNickName.TextSize = 14

-- Scripts:

local function RSRRV_fake_script() -- ChangeNickName.LocalScript
local script = Instance.new('LocalScript', ChangeNickName)

script.Parent.MouseButton1Click:Connect(function()
local newnickname = script.Parent.Parent.TextBox.Text

game.workspace.Events.FilterString:InvokeServer(newnickname)
game.workspace.Events.ChangeCName:FireServer(newnickname)



end)


end
coroutine.wrap(RSRRV_fake_script)()
local function WZMMO_fake_script() -- Frame. NicknameClose
local script = Instance.new('LocalScript', Frame)

local USP = game:GetService("UserInputService")

local  NKey = Enum.KeyCode.N

local function NKeyPressed()
return USP:IsKeyDown(NKey)
end

local function Ninput(input, gameProcessedEvent)
if (NKeyPressed() and not gameProcessedEvent) then
if script.Parent.Visible == false then
Frame.Visible = true
elseif script.Parent.Visible == true then
Frame.Visible = false
end
end
end
USP.InputBegan:Connect(Ninput)
end

coroutine.wrap(WZMMO_fake_script)()
local function IKADE_fake_script() -- changename.LocalScript
local script = Instance.new('LocalScript', changename)

local UserInputService = game:GetService("UserInputService")

local gui = script.Parent.Frame

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(IKADE_fake_script)()

end


local function Intro()

local Intro2 = Instance.new("ScreenGui")
local Intro2Frame = Instance.new("Frame")
local Madeby = Instance.new("TextLabel")

--Properties:

Intro2.Name = "Intro2"
Intro2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Intro2Frame.Name = "Intro2Frame"
Intro2Frame.Parent = Intro2
Intro2Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Intro2Frame.Position = UDim2.new(0.246472239, 0, 0.182163179, 0)
Intro2Frame.Size = UDim2.new(0, 100, 0, 100)

Madeby.Name = "Madeby"
Madeby.Parent = Intro2Frame
Madeby.Active = true
Madeby.BackgroundColor3 = Color3.new(1, 0, 0)
Madeby.Position = UDim2.new(-0.00151672959, 0, -0.00469389558, 0)
Madeby.Size = UDim2.new(0, 579, 0, 245)
Madeby.Font = Enum.Font.SourceSans
Madeby.Text = "Script created by Crazous6x#6398"
Madeby.TextColor3 = Color3.new(0, 0, 0)
Madeby.TextSize = 52

wait(5)

Intro2:Destroy()

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Version = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.666667, 0, 0)
Frame.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame.Position = UDim2.new(0.10630291, 0, 0.119544595, 0)
Frame.Size = UDim2.new(0, 837, 0, 401)
Frame.Draggable = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_2.Position = UDim2.new(-0.000330448151, 0, 0.157878548, 0)
Frame_2.Size = UDim2.new(0, 837, 0, 100)

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_3.Position = UDim2.new(0, 0, 0.593516231, 0)
Frame_3.Size = UDim2.new(0, 837, 0, 100)

Version.Name = "Version"
Version.Parent = Frame
Version.BackgroundColor3 = Color3.new(1, 1, 1)
Version.BackgroundTransparency = 0.8
Version.Position = UDim2.new(0.738294542, 0, 0.841700554, 0)
Version.Size = UDim2.new(0, 219, 0, 63)
Version.Font = Enum.Font.SourceSans
Version.Text = "Version: 2.1"
Version.TextColor3 = Color3.new(0, 0, 0)
Version.TextSize = 30


if not (IsAdmin(LP) or isMasterAdmin(LP)) then
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(255, 85, 0)
TextLabel.Position = UDim2.new(0, 0, 0.406483799, 0)
TextLabel.Size = UDim2.new(0, 837, 0, 75)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = notwhitelisted
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 37
wait(5)
ScreenGui:Destroy()
local LP = game.Players.LocalPlayer
LP:Kick("Just Stop new user.")
elseif (IsAdmin(LP) or isMasterAdmin(LP)) then
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(255, 85, 0)
TextLabel.Position = UDim2.new(0, 0, 0.406483799, 0)
TextLabel.Size = UDim2.new(0, 837, 0, 75)
TextLabel.Font = Enum.Font.SciFi
if IsAdmin(LP)then
TextLabel.Text = whitelisted
elseif isMasterAdmin(LP) then
TextLabel.Text = "Break this game"
end
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 37
end


wait(5)



ScreenGui:Destroy()
GuisLoaded()
ClickTp()
Esp()
ByeEsp()

end

local function whitelistGui()

-- Gui to Lua
-- Version: 3

-- Instances:

local keyEnterBox = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local keyBox = Instance.new("TextBox")
local SupWhitelistGui = Instance.new("TextLabel")
local KeyButtonThingy = Instance.new("TextButton")

--Properties:

keyEnterBox.Name = "keyEnterBox"
keyEnterBox.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = keyEnterBox
Frame.BackgroundColor3 = Color3.new(0.333333, 0, 0.498039)
Frame.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
Frame.Position = UDim2.new(0.161951214, 0, 0.111553788, 0)
Frame.Size = UDim2.new(0, 656, 0, 351)

keyBox.Name = "keyBox"
keyBox.Parent = Frame
keyBox.BackgroundColor3 = Color3.new(0.333333, 0, 0.498039)
keyBox.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
keyBox.Position = UDim2.new(0.121524394, 0, 0.460159332, 0)
keyBox.Size = UDim2.new(0, 493, 0, 110)
keyBox.Font = Enum.Font.SourceSans
keyBox.PlaceholderColor3 = Color3.new(0, 0, 0)
keyBox.PlaceholderText = "[Insert Key Here]"
keyBox.Text = ""
keyBox.TextColor3 = Color3.new(0, 0, 0)
keyBox.TextSize = 14

SupWhitelistGui.Name = "SupWhitelistGui"
SupWhitelistGui.Parent = Frame
SupWhitelistGui.BackgroundColor3 = Color3.new(0.333333, 0, 1)
SupWhitelistGui.BorderColor3 = Color3.new(0.333333, 0, 1)
SupWhitelistGui.Position = UDim2.new(0, 0, 0.000442678778, 0)
SupWhitelistGui.Size = UDim2.new(0, 655, 0, 162)
SupWhitelistGui.Font = Enum.Font.SourceSans
SupWhitelistGui.Text = "Key Gui for Supremacy"
SupWhitelistGui.TextColor3 = Color3.new(0, 0, 0)
SupWhitelistGui.TextSize = 64

KeyButtonThingy.Name = "KeyButtonThingy"
KeyButtonThingy.Parent = Frame
KeyButtonThingy.BackgroundColor3 = Color3.new(0.333333, 0, 0.498039)
KeyButtonThingy.BorderColor3 = Color3.new(0.333333, 0, 0.498039)
KeyButtonThingy.Position = UDim2.new(0.343780488, 0, 0.814599097, 0)
KeyButtonThingy.Size = UDim2.new(0, 200, 0, 50)
KeyButtonThingy.Font = Enum.Font.SourceSans
KeyButtonThingy.Text = "Enter"
KeyButtonThingy.TextColor3 = Color3.new(0, 0, 0)
KeyButtonThingy.TextSize = 30


-- Scripts:

local function JSXQ_fake_script() -- KeyButtonThingy.whitelistscript
local script = Instance.new('LocalScript', KeyButtonThingy)

script.Parent.MouseButton1Click:Connect(function()

if keyBox.Text then
warn(keyBox.Text)
for z,x in pairs(masterKey)do
if keyBox.Text == x then
table.insert(masterAdmin,LP.UserId)
end
end
for i,v in pairs(adminKey) do
if keyBox.Text == v then
table.insert(Admins,LP.UserId)
end
end

keyEnterBox:Destroy()
wait(0.3)
Intro()
else
warn("nope")
end




end)
end
coroutine.wrap(JSXQ_fake_script)()




end




local function GetPlayers(arg, plr)
   local t = {}
if arg == "me" then
table.insert(t,LP)
       return {LP}
elseif arg == "all" then
       return Players:GetPlayers()
   elseif arg == "others" then
       for i,v in pairs(Players:GetPlayers()) do
           if v.Name ~= LP.Name then
               table.insert(Players,v)
           end
       end
return t
else
       for i,v in pairs(Players:GetPlayers()) do
           if v.Name:lower():sub(1, #arg) == arg:lower() then
               table.insert(t, v)
           end
       end
return t
   end
end



local Commands = {}

local function cmds()
for i,v in pairs(Commands) do
warn("----------------")
warn(i)
end
end



--Master Admin Only Commands--

Commands.timestop = function(speaker)
while true do
wait()
for i,v in pairs(Players:GetPlayers()) do
if v.Name == Players.LocalPlayer.Name then else
game.workspace.Events.ChangeVabil:FireServer("Freeze")
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
game.workspace.Events.Vampire.FireballIce:FireServer(v.Character.HumanoidRootPart.Position, v.Character.HumanoidRootPart.Position)
    game:GetService("Workspace").Events.Vampire:FireServer(true, "http://www.roblox.com/asset?id=1571597070")
end
end
end
end


Commands.call = function(speaker)
if isMasterAdmin(speaker) then
for i,v in pairs(Players:GetPlayers()) do
if v.Name.callString then
print(v.Name .. " is using Supremacy!")
end
end
end
end


-- Regular Admin Commands--


Commands.dia = function()

game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()

end


Commands.rainbow = function(speaker, args)
if args[1] == "on" then
local a = {0.7, 0, 0.498039}
local b = {0.498039, 0.2, 0.7}
local c = {0, 0.7, 0.498039}
rloop = true
repeat
local av = math.random(1,#a)
local bv = math.random(1,#b)
local cv = math.random(1,#c)
local pa = a[av]
local pb = b[bv]
local pc = c[cv]
game.workspace.Events.ChangeFlashLight:FireServer(true, Color3.new(tonumber(pa), tonumber(pb), tonumber(pc)))
wait(0.3)
until rloop == false
elseif args[1] == "off" then
rloop = false
end
end

Commands.to = function(speaker,args)
if args[1] then
for i,v in pairs(GetPlayers(args[1])) do
LP.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
end
end
end

Commands.view = function(speaker,args)
if args[1] then
for i,v in pairs(GetPlayers(args[1])) do
view(v)
end
end
end

Commands.unview = function()
view(LP)
end

Commands.loop = function(speaker, args)
if args[1] then
loopk = true
for i,v in pairs (GetPlayers(args[1])) do
game.workspace.Events.ChangeVabil:FireServer("Venom")
repeat
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
wait()
until loopk == false
end
end
end

Commands.ae = function(speaker, args)
   ae()
end

Commands.loopall = function(speaker, args)
if args[1] == "on" then
loopallL = true
repeat
game.workspace.Events.ChangeVabil:FireServer("Venom")
for i,v in pairs (Players:GetPlayers()) do
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
wait()
end
until loopallL == false
elseif args[1] == "off" then
loopallL = false
end
end


Commands.morph = function (speaker, args)
local amt = args[1]
local i = 1
   repeat
       game.Workspace.Events.ChangeSabil:FireServer("Morphine")
game.workspace.Events.Surv.Morphine:FireServer()
warn(i)
i = i + 1
wait()
until i > tonumber(amt)
end

Commands.supersonic = function(speaker)
   game.Workspace.Events.ChangeVabil:FireServer("Supersonic")
   game.Workspace.Events.Vampire.Supersonic:FireServer(true)
   game.Workspace.Events.Vampire.Supersonic:FireServer(false)
   game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
   game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

Commands.aimbot = function(speaker)
aimbot()
end

Commands.explode = function(speaker)
   game.Workspace.Events.ChangeVabil:FireServer("Volatile")
   game.Workspace.Events.Vampire.Explode:FireServer()
   game.Workspace.Events.Vampire.Explode:FireServer()
   game.Workspace.Events.Vampire.Explode:FireServer()
   game.Workspace.Events.Vampire.Explode:FireServer()
   game.Workspace.Events.Vampire.Explode:FireServer()
   game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
wait(0.1)
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
game.Workspace.Events.Vampire.Explode:FireServer()
wait(0.5)
   game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
   game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

Commands.drop = function ( speaker )
for _,v in pairs(game.Players[speaker.Name].Backpack:GetChildren()) do
game.Players[speaker.Name].Character.Humanoid:EquipTool(v)
v.Parent = workspace
wait()
end
end

Commands.invis = function (speaker)
   invis()
end

Commands.lagall = function (speaker)
   lagall()
end

Commands.vis = function (speaker)
   vis()
end

Commands.door = function(speaker,args)
door = true
if args[1] == "loop" then
repeat
for i,v in pairs(workspace.CurrentMap.Map:GetChildren()) do
if v.Name == "Door" then
v.DorSC.Conec:FireServer()
end
end
wait()
until door == false
else
for i,v in pairs(workspace.CurrentMap.Map:GetChildren()) do
if v.Name == "Door" then
v.DorSC.Conec:FireServer()
end
end
end
end

--[[Commands.light = function()
spoop = true
repeat
for i,v in pairs(workspace.CurrentMap.Map:GetChildren()) do
if v.Name == "Lightsystem" then
v.Switch.LiteSC.Conec:FireServer()
end
end
wait()
until spoop == false
end]]

Commands.freeze = function (speaker)

local tool = Instance.new("Tool")
tool.Name = "Freeze Tool"
tool.Parent = game:GetService("Players")[LP.Name].Backpack
tool.RequiresHandle = false
tool.Activated:Connect(Freeze)

end

Commands.flame = function (speaker)

local tool = Instance.new("Tool")
tool.Name = "Flame Tool"
tool.Parent = game:GetService("Players")[LP.Name].Backpack
tool.RequiresHandle = false
tool.Activated:Connect(Flame)

end

Commands.prefix = function (speaker, args)
Prefix = args[1]
end



Commands.reload = function(speaker ,args)
if args[1] then
local num = args[1]
local gun = game.workspace[speaker.Name].Gun
gun.ReloadTime.Value = num
end

end

Commands.setvenom = function(speaker, args)
venom = args[1]

end

Commands.taser = function(speaker, args)
local i = 1
local tamt = args[1]
repeat
   i = i + 1
   game.Workspace.Events.ChangeSabil:FireServer("Taser")
game:GetService("Workspace").Events.Surv.Taser:FireServer()
wait(0.3)
for i,v in pairs(game:GetService("Workspace")[LP.Name].Humanoid:GetChildren()) do
if v.Name == "GivenTaser" then
game:GetService("Workspace")[LP.Name].Humanoid.GivenTaser:Destroy()
end
end
until i > tonumber(tamt)
end

Commands.knife = function(speaker, args)
local kamt = args[1]
local i = 1
   repeat
       game.Workspace.Events.ChangeSabil:FireServer("Pocket Knife")
game:GetService("Workspace").Events.Surv["Pocket Knife"]:FireServer()
wait(0.3)
for i,v in pairs(game:GetService("Workspace")[speaker.Name].Humanoid:GetChildren()) do
if v.Name == "GivenPocketKnife" then
game:GetService("Workspace")[speaker.Name].Humanoid.GivenPocketKnife:Destroy()
end
end
i = i + 1
until i > tonumber(kamt)
end

Commands.inftaser = function(speaker, args)
if args[1] == "on" then
taserLoop = true
while taserLoop do
wait(0.1)
           if game.Players.LocalPlayer.Character:FindFirstChild("Taser") then
              game.Players.LocalPlayer.Character.Taser.Taser.Disabled = true
  game.Players.LocalPlayer.Character.Taser.Taser.Disabled = false
           end
    end
elseif args[1] == "off" then
taserLoop = false
end
end

Commands.undoor = function()
door = false
end

--[[Commands.unlight = function()
spoop = false
end]]


Commands.unloop = function()
loopk = false
wait()
game.Workspace.Events.ChangeVabil:FireServer("Diamondskin")
game:GetService("Workspace").Events.Vampire["Abil_Diamondskin"]:FireServer()
end

Commands.unview = function()
view(LP)
end


Commands.venom = function (speaker, args)
local i = 1
game.workspace.Events.ChangeVabil:FireServer("Venom")
for x,v in pairs(GetPlayers(args[1])) do
repeat
game.workspace.Events.Vampire.Venom:FireServer(v.Name)
i = i + 1
until i > tonumber(venom)
end
end

Commands.cmds = function ()
cmds()
end

local function ParseMessage(Player,Message)
Message = string.lower(Message)
local PrefixMatch = string.match(Message,"^"..Prefix)

if PrefixMatch then
Message = string.gsub(Message,PrefixMatch,"",1)
--Created by iiOMQGZ on V3rmillion

local Arguments = {}

for Argument in string.gmatch(Message,"[^%s]+") do
table.insert(Arguments,Argument)
end

local CommandName = Arguments[1]
table.remove(Arguments,1)
local CommandFunc = Commands[CommandName]

if CommandFunc ~= nil then
CommandFunc(Player,Arguments)
end
end
end

whitelistGui()


LP.Chatted:Connect(function(Message,Recipient)

if not Recipient and IsAdmin(LP)or isMasterAdmin(LP) then
ParseMessage(LP,Message)
end

end)
