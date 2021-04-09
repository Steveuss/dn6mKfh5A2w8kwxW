--Made by RagingGam0r
--Run With PNG Script

_G.key = nil
_G.layerkey = nil
local old
old = hookfunction(Instance.new("RemoteFunction").InvokeServer, function(self, ...) -- this whole hookfunction is stolen from "builderboy256" as im using it to get the key/layerkey so i can fire the remote inside the "drawpixel" function ALL CREDITS TO HIM FOR THIS FUNCTION
local args = {...}
_G.key = args[1]
_G.layerkey = args[3].Layer
return old(self, ...)
end)
local h = Instance.new("Hint", workspace)
h.Text = "Draw a line to load the script (getting keys)"
repeat wait() until _G.key and _G.layerkey
h.Text = "Grabbed " .. tostring(_G.key) .. " " .. tostring(_G.layerkey)
hookfunction(Instance.new("RemoteFunction").InvokeServer, old)

game.Workspace:FindFirstChild("LayerCollectors")[game.Players.LocalPlayer.UserId][_G.layerkey].ChildAdded:Connect(function()
_G.CANCONTINUE = true
end)

_G.CURRENTLYRATELIMITED = false
_G.CANCONTINUE = false

_G.drawspeed = .005
_G.RATEDRAWS = .005
local function drawpixel(x, y, color, transp) -- base idea of this code was also took from builderboy256
if _G.CURRENTLYRATELIMITED == true then
wait(_G.RATEDRAWS)
game:GetService("Players").LocalPlayer.PlayerGui.UI.DialogContainer.Dialog.Visible = false
_G.CURRENTLYRATELIMITED = false
end
repeat
game.ReplicatedStorage.Request:InvokeServer(_G.key, "draw", {Color=color,Transparency=0,Layer=_G.layerkey,Thickness=2}, {Vector3.new(x+.1, 0, y), Vector3.new(x+.1, 0, y), Vector3.new(x+.1, 0, y+.1)})
until _G.CANCONTINUE == true
_G.CANCONTINUE = false
end

game.ReplicatedStorage.Fire.OnClientEvent:Connect(function(dia, dia2, dia3, dia4)
if tostring(dia2) == "Rate limited" then
game:GetService("Players").LocalPlayer.PlayerGui.UI.DialogContainer.Dialog.Visible = true
_G.CURRENTLYRATELIMITED = true
end
end)


local hint = h--game.workspace:FindFirstChildOfClass("Hint")
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
local tppos = nil
game:GetService("Lighting").DialogEffect:Destroy()
for i,v in pairs(game.CoreGui.ScreenGui.Frame:GetChildren()) do
   if v:IsA("Frame") then
       for i2,v2 in pairs(v:GetChildren()) do
           if v2:IsA("Frame") and v2.BackgroundTransparency ~= 1 then
               hint.Text = ("N: ".. tostring(v2.Name).. " BT: " .. tostring(v2.BackgroundTransparency) .. " B3: ".. tostring(Color3.fromHSV(v2.BackgroundColor3.R, v2.BackgroundColor3.G, v2.BackgroundColor3.B)).. " V2: ".. tostring(v2.AbsolutePosition))
               _G.currentcolor = v2.BackgroundColor3
drawpixel(v2.AbsolutePosition.X, v2.AbsolutePosition.Y, v2.BackgroundColor3, v2.BackgroundTransparency)
if tppos == nil then
tppos = CFrame.new(v2.AbsolutePosition.X, 10, v2.AbsolutePosition.Y)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tppos
end
               wait(_G.drawspeed)
v2.BackgroundTransparency = 1
           end
       end
   end
end
print("done")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = tppos
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
