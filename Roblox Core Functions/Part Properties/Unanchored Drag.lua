game:GetService("RunService").Stepped:connect(function()
    game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
    game:GetService("Players").LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
    wait()
  end)
  
  local Mouse = game.Players.LocalPlayer:GetMouse()
  local Unanchored = {}
  
  for index, part in pairs(workspace:GetDescendants()) do
    if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(game:GetService("Players").LocalPlayer.Character) == false then
        table.insert(Unanchored,part)
    end
  end
  
  for i = 1, #Unanchored do
    Unanchored[i].Parent = workspace
    local BD = Instance.new("BodyPosition")
    BD.Parent = Unanchored[i]
    BD.Name = "BD"
  end
  
  while wait() do
    for i = 1, #Unanchored do
        Unanchored[i].BD.Position = Mouse.Hit.Position
    end
  end