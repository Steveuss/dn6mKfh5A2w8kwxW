--[[
Made by: plo

Features:
press "E" to auto open doors
press "F" to go invis
Comp ESP
Player ESP
Speed
TP to random location
TP to frozen team mate
Teleport to all the presents
Thaw everyone freezing
Thaw yourself
Auto Exit (will automatically open the final doors and let you and your team mates leave)

Credits to wallythebird for the gui Library
]]

enabled = false
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
local localplayer = game.Players.LocalPlayer
local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local farm = library:CreateWindow('Auto')
farm:Section('ESP')
local abil = library:CreateWindow('Abilities')
abil:Section('Abilities')
local tele = library:CreateWindow('Teleports')
tele:Section('Teleports')
local misc = library:CreateWindow('Misc')
misc:Section('Misc')
torso = nil

--Computer ESP
local ESP2 = farm:Button("Computer ESP", function()
while wait(2) do
for i, v in pairs (game.workspace:GetChildren()) do
if v and v:IsA("Folder") and v:FindFirstChild("HackableComputers") then
Map1 = v
end
end
for _,p in pairs(Map1.HackableComputers:GetChildren()) do
local lol = p.Monitor.Screen
if lol.PointLight.Color == Color3.fromRGB(0,170,255) then
i = Instance.new("BillboardGui",lol)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(1,0,2,0)
h = Instance.new("Frame",i)
h.Size = UDim2.new(3,0,1,0)
h.AnchorPoint = Vector2.new(0.25, 0)
h.BackgroundColor3 = Color3.new(0,170,255)
h.BorderSizePixel = 0
h.BackgroundTransparency = 0.4
else
i = Instance.new("BillboardGui",lol)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(1,0,2,0)
h = Instance.new("Frame",i)
h.Size = UDim2.new(3,0,1,0)
h.AnchorPoint = Vector2.new(0.25, 0)
h.BackgroundColor3 = Color3.new(0,255,0)
h.BorderSizePixel = 0
h.BackgroundTransparency = 0.4
end
end
end
end)

--Player ESP
local ESP = farm:Button("Player ESP", function()
while wait(.1) do
for _,c in pairs(game.workspace:GetChildren()) do
if c:IsA("Model") and c:FindFirstChild("HumanoidRootPart") then
local player = game.Players.LocalPlayer
torso = c.UpperTorso
i = Instance.new("BillboardGui",torso)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(2,0,2,0)
t = Instance.new("Frame",i)
t.Size = UDim2.new(1,0,1,0)
t.AnchorPoint = Vector2.new(0, 0)
t.BackgroundColor3 = Color3.new(0,255,0)
t.BorderSizePixel = 0
t.BackgroundTransparency = 0.7
if c.Name == player.Name then
t.BackgroundTransparency = 1
end
for _,f in pairs(c:GetChildren()) do
if f:IsA("Tool") and f.Parent.Name ~= player.Name then
torso = f.Parent.Name
local torso1 = torso.UpperTorso
t.BackgroundTransparency = 1
t.BackgroundColor3 = Color3.new(1,0,0)
i2 = Instance.new("BillboardGui",torso1)
i2.Active = true
i2.AlwaysOnTop = true
i2.Size = UDim2.new(2,0,2,0)
t2 = Instance.new("Frame",i)
t2.Size = UDim2.new(1,0,1,0)
t2.AnchorPoint = Vector2.new(0, 0)
t2.BackgroundColor3 = Color3.new(1,0,0)
t2.BorderSizePixel = 0
t2.BackgroundTransparency = 0.7
end
end
end
end
end
end)

--Thaw everyone
local thaw = misc:Button("Thaw everyone", function()
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in pairs (game.workspace:GetChildren()) do
if v and v:IsA("Folder") and v:FindFirstChild("HackableComputers") then
Map2 = v
end
end
for c, d in pairs (Map2.FreezeTubes:GetChildren()) do
if d:FindFirstChild("AlertLocation") then
player.CFrame = d.Keyholder.CFrame + Vector3.new(1,0,0)
wait(.4)
for _,p in pairs(game:GetChildren()) do
if p.ClassName == ("Players") then
for _,a in pairs (p:GetChildren()) do
plrs = a.Name
game.ReplicatedStorage.ProjectGemma.Remotes.rEvent:FireServer("ThawPlayer", plrs)
end
end
end
for _,q  in pairs (game.workspace:GetChildren()) do
if q.Name == "Map_School" then
local glitch = q.Glitch.SchoolGlitch
player.CFrame = glitch.CFrame
elseif q.Name == "Map_Lab" then
local glitch = q.Glitch.LabGlitch
player.CFrame = glitch.CFrame
elseif q.Name == "Map_Museum" then
local glitch = q.Glitch.MuseumGlitch
player.CFrame = glitch.CFrame
elseif q.Name == "Map_Mansion" then
local glitch = q.Glitch.MuseumGlitch
player.CFrame = glitch.CFrame
end
end
end
end
end)

