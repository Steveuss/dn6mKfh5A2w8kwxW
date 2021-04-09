--Musket Exploit

game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
if v.Character then
if v.Character:FindFirstChildOfClass("Tool") then
local Tool = v.Character:FindFirstChildOfClass("Tool")
if Tool:FindFirstChild("Core") then
if Tool.Core:FindFirstChild("Fire") then
Tool.Core.Fire:FireServer()
end
end
end
end
end
end)