local walkspeed = 100 --Change
local speed = 1 + walkspeed*0.05
local rocket = Instance.new("BodyPosition",game.Players.LocalPlayer.Character.Torso)
local upvalue = 0
rocket.maxForce = Vector3.new(12500,12500,12500)

spawn(function()
while true do
wait()
if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air then
rocket.Parent = game.Players.LocalPlayer.Character
wait(0.5)
else
wait(0.5)
rocket.Parent = game.Players.LocalPlayer.Character.Torso
end
end
end)

spawn(function()
while true do
wait()
rocket.Position = Vector3.new(game.Players.LocalPlayer.Character.Torso.Position.X+game.Players.LocalPlayer.Character.Humanoid.MoveDirection.X*speed*5.4,game.Players.LocalPlayer.Character.Torso.Position.Y,game.Players.LocalPlayer.Character.Torso.Position.Z+game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Z*speed*5.4)
end
end)