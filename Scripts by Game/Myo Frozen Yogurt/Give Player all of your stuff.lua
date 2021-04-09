--Thanks to prisj on V3rm

local target = game:GetService("Players").NAME -- replace name (case sensitive)
local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
if v:IsA('Tool') then
workspace.GiveSystem.Group:FireServer(target, v)
end
end