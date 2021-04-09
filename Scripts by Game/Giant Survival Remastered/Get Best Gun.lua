local A_1 =
{
    [1] =
{
    [1] = false
},
    [2] =
{
    [1] = 2
}
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].weaponunequipped
Event:FireServer(A_1)
local A_1 =
{
    [1] =
{
    [1] = "Crazy Futuristic Minigun"
},
    [2] =
{
    [1] = false
}
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"].weaponequipped
Event:FireServer(A_1)

game.Players.LocalPlayer.Character.Humanoid.Health = 0