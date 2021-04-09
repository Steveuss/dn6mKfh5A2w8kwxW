--[[
Script by Uctron
V3rmillion | https://v3rmillion.net/member.php?action=profile&uid=698785

You may use this method (if you understand how it would work) if you want to make Simon Says scripts, but please credit me.
]]

local Gui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local RectangleTool = Instance.new("Tool")
local Handle = Instance.new("Part")

Handle.Name = "Handle"
Handle.Transparency = 1
Handle.Parent = RectangleTool

Frame.BackgroundColor3 = Color3.fromRGB(255,128,0)
Frame.BackgroundTransparency = .625
Frame.BorderColor3 = Color3.fromRGB(0,255,0)
Frame.BorderSizePixel = 2
Frame.Size = UDim2.new(.5,0,.5,0)
Frame.Position = UDim2.new(.5,0,.5,0)
Frame.Visible = false
Frame.Parent = Gui
Gui.Parent = game.Players.LocalPlayer.PlayerGui

RectangleTool.Equipped:Connect(function()
    Frame.Visible = true
end)

RectangleTool.Unequipped:Connect(function()
    Frame.Visible = false
end)

RectangleTool.Name = "FE Rectangle Tool"
RectangleTool.Parent = game.Players.LocalPlayer.Backpack

spawn(function()
repeat game.RunService.Heartbeat:Wait()
if MouseDown then
if game.Players.LocalPlayer:GetMouse().X > (game.Players.LocalPlayer:GetMouse().ViewSizeX/2) and game.Players.LocalPlayer:GetMouse().Y > (game.Players.LocalPlayer:GetMouse().ViewSizeY/2) and game.Players.LocalPlayer.Character:FindFirstChild("FE Rectangle Tool") then
workspace.BasicCommand:FireServer(nil, string.rep("\n"..string.rep("█", (game.Players.LocalPlayer:GetMouse().X/7)-(game.Players.LocalPlayer:GetMouse().ViewSizeX/2)/7),(game.Players.LocalPlayer:GetMouse().Y/10)-((game.Players.LocalPlayer:GetMouse().ViewSizeY/2)/9.25)), .25, nil, nil, nil)
end
wait(.25)
end
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
end)
repeat game.RunService.Heartbeat:Wait()
game.Players.LocalPlayer:GetMouse().Button1Down:Wait()
MouseDown = true
game.Players.LocalPlayer:GetMouse().Button1Up:Wait()
MouseDown = false
until game.Players.LocalPlayer.Character.Humanoid.Health == 0