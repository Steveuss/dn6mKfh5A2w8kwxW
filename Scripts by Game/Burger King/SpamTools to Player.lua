--By Bloomingzy32 (https://v3rmillion.net/showthread.php?tid=980219)

local username = "2ndNO_DATA" --Change Username
local amount = 100
for i = 1,amount do
    spawn(function()
fireclickdetector(game:GetService("Workspace")["Cup Grabber"].Handle.ClickDetector)
wait(1)
for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
v.Parent = game.Players.LocalPlayer.Character
wait(1)
local A_1 = "HandTo"
local A_2 = username
local A_3 = "Cup"
local Event = game:GetService("ReplicatedStorage")["HandTo_Sys"]
Event:InvokeServer(A_1, A_2, A_3)
end
end)
end