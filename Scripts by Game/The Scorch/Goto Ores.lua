--Made by Rob123

while wait() do
for _,v in ipairs(game.Workspace.OreSpawnpoints:GetChildren()) do
    if v.Name == "OreSpawn" and v:FindFirstChild("Large") then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Large.CFrame
    end
end
end