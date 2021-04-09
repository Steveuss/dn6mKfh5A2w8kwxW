_G.lol = true
while _G.lol do
   wait()
for i,v in pairs(game.workspace.Zombies:GetDescendants()) do
if v.Name == "Head" then
v.Size = Vector3.new(15,15,15)
v.Anchored = true
v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
end
end
end