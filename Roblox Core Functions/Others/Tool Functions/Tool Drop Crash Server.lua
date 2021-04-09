--Grab a ton of tools, run script, and press backspace. Will only work on some games.

for _,v in pairs(game:GetService"Players".LocalPlayer:FindFirstChildOfClass"Backpack":GetChildren'') do
pcall(function() v.CanBeDropped = true end)
end
wait(1)
for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Character
end