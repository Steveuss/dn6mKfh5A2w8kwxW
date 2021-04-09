-- Script made by CrazedEarth on Verm

local V1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local tab1 = {
   CFrame.new(Vector3.new(200.392, 119.242, -198.831)), -- 8
   CFrame.new(Vector3.new(-28.4135, 139.788, -563.907)),-- 3
   CFrame.new(Vector3.new(81.4321, 136.985, -551.207)) -- 5
}

while wait(121) do
for i, v in pairs(tab1) do
   V1.CFrame = v
   wait(1)
end
end