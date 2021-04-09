--Thanks to LuckyBlock on V3rmillion

local A_1 = "Storage"
local A_2 = 12
local A_3 = 5734607 --set to a gamepass ID that you own
local Event = game:GetService("ReplicatedStorage").Remotes.BuyItem
Event:InvokeServer(A_1, A_2, A_3)