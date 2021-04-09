-- Instances:

local FlingandDrag = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")

--Properties:

FlingandDrag.Name = "Fling and Drag"
FlingandDrag.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = FlingandDrag
Frame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.832531333, 0, 0.620178044, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-0.0045141601, 0, 0.491246343, 0)
TextButton.Size = UDim2.new(0, 50, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Cfling"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.49000001, 0, 0.49000001, 0)
TextButton_2.Size = UDim2.new(0, 50, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Drag"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00451416057, 0, 0.239999995, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Fling and Drag"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.75, 0, 0, 0)
TextButton_3.Size = UDim2.new(0, 25, 0, 24)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "X"
TextButton_3.TextColor3 = Color3.fromRGB(255, 0, 4)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

-- Scripts:

local function SJBKFMT_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Down:Connect(function()
		local v = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
	    v.Parent = game.Players.LocalPlayer.Backpack
	    v.Handle.Massless = true
	    v.GripPos = Vector3.new(100000000000000,100000000000000,100000000000000)
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(92,92,92,92,92)
	    v.Parent = game.Players.LocalPlayer.Character
	end)
end
coroutine.wrap(SJBKFMT_fake_script)()
local function WPGMTA_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	script.Parent.MouseButton1Down:Connect(function()
		spawn(function()
		while true do
		game.Players.LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game.Players.LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
		game:GetService("RunService").Stepped:wait()
		end
		end)
		local LocalPlayer = game:GetService("Players").LocalPlayer
		local mouse = LocalPlayer:GetMouse()
		local unanchoredparts2 = {}
		local movers2 = {}
		 
		for index, part in pairs(workspace:GetDescendants())  do
		if part:IsA("Part") and part.Anchored == false and part:IsDescendantOf(LocalPlayer.Character) == false then
		table.insert(unanchoredparts2, part)
		if part:FindFirstChildOfClass("BodyPosition") ~= nil then
		part:FindFirstChildOfClass("BodyPosition"):Destroy()
		end
		end
		end
		for index, part in pairs(unanchoredparts2) do
		local mover2 = Instance.new("BodyPosition", part)
		table.insert(movers2, mover2)
		mover2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
		end
		local moving2 = true
		repeat
		for index, mover3 in pairs(movers2) do
		mover3.Position = mouse.Hit:PointToWorldSpace()
		end
		wait(0.5)
		until moving2 == false
	end)
end
coroutine.wrap(WPGMTA_fake_script)()
local function MBNHJP_fake_script() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript', TextButton_3)

	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(MBNHJP_fake_script)()