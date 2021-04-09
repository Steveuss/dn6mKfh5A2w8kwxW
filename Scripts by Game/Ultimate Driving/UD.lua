mouse = game:service'Players'.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(key)
if key == "W" or key == "w" then
for i,v in pairs(workspace["_Main"].Vehicles:GetDescendants()) do
if v:IsA"VehicleSeat" then
if v.Occupant == game:service'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid' then
car = v.Parent
car.PrimaryPart = car.Core.HitBox  
end
end
end
W = true
end
end)
mouse.KeyUp:Connect(function(key)
if key == "W" or key == "w" then
W = false
end
end)
mouse.KeyDown:Connect(function(key)
if key == "S" or key == "s" then
S = true
end
end)
mouse.KeyUp:Connect(function(key)
if key == "S" or key == "s" then
S = false
end
end)
for i,v in pairs(workspace["_Main"].Vehicles:GetDescendants()) do
if v:IsA"VehicleSeat" then
if v.Occupant == game:service'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid' then
car = v.Parent
car.PrimaryPart = car.Core.HitBox  
end
end
end
game:service'RunService'.Stepped:Connect(function()
if W then
for i,v in pairs(car:GetDescendants()) do
if v:IsA"BasePart" then
v.Velocity = v.Velocity*1.01
end
end
end
if S then
for i,v in pairs(car:GetDescendants()) do
if v:IsA"BasePart" then
v.Velocity = v.Velocity*0.95
end
end
end
end)