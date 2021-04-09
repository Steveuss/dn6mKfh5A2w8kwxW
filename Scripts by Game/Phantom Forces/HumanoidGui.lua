--Created by tntmyles on V3rmillion

-- Objects

local PFGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Player = Instance.new("TextBox")
local Gravity = Instance.new("TextButton")
local ESP = Instance.new("TextButton")
local Walk = Instance.new("TextButton")
local Jump = Instance.new("TextButton")

-- Properties

PFGUI.Name = "PFGUI"
PFGUI.Parent = game.Players.LocalPlayer.PlayerGui
PFGUI.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = PFGUI
Main.Active = true
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.5
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 2
Main.Draggable = true
Main.Position = UDim2.new(0, 0, 0.349999994, 0)
Main.Selectable = true
Main.Size = UDim2.new(0, 215, 0, 140)

Player.Name = "Player"
Player.Parent = Main
Player.BackgroundColor3 = Color3.new(0, 0, 0)
Player.BackgroundTransparency = 0.69999998807907
Player.BorderColor3 = Color3.new(1, 1, 1)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0, 5, 0, 110)
Player.Size = UDim2.new(0, 205, 0, 25)
Player.Font = Enum.Font.SourceSansBold
Player.FontSize = Enum.FontSize.Size18
Player.Text = "Value"
Player.TextColor3 = Color3.new(1, 1, 1)
Player.TextSize = 18

Gravity.Name = "Gravity"
Gravity.Parent = Main
Gravity.BackgroundColor3 = Color3.new(0, 0, 0)
Gravity.BackgroundTransparency = 0.69999998807907
Gravity.BorderColor3 = Color3.new(1, 1, 1)
Gravity.BorderSizePixel = 0
Gravity.Position = UDim2.new(0, 5, 0, 5)
Gravity.Size = UDim2.new(0, 100, 0, 25)
Gravity.Font = Enum.Font.SourceSansBold
Gravity.FontSize = Enum.FontSize.Size18
Gravity.Text = "Gravity"
Gravity.TextColor3 = Color3.new(1, 1, 1)
Gravity.TextSize = 18
Gravity.MouseButton1Click:connect(function()
game.workspace.Gravity = Player.Text
end)

