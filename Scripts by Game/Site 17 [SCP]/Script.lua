local _CORE = game:GetService('CoreGui')
--if get_hidden_gui then
--  _CORE = get_hidden_gui()
--end
local _LIGHTING = game:GetService('Lighting')
local _NETWORK = game:GetService('NetworkClient')
local _PLAYERS = game:GetService('Players')
local _RunService = game:GetService('RunService')
local _InputService = game:GetService('UserInputService')
local _ReplicatedStorage = game:GetService('ReplicatedStorage')
local _Teams = game:GetService('Teams')
local _Deleted = Instance.new('Folder')
local _Dragger = Instance.new('Dragger')

local m = workspace.SiteBlackoutButtons

local LP = _PLAYERS.LocalPlayer
local MOUSE = LP:GetMouse()

local oh1 = CFrame.new(-145.309326, 8.088377, -674.968262) -- pill teleport

function PillHeal()
local oh2 = game:GetService("Players")
local oh3 = oh2.LocalPlayer.Character.HumanoidRootPart
local post1 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
oh3.CFrame = oh1
wait(0.2)
oh3.CFrame = CFrame.new(post1)
end

local AutoHeal = false

function AutoHealing()
while wait(0.7) do
if LP.character.Humanoid.Health < 100 then
PillHeal()
       if AutoHeal == false then
           break
           end
end
end
end

function CHECK_MODS_625747756()
local i=0
for _,v in pairs(_PLAYERS:GetChildren()) do
if v.Character then
local rank = v.Character.Head:FindFirstChild('Rank')
if rank then
if string.find(rank.Frame.TextLabel.Text,'Moderator') then
i=i+1
if string.find(rank.Frame.TextLabel.Text,'Head') then
print('Head Mod: '..v.Name)
else
print('Mod: '..v.Name)
end
end
end
end
end
if i == 0 then
print('No mods found.')
else
print(i..' total mods')
end
end

LP.CharacterAdded:connect(function() --removes shop
       LP:WaitForChild('PlayerGui'):WaitForChild('ShopGui'):Destroy()
   end)
   _LIGHTING:WaitForChild('ShopGuiBlur').Enabled = false
   LP:WaitForChild('PlayerGui'):WaitForChild('ShopGui'):Destroy()

LP.PlayerGui.ChildAdded:connect(function(g) -- anti blind
       wait()
       if g.Name == 'Blindness' then
           g:Destroy()
       end
   end)

MOUSE.KeyDown:connect(function(key) -- hiding name
   if key == "g" then
game:GetService("Players").LocalPlayer.Character.Head.Rank:remove();
   end
end)

MOUSE.KeyDown:connect(function(key) --healing
   if key == "b" then
       PillHeal()
   end
end)

MOUSE.KeyDown:connect(function(key) --healing
   if key == "t" then
       if AutoHeal == true then
           AutoHeal = false
       elseif AutoHeal == false then
           AutoHeal = true
           AutoHealing()
       end
   end
end)

print("Site 17 script WIP, made by Lucky and MightyDanTheMan.")
print("What is in now - Anti-blind, no shop when respawning and admin check every 60 seconds.")
print("Hide your name with G, Heal yourself by pressing B")
print("What is worked on - Godmod and game controlling panel. NO LONGER WORKING ON THIS SCRIPT")
print("Press T to automatically heal when hurt.")

while true do
print("--------------------------")
CHECK_MODS_625747756()
print("--------------------------")
if AutoHeal == false then
print("AutoHealing is off")
elseif AutoHeal == true then
print("AutoHealing is on")
end
wait(60)
end