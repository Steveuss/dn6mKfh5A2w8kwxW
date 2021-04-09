while wait() do
for i,v in pairs(game.Workspace.Zombies:GetChildren()) do

if v:FindFirstChild("Head") then


local A_1 = "Hit"
local A_2 = v.Head
local A_3 = v.Head.Position
local A_4 = v.Head.Position
local A_5 = v.Head.CFrame
local A_6 =
{
}
local Event = game:GetService("ReplicatedStorage").Remotes.Net
Event:FireServer(A_1, A_2, A_3, A_4, A_5, A_6)

end
end
end