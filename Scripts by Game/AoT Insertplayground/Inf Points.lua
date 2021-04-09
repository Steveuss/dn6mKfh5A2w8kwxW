--Made by Vault Boy on V3rmillion

--inf Skill point script
--might need mutiple execution idk why 
while wait() do
for i,v in pairs(game.Players:GetChildren()) do
local args = {
    [1] = v.Character.Humanoid,
    [2] = 0.1,
    [3] = false,
    [4] = "heckoff",
}

workspace.RemoteServer.ShifterDamage:FireServer(unpack(args))
end
end