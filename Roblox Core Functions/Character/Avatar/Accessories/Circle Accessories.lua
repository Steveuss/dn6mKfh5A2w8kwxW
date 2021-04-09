print("Made by Ayano#0002")
_G.on = true
local parts = {}
local chr = game.Players.LocalPlayer.Character
local bp = game.Players.LocalPlayer.Backpack
for i,d in pairs(game.Players.LocalPlayer.Character.Humanoid:GetAccessories()) do
local part = nil
pcall(function()
part = d.Handle
end)
if part ~= nil then
local c = Instance.new("Tool")
c.Name = "s-"..d.Name
c.Parent = game.Players.LocalPlayer.Backpack
c.Parent = game.Players.LocalPlayer.Character
part.Massless = true
part:FindFirstChildOfClass("Weld"):Destroy()
part.Parent = c

for l,k in pairs(part:GetChildren()) do
k:Destroy()
    end
table.insert(parts, c)
end

end
local rs = game:GetService('RunService').RenderStepped
local l = 1
while _G.on and rs:wait() do
l = (l >= 360 and 1 or l+1)
   for i,d in pairs(parts) do
local cfd = ((game.Players.LocalPlayer.Character:FindFirstChild("Right Arm") or game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")).CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
d.Parent = game.Players.LocalPlayer.Backpack
       d.Grip = cfd:toObjectSpace(CFrame.new(game.Players.LocalPlayer.Character.Head.Position) * CFrame.fromEulerAnglesXYZ(0, math.rad(l + ((360 / #parts) * i)),0) * CFrame.new(5,0,0)):inverse()
d.Parent = game.Players.LocalPlayer.Character
end
end