ESP.Name = "ESP"
ESP.Parent = Main
ESP.BackgroundColor3 = Color3.new(0, 0, 0)
ESP.BackgroundTransparency = 0.69999998807907
ESP.BorderColor3 = Color3.new(1, 1, 1)
ESP.BorderSizePixel = 0
ESP.Position = UDim2.new(0, 110, 0, 5)
ESP.Size = UDim2.new(0, 100, 0, 25)
ESP.Font = Enum.Font.SourceSansBold
ESP.FontSize = Enum.FontSize.Size18
ESP.Text = "ESP"
ESP.TextColor3 = Color3.new(1, 1, 1)
ESP.TextSize = 18
ESP.MouseButton1Click:connect(function()
crashy = true
on = false
if game.CoreGui:FindFirstChild('ESP') then
game.CoreGui.ESP:Destroy()
elseif game.Players.LocalPlayer.PlayerGui:FindFirstChild('ESP') then
game.Players.LocalPlayer.PlayerGui.ESP:Destroy()
end

function doit(hey)
local t1 = Instance.new('SurfaceGui',hey)
t1.AlwaysOnTop = true
local t1g = Instance.new('Frame',t1)
t1g.Size = UDim2.new(1,0,1,0)
t1g.BackgroundColor3 = t1.Parent.BrickColor.Color
local t2 = Instance.new('SurfaceGui',hey)
t2.AlwaysOnTop = true
t2.Face = Enum.NormalId.Right
local t2g = Instance.new('Frame',t2)
t2g.Size = UDim2.new(1,0,1,0)
t2g.BackgroundColor3 = t2.Parent.BrickColor.Color
local t3 = Instance.new('SurfaceGui',hey)
t3.AlwaysOnTop = true
t3.Face = Enum.NormalId.Left
local t3g = Instance.new('Frame',t3)
t3g.Size = UDim2.new(1,0,1,0)
t3g.BackgroundColor3 = t3.Parent.BrickColor.Color
local t4 = Instance.new('SurfaceGui',hey)
t4.AlwaysOnTop = true
t4.Face = Enum.NormalId.Back
local t4g = Instance.new('Frame',t4)
t4g.Size = UDim2.new(1,0,1,0)
t4g.BackgroundColor3 = t4.Parent.BrickColor.Color
local t5 = Instance.new('SurfaceGui',hey)
t5.AlwaysOnTop = true
t5.Face = Enum.NormalId.Top
local t5g = Instance.new('Frame',t5)
t5g.Size = UDim2.new(1,0,1,0)
t5g.BackgroundColor3 = t5.Parent.BrickColor.Color
local t6 = Instance.new('SurfaceGui',hey)
t6.AlwaysOnTop = true
t6.Face = Enum.NormalId.Bottom
local t6g = Instance.new('Frame',t6)
t6g.Size = UDim2.new(1,0,1,0)
t6g.BackgroundColor3 = t6.Parent.BrickColor.Color
end
function undo(chr)
for i,v in pairs(chr:GetChildren()) do
if v.ClassName == "Part" or v.ClassName == "MeshPart" then
for a,c in pairs(v:GetChildren()) do
if c.ClassName == "SurfaceGui" then
c:Destroy()
end
if c.ClassName == "BillboardGui" and c.Name == "thingyye" then
c:Destroy()
end
end
end
end
end

local gui = Instance.new('ScreenGui')
if crashy == false then
gui.Parent = game.CoreGui
else
gui.Parent = game.Players.LocalPlayer.PlayerGui
end
gui.Name = "ESP"
gui.ResetOnSpawn = false
local frame = Instance.new('Frame',gui)
frame.Size = UDim2.new(0.2,0,0.3,0)
frame.Position = UDim2.new(0,0,0.9,0)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.fromRGB(131,182,239)
frame.BorderSizePixel = 4
frame.BorderColor3 = Color3.fromRGB(66,134,244)
frame.Active = true
frame.Draggable = true
local txt = Instance.new('TextLabel',frame)
txt.Text = "Mustardfoot's ESP Gui"
txt.TextColor3 = Color3.fromRGB(255,255,255)
txt.Size = UDim2.new(1,0,0.3,0)
txt.TextScaled = true
txt.BackgroundTransparency = 1
local but = Instance.new('TextButton',frame)
but.Text = "ESP On"
but.TextColor3 = Color3.fromRGB(255,255,255)
but.Size = UDim2.new(0.7,0,0.3,0)
but.Position = UDim2.new(0.15,0,0.5,0)
but.BorderSizePixel = 0
but.TextScaled = true
but.BackgroundColor3 = Color3.fromRGB(66,134,244)
but.BackgroundTransparency = 0.4
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= nil then
undo(v.Character)
end
end

but.MouseButton1Down:connect(function()
if but.Text == "ESP On" then
but.Text = "ESP Off"
on = true
for i,v in pairs(game.Players:GetChildren()) do
if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
if v.Character:FindFirstChild('Head') then
local bill = Instance.new('BillboardGui',v.Character.Head)
bill.Name = "thingyye"
bill.AlwaysOnTop = true
bill.Size = UDim2.new(2,1,2)
bill.Adornee = v.Character.Head
local txt = Instance.new('TextLabel',bill)
txt.Text = v.Name
txt.BackgroundTransparency = 1
txt.Size = UDim2.new(1,0,1,0)
txt.TextColor3 = v.TeamColor.Color
end
for a,c in pairs(v.Character:GetChildren()) do
if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
doit(c)
elseif c.ClassName == "Part" and c.Transparency ~= 1 then
doit(c)
end
end
end
end
else
but.Text = "ESP On"
on = false
for i,v in pairs(game.Players:GetChildren()) do
undo(v.Character)
end
end
end)

for i,v in pairs(game.Players:GetChildren()) do
v.CharacterAdded:connect(function()
v.Character:WaitForChild('Head')
wait(1)
if on == true then
if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
if v.Character:FindFirstChild('Head') then
local bill = Instance.new('BillboardGui',v.Character.Head)
bill.Name = "thingyye"
bill.AlwaysOnTop = true
bill.Size = UDim2.new(2,1,2)
bill.Adornee = v.Character.Head
local txt = Instance.new('TextLabel',bill)
txt.Text = v.Name
txt.BackgroundTransparency = 1
txt.Size = UDim2.new(1,0,1,0)
txt.TextColor3 = v.TeamColor.Color
end
for a,c in pairs(v.Character:GetChildren()) do
if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
doit(c)
elseif c.ClassName == "Part" and c.Transparency ~= 1 then
doit(c)
end
end
end
end
end)
end  

game.Players.PlayerAdded:connect(function(v)
v.CharacterAdded:connect(function()
v.Character:WaitForChild('Head')
wait(1)
if on == true then
if v.Character ~= game.Players.LocalPlayer.Character and v.Character.Head:FindFirstChild('ScreenGui') == nil then
if v.Character:FindFirstChild('Head') then
local bill = Instance.new('BillboardGui',v.Character.Head)
bill.Name = "thingyye"
bill.AlwaysOnTop = true
bill.Size = UDim2.new(2,1,2)
bill.Adornee = v.Character.Head
local txt = Instance.new('TextLabel',bill)
txt.Text = v.Name
txt.BackgroundTransparency = 1
txt.Size = UDim2.new(1,0,1,0)
txt.TextColor3 = v.TeamColor.Color
end
for a,c in pairs(v.Character:GetChildren()) do
if c.ClassName == "MeshPart" and c.Transparency ~= 1 then
doit(c)
elseif c.ClassName == "Part" and c.Transparency ~= 1 then
doit(c)
end
end
end
end
end)
end)
end)

