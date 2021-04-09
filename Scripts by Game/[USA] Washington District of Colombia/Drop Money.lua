while true do wait()
local cash = -6000

game:GetService("ReplicatedStorage").Functions.BankDeposit:InvokeServer(cash)

local args;
args = {
   [1] = game.Players.jakeb1818.Character.HumanoidRootPart.Position,
}

game:GetService("ReplicatedStorage").Events.SpawnMoney:FireServer(unpack(args))
end