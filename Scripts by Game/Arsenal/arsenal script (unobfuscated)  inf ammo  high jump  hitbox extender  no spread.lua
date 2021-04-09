--Created by HttpGet on V3rmillion


local Script = game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client
local ran = false
local tables = {}
local w = wait

for i,v in pairs(getgc()) do
   if type(v) == "function" then
       tables[i] = v
       getgc()[i] = function(...)
           if ran == false then
               if getfenv(0).script == Script then
                   ran = true
                   local t = getfenv(0)
                   
                   t.getammo = function()
                       return 999
                   end
                   
                   coroutine.resume(coroutine.create(function()
                       while wait() do
                           t.wait = function(num) if num == nil then num = 1/60 end return w(num/60) end
                           t.speedupdate(20)
                           t.reloadtime = 0
                           t.spreadmodifier = 0
                           t.CRITBOOSTED = true
                           t.JP = 30
                           t.TickTime = 0.01
                           t.speedb = true
                           t.speedboost = true
                       end
                   end))
                   
               end
           end
           return tables[i](...)
       end
   end
end
local players = game:GetService("Players")
local plr = players.LocalPlayer
coroutine.resume(coroutine.create(function()
	while  wait(1) do
		coroutine.resume(coroutine.create(function()
			for _,v in pairs(players:GetPlayers()) do
				if v.Name ~= plr.Name and v.Character then
					v.Character.LowerTorso.CanCollide = false
					v.Character.LowerTorso.Material = "Neon"
					v.Character.LowerTorso.Size = Vector3.new(20,20,20)
					v.Character.HumanoidRootPart.Size = Vector3.new(20,20,20)
				end
			end
		end))
	end
end))