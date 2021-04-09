looping = false --Change if you want
guntouse = "Glock 17" -- Change this with what gun you have
game.Players.LocalPlayer.PlayerScripts.ClientAfk.Disabled = true -- Some really fucking stupid AFK timer that comes up every 5 minutes

function loopkill()
while looping do
for i,v in ipairs(game:GetService("Players"):GetPlayers()) do
print(v)
if v.Character and v.Character.Head then
game.ReplicatedStorage:WaitForChild("InflictTarget"):InvokeServer(game.Players.LocalPlayer.Backpack:FindFirstChild(guntouse),game.Players.LocalPlayer,v.Character.Humanoid,v.Character.Head,"Head" and 100 and 100 * 100 or 100,{100,100,100,100,100,100,100},{100,100,100} )
end 
end
wait(1)
end
end

game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(Key)
if Key == "b" then 
if looping then
looping = false
else
looping = true
loopkill()
end
end
end)

print("Injected, press B to toggle!")