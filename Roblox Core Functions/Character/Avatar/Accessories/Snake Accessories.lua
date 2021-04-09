print("Made by Ayano#0002")
_G.on = true
local parts = {}
local lp = {}
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
local fparts = {}
for i,d in pairs(parts) do
   for i=1,5 do
       table.insert(fparts,"no")
   end
   table.insert(fparts,d)
end
while _G.on and rs:wait() do
   local cp = {}
   for i,d in pairs(fparts) do
       local pos = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
       if type(d) ~= "string" then
   local cfd = ((game.Players.LocalPlayer.Character:FindFirstChild("Right Arm") or game.Players.LocalPlayer.Character:FindFirstChild("RightLowerArm")).CFrame * CFrame.new(0, -1, 0, 1, 0, 0, 0, 0, 1, 0, -1, 0))
           d.Parent = game.Players.LocalPlayer.Backpack
           if i == 1 then
               d.Grip = cfd:toObjectSpace(CFrame.new(pos.p)):inverse()
               cp[i] = pos
           elseif lp[i - 1] ~= nil then
               d.Grip = cfd:toObjectSpace(CFrame.new(lp[i-1].p)):inverse()
               cp[i] = lp[i-1]
           end
           d.Parent = game.Players.LocalPlayer.Character
       else
           if i == 1 then
               cp[i] = pos
           elseif lp[i - 1] ~= nil then
               cp[i] = lp[i-1]
           end
       end
   end
   lp = cp
end