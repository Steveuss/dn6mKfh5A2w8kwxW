--Made by Vault Boy on V3rmillion

--Kill all script
for i,v in pairs(game.Players:GetChildren()) do
local args = {
   [1] = v.Character.Humanoid,
   [2] = 100000,
   [3] = false,
   [4] = "heckoff",
}

workspace.RemoteServer.ShifterDamage:FireServer(unpack(args))
end
wait(1)
for i,