Walk.Name = "Walk"
Walk.Parent = Main
Walk.BackgroundColor3 = Color3.new(0, 0, 0)
Walk.BackgroundTransparency = 0.69999998807907
Walk.BorderColor3 = Color3.new(1, 1, 1)
Walk.BorderSizePixel = 0
Walk.Position = UDim2.new(0, 5, 0, 35)
Walk.Size = UDim2.new(0, 100, 0, 25)
Walk.Font = Enum.Font.SourceSansBold
Walk.FontSize = Enum.FontSize.Size18
Walk.Text = "WalkSpeed"
Walk.TextColor3 = Color3.new(1, 1, 1)
Walk.TextSize = 18
Walk.MouseButton1Click:connect(function()
humanoid = game.Players.LocalPlayer.Character.Humanoid
copy = game.Players.LocalPlayer.Character.Humanoid:clone()
humanoid:remove()
copy.Parent = game.Players.LocalPlayer.Character
copy.WalkSpeed = Player.Text
end)

Jump.Name = "Jump"
Jump.Parent = Main
Jump.BackgroundColor3 = Color3.new(0, 0, 0)
Jump.BackgroundTransparency = 0.69999998807907
Jump.BorderColor3 = Color3.new(1, 1, 1)
Jump.BorderSizePixel = 0
Jump.Position = UDim2.new(0, 110, 0, 35)
Jump.Size = UDim2.new(0, 100, 0, 25)
Jump.Font = Enum.Font.SourceSansBold
Jump.FontSize = Enum.FontSize.Size18
Jump.Text = "JumpPower"
Jump.TextColor3 = Color3.new(1, 1, 1)
Jump.TextSize = 18
Jump.MouseButton1Click:connect(function()
humanoid = game.Players.LocalPlayer.Character.Humanoid
copy = game.Players.LocalPlayer.Character.Humanoid:clone()
humanoid:remove()
copy.Parent = game.Players.LocalPlayer.Character
copy.JumpPower = Player.Text
end)