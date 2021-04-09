screengui = Instance.new("ScreenGui",game.CoreGui)

base = Instance.new("TextButton",screengui)
base.Size = UDim2.new(0.1,0,0.05,0)
base.Text = "Base"
base.Name = "Base"

factory = Instance.new("TextButton",screengui)
factory.Size = UDim2.new(0.1,0,0.05,0)
factory.Position = UDim2.new(0,0,0.05,0)
factory.Text = "Factory"
factory.Name = "Factory"

Docks = Instance.new("TextButton",screengui)
Docks.Size = UDim2.new(0.1,0,0.05,0)
Docks.Position = UDim2.new(0,0,0.1,0)
Docks.Text = "Docks"
Docks.Name = "Docks"

russianbase = Instance.new("TextButton",screengui)
russianbase.Size = UDim2.new(0.1,0,0.05,0)
russianbase.Position = UDim2.new(0,0,0.15,0)
russianbase.Name = "RussianBase"
russianbase.Text = "Russian Base"

russianbase = Instance.new("TextButton",screengui)
russianbase.Size = UDim2.new(0.1,0,0.05,0)
russianbase.Position = UDim2.new(0,0,0.15,0)
russianbase.Name = "RussianBase"
russianbase.Text = "Russian Base"

turnupcompensation = Instance.new("TextButton",screengui)
turnupcompensation.Size = UDim2.new(0.1,0,0.05,0)
turnupcompensation.Position = UDim2.new(0,0,0.2,0)
turnupcompensation.Name = "TurnUpCompensation"
turnupcompensation.Text = "Turn up compensation(makes night look like day)"

normalcompensation = Instance.new("TextButton",screengui)
normalcompensation.Size = UDim2.new(0.1,0,0.05,0)
normalcompensation.Position = UDim2.new(0,0,0.25,0)
normalcompensation.Name = "NormalCompensation"
normalcompensation.Text = "Turn to normal compensation(use for day)"



base.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(2286.09, 437.3, 754.757))
end)

factory.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(3312.33, 391.238, 4621.7))
end)

Docks.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(1031.92, 178.148, 5517.96))
end)

russianbase.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-3968.52, 240.739, 1156.77))
end)

turnupcompensation.MouseButton1Click:connect(function()
    game.Lighting.ExposureCompensation = 5
end)

normalcompensation.MouseButton1Click:connect(function()
    game.Lighting.ExposureCompensation = 0.2
end)