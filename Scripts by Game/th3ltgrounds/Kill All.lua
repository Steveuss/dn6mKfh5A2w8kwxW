while wait() do
	for i, player in ipairs(game.Players:GetPlayers()) do 
		if player.Character and player ~= game.Players.LocalPlayer and player.Team ~= game.Players.LocalPlayer.Team then 
			workspace.weapon.displayRay:FireServer(game.Players.LocalPlayer.Character.Head.Position, player.Character.Head.Position)
			workspace.weapon.damage:FireServer("Med-1", player, player.Character:FindFirstChildOfClass("Humanoid"), game.Players.LocalPlayer.Character.Head.Position, player.Character.Head.Position, player.Character["Head"])
		end
	end
end