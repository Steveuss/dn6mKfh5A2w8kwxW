function findtycoon()
for i , v in pairs(game.Workspace.Tycoons:GetChildren()) do
   if v.Owner.Value == game.Players.LocalPlayer.Name then
       return v
   end
end;end
--5

local threads = 10000 -- change to the amount you want
local droppername = "Ore Dropper"
local orevalue = 9e+100 -- dont change
local furnace = "Furnace"

local tycoon = findtycoon()
local oh1 = {}
for i , v in pairs(tycoon.ItemHolder:GetChildren()) do
    table.insert(oh1,v)
end
local oh2 = orevalue
local oh3 = tycoon.ItemHolder[droppername]
for i = 0 , threads ,1 do
tycoon.ItemHolder[furnace].RemoteEvent:FireServer(oh1, oh2, oh3)
end
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()