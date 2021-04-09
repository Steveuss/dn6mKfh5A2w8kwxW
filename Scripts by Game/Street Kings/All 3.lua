local cmain = game.Players.LocalPlayer.PlayerScripts.Client.cmain
local datum = require(cmain):datum()
local Signal = datum.Signal

local plrs = {
	[1] = game.Players.LocalPlayer;
}

while wait() do 
	Signal:FireServer("MeleeHit", true, plrs, 0, false, nil)
	Signal:FireServer("MeleeHit", true, plrs, 0, false, nil)
	Signal:FireServer("SprintStaminaIncrease", true)
end