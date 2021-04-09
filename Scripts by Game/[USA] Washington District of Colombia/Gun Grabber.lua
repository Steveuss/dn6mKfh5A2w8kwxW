while true do wait()
   if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health == 0 then
       wait(6)
local args;
args = {
   [1] = "SCAR-L", --Change to whatever
   [2] = "CellPhone",
}

game:GetService("ReplicatedStorage").Events.ToolRequest:FireServer(unpack(args))
end
end