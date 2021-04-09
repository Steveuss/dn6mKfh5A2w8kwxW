for i,v in pairs(game:GetService("ReplicatedStorage").SaveState.Purchases:GetChildren()) do
    v:FireServer()
end
