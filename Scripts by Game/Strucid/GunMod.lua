if getgenv().GunMod then
  return
end
local __namecall = getrawmetatable(game).__namecall
setreadonly(getrawmetatable(game), false)

getrawmetatable(game).__namecall = newcclosure(function(Argument_1, Argument_2, Argument_3, ...)
  if Argument_2 == 1 and Argument_3 == 21 or Argument_2 == "Recoil" then
    return
  end
  return __namecall(Argument_1, Argument_2, Argument_3, ...)
end)

local GlobalStuffTable = {}
for a,b in pairs(require(game:GetService("ReplicatedStorage").GlobalStuff)) do
  GlobalStuffTable[a] = b
end
--No Spread
GlobalStuffTable.ConeOfFire = function(Argument_1, Argument_2, Argument_3)
  return Argument_3
end

game:GetService("RunService").RenderStepped:Connect(function()
  pcall(function()
    debug.setupvalue(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Shoot, 36, GlobalStuffTable)
    --Firerate 1
    getfenv(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Shoot).wait = function()
      return game:GetService("RunService").RenderStepped:Wait()
    end
    --Inf ammo
    require(game:GetService("ReplicatedStorage").NetworkModule):FireServer("Animate", "Reload", nil, math.huge)
    for a,b in pairs(debug.getupvalue(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Reload, 7)) do
      if not debug.getupvalue(getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).Reload, 3).Pickaxe then
        b[2] = math.huge
        --Firerate 2
        b[5] = 0
      end
    end
    -- No Recoil
    getsenv(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainLocal).CameraRecoil = function() end
  end)
end)
getgenv().GunMod = true