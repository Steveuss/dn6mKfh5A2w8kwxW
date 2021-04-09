--Speed Edit Made by Lindsay @ V3rmillion.net, this is simple as fuck.


--
local SpeedEdit = Instance.new('ScreenGui', game.Players.LocalPlayer.PlayerGui)
SpeedEdit.Name = 'SpeedEdit'
SpeedEdit.Enabled = true
SpeedEdit.ResetOnSpawn = false
--
local Drag = Instance.new('Frame', SpeedEdit)
Drag.Name = 'Drag'
Drag.Size = UDim2.new(0.3,0,0,20)
Drag.Active = true
Drag.Draggable = true
Drag.BackgroundTransparency = 0.5
--
local Speeed = Instance.new('TextBox', Drag)
Speeed.Position = UDim2.new(0,0,0,20)
Speeed.Name = 'Speeed'
Speeed.Size = Drag.Size
Speeed.Visible = false
Speeed.BackgroundTransparency = 0.7
Speeed.Text = 'Press x to focus.'
Speeed.TextSize = 8
--
local P = Instance.new('TextButton', Drag)
P.Name = 'P'
P.Position = UDim2.new(0,0,0,0)
P.Size = UDim2.new(0,20,0,20)
P.BackgroundTransparency = 1
P.Text = 'P'
P.TextSize = 14
P.Font = 'SciFi'
--
local ChangePlr = Instance.new('TextBox', Drag)
ChangePlr.Name = 'ChangePlr'
ChangePlr.BackgroundTransparency = 0.7
ChangePlr.Size = Speeed.Size
ChangePlr.Position = Speeed.Position
ChangePlr.Text = 'Player'
ChangePlr.Font = 'Legacy'
ChangePlr.TextSize = 8
ChangePlr.Visible = false
--
local ChangeValue = Instance.new('TextBox', Drag)
ChangeValue.Name = 'ChangeValue'
ChangeValue.BackgroundTransparency = 0.7
ChangeValue.Size = Speeed.Size
ChangeValue.Position = Speeed.Position
ChangeValue.Text = 'WalkSpeed'
ChangeValue.Font = 'Legacy'
ChangeValue.TextSize = 8
ChangeValue.Visible = false
--
local ChangeExec = Instance.new('TextButton', Drag)
ChangeExec.Name = 'ChangeExec'
ChangeExec.BackgroundTransparency = 0.7
ChangeExec.Size = Speeed.Size
ChangeExec.Position = Speeed.Position
ChangeExec.Text = "Change Player's walkspeed to WalkSpeed."
ChangeExec.Font = 'Legacy'
ChangeExec.TextSize = 10
ChangeExec.Visible = false
--
local OpenNClose = Instance.new('TextButton', Drag)
OpenNClose.Name = 'OpenNClose'
OpenNClose.Size = UDim2.new(0,15,0,20)
OpenNClose.Position = UDim2.new(0.9,10,0,0)
OpenNClose.Text = '+'
OpenNClose.BackgroundTransparency = 1
--
local Namee = Instance.new('TextLabel', Drag)
Namee.Name = 'Namee'
Namee.Size = UDim2.new(1,0,0,15)
Namee.Text = 'Walkspeed Edit'
Namee.Font = 'SciFi'
Namee.TextSize = 18
Namee.BackgroundTransparency = 1
--

local Speed = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.Speeed
local OpenNClose = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.OpenNClose
local Name = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.Namee
local Mouse = game.Players.LocalPlayer:GetMouse()
local P = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.P
local ChangePlr = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.ChangePlr
local ChangeValue = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.ChangeValue
local ChangeExec = game.Players.LocalPlayer.PlayerGui.SpeedEdit.Drag.ChangeExec

OpenNClose.MouseButton1Down:connect(function()
if Speed.Visible == false and ChangeValue.Visible == false then
OpenNClose.Text = '-'
--This is appear
Speed.Visible = true
Speed:TweenSize(UDim2.new(1,0,0,20), 'InOut', 'Linear', 0.3, true)
wait(0.3)
elseif
Speed.Visible == true then
OpenNClose.Text = '+'
--This is go away
Speed:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Linear', 0.3, true)
Speed.Text = ''
wait(0.3)
Speed.Visible = false
end
end)

Mouse.KeyDown:connect(function(key)
if key == 'x' and Speed.Visible == true and ChangeValue.Visible == false then Speed:CaptureFocus()
elseif key == 'x' and ChangeValue.Visible == true and Speed.Visible == false then ChangePlr:CaptureFocus()
end
end)


Speed.FocusLost:connect(function(Entered)
if Entered and Speed.Text ~= '' then 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed.Text else
end
end)

ChangePlr.FocusLost:connect(function(Enter)
if Enter and ChangeExec.Text ~= '' then
ChangeValue:CaptureFocus()
end
end)

ChangeValue.FocusLost:connect(function(Enterr)
if Enterr and ChangeValue.Text ~= '' then
local plr = ChangePlr.Text
local val = ChangeValue.Text
game.Players[plr].Character.Humanoid.WalkSpeed = val
end
end)

--Open
P.MouseButton1Down:connect(function()
if Speed.Visible == true and ChangeValue.Visible == true then print('Aye') elseif Speed.Visible == false and ChangeValue.Visible == false then
ChangePlr.Visible = true
ChangePlr:TweenSize(UDim2.new(1,0,0,20), 'InOut', 'Linear', 0.3, true)
ChangePlr.Text = 'Player'
wait(0.3)
ChangeValue.Visible = true
ChangeValue:TweenSizeAndPosition(UDim2.new(1,0,0,20), UDim2.new(0,0,0,40), 'InOut', 'Linear', 0.3, true)
ChangeValue.Text = 'WalkSpeed'
wait(0.3)
ChangeExec.Visible = true
ChangeExec:TweenSizeAndPosition(UDim2.new(1,0,0,20), UDim2.new(0,0,0,60), 'InOut', 'Linear', 0.3, true)
ChangeExec.Text = "Change Player's WalkSpeed"
end
end)

--Close
P.MouseButton1Down:connect(function()

   ChangeExec:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Linear', 0.3, true)
ChangeExec.Text = ''
wait(0.3)
ChangeExec.Visible = false

if ChangeValue.Visible == true then
ChangeValue.Text = ''
ChangeValue:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Linear', 0.3, true)
wait(0.3)
ChangeValue.Visible = false

ChangePlr:TweenSize(UDim2.new(1,0,0,0), 'InOut', 'Linear', 0.3, true)
ChangePlr.Text = ''
wait(0.3)
ChangePlr.Visible = false

end
end)
