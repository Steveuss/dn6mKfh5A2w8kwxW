--Made by Gogo1000

function GunMods()
  while wait(0.3) do
    for i, v in pairs(getgc(true)) do
      if type(v) == "table" and rawget(v, "CurrentClip") then
        v.ClipSize = math.huge
        v.Accuracy = 0
        v.Automatic = true
        v.FireRate = 10000
        v.StoredAmmo = math.huge
        v.CurrentClip = math.huge
        v.RecoilMultiplier = 0
        v.AimDownSightsRecoilModifyer = 0
        v.CameraRecoil = 0
        v.BulletVelocity = 3000
        v.SmallWeapon = true
        v.PumpAction = false
        v.BoltAction = false
      end
    end
  end
end
function TpAll()
  while wait(0.0001) do
    for _, a in pairs(game.Players:children()) do
      pcall(function()
      if (a ~= game.Players.LocalPlayer and a.Character.Humanoid.Health > 0) then
        wait(0.0001)
        for _, b in pairs(a.Character:children()) do
          if b:IsA'Part' then
            local targetplayer = b
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
              targetplayer.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 10
            end
          end
        end
      end
      end)
    end
  end
end
spawn(TpAll)
spawn(GunMods)