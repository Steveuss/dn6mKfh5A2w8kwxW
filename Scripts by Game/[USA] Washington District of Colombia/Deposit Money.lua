while true do
   wait(20)

local cash = game:GetService("Players").LocalPlayer.Cash.Value

game:GetService("ReplicatedStorage").Functions.BankDeposit:InvokeServer(cash)
end