--[[

Uctron's FE PM Spam

Change the message to whatever you want.
Wait_Time can be anything .35 and over. Anything under .35 will give you message errors.

Reset to stop the FE PM spamming.

]]

Message = "Suck"
Wait_Time = .35

repeat game:GetService("RunService").RenderStepped:Wait()
for i=1,game.Players.NumPlayers do
if game.Players:GetChildren()[0+1*i].Name == game.Players.LocalPlayer.Name then
else
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..game.Players:GetChildren()[0+1*i].Name.." "..Message,"All")
wait(Wait_Time)
end
end
until game.Players.LocalPlayer.Character.Humanoid.Health == 0
