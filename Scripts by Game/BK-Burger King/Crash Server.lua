--Become Trainee, grab 50+ same items, run script, press backspace while holding a tool. Give 20 seconds to complete.

for _,v in pairs(game:GetService"Players".LocalPlayer:FindFirstChildOfClass"Backpack":GetChildren'') do
pcall(function() v.CanBeDropped = true end)
end
wait(1)
for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Character
end