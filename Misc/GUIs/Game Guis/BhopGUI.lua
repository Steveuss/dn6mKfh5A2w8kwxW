-- Farewell infortality 
-- Revamp by ImFrostic, Version 2.81 

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local bhopgui = Instance.new("Frame")
local creds = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local ScrollingFrame = Instance.new("ScrollingFrame")
local strafe = Instance.new("TextButton")
local neg = Instance.new("TextButton")
local tp = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

bhopgui.Name = "bhopgui"
bhopgui.Parent = ScreenGui
bhopgui.Active = true
bhopgui.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
bhopgui.BackgroundTransparency = 0.10999999940395
bhopgui.BorderSizePixel = 4
bhopgui.Position = UDim2.new(0.381401598, 0, 0.292367399, 0)
bhopgui.Size = UDim2.new(0, 157, 0, 181)
bhopgui.Draggable = true

creds.Name = "creds"
creds.Parent = bhopgui
creds.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
creds.BackgroundTransparency = 0.10999999940395
creds.BorderSizePixel = 4
creds.Position = UDim2.new(1.03821659, 0, 0.325966865, 0)
creds.Size = UDim2.new(0, 146, 0, 122)

TextBox.Parent = creds
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.Size = UDim2.new(0, 146, 0, 122)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = "scrip creds to;\nNoob_Pieplup on roblox for \nthe tp and negative script\n\nlolyiskyle1 on v3rm for \nthe autostrafe script"
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextSize = 14

ScrollingFrame.Parent = bhopgui
ScrollingFrame.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
ScrollingFrame.BorderSizePixel = 3
ScrollingFrame.Position = UDim2.new(0.0445859879, 0, 0.0828729272, 0)
ScrollingFrame.Size = UDim2.new(0, 139, 0, 158)

strafe.Name = "strafe"
strafe.Parent = ScrollingFrame
strafe.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
strafe.BackgroundTransparency = 0.25
strafe.BorderSizePixel = 2
strafe.Position = UDim2.new(0.075539574, 0, 0.0379746817, 0)
strafe.Size = UDim2.new(0, 104, 0, 37)
strafe.Font = Enum.Font.SourceSans
strafe.Text = "Autostrafe"
strafe.TextColor3 = Color3.new(0, 0, 0)
strafe.TextSize = 20

neg.Name = "neg"
neg.Parent = ScrollingFrame
neg.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
neg.BackgroundTransparency = 0.25
neg.BorderSizePixel = 2
neg.Position = UDim2.new(0.0755395815, 0, 0.227848098, 0)
neg.Size = UDim2.new(0, 104, 0, 37)
neg.Font = Enum.Font.SourceSans
neg.Text = "Negative Time"
neg.TextColor3 = Color3.new(0, 0, 0)
neg.TextSize = 20

tp.Name = "tp"
tp.Parent = ScrollingFrame
tp.BackgroundColor3 = Color3.new(0.47451, 0.47451, 0.47451)
tp.BackgroundTransparency = 0.25
tp.BorderSizePixel = 2
tp.Position = UDim2.new(0.0755395889, 0, 0.41772151, 0)
tp.Size = UDim2.new(0, 104, 0, 37)
tp.Font = Enum.Font.SourceSans
tp.Text = "Tp to end"
tp.TextColor3 = Color3.new(0, 0, 0)
tp.TextSize = 20

-- Scripts 

neg.MouseButton1Down:connect(function()
local notification3 = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
notification3.SoundId = "rbxassetid://336653405"
notification3:Play()
game.StarterGui:SetCore('SendNotification', {Title='Negative Time'; Text='Press E to use with keys, or click the button again.)', Duration=5;});
wait(1)
wait(1.5)
notification3:Destroy()
--Made by Noob_Pieplup on Roblox, press E to finish map!

local func

for _,a in pairs (debug.getregistry()) do
if type(a)=='function' then
if debug.getupvalues(a).RemoteCall and type(debug.getupvalues(a).RemoteCall)=='function' then
func = debug.getupvalues(a).RemoteCall
break
end
end
end

game:GetService("UserInputService").InputBegan:connect(function(i,g)
if i.KeyCode == Enum.KeyCode.E and not g then
func("LeaveZone", workspace:FindFirstChild("MapFinish",true), tick())
   func("EnterZone", workspace:FindFirstChild("MapStart",true), tick())
   func("LeaveZone", workspace:FindFirstChild("MapStart",true), tick())
func("EnterZone",workspace:FindFirstChild("MapFinish",true),tick()-2147483.647)
end
end)
end)

tp.MouseButton1Down:connect(function()
local notification3 = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
notification3.SoundId = "rbxassetid://336653405"
notification3:Play()
game.StarterGui:SetCore('SendNotification', {Title='Teleported to end'; Text='Press R to do it with your keys, or press the button again', Duration=5;});
wait(1)
wait(1.5)
notification3:Destroy()

local positionfunc
for _,a in pairs (getgc()) do
if type(a)=='function' then
if debug.getupvalues(a).Position then
positionfunc = a
break
end
end
end

local function findfinish()
for a,b in pairs(workspace.Model:FindFirstChildOfClass("Model"):GetDescendants()) do
if b.Name == 'MapFinish' and b:IsA("Part") then
return b
end
end
end

game:GetService("UserInputService").InputBegan:connect(function(i,g)
if i.KeyCode == Enum.KeyCode.R and not g then
debug.setupvalue(positionfunc,"Position",findfinish().Position)
end
end)
end)

strafe.MouseButton1Down:connect(function()
local notification3 = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
notification3.SoundId = "rbxassetid://336653405"
notification3:Play()
game.StarterGui:SetCore('SendNotification', {Title='Autostrafe'; Text='Autostrafe has been turned on, hold down left shift!)', Duration=5;});
wait(1)
wait(1.5)
notification3:Destroy()

local Players = game:GetService"Players"
local LocalPlayer = Players.LocalPlayer
local UIS = game:GetService"UserInputService"
local Mouse = LocalPlayer:GetMouse()
local Toggle = false
local Keys = {}
local Key = Enum.KeyCode.LeftShift

local function GetKeyState(key)
   if (Keys[key] == nil) then Keys[key] = false end
   return Keys[key]
end

local function PressKey(key)
   if (not GetKeyState(key)) then
       keypress(key)
       Keys[key] = true
   end
end

local function ReleaseKey(key)
   if (GetKeyState(key)) then
       keyrelease(key)
       Keys[key] = false
   end
end

local function ReleaseKeys()
   for i, v in next, Keys do
       if (v == true) then
           keyrelease(i)
           Keys[i] = false
       end
   end
end

local Move = UIS.InputChanged:connect(function(input)
   if (Toggle) then
       local delta = input.Delta
       if (deltaX == 0) then
           ReleaseKeys()
       elseif (delta.X < 0) then
           ReleaseKey(0x44) -- D
           PressKey(0x41) -- A
       elseif (delta.X > 0) then
           ReleaseKey(0x41) -- A
           PressKey(0x44) -- D
       end
   else
       ReleaseKeys()
   end
end)

local KeyDown = UIS.InputBegan:connect(function(input)
   if (input.KeyCode == Key) then
       PressKey(0x20)
       print("[Strafehack] On")
       Toggle = true
   end
end)

local KeyUp = UIS.InputEnded:connect(function(input)
   if (input.KeyCode == Key) then
       ReleaseKey(0x20)
       print("[Strafehack] Off")
       Toggle = false
   end
end)

_G.AC_DC = function() KeyUp:disconnect() KeyDown:disconnect() Move:disconnect() end

print("[Strafehack] Initiated")
end)