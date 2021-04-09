--[[
1. Load DEX
2. Go to the path game.ReplicatedStorage.CarbonResource.Events
3. Rename the 4th event down (from the top) the letter "D"
4. Load this script : 
--]]


loadstring(game:HttpGet('https://pastebin.com/raw/444k40vk'))();
wait(1)
local Tool = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
Tool.Name = "Epic Killing Tool"

local Mouse = game.Players.LocalPlayer:GetMouse()
Tool.Selected:connect(function()
Mouse.Button1Down:connect(function()
if Tool.Active == true then
if Mouse.Target and Mouse.Target.Parent:IsA('Model') then
local A_1 = Mouse.Target.Parent.Humanoid
local A_2 = 100
local A_3 = "P226"
local Event = game.ReplicatedStorage.CarbonResource.Events.D
Event:FireServer(A_1, A_2, A_3)
end
end  
end)
end)