local class = game.ReplicatedStorage.Classes:GetDescendants()
for i = 1, #class do local v = class[i]
if v.Name == "Damage" then
v.Value = math.huge
end
end