local cmain = game.Players.LocalPlayer.PlayerScripts.Client.cmain
local datum = require(cmain):datum()
local Signal = datum.Signal

while wait() do 
	Signal:FireServer("SprintStaminaIncrease", true)
end