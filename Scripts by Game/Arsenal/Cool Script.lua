local library = loadstring(game:HttpGet('http://clintonscripts.xyz/hub/uiLibrary.lua'))()

setting = {}
local a;
local b;
for i,v in next, getgc() do
   if (type(v) == 'function') and (debug.getinfo(v).name == 'firebullet') then
      a = getfenv(v);
      b = v;
   end
end
local wshook;
wshook = hookfunction(a.speedupdate, function()
   return;
end)

function partPos(part)
   return workspace.CurrentCamera:WorldToViewportPoint(part)
end

function esp(char)
   coroutine.resume(coroutine.create(function()
      local espBox = Drawing.new('Square')
      espBox.Color = Color3.fromRGB(68, 123, 212)
      espBox.Thickness = 2
      espBox.Filled = false
      espBox.Transparency = 0.8
      local line = Drawing.new('Line')
      line.From = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y)
      line.Color = Color3.fromRGB(68,123,212)
      line.Thickness = 2

      game:GetService('RunService').Stepped:connect(function()
         if char ~= nil then
            local rootPos = partPos(char.HumanoidRootPart.Position)
            local headPos = partPos(char.Head.Position + Vector3.new(0,0.5,0))
            local legPos = partPos(char.HumanoidRootPart.Position - Vector3.new(0,3,0))
            espBox.Size = Vector2.new(2350 / rootPos.Z, headPos.Y - legPos.Y)
            espBox.Position = Vector2.new(rootPos.X - espBox.Size.X / 2, rootPos.Y - espBox.Size.Y / 2)
            line.To = Vector2.new(partPos(char.HumanoidRootPart.Position).X, partPos(char.HumanoidRootPart.Position).Y)
         end
         local _, screen = workspace.CurrentCamera:WorldToViewportPoint(char.HumanoidRootPart.Position)
         pcall(function()
           if screen and (game.Players:GetPlayerFromCharacter(char).Team ~= game.Players.LocalPlayer.Team or setting.ffa) then
              if setting.esp and setting.espBox then
                 espBox.Visible = true
              else
                 espBox.Visible = false
              end
              if setting.esp and setting.espLine then
                 line.Visible = true
              else
                 line.Visible = false
              end
           else
              espBox.Visible = false
              line.Visible = false
           end
         end)
      end)
   end))
end
for i,v in next, game.Players:GetPlayers() do
   if v ~= game.Players.LocalPlayer then
      if v.Character:FindFirstChild('HumanoidRootPart') then
         esp(v.Character)
      end
      v.CharacterAdded:connect(function(char)
         esp(char)
      end)
   end
end

game.Players.PlayerAdded:connect(function (plr)
   if plr:FindFirstChild('HumanoidRootPart') then
      esp(v.Character)
   end
   plr.CharacterAdded:connect(function(char)
      esp(char)
   end)
end)

coroutine.resume(coroutine.create(function()
  local localPlayer = game:GetService("Players").LocalPlayer
  local currentCamera = game:GetService("Workspace").CurrentCamera
  local mouse = localPlayer:GetMouse()
  local teamCheck = true

  function getClosestPlayerToCursor() [nonamecall]
      local closestPlayer = nil
      local shortestDistance = math.huge

      for i, v in pairs(game:GetService("Players"):GetPlayers()) do
          if v.Name ~= localPlayer.Name then
              if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and teamCheck and v.Team ~= localPlayer.Team then
                  local pos = currentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                  local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude

                  if magnitude < shortestDistance then
                      closestPlayer = v
                      shortestDistance = magnitude
                  end
              elseif v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") and not teamCheck then
                  local pos = currentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                  local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude

                  if magnitude < shortestDistance then
                      closestPlayer = v
                      shortestDistance = magnitude
                  end
              end
          end
      end

      return closestPlayer or localPlayer
  end

  local mt = getrawmetatable(game)
  local oldNamecall = mt.__namecall
  if setreadonly then setreadonly(mt, false) else make_writeable(mt, true) end
  local namecallMethod = getnamecallmethod or get_namecall_method
  local newClose = newcclosure or function(f) return f end

  mt.__namecall = newClose(function(...) [nonamecall]
      local method = namecallMethod()
      local args = {...}
        if tostring(method) == "FireServer" and tostring(args[1]) == "HitPart" and setting.silentAim then
            args[2] = getClosestPlayerToCursor().Character.Head
            args[3] = getClosestPlayerToCursor().Character.Head.Position
        end
        if tostring(method) == "FindPartOnRayWithIgnoreList" and setting.wallbang then
            table.insert(args[3], workspace.Map)
        end
      return oldNamecall(unpack(args))
  end)

  if setreadonly then setreadonly(mt, true) else make_writeable(mt, false) end
end))

game:GetService("UserInputService").JumpRequest:connect(function()
	if setting.infJump then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

local m = library:CreateWindow('Main', -25)
m:Section('Character')
m:Toggle('Infinite Jump', function(state)
  setting.infJump = state
end)
m:Slider('WalkSpeed', {min=0, max=100}, function(num)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num
end)
m:Section('Guns')
m:Toggle('Infinite Ammo', function(state)
  setting.infAmmo = state
  coroutine.resume(coroutine.create(function()
     while setting.infAmmo do wait()
        debug.setupvalue(b,3,999)
     end
  end))
end)
m:Toggle('No Recoil', function(state)
  setting.noRecoil = state
  coroutine.resume(coroutine.create(function()
     while setting.noRecoil do wait()
        a.recoil = 0
     end
  end))
end)
m:Toggle('No Spread', function(state)
  setting.noSpread = state
  coroutine.resume(coroutine.create(function()
     while setting.noSpread do wait()
        a.currentspread = 0
        a.spreadmodifier = 0
     end
  end))
end)
m:Toggle('Always Auto', function(state)
  setting.alwaysAuto = state
  coroutine.resume(coroutine.create(function()
     while setting.alwaysAuto do wait()
        a.mode = 'automatic'
     end
  end))
end)
m:Toggle('Silent Aim', function(state)
  setting.silentAim = state
end)
m:Toggle('Wallbang', function(state)
  setting.wallbang = state
end)
local e = library:CreateWindow('ESP', -25)
e:Toggle('ESP', function(state)
  setting.esp = state
end)
e:Toggle('Boxes', function(state)
  setting.espBox = state
end)
e:Toggle('Lines', function(state)
  setting.espLine = state
end)
e:Toggle('Show Team', function(state)
  setting.ffa = state
end)