for i, v in pairs(getsenv(game.Players.LocalPlayer.PlayerGui.forcePowers.LocalScript)) do 
	if type(v) == "table" then 
		for a, b in next, v do 
			if type(b) == "table" then 
				b.requirement = 0
			end
		end
	end
end