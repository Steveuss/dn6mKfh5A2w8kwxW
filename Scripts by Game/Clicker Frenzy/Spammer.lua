game:GetService('RunService').RenderStepped:Connect(function()
for i = 1, 300 do
local Remote = game.ReplicatedStorage['Chat']

local Arguments = {
[1] = "Trump did nothing wrong"
}

Remote:FireServer(unpack(Arguments))
wait()
end
end)