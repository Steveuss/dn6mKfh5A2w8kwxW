--If it doesn't bring everyone right away, just execute it again
--Only works in big servers (6-8 players)

local Playeramount          = 7 --Ignore this, don't change this.
for i                       = 1,Playeramount do
workspace.Handle.CanCollide = false
workspace.Handle.CFrame     = game.Players.LocalPlayer.Character.Torso.CFrame
wait(0.065)
workspace.Handle.Position = Vector3.new(187.619995, 0.690000057, 106.145004)
workspace.Handle.CanCollide = false

game.Players.LocalPlayer.Character:WaitForChild("Spray")

game.Players.LocalPlayer.Character.Spray.Parent = game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.Backpack.Spray.Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character.Spray.Parent = game.Players.LocalPlayer
wait(0.065)
end
wait(.1)
for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
end
end
wait(.2)

game.Players.LocalPlayer.Character.Humanoid:Destroy()
local h = Instance.new("Humanoid", game.Players.LocalPlayer.Character)
wait(0.065)


for i, v in pairs(game.Players:GetChildren()) do
   
   if v and v.Name ~= game.Players.LocalPlayer.Name then

game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character

wait(0.065)

for i = 1, 5 do
   
   v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.CFrame
  wait()
end

end

end

wait(0.065)

game.Players.LocalPlayer.Character:ClearAllChildren()
wait(0.065)

local LocalPlayer = game:GetService("Players").LocalPlayer
local a1 = Instance.new("Model", workspace)
local a2 = Instance.new("Part", a1)
a2.CanCollide = true
a2.Anchored = true
a2.CFrame = CFrame.new(10000, 10000, 10000)
a2.Name = "Torso"
local a3 = Instance.new("Humanoid", a1)
a3.MaxHealth = 100;a3.Health = 100
LocalPlayer.Character = a1
a3.Health = 0
wait(.5)
local Playeramount          = 7
for i                       = 1,Playeramount do
workspace.Handle.CanCollide = false
workspace.Handle.CFrame     = game.Players.LocalPlayer.Character.Torso.CFrame
wait(0.065)
workspace.Handle.Position = Vector3.new(187.619995, 0.690000057, 106.145004)
workspace.Handle.CanCollide = false

game.Players.LocalPlayer.Character:WaitForChild("Spray")

game.Players.LocalPlayer.Character.Spray.Parent = game.Players.LocalPlayer.Backpack

game.Players.LocalPlayer.Backpack.Spray.Parent = game.Players.LocalPlayer.Character

game.Players.LocalPlayer.Character.Spray.Parent = game.Players.LocalPlayer
wait(0.065)
end
wait(.1)
for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
if (v:IsA("Tool")) then
v.Parent = game.Players.LocalPlayer.Backpack
end
end
wait(.2)

game.Players.LocalPlayer.Character.Humanoid:Destroy()
local h = Instance.new("Humanoid", game.Players.LocalPlayer.Character)
wait(0.065)


for i, v in pairs(game.Players:GetChildren()) do
   
   if v and v.Name ~= game.Players.LocalPlayer.Name then

game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character

wait(0.065)

for i = 1, 5 do
   
   v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.CFrame
  wait()
end

end

end

wait(0.065)

game.Players.LocalPlayer.Character:ClearAllChildren()
wait(0.065)

local LocalPlayer = game:GetService("Players").LocalPlayer
local a1 = Instance.new("Model", workspace)
local a2 = Instance.new("Part", a1)
a2.CanCollide = true
a2.Anchored = true
a2.CFrame = CFrame.new(10000, 10000, 10000)
a2.Name = "Torso"
local a3 = Instance.new("Humanoid", a1)
a3.MaxHealth = 100;a3.Health = 100
LocalPlayer.Character = a1
a3.Health = 0
wait(6.5)
local prt = Instance.new("Model", workspace);
Instance.new("Part", prt).Name="Torso";
Instance.new("Part", prt).Name="Head";
Instance.new("Humanoid", prt).Name="Humanoid";
game.Players.LocalPlayer.Character=prt