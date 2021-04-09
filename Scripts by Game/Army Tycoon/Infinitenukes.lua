_G.Weapon = "Nuke"
local mouse = game:service'Players'.LocalPlayer:GetMouse()

mouse.KeyDown:Connect(function(k)
	if k == "q" then
		game:GetService("ReplicatedStorage").RE.FireMissile:FireServer("Nuke",Vector3.new(mouse.Hit.p.X,48.6649132,mouse.Hit.p.Z))
	end
end)

