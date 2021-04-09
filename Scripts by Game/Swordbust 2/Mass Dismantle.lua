local Item = "kobold"
for i,v in pairs(game.ReplicatedStorage.Profiles[game.Players.LocalPlayer.Name].Inventory:GetChildren()) do
	if string.find(v.Name:lower(), item) and not v:FindFirstChild("Upgrade") then
		local stff = 
		{
			[1] = "Dismantle", 
			[2] = v
		}
		game.ReplicatedStorage.Event:FireServer("Equipment", stff)
	end
end