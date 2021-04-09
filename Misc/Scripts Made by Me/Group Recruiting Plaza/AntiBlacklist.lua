local booths = game.workspace.Booths:GetChildren()

for i,v in ipairs(booths.CollisionBox) do
    v:Destroy()
end