--Thaw yourself
local thaw = misc:Button("Thaw yourself", function()
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
for _,p in pairs(game:GetChildren()) do
if p.ClassName == ("Players") then
for _,a in pairs (p:GetChildren()) do
plrs = a.Name
game.ReplicatedStorage.ProjectGemma.Remotes.rEvent:FireServer("ThawPlayer", plrs)
end
end
end
end)

--Auto exit
local door = misc:Button("Auto Exit", function()
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in pairs (game.workspace:GetChildren()) do
if v and v:IsA("Folder") and v:FindFirstChild("HackableComputers") then
local door = v.ExitDoors.ExitDoor.Hitbox
player.CFrame = door.CFrame
wait(2)
game.ReplicatedStorage.ProjectGemma.Remotes.rEvent:FireServer("EscapeDoor")
end
end
end)

--Teleport to Frozen Player
local froze = tele:Button("TP to Frozen", function()
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in pairs (game.workspace:GetChildren()) do
if v and v:IsA("Folder") and v:FindFirstChild("HackableComputers") then
Map3 = v
end
end
for c, d in pairs (Map3.FreezeTubes:GetChildren()) do
if d:FindFirstChild("AlertLocation") then
player.CFrame = d.Keyholder.CFrame
end
end
end)

--Teleport to random location
local random = tele:Button("TP to Random Spot", function()
for a, b in pairs (game.workspace:GetChildren()) do
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
if b.Name == "Map_School" then
local glitch = b.Glitch.SchoolGlitch
player.CFrame = glitch.CFrame
elseif b.Name == "Map_Lab" then
local glitch = b.Glitch.LabGlitch
player.CFrame = glitch.CFrame
elseif b.Name == "Map_Museum" then
local glitch = b.Glitch.MuseumGlitch
player.CFrame = glitch.CFrame
elseif b.Name == "Map_Mansion" then
local glitch = b.Glitch.MuseumGlitch
player.CFrame = glitch.CFrame
end
end
end)

--present
local present = tele:Button("Presents", function()
for i, v in pairs (game.workspace:GetChildren()) do
if v and v:IsA("Folder") and v:FindFirstChild("HackableComputers") then
for d, c in pairs (v.Quest:GetChildren()) do
local player = game.Players.LocalPlayer.Character.HumanoidRootPart
player.CFrame = c.Detail.CFrame
wait(.4)
end
end
end
end)

--Speed
local speed = abil:Toggle("Speed", {flag = "speed"})
spawn(function()
while wait(0.001) do
if abil.flags.speed then
game.ReplicatedStorage.AbilitiesShared.net.Request:FireServer("SuperSpeed")
wait(5)
game.ReplicatedStorage.AbilitiesShared.net.Cancel:FireServer("SuperSpeed")
end
end
end)
abil:Section('Pressing "E" will inta open doors')
abil:Section('Press "F" for invisiblity')

--Press E to open doors
game:GetService('UserInputService').InputBegan:connect(function(k)--KEYBIND
if k.KeyCode == Enum.KeyCode.E then
game.ReplicatedStorage.ProjectGemma.Remotes.rEvent:FireServer("DoorState")
game.ReplicatedStorage.ProjectGemma.Remotes.rEvent:FireServer("DoubleDoorState")
wait(1)
end
end)

--Press F to be invisible
game:GetService('UserInputService').InputBegan:connect(function(k)--KEYBIND
if k.KeyCode == Enum.KeyCode.F then
game.ReplicatedStorage.AbilitiesShared.net.Request:FireServer("Invisibility")
end
end)

print("Loaded; made by plo (v3rmillion)")
 