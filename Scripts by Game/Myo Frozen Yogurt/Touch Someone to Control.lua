local plr = game.Players.LocalPlayer
for i,v in pairs(plr.Backpack:GetChildren()) do
if v:IsA('Tool') then
v.CanBeDropped = true
v.Parent = plr.Character
end
end