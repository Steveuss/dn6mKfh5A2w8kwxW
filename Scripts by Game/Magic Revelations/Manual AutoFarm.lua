-- Variable
local player = game.Players.LocalPlayer

-- Equip
function equip()
	for i,v in pairs(player.Backpack:GetChildren()) do
		v.Parent = player.Character
	end
end

-- Use
while wait() do
	equip()
	for i,v in pairs(player.Character:GetChildren()) do
		if v:IsA("Tool") then
			v:Activate()
		end
	end
	if pcall(function() a = player.PlayerGui.MainGui.BarsFrame.Energy.Frame.EnergyNumText end) and tonumber(string.split(player.PlayerGui.MainGui.BarsFrame.Energy.Frame.EnergyNumText.Text, "/")[1]) < 100 then
		repeat wait() until tonumber(string.split(player.PlayerGui.MainGui.BarsFrame.Energy.Frame.EnergyNumText.Text, "/")[1]) == tonumber(string.split(player.PlayerGui.MainGui.BarsFrame.Energy.Frame.EnergyNumText.Text, "/")[2])
	end
end