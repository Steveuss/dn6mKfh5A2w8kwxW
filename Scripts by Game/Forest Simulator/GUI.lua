-- Gui to Lua
-- Version: 3

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Farm = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local Rebirth = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
MainFrame.Position = UDim2.new(0.119850188, 0, 0.324478179, 0)
MainFrame.Size = UDim2.new(0, 323, 0, 53)
MainFrame.Draggable = true
MainFrame.Active = true

Frame.Parent = MainFrame
Frame.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame.Position = UDim2.new(0, 0, 0.254489124, 0)
Frame.Size = UDim2.new(0, 323, 0, 122)

Farm.Name = "Farm"
Farm.Parent = Frame
Farm.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Farm.Position = UDim2.new(0, 0, 0.342188448, 0)
Farm.Size = UDim2.new(0, 123, 0, 42)
Farm.Font = Enum.Font.SourceSans
Farm.Text = "Farm"
Farm.TextColor3 = Color3.new(0, 0, 0)
Farm.TextSize = 22
Farm.TextWrapped = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TextBox.Size = UDim2.new(0, 123, 0, 42)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.new(0, 0, 0)
TextBox.PlaceholderText = "Number of farm"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextSize = 14

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.470588, 0.470588, 0.470588)
TextLabel.Position = UDim2.new(0.380804956, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 122)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Place in the TextBox the number of what place you want to farm. 1 to 12. Place \"T\" before the number."
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Rebirth.Name = "Rebirth"
Rebirth.Parent = Frame
Rebirth.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Rebirth.Position = UDim2.new(0, 0, 0.686450779, 0)
Rebirth.Size = UDim2.new(0, 123, 0, 38)
Rebirth.Font = Enum.Font.SourceSans
Rebirth.Text = "Auto Rebirth"
Rebirth.TextColor3 = Color3.new(0, 0, 0)
Rebirth.TextSize = 17

Farm.MouseButton1Click:connect(function()
local _1 = "Axe"
local Evet = game:GetService("ReplicatedStorage").Remotes.EquipTool
Evet:FireServer(_1)
wait(0.2)

local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
while wait() do
  plr.CFrame = game:GetService("Workspace").SellALL.CFrame
  wait(0.1)
  for i,v in pairs(game:GetService("Workspace").DestroyableItems[TextBox.Text].Trees:GetChildren()) do
      if v.HitBox then
          plr.CFrame = v.HitBox.CFrame
          repeat
              wait()
              local A_1 = v.HitBox
              local Event = game.Players.LocalPlayer.Character:findFirstChildOfClass("Tool").Remote
              Event:FireServer(A_1)
          until v.Health.Value < 0
      end
  end
end
end)
Rebirth.MouseButton1Click:connect(function()
while wait(10) do
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(A_2)
end
end)