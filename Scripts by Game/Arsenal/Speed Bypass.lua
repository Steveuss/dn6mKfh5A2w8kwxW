local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")
local keydown = false



UIS.InputBegan:Connect(function(Input)

   if Input.KeyCode == Enum.KeyCode.Q then -- you can change Q to a different keybind
      keydown = true
   end
end)

UIS.InputEnded:Connect(function(Input)
   if Input.KeyCode == Enum.KeyCode.Q then -- change this as well
       keydown = false
   end
end)

while true do
wait(0.02) -- change cooldown for more speed / less speed
if keydown then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2.5)
end
end