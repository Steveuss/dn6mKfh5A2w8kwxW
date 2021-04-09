--autosell
while wait() do
local oh1 = -1
game:GetService("ReplicatedStorage").Events.Shop.RequestSellAll:FireServer(oh1)
end