--Made by j j k on v3rmllion

function newRadarESP(c)
   local radarESP = game.ReplicatedStorage.Assets.RadarPing:Clone()
   radarESP.Parent = c.Head
end
for i,v in pairs(game.Players:GetPlayers())do
   if v~=game.Players.LocalPlayer then
       newRadarESP(v.Character)
       v.CharacterAdded:Connect(function(c)
           repeat wait()until c:FindFirstChild("Head")
           newRadarESP(c)
       end)
   end
end
game.Players.PlayerAdded:Connect(function(p)
   p.CharacterAdded:Connect(function(c)
       repeat wait()until c:FindFirstChild("Head")
       newRadarESP(c)
   end)
end)