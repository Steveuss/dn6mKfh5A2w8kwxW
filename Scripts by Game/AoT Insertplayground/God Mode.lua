--Made by Vault Boy on V3rmillion

--god mode script
local args = {
   [1] = game.Workspace.InsertNameHere.Humanoid,
   [2] = -1000000000000,
   [3] = false,
   [4] = "heckoff",
}

workspace.RemoteServer.ShifterDamage:FireServer(unpack(args))
