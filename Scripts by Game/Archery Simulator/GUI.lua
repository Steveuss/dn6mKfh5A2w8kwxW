local ScreenGui = Instance.new("ScreenGui")
local Gay = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Button = Instance.new("TextButton")
local Button1 = Instance.new("TextButton")
local Button2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Gay.Name = "Gay"
Gay.Parent = ScreenGui
Gay.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Gay.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Gay.BorderSizePixel = 0
Gay.Position = UDim2.new(0.105596617, 0, 0.266401589, 0)
Gay.Size = UDim2.new(0, 394, 0, 250)

Frame.Parent = Gay
Frame.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame.BorderColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame.Size = UDim2.new(0, 394, 0, 13)

Frame_2.Parent = Gay
Frame_2.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame_2.BorderColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame_2.Position = UDim2.new(0, 0, 0.948000014, 0)
Frame_2.Size = UDim2.new(0, 394, 0, 13)

Button.Name = "Button"
Button.Parent = Gay
Button.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Button.BorderColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 0.328000009, 0)
Button.Size = UDim2.new(0, 169, 0, 42)
Button.Font = Enum.Font.SourceSans
Button.Text = "TP Targets"
Button.TextColor3 = Color3.new(1, 1, 1)
Button.TextSize = 20

Button1.Name = "Button1"
Button1.Parent = Gay
Button1.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0.284263968, 0, 0.612000048, 0)
Button1.Size = UDim2.new(0, 169, 0, 43)
Button1.Font = Enum.Font.SourceSans
Button1.Text = "TP Coins"
Button1.TextColor3 = Color3.new(1, 1, 1)
Button1.TextSize = 20

Button2.Name = "Button2"
Button2.Parent = Gay
Button2.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Button2.BorderColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Button2.BorderSizePixel = 0
Button2.Position = UDim2.new(0.571065962, 0, 0.328000009, 0)
Button2.Size = UDim2.new(0, 169, 0, 42)
Button2.Font = Enum.Font.SourceSans
Button2.Text = "INF Arrows"
Button2.TextColor3 = Color3.new(1, 1, 1)
Button2.TextSize = 20

TextLabel.Parent = Gay
TextLabel.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
TextLabel.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
TextLabel.Position = UDim2.new(0.263862908, 0, 0.0841510892, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "Archery Simulator GUI"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 30

Button.MouseButton1Down:Connect(function()
local p = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
for _,v in ipairs(workspace.World1:GetChildren()) do
  if v.Name == "target" then
      v:MoveTo(Vector3.new(p.x, p.y, p.z))
  end
end
	end)

Button1.MouseButton1Down:Connect(function()
for _,v in ipairs(workspace.aimignore.pickups.World1:GetChildren()) do
   if v.Name == "pickup" then
       v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end
	end)

Button2.MouseButton1Down:Connect(function()
while wait(.1) do
for _,v in ipairs(workspace.aimignore.ammo:GetChildren()) do
   if v.Name == "touch" then
       v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
   end
end
end
	end)

script.Parent = Gay
	Gay.Draggable = true
	Gay.Active = true