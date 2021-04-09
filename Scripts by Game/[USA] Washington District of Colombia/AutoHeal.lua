while true do wait()
   if game.Players.LocalPlayer.Team == Prisoners then
end  
   if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health == 0 then
       wait(8)
   elseif
game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health < 150 then
game:GetService("Workspace").GUIGiver.CanCollide = false
game:GetService("Workspace").GUIGiver.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("GunBuyingGui").Main.Visible = false
   wait(.25)
local args;
args = {
   [1] = "Body Armour",
   [2] = "GunBuyingGui",
}
game:GetService("ReplicatedStorage").Events.ToolRequest:FireServer(unpack(args))
end
end