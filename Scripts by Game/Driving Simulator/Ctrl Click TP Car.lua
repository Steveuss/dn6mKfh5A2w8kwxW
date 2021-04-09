--Made by ScubsRelax on V3rmillion

local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Workspace["$cars"]["ur car name here"]:MoveTo(Mouse.Hit.p) --Put ur car name in the text string
end)