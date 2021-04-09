game:GetService"RunService".RenderStepped:Connect(function()
pcall(function()
for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do 
	if v.Name == "Settings" then 
		a = require(v)
	end      
end
a.ReloadTime = 0
a.BulletDamage = math.huge
a.BulletSpread = 0
a.AimBulletSpread = 0
a.Automatic = true
a.FireRate = 100
a.BulletSpead = math.huge
a.ClipSize = math.huge
a.CurrentBullets = math.huge
a.AimZoom = 0
end)    
end)