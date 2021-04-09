_G.repair = true
while _G.repair do
   wait()
   for i = 1,20 do
local A_1 = "Repair"
local A_2 = game:GetService("Workspace").Map.Barricades.Window
local Event = game:GetService("ReplicatedStorage").RemoteEvent
Event:FireServer(A_1, A_2)
end
end