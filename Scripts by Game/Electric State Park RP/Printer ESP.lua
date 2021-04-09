while wait(5) do
for i, v in pairs(game.workspace.MoneyPrinters:GetChildren()) do
       if v.Name == "Money Printer Basic" then
           local billboard = Instance.new("BillboardGui")
           billboard.Name = "E"
           local frame = Instance.new("Frame")
           billboard.AlwaysOnTop = true
           billboard.Size = UDim2.new(4, 0, 5.5, 0)
           billboard.StudsOffset = Vector3.new(0, 0, 0)
           billboard.Adornee = adornee
           frame.BackgroundColor = BrickColor.new("Gray")
           frame.BackgroundTransparency = .35
           frame.BorderSizePixel = 0
           frame.Size = UDim2.new(1, 0, 1, 0)
           billboard.Parent = core
           frame.Parent = billboard
           billboard.Parent = v
       elseif v.Name == "Money Printer Advanced" then
           local billboard = Instance.new("BillboardGui")
           billboard.Name = "E"
           local frame = Instance.new("Frame")
           billboard.AlwaysOnTop = true
           billboard.Size = UDim2.new(4, 0, 5.5, 0)
           billboard.StudsOffset = Vector3.new(0, 0, 0)
           billboard.Adornee = adornee
           frame.BackgroundColor = BrickColor.new("Maroon")
           frame.BackgroundTransparency = .35
           frame.BorderSizePixel = 0
           frame.Size = UDim2.new(1, 0, 1, 0)
           billboard.Parent = core
           frame.Parent = billboard
           billboard.Parent = v
       else
       print("no printers")
       end
   end
end {\rtf1}