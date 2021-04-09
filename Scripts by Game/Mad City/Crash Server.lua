local plr = game.Players.LocalPlayer
local char = plr.Character

for i = 1, 20 do
wait()
char.HumanoidRootPart.Position = workspace.ObjectSelection.Shotgun.Shotgun.Position
workspace.ObjectSelection.Shotgun.Shotgun.Shotgun.Event:FireServer()
end
char.Humanoid:EquipTool(plr.Backpack.Shotgun)
for i = 1, 8000 do
game:GetService("ReplicatedStorage").Event:FireServer("ShootShotgun", workspace[plr.Name], Vector3.new(0, 0, 0), "Shotgun", "inf", "inf", "inf")
end