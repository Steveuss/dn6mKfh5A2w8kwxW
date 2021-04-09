while wait() do
	local descendants = workspace.Spawners:GetDescendants()

	for index, descendant in pairs(descendants) do
		if descendant:IsA("Model") and descendant:FindFirstChild("MobHealth") then
			game.Players.LocalPlayer.Backpack.Detector.Events:FireServer("Damage", descendant.MobHealth.Value-1, descendant)
			wait()
			game.Players.LocalPlayer.Backpack.Detector.Events:FireServer("Damage", 1, descendant)
		end
	end
end