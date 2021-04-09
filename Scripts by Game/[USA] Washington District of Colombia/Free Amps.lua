while true do wait()
   if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed ~= 25 then
       
local args;
args = {
   [1] = "Amphetamines",
   [2] = true,
}

game:GetService("ReplicatedStorage").Events.MedicineEvent:FireServer(unpack(args))

local args;
args = {
   [1] = "SpeedUp",
   [2] = 60,
}

game:GetService("ReplicatedStorage").Events.MedRequests:FireServer(unpack(args))
end
end