pcall(function()
	local tank = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Model")
	local health = tank.Health:Clone()
	local track = tank.TrackHealth:Clone()
	tank.Health:Destroy()
	tank.TrackHealth:Destroy()
	health.Parent = tank
	track.Parent = tank
end)