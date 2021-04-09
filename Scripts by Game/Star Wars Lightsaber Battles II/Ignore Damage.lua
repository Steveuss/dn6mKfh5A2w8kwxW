local player = game.Players.LocalPlayer

while wait() do 
	if player.Character and player.Character:FindFirstChild("Lightsaber") then 
		player.Character.Lightsaber.Assets.Events.toggleBlocking:FireServer(true)
		game.ReplicatedStorage.Events.toggleHealing:FireServer(true)
		player.Character.Lightsaber.Assets.Events.dodge:FireServer(0.3)
	end
end