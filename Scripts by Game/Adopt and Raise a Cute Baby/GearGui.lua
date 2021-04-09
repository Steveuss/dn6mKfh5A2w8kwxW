local MainScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local GiveGear = Instance.new("TextButton")
local OpenSettings = Instance.new("ImageButton")
local Close = Instance.new("TextButton")
local Settings = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local TextLabel1 = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local TextLabel2 = Instance.new("TextLabel")
local ImageButton_2 = Instance.new("ImageButton")
local OpenHolder = Instance.new("Frame")
local Open = Instance.new("TextButton")
--Properties:
MainScreenGui.Name = "MainScreenGui"
MainScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MainScreenGui.ResetOnSpawn = false

Frame.Parent = MainScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.372000009, 0, 0.291999996, 0)
Frame.Size = UDim2.new(0, 247, 0, 267)
Frame.Visible = false

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.new(0, 0.490196, 0.737255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.101214573, 0, 0.176029921, 0)
TextBox.Size = UDim2.new(0, 196, 0, 118)
TextBox.Font = Enum.Font.GothamBold
TextBox.PlaceholderColor3 = Color3.new(1, 1, 1)
TextBox.PlaceholderText = "Enter Any Gear ID Here"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

GiveGear.Name = "GiveGear"
GiveGear.Parent = Frame
GiveGear.BackgroundColor3 = Color3.new(0, 0.490196, 0.737255)
GiveGear.BorderSizePixel = 0
GiveGear.Position = UDim2.new(0.165991902, 0, 0.666666687, 0)
GiveGear.Size = UDim2.new(0, 165, 0, 34)
GiveGear.Font = Enum.Font.GothamBold
GiveGear.Text = "Give Gear"
GiveGear.TextColor3 = Color3.new(1, 1, 1)
GiveGear.TextScaled = true
GiveGear.TextSize = 14
GiveGear.TextWrapped = true

OpenSettings.Name = "OpenSettings"
OpenSettings.Parent = Frame
OpenSettings.BackgroundColor3 = Color3.new(1, 1, 1)
OpenSettings.BackgroundTransparency = 1
OpenSettings.BorderSizePixel = 0
OpenSettings.Size = UDim2.new(0, 34, 0, 34)
OpenSettings.Image = "rbxassetid://485882401"

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.894736826, 0, 0, 0)
Close.Size = UDim2.new(0, 26, 0, 27)
Close.Font = Enum.Font.Cartoon
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

Settings.Name = "Settings"
Settings.Parent = MainScreenGui
Settings.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Settings.BorderSizePixel = 0
Settings.Position = UDim2.new(0.371572614, 0, 0.291577637, 0)
Settings.Size = UDim2.new(0, 247, 0, 267)
Settings.Visible = false

ImageButton.Parent = Settings
ImageButton.BackgroundColor3 = Color3.new(0.937255, 0, 0)
ImageButton.BackgroundTransparency = 1
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.0412753932, 0, 0.113766849, 0)
ImageButton.Size = UDim2.new(0, 36, 0, 36)
ImageButton.Image = "rbxassetid://222831456"

TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = Settings
TextLabel1.BackgroundColor3 = Color3.new(0.180392, 0.180392, 0.180392)
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.226720646, 0, 0.0936329514, 0)
TextLabel1.Size = UDim2.new(0, 165, 0, 46)
TextLabel1.Font = Enum.Font.GothamBold
TextLabel1.Text = "Black Background"
TextLabel1.TextColor3 = Color3.new(1, 1, 1)
TextLabel1.TextScaled = true
TextLabel1.TextSize = 14
TextLabel1.TextWrapped = true

X.Name = "X"
X.Parent = Settings
X.BackgroundColor3 = Color3.new(1, 1, 1)
X.BackgroundTransparency = 1
X.Position = UDim2.new(0.894736826, 0, 0, 0)
X.Size = UDim2.new(0, 26, 0, 25)
X.Font = Enum.Font.Cartoon
X.Text = "X"
X.TextColor3 = Color3.new(1, 0, 0)
X.TextScaled = true
X.TextSize = 14
X.TextWrapped = true

TextLabel2.Name = "TextLabel2"
TextLabel2.Parent = Settings
TextLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position = UDim2.new(0.226720646, 0, 0.333333313, 0)
TextLabel2.Size = UDim2.new(0, 165, 0, 46)
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.Text = "Light Blue Background"
TextLabel2.TextColor3 = Color3.new(1, 1, 1)
TextLabel2.TextScaled = true
TextLabel2.TextSize = 14
TextLabel2.TextWrapped = true

ImageButton_2.Parent = Settings
ImageButton_2.BackgroundColor3 = Color3.new(0.937255, 0, 0)
ImageButton_2.BackgroundTransparency = 1
ImageButton_2.BorderSizePixel = 0
ImageButton_2.Position = UDim2.new(0.0412753932, 0, 0.349721909, 0)
ImageButton_2.Size = UDim2.new(0, 36, 0, 36)
ImageButton_2.Image = "rbxassetid://222831456"

OpenHolder.Name = "OpenHolder"
OpenHolder.Parent = MainScreenGui
OpenHolder.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenHolder.BorderSizePixel = 0
OpenHolder.Position = UDim2.new(0.00751879718, 0, 0.824534178, 0)
OpenHolder.Size = UDim2.new(0, 154, 0, 39)

Open.Name = "Open"
Open.Parent = OpenHolder
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 1
Open.BorderSizePixel = 0
Open.Position = UDim2.new(-0.000274261867, 0, -0.0205469374, 0)
Open.Size = UDim2.new(0, 154, 0, 39)
Open.Font = Enum.Font.GothamBold
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
-- Scripts:
function SCRIPT_KCHS89_FAKESCRIPT() -- GiveGear.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = GiveGear
	script.Parent.MouseButton1Click:connect(function()
		game.ReplicatedStorage.WearItem:FireServer("Shirt", script.Parent.Parent.TextBox.Text, false)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KCHS89_FAKESCRIPT))
function SCRIPT_LSHF72_FAKESCRIPT() -- OpenSettings.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = OpenSettings
	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.Frame.Visible = false
	script.Parent.Parent.Parent.Settings.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_LSHF72_FAKESCRIPT))
function SCRIPT_NGDA90_FAKESCRIPT() -- Close.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Close
	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.OpenHolder.Visible = true
	script.Parent.Parent.Parent.Settings.Visible = false
	script.Parent.Parent.Parent.Frame.Visible = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NGDA90_FAKESCRIPT))
function SCRIPT_LEOF68_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Frame
	    local a=game:GetService("UserInputService")local b=script.Parent;local c;local d;local e;local f;local function g(h)local i=h.Position-e;b.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end;b.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then c=true;e=h.Position;f=b.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)b.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then d=h end end)a.InputChanged:Connect(function(h)if h==d and c then g(h)end end)

end
coroutine.resume(coroutine.create(SCRIPT_LEOF68_FAKESCRIPT))
function SCRIPT_XGRE81_FAKESCRIPT() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = ImageButton
	local main = script.Parent.Parent.Parent.Frame
	local settings = script.Parent.Parent.Parent.Settings
	local openholder = script.Parent.Parent.Parent.OpenHolder
	
	script.Parent.MouseButton1Click:Connect(function()
	main.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	settings.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	openholder.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
	script.Parent.Parent.Parent.Frame.TextBox.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
	script.Parent.Parent.Parent.Frame.GiveGear.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
	script.Parent.Parent.Parent.Credits.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XGRE81_FAKESCRIPT))
function SCRIPT_VBLB85_FAKESCRIPT() -- X.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = X
	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.Frame.Visible = true
	script.Parent.Parent.Parent.Settings.Visible = false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VBLB85_FAKESCRIPT))
function SCRIPT_PEZB84_FAKESCRIPT() -- Settings.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Settings
	    local a=game:GetService("UserInputService")local b=script.Parent;local c;local d;local e;local f;local function g(h)local i=h.Position-e;b.Position=UDim2.new(f.X.Scale,f.X.Offset+i.X,f.Y.Scale,f.Y.Offset+i.Y)end;b.InputBegan:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then c=true;e=h.Position;f=b.Position;h.Changed:Connect(function()if h.UserInputState==Enum.UserInputState.End then c=false end end)end end)b.InputChanged:Connect(function(h)if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then d=h end end)a.InputChanged:Connect(function(h)if h==d and c then g(h)end end)

end
coroutine.resume(coroutine.create(SCRIPT_PEZB84_FAKESCRIPT))
function SCRIPT_FVZA78_FAKESCRIPT() -- ImageButton_2.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = ImageButton_2
	local main = script.Parent.Parent.Parent.Frame
	local settings = script.Parent.Parent.Parent.Settings
	local openholder = script.Parent.Parent.Parent.OpenHolder
	
	script.Parent.MouseButton1Click:Connect(function()
	main.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	settings.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	openholder.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
	script.Parent.Parent.Parent.Frame.TextBox.BackgroundColor3 = Color3.fromRGB(0, 125, 188)
	script.Parent.Parent.Parent.Frame.GiveGear.BackgroundColor3 = Color3.fromRGB(0, 125, 188)
	script.Parent.Parent.Parent.Credits.BackgroundColor3 = Color3.fromRGB(0, 125, 188)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_FVZA78_FAKESCRIPT))
function SCRIPT_DZQI77_FAKESCRIPT() -- Open.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Open
	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.OpenHolder.Visible = false
	script.Parent.Parent.Parent.Frame.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DZQI77_FAKESCRIPT))
	local script = Instance.new('LocalScript')
	script.Parent = Open
	script.Parent.MouseButton1Click:Connect(function()
	script.Parent.Parent.Parent.OpenHolder.Visible = false
	script.Parent.Parent.Parent.Frame.Visible = true
	end)
