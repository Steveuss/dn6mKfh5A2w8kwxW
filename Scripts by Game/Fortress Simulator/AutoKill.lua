local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
library.options.underlinecolor = "rainbow"
local w = library:CreateWindow('Main')
w:Section('Toggles')

w:Toggle('Kill Zombies', {flag = "toggle1"}) 
spawn(function()
while wait() do
    if w.flags.toggle1 then
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do 
	if v.Name == "Torso" then
		if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 100 then
			local A_1 = v.Parent.Humanoid
local A_2 = 2000
local Event = game:GetService("ReplicatedStorage").Damage
Event:FireServer(A_1, A_2)
		end
	end
	end
		end
	end
	end
	end)
