wait(.2)
whitelist = {game.Players.LocalPlayer.Name,"friend1","friend2"} -- put admin names here
banlist = {"noob","noob2"} -- put noob names here
deletepath = game.Players.LocalPlayer.Character:FindFirstChild("Delete")
deletepath2 = game.Players.LocalPlayer.Backpack:FindFirstChild("Delete")
slock = false
local noclip = false
local flydab = false
local disablehotkeys = false

local function death2(part)
local humanoid = part.Parent:FindFirstChild("Humanoid")
local epicpar = humanoid.Parent
if (humanoid ~= nil and epicpar.Name ~= game.Players.LocalPlayer.Name and epicpar.Name ~= "Vortexturize") then
game.ReplicatedStorage.Event:FireServer("TPD", 0.1, humanoid)
end
end

function notify(title,text,duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration; 
    })
end


local function death(part)
local humanoid = part.Parent:FindFirstChild("Humanoid")
local epicpar = humanoid.Parent
if (humanoid ~= nil and epicpar.Name ~= game.Players.LocalPlayer.Name and epicpar.Name ~= "Vortexturize") then
game.ReplicatedStorage.Event:FireServer("TPD", humanoid.Health, humanoid)
end
end

function noclip(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "noclip"
end


function SaySetup(plr)
admintag = Instance.new("IntValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "num"
end




function newtag(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "admin"
    print("created admin tag for " .. plr)
end



function newsuc(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "suc"
admintag2 = Instance.new("BoolValue")
    admintag2.Parent = game.ReplicatedStorage
    admintag2.Value = true
    admintag2.Name = plr
    print("loopkilling " .. plr)
end

function newdab(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "dab"
    print("loopkilling " .. plr)
end

function newepic(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "epic"
    print("bullet proofed " .. plr)
end

local LP = game.Players.LocalPlayer
local Mouse = LP:GetMouse()

FLYING = false
iyflyspeed = 1
function sFLY() -- from rocky2u cmdscript
    repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') and LP.Character:FindFirstChild('Humanoid')
    repeat wait() until Mouse
    
    local T = LP.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = 0
    
    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        LP.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
    BG.cframe = workspace.CurrentCamera.CoordinateFrame
            until not FLYING
            CONTROL = {F = 0, B = 0, L = 0, R = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0}
            SPEED = 0
            BG:destroy()
            BV:destroy()
            LP.Character.Humanoid.PlatformStand = false
        end)
    end
    Mouse.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = iyflyspeed
        elseif KEY:lower() == 's' then
            CONTROL.B = -iyflyspeed
        elseif KEY:lower() == 'a' then
            CONTROL.L = -iyflyspeed 
        elseif KEY:lower() == 'd' then 
            CONTROL.R = iyflyspeed
        end
    end)
    Mouse.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end)
    FLY()
end


function NOFLY()
	FLYING = false
	LP.Character.Humanoid.PlatformStand = false
end



newtag(game.Players.LocalPlayer.Name)
SaySetup(game.Players.LocalPlayer.Name)

game.Players.LocalPlayer.ChildRemoved:connect(function(obj)
    if obj.Name == "admin" then
        newtag(game.Players.LocalPlayer.Name)
    end
end)    
    
            function adminexe(plr,msg)
                if plr:FindFirstChild("admin") then
                
            local lower = string.lower(msg)
            local len = string.len(lower)
            
            


		if string.find(lower,":stepkill ") then
                local name = string.gsub(lower,":stepkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game:GetService('RunService').Stepped:connect(function()
   				game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
				end)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game:GetService('RunService').Stepped:connect(function()
   				    game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid)
				    end)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e stepkill ") then
                local name = string.gsub(lower,"/e stepkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game:GetService('RunService').Stepped:connect(function()
   				game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
				end)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game:GetService('RunService').Stepped:connect(function()
   				    game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid)
				    end)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e :stepkill ") then
                local name = string.gsub(lower,"/e :stepkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game:GetService('RunService').Stepped:connect(function()
   				game.ReplicatedStorage.Event:FireServer("TPD", v.Character.Humanoid.Health, v.Character.Humanoid)
				end)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game:GetService('RunService').Stepped:connect(function()
   				    game.ReplicatedStorage.Event:FireServer("TPD", player.Character.Humanoid.Health, player.Character.Humanoid)
				    end)
                                    end
                                end
                            end
                end
                end




		if string.find(lower,":kill ") then
                local name = string.gsub(lower,":kill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                    game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid) 
                                    end
                                end
                            end
                end
                end



if string.find(lower,":infkill ") then
                local name = string.gsub(lower,":infkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here

                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here 
                                    end
                                end
                            end
                end
                end

if string.find(lower,"/e infkill ") then
                local name = string.gsub(lower,"/e infkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here

                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here 
                                    end
                                end
                            end
                end
                end



if string.find(lower,"/e :infkill ") then
                local name = string.gsub(lower,"/e :infkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here

                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                for i = 1, 1000000000000000000000000000000000000 do
					game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid) 
					wait(0.000000000000001)
				end -- nice little for loop here 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,":tk ") then
                local name = string.gsub(lower,":tk ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
					dab = v.Character.Humanoid.Health
                                    game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid) 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e tk ") then
                local name = string.gsub(lower,"/e tk ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
					dab = v.Character.Humanoid.Health
                                    game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid) 
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e :tk ") then
                local name = string.gsub(lower,"/e :tk ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
					dab = v.Character.Humanoid.Health
                                    game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid) 
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":tk2 ") then
                local name = string.gsub(lower,":tk2 ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
				until v.Character.Humanoid.Health == 0
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = player.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid)
				until player.Character.Humanoid.Health == 0
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e tk2 ") then
                local name = string.gsub(lower,"/e tk2 ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
				until v.Character.Humanoid.Health == 0
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = player.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid)
				until player.Character.Humanoid.Health == 0
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :tk2 ") then
                local name = string.gsub(lower,"/e :tk2 ","")
                local player = nil
		local dab = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = v.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, v.Character.Humanoid)
				until v.Character.Humanoid.Health == 0
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
				repeat
				wait(0,1)
				dab = player.Character.Humanoid.Health
                                game.ReplicatedStorage.Event:FireServer("TPD", dab, player.Character.Humanoid)
				until player.Character.Humanoid.Health == 0
                                    end
                                end
                            end
                end
                end

	

                

		

            
		if string.find(lower,"/e kill ") then
                local name = string.gsub(lower,"/e kill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                 game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid) 
                                
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                     game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid)   
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e :kill ") then
                local name = string.gsub(lower,"/e :kill ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                     game.ReplicatedStorage.Event:FireServer("TPD", 20000, player.Character.Humanoid) 
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":view ") then
                local name = string.gsub(lower,":view ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                workspace.CurrentCamera.CameraSubject = v.Character 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                     workspace.CurrentCamera.CameraSubject = player.Character
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e view ") then
                local name = string.gsub(lower,"/e view ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                workspace.CurrentCamera.CameraSubject = v.Character 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                     workspace.CurrentCamera.CameraSubject = player.Character
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :view ") then
                local name = string.gsub(lower,"/e :view ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                workspace.CurrentCamera.CameraSubject = v.Character 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                     workspace.CurrentCamera.CameraSubject = player.Character
                                    end
                                end
                            end
                end
                end






		if string.find(lower,":unview ") then
                local name = string.gsub(lower,":unview ","")
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end

		if string.find(lower,":unview") then
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end


		if string.find(lower,"/e unview ") then
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end

		if string.find(lower,"/e unview") then
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end

		if string.find(lower,"/e :unview ") then
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end

		if string.find(lower,"/e :unview") then
		local player = nil
                         workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                end





		if string.find(lower,":goto ") then
                local name = string.gsub(lower,":goto ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e goto ") then
                local name = string.gsub(lower,"/e goto ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e :goto ") then
                local name = string.gsub(lower,"/e :goto ","")
		
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
                                    end
                                end
                            end
                end
                end




		if string.find(lower,":ws ") then
                local name = string.gsub(lower,":ws ","")
		local player = nil
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = name
                end


		if string.find(lower,"/e ws ") then
                local name = string.gsub(lower,"/e ws ","")
		local player = nil
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = name
                end


		if string.find(lower,"/e :ws ") then
                local name = string.gsub(lower,"/e :ws ","")
		local player = nil
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = name
                end


		



		if string.find(lower,":playall ") then
                local name = string.gsub(lower,":playall ","")
                local player = nil
                	for i,v in pairs(game.Players:GetChildren()) do
			game.ReplicatedStorage.Event:FireServer("PlayRadio", v, name)
			end
                end


		if string.find(lower,"/e playall ") then
                local name = string.gsub(lower,"/e playall ","")
                local player = nil
                	for i,v in pairs(game.Players:GetChildren()) do
			game.ReplicatedStorage.Event:FireServer("PlayRadio", v, name)
			end
                end


		if string.find(lower,"/e :playall ") then
                local name = string.gsub(lower,"/e :playall ","")
                local player = nil
                	for i,v in pairs(game.Players:GetChildren()) do
			game.ReplicatedStorage.Event:FireServer("PlayRadio", v, name)
			end
                end

		if string.find(lower,":say10 ") then
                local name = string.gsub(lower,":say10 ","")
                local player = nil
                	game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
                	game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
			game.Players:Chat(name)
                end




		if string.find(lower,":setsay ") then
                local name = string.gsub(lower,":setsay ","")
                local player = nil
                	game.Players.LocalPlayer.num.Value = name
                end

		if string.find(lower,"/e setsay ") then
                local name = string.gsub(lower,"/e setsay ","")
                local player = nil
                	game.Players.LocalPlayer.num.Value = name
                end

		if string.find(lower,"/e :setsay ") then
                local name = string.gsub(lower,"/e :setsay ","")
                local player = nil
                	game.Players.LocalPlayer.num.Value = name
                end



		

		if string.find(lower,":say ") then
                local name = string.gsub(lower,":say ","")
                local player = nil
                	for i = 1, game.Players.LocalPlayer.num.Value do
			game.Players:Chat(name)
			wait(0.000000000001)
			end
                end

		if string.find(lower,"/e say ") then
                local name = string.gsub(lower,"/e say ","")
                local player = nil
                	for i = 1, game.Players.LocalPlayer.num.Value do
			game.Players:Chat(name)
			wait(0.000000000001)
			end
                end

		if string.find(lower,"/e :say ") then
                local name = string.gsub(lower,"/e :say ","")
                local player = nil
                	for i = 1, game.Players.LocalPlayer.num.Value do
			game.Players:Chat(name)
			wait(0.000000000001)
			end
                end



		

		if string.find(lower,":music gear: ") then
                local name = string.gsub(lower,":music gear: ","")
                local player = nil
                	for i,v in pairs(game.Players:GetChildren()) do
			game.ReplicatedStorage.Event:FireServer("PlayRadio", v, name)
			end
                end

		if string.find(lower,":stopall") then
                local player = nil
                		for i,v in pairs(game.Players:GetChildren()) do
				game.ReplicatedStorage.Event:FireServer("StopRadio", v)
				end
                end

		if string.find(lower,"/e stopall") then
                local player = nil
                		for i,v in pairs(game.Players:GetChildren()) do
				game.ReplicatedStorage.Event:FireServer("StopRadio", v)
				end
                end

		if string.find(lower,"/e :stopall") then
                local player = nil
                		for i,v in pairs(game.Players:GetChildren()) do
				game.ReplicatedStorage.Event:FireServer("StopRadio", v)
				end
                end

		if string.find(lower,":stop me") then
                local player = nil
                	game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
                end

		if string.find(lower,"/e stop me") then
                local player = nil
                	game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
                end
		if string.find(lower,"/e :stop me") then
                local player = nil
                	game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
                end

		if string.find(lower,":play me ") then
                local name = string.gsub(lower,":play me ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end



		if string.find(lower,":playme ") then
                local name = string.gsub(lower,":playme ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end



		if string.find(lower,"/e playme ") then
                local name = string.gsub(lower,"/e playme ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end

		if string.find(lower,"/e :playme ") then
                local name = string.gsub(lower,"/e :playme ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end

		if string.find(lower,":play ") then
                local name = string.gsub(lower,":play ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("PlayRadio", v, game.CoreGui.IDGui.ID.Text)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("PlayRadio", player, game.CoreGui.IDGui.ID.Text) 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e play ") then
                local name = string.gsub(lower,"/e play ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("PlayRadio", v, game.CoreGui.IDGui.ID.Text)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("PlayRadio", player, game.CoreGui.IDGui.ID.Text) 
                                    end
                                end
                            end
                end
                end




		if string.find(lower,"/e :play ") then
                local name = string.gsub(lower,"/e :play ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("PlayRadio", v, game.CoreGui.IDGui.ID.Text)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("PlayRadio", player, game.CoreGui.IDGui.ID.Text) 
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":stop ") then
                local name = string.gsub(lower,":stop ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("StopRadio", v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("StopRadio", player) 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e stop ") then
                local name = string.gsub(lower,"/e stop ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("StopRadio", v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("StopRadio", player) 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :stop ") then
                local name = string.gsub(lower,"/e :stop ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("StopRadio", v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("StopRadio", player) 
                                    end
                                end
                            end
                end
                end





		if string.find(lower,"/e play me ") then
                local name = string.gsub(lower,"/e play me ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end



		if string.find(lower,"/e :play me ") then
                local name = string.gsub(lower,"/e :play me ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, name)
			
                end

            
            
            if string.find(lower,":wl ") then
                local name = string.gsub(lower,":wl ","")
                local player = nil
                local plrname = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                table.insert(whitelist,(#whitelist+1),v.Name)
                                newtag(v.Name)
                                
                                v.Chatted:connect(function(msg)
                                    adminexe(v,msg)
                                end)
                            end
                        end
                else
                    
                names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)
                                
                                if name == sub then
                                    newtag(v.Name)
                                    table.insert(whitelist,(#whitelist+1),v.Name)   
                                    
                                    v.Chatted:connect(function(msg)
                                        adminexe(v,msg)
                                    end)
                                end
                            end
                end
                end
            
            if string.find(lower,":unwl ") then
                local name = string.gsub(lower,":unwl ","")
                local player = nil
                local plrname = nil
                local index = nil
                
                if name == "others" then
                        for i,v in pairs(whitelist) do
                                for i,v in pairs(banlist) do
                                    if v ~= game.Players.LocalPlayer.Name then
                                    table.remove(whitelist,i)
                                    end
                                end
                                
                                if game.Workspace:FindFirstChild(v) then
                                    
                                    if v.Name ~= game.Players.LocalPlayer.Name then
                                if v:FindFirstChild("admin") then
                                    v.admin:Destroy()
                                end
                                end
                                end
                            end
                else
                names = whitelist
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                 table.remove(whitelist,i)
                            end
                        end
                end
                end
            
            if lower == ":wls" then
                for i,v in pairs(whitelist) do
                    print("Player #" .. i .. " Player: " .. v)
                end
            end
          
            
            

		if lower == ":whois" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Players:Chat("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    game.Players:Chat("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


	


            end



if lower == ":printroles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    print("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    print("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end

            end

if lower == "/e printroles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    print("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    print("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end

            end


if lower == "/e :printroles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    print("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    print("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end

            end



if lower == ":sheriff" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Sheriff" then
    game.Players:Chat("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end

if lower == ":murderer" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Players:Chat("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


		if lower == ":roles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Players:Chat("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    game.Players:Chat("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == "/e :roles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Players:Chat("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    game.Players:Chat("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == ":killmurderer" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Sheriff" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end

if lower == "/e :killmurderer" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Sheriff" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end

if lower == "/e killmurderer" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Sheriff" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == ":killsheriff" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Sheriff" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == "/e :killsheriff" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Sheriff" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == "/e killsheriff" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Workspace.FilteringEnabled = true
    elseif role.Value == "Sheriff" then
    game.ReplicatedStorage.Event:FireServer("TPD", 20000, v.Character.Humanoid)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end


if lower == "/e roles" then

    for i,v in pairs(game.Players:GetChildren()) do
    if game.Players[v.Name].Character:FindFirstChild("Role") then
    local role = game.Players[v.Name].Character:FindFirstChild("Role")
    if role.Value == "Murderer" then
    game.Players:Chat("The murderer is "..v.Name)
    elseif role.Value == "Sheriff" then
    game.Players:Chat("The sheriff is "..v.Name)
    elseif role.Value == "Innocent" then
    game.Workspace.FilteringEnabled = true
    else
    game.Workspace.FilteringEnabled = true
    end
    end
    end


            end



		if string.find(lower,":cloak ") then
                local name = string.gsub(lower,":cloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end



if string.find(lower,"/e cloak ") then
                local name = string.gsub(lower,"/e cloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end



if string.find(lower,"/e :cloak ") then
                local name = string.gsub(lower,"/e :cloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("Cloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":uncloak ") then
                local name = string.gsub(lower,":uncloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end


if string.find(lower,"/e uncloak ") then
                local name = string.gsub(lower,"/e uncloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end



if string.find(lower,"/e :uncloak ") then
                local name = string.gsub(lower,"/e :uncloak ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[v.Name])
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.ReplicatedStorage.Event:FireServer("UnCloak", game.Workspace.Ignore.Players[player.Name])
                                    end
                                end
                            end
                end
                end




		if string.find(lower,":kev ") then
                local name = string.gsub(lower,":kev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                    game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e kev ") then
                local name = string.gsub(lower,"/e kev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                    game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e :kev ") then
                local name = string.gsub(lower,"/e :kev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then
                                    game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":skev ") then
                local name = string.gsub(lower,":skev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
				if v.Character.Humanoid.Health <= 100 then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
				end
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if player.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
					end
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e skev ") then
                local name = string.gsub(lower,"/e skev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
				if v.Character.Humanoid.Health <= 100 then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
				end
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if player.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
					end
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :skev ") then
                local name = string.gsub(lower,"/e :skev ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
				if v.Character.Humanoid.Health <= 100 then
                                game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
				end
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if player.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
					end
                                    end
                                end
                            end
                end
                end

		if string.find(lower,":skev me") then
                
			dab = game.Players.LocalPlayer.Name
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
			end
			
                end


		if string.find(lower,"/e skev me") then
                
			dab = game.Players.LocalPlayer.Name
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
					end
			
                end

		if string.find(lower,"/e :skev me") then
                
			dab = game.Players.LocalPlayer.Name
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
					end
			
                end


if string.find(lower,":bulletproof ") then
                local name = string.gsub(lower,":bulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end

newepic(v.Name)
                                    	while v:FindFirstChild("epic") do
						wait(0.5)
						if v.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end  
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end

newepic(player.Name)
                                    	while player:FindFirstChild("epic") do
						wait(0.5)
						if player.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end
                                    end
                                end
                            end
                end
                end


if string.find(lower,"/e bulletproof ") then
                local name = string.gsub(lower,"/e bulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end

newepic(v.Name)
                                    	while v:FindFirstChild("epic") do
						wait(0.5)
						if v.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end

newepic(player.Name)
                                    	while player:FindFirstChild("epic") do
						wait(0.5)
						if player.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end 
                                    end
                                end
                            end
                end
                end




if string.find(lower,"/e :bulletproof ") then
                local name = string.gsub(lower,"/e :bulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end

newepic(v.Name)
                                    	while v:FindFirstChild("epic") do
						wait(0.5)
						if v.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[v.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end

newepic(player.Name)
                                    	while player:FindFirstChild("epic") do
						wait(0.5)
						if player.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[player.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end
					end
                                    end
                                end
                            end
                end
                end


if string.find(lower,":unbulletproof ") then
                local name = string.gsub(lower,":unbulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end



if string.find(lower,"/e unbulletproof ") then
                local name = string.gsub(lower,"/e unbulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end


if string.find(lower,"/e :unbulletproof ") then
                local name = string.gsub(lower,"/e :unbulletproof ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("epic") then
v.epic:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("epic") then
player.epic:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end



if string.find(lower,":bulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			newepic(game.Players.LocalPlayer.Name)
                                    	        while v:FindFirstChild("epic") do
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end 
                            
                 end
		 end

if string.find(lower,"/e bulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			newepic(game.Players.LocalPlayer.Name)
                                    	        while v:FindFirstChild("epic") do
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end 
                            
                 end
		 end

if string.find(lower,"/e :bulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			newepic(game.Players.LocalPlayer.Name)
                                    	        while v:FindFirstChild("epic") do
						wait(0.5)
						if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                		game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
						else
						game.Workspace.FilteringEnabled = true
						end 
                            
                 end
		 end

	if string.find(lower,":unbulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			
                            
                end

	if string.find(lower,"/e :unbulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			
                            
                end


	if string.find(lower,"/e unbulletproof me") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("epic") then
		game.Players.LocalPlayer.epic:Destroy()
		end

			
                            
                end
		

   		


		if string.find(lower,":cloakme") then
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("Cloak", game.Players.LocalPlayer.Character)
			
                end

		if string.find(lower,"/e cloakme") then
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("Cloak", game.Players.LocalPlayer.Character)
			
                end

		if string.find(lower,"/e :cloakme") then
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("Cloak", game.Players.LocalPlayer.Character)
			
                end


		if string.find(lower,":kev me") then
                
			dab = game.Players.LocalPlayer.Name
			game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
			
                end

		if string.find(lower,"/e kev me") then
                
			dab = game.Players.LocalPlayer.Name
                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
			
			
                end

		if string.find(lower,"/e :kev me") then
                
			dab = game.Players.LocalPlayer.Name
                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
			
                end


		


		if string.find(lower,":uncloakme ") then
                local name = string.gsub(lower,":uncloakme ","")
                local player = nil

                	game.ReplicatedStorage.Event:FireServer("UnCloak", game.Players.LocalPlayer.Character)
			
                end

		if string.find(lower,"/e testargs ") then
                local name = string.gsub(lower,"/e testargs ","")
		local dab = string.gsub(lower,"/e testargs ","","")
                local player = nil

		print(name)
		print(dab)
		end


		if string.find(lower,"/e testargs2 ") then
                local name = string.gsub(lower,"/e testargs2 ","")
		local dab = string.gsub(lower,name.." ","")
                local player = nil

		print(name)
		print(dab)
		end


		if string.find(lower,"/e testargs3 ") then
                local name = string.gsub(lower,"/e testargs3 ","")
		local nice = name.." "
		local dab = string.gsub(lower,nice,"")
                local player = nil

		print(name)
		print(dab)
		end

		if string.find(lower,"/e testargs4 ") then
                local name = string.gsub(lower,"/e testargs4 "..name.." ","")
		local dab = string.gsub(lower,name,"")
                local player = nil

		print(name)
		print(dab)
		end


		if string.find(lower,"/e testargs5 ") then
                local name = string.gsub(lower,"/e testargs5 ","")
		local dab = string.gsub(lower,name.." ","")
                local player = nil

		print(name)
		print(dab)
		end


		if string.find(lower,"/e testargs6 ") then
                local name = string.gsub(lower,"/e testargs6 ","")
		local dab = string.gsub(lower,"/e testargs6 "..name.." ","")
                local player = nil

		print(name)
		print(dab)
		end

		if string.find(lower,"/e testargs7 ") then
                local name = string.gsub(lower,"/e testargs7 ","")
		local dab = string.gsub(lower, name, "(%w-)", "%1 %0")
                local player = nil

		print(name)
		print(dab)
		end


		if string.find(lower,"/e testargs8 ") then
                local name = string.gsub(lower,"/e testargs8 ","")
		local dab = string.gsub(name, "(%w-)", "%1 %0", "")
                local player = nil

		print(name)
		print(dab)
		end




		if string.find(lower,":stealsong ") then
                local name = string.gsub(lower,":stealsong ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				    
					print(dab2)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e :stealsong ") then
                local name = string.gsub(lower,"/e :stealsong ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				    
					print(dab2)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e stealsong ") then
                local name = string.gsub(lower,"/e stealsong ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				    
					print(dab2)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,":stealid ") then
                local name = string.gsub(lower,":stealid ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				   
					print(dab2)
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e stealid ") then
                local name = string.gsub(lower,"/e stealid ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				    
					print(dab2)
                                    end
                                end
                            end
                end
                end



		if string.find(lower,":loopkill ") then
                local name = string.gsub(lower,":loopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end

newsuc(v.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if v:FindFirstChild("suc") then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", v.Character.Humanoid.Health, v.Character.Humanoid)
					end
				    	end) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end

newsuc(player.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if player:FindFirstChild("suc") and player ~= nil then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", player.Character.Humanoid.Health, player.Character.Humanoid)
					end
				    	end) 
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e loopkill ") then
                local name = string.gsub(lower,"/e loopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end

newsuc(v.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if v:FindFirstChild("suc") then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", v.Character.Humanoid.Health, v.Character.Humanoid)
					end
				    	end) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end

newsuc(player.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if player:FindFirstChild("suc") and player ~= nil then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", player.Character.Humanoid.Health, player.Character.Humanoid)
					end
				    	end) 
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e :loopkill ") then
                local name = string.gsub(lower,"/e :loopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end

newsuc(v.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if v:FindFirstChild("suc") then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", v.Character.Humanoid.Health, v.Character.Humanoid)
					end
				    	end) 
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Vortexturize" then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end

newsuc(player.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if player:FindFirstChild("suc") and player ~= nil then
   				    	game.ReplicatedStorage.Event:FireServer("TPD", player.Character.Humanoid.Health, player.Character.Humanoid)
					end
				    	end) 
                                    end
                                end
                            end
                end
                end




		if string.find(lower,":unloopkill ") then
                local name = string.gsub(lower,":unloopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e unloopkill ") then
                local name = string.gsub(lower,"/e unloopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e :unloopkill ") then
                local name = string.gsub(lower,"/e :unloopkill ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then

if v:FindFirstChild("suc") then
v.suc:Destroy()
game.ReplicatedStorage[v.Name]:Destroy()
end


                                    	
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then


if player:FindFirstChild("suc") then
player.suc:Destroy()
game.ReplicatedStorage[player.Name]:Destroy()
end
                                    	
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :stealid ") then
                local name = string.gsub(lower,"/e :stealid ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                
				dab2 = game.Workspace.Ignore.Players[v.Name].Torso.Music.SoundId
				print(dab2)
				
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    dab2 = game.Workspace.Ignore.Players[player.Name].Torso.Music.SoundId
				    
					print(dab2)
                                    end
                                end
                            end
                end
                end


		if string.find(lower,":bg ") then
                local player = nil
                	
        		repeat
			wait(0,1)
                	game.Workspace.Gun.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			until game.Players.LocalPlayer:FindFirstChild("Gun")
			
                end


		if string.find(lower,":bringgun") then
                local player = nil
			repeat
			wait(0,1)
                	game.Workspace.Gun.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			until game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") or game.Workspace.Gun == nil
                end

		if string.find(lower,"/e bringgun") then
                local player = nil
                	repeat
			wait(0,1)
                	game.Workspace.Gun.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			until game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") or game.Workspace.Gun == nil 
                end

		if string.find(lower,"/e :bringgun") then
                local player = nil
                	repeat
			wait(0,1)
                	game.Workspace.Gun.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			until game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") or game.Workspace.Gun == nil
                end




if lower == ":wlcmds" then

game.Players:Chat(" :kill - Kills the player")
game.Players:Chat(" :music gear: SOUNDID - Plays a music ID on everyone's radio")
game.Players:Chat(" :stopall - Stops everyone's radio")
game.Players:Chat(" :cloak PLAYERNAME- cloaks the selected player")
game.Players:Chat(" :uncloak - uncloaks the selected player")
game.Players:Chat(" :roles - Says who's sheriff and who's murderer in the chat")
game.Players:Chat(" :sheriff - Says the name of who's sheriff in chat")
game.Players:Chat(" :murderer - Says the name of who's murderer in chat")
game.Players:Chat(" :wl - Whitelists a player (Let's them use commands)")
game.Players:Chat(" :loopkill PLAYERNAME - Loopkills the player")
game.Players:Chat(" :unloopkill PLAYERNAME - Unloopkills the player")
game.Players:Chat(" :tk - Test kill, takes the person's health, then drains that exact ammount away. For killing other exploiters.")



end






if lower == ":wlcmds2" then


game.Players:Chat(" :tk2 - Like tk, but loops until the player dies.")
game.Players:Chat(" :playsounds - Plays the sounds in the workspace, resulting in a refreshing ear explosion")
game.Players:Chat(" :stopsounds - Stops said ear explosion")
game.Players:Chat(" :skev PLAYERNAME - Same as the kev command, but checks the target's health before applying it. (To prevent dying.)")
game.Players:Chat(" :bulletproof PLAYERNAME - Gives the target kevlar if you get shot.")
game.Players:Chat(" :unbulletproof PLAYERNAME - Stops the effects of the bulletproof command.")
game.Players:Chat(" :shield PLAYERNAME - Puts a shield around the target. Kills anyone who touches it. Only you can see it")
game.Players:Chat(" :removeshield PLAYERNAME - Removes the shield on the target")
game.Players:Chat(" :setsay NUMBER - Sets the amount of times the say command says something")
game.Players:Chat(" :say MESSAGE - Makes the localplayer say the message however many times you set it to with the setsay command")


end











		if string.find(lower,":credits") then
                local creditsdab = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local aidez = Instance.new("ImageLabel")
local names = Instance.new("TextLabel")
local scriptmadeby = Instance.new("TextLabel")
local x = Instance.new("TextButton")

creditsdab.Name = "creditsdab"
creditsdab.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = creditsdab
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.399554282, 0, 0.241054624, 0)
Frame.Size = UDim2.new(0, 274, 0, 274)

aidez.Name = "aidez"
aidez.Parent = Frame
aidez.BackgroundColor3 = Color3.new(1, 1, 1)
aidez.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
aidez.Position = UDim2.new(-0.000740621239, 0, 0.000178694725, 0)
aidez.Size = UDim2.new(0, 274, 0, 274)
aidez.Image = "rbxassetid://0&hash=1f4850af628f3f952e6d4776051738e1"

names.Name = "names"
names.Parent = Frame
names.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.BackgroundTransparency = 0.30000001192093
names.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.Position = UDim2.new(0, 0, 0.897810221, 0)
names.Size = UDim2.new(0, 274, 0, 28)
names.Font = Enum.Font.SourceSans
names.Text = "Vortexturize | aidez moi | ObitoXDm8OI "
names.TextColor3 = Color3.new(1, 1, 1)
names.TextSize = 14

scriptmadeby.Name = "scriptmadeby"
scriptmadeby.Parent = Frame
scriptmadeby.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.BackgroundTransparency = 0.30000001192093
scriptmadeby.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.Position = UDim2.new(0, 0, -0.102189779, 0)
scriptmadeby.Size = UDim2.new(0, 274, 0, 28)
scriptmadeby.Font = Enum.Font.SourceSans
scriptmadeby.Text = "Script made by"
scriptmadeby.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby.TextSize = 14

x.Name = "x"
x.Parent = creditsdab
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.BackgroundTransparency = 0.30000001192093
x.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.600445747, 0, 0.188323915, 0)
x.Size = UDim2.new(0, 28, 0, 28)
x.Font = Enum.Font.SourceSansSemibold
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextSize = 30

x.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.creditsdab:Destroy()
end)
                end

		if string.find(lower,"/e credits") then
                local creditsdab = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local aidez = Instance.new("ImageLabel")
local names = Instance.new("TextLabel")
local scriptmadeby = Instance.new("TextLabel")
local x = Instance.new("TextButton")

creditsdab.Name = "creditsdab"
creditsdab.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = creditsdab
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.399554282, 0, 0.241054624, 0)
Frame.Size = UDim2.new(0, 274, 0, 274)

aidez.Name = "aidez"
aidez.Parent = Frame
aidez.BackgroundColor3 = Color3.new(1, 1, 1)
aidez.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
aidez.Position = UDim2.new(-0.000740621239, 0, 0.000178694725, 0)
aidez.Size = UDim2.new(0, 274, 0, 274)
aidez.Image = "rbxassetid://0&hash=1f4850af628f3f952e6d4776051738e1"

names.Name = "names"
names.Parent = Frame
names.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.BackgroundTransparency = 0.30000001192093
names.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.Position = UDim2.new(0, 0, 0.897810221, 0)
names.Size = UDim2.new(0, 274, 0, 28)
names.Font = Enum.Font.SourceSans
names.Text = "Vortexturize | aidez moi | ObitoXDm8OI "
names.TextColor3 = Color3.new(1, 1, 1)
names.TextSize = 14

scriptmadeby.Name = "scriptmadeby"
scriptmadeby.Parent = Frame
scriptmadeby.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.BackgroundTransparency = 0.30000001192093
scriptmadeby.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.Position = UDim2.new(0, 0, -0.102189779, 0)
scriptmadeby.Size = UDim2.new(0, 274, 0, 28)
scriptmadeby.Font = Enum.Font.SourceSans
scriptmadeby.Text = "Script made by"
scriptmadeby.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby.TextSize = 14

x.Name = "x"
x.Parent = creditsdab
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.BackgroundTransparency = 0.30000001192093
x.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.600445747, 0, 0.188323915, 0)
x.Size = UDim2.new(0, 28, 0, 28)
x.Font = Enum.Font.SourceSansSemibold
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextSize = 30

x.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.creditsdab:Destroy()
end)
                end

		if string.find(lower,"/e :credits") then
                local creditsdab = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local aidez = Instance.new("ImageLabel")
local names = Instance.new("TextLabel")
local scriptmadeby = Instance.new("TextLabel")
local x = Instance.new("TextButton")

creditsdab.Name = "creditsdab"
creditsdab.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = creditsdab
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.399554282, 0, 0.241054624, 0)
Frame.Size = UDim2.new(0, 274, 0, 274)

aidez.Name = "aidez"
aidez.Parent = Frame
aidez.BackgroundColor3 = Color3.new(1, 1, 1)
aidez.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
aidez.Position = UDim2.new(-0.000740621239, 0, 0.000178694725, 0)
aidez.Size = UDim2.new(0, 274, 0, 274)
aidez.Image = "rbxassetid://0&hash=1f4850af628f3f952e6d4776051738e1"

names.Name = "names"
names.Parent = Frame
names.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.BackgroundTransparency = 0.30000001192093
names.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.Position = UDim2.new(0, 0, 0.897810221, 0)
names.Size = UDim2.new(0, 274, 0, 28)
names.Font = Enum.Font.SourceSans
names.Text = "Vortexturize | aidez moi | ObitoXDm8OI "
names.TextColor3 = Color3.new(1, 1, 1)
names.TextSize = 14

scriptmadeby.Name = "scriptmadeby"
scriptmadeby.Parent = Frame
scriptmadeby.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.BackgroundTransparency = 0.30000001192093
scriptmadeby.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.Position = UDim2.new(0, 0, -0.102189779, 0)
scriptmadeby.Size = UDim2.new(0, 274, 0, 28)
scriptmadeby.Font = Enum.Font.SourceSans
scriptmadeby.Text = "Script made by"
scriptmadeby.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby.TextSize = 14

x.Name = "x"
x.Parent = creditsdab
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.BackgroundTransparency = 0.30000001192093
x.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.600445747, 0, 0.188323915, 0)
x.Size = UDim2.new(0, 28, 0, 28)
x.Font = Enum.Font.SourceSansSemibold
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextSize = 30

x.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.creditsdab:Destroy()
end)
                end


		if string.find(lower,":playspam") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = true
				end
			end
                end

		if string.find(lower,":playsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = true
				end
			end
                end

		if string.find(lower,"/e playsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = true
				end
			end
                end

		if string.find(lower,"/e :playsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = true
				end
			end
                end

		if string.find(lower,":stopspam") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = false
				end
			end
                end


		if string.find(lower,":god") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -1.13123e19, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,"/e god") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -1.13123e19, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,"/e :god") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -1.13123e19, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,":god2") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,"/e god2") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,"/e :god2") then
                local player = nil
		game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
 		end

		if string.find(lower,":anticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end


		if string.find(lower,":antiexploit") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end


		if string.find(lower,"/e antiexploit") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end

		if string.find(lower,"/e :antiexploit") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end

		if string.find(lower,"/e anticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end

		if string.find(lower,"/e :anticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end

		if string.find(lower,":removeanticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end

		if string.find(lower,"/e removeanticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end


		if string.find(lower,"/e :removeanticheat") then
                	antiKek={'AntiSpeedHack','AntiDataTheft','UI','NO FF','NO FF'}

			while wait() do
			local Player = game.Players.LocalPlayer
			local Gui = Player.PlayerGui
			for i,v in pairs(antiKek) do
			if Gui:FindFirstChild(v) then
			Gui:FindFirstChild(v):Remove()
			end
			end
			end
		
 		end



		if string.find(lower,":loopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			newdab(game.Players.LocalPlayer.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("dab") then
   				  game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
					end
				    	end) 
                            
                 end





		if string.find(lower,"/e loopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			newdab(game.Players.LocalPlayer.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("dab") then
   				  game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
					end
				    	end) 
                            
                 end



		if string.find(lower,"/e :loopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			newdab(game.Players.LocalPlayer.Name)
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("dab") then
   				  game.ReplicatedStorage.Event:FireServer("TPD", -math.huge, game.Workspace.Ignore.Players[game.Players.LocalPlayer.Name].Humanoid)
					end
				    	end) 
                            
                 end
		 

   		if string.find(lower,":unloopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			
                            
                end
		

   		if string.find(lower,"/e unloopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			
                            
                end

   		if string.find(lower,":savetools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		if string.find(lower,"/e savetools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		if string.find(lower,"/e :savetools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		



   		


   		if string.find(lower,":save") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		if string.find(lower,"/e save") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		if string.find(lower,"/e :save") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v:IsA("Tool")) then
				v.Parent = game.Players.LocalPlayer
				end
			end
                
		end

   		if string.find(lower,":loadtools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end


   		if string.find(lower,"/e loadtools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end
		
             

   		if string.find(lower,"/e :loadtools") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end


   		

   		if string.find(lower,":load") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end

   		if string.find(lower,"/e load") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end
   		if string.find(lower,"/e :load") then
                local player = nil
                
			for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
					if (v:IsA("Tool")) then
					v.Parent = game.Players.LocalPlayer.Backpack
					end
				end
			end
                
		end


   		if string.find(lower,"/e :unloopgod") then
                local player = nil
                
                if game.Players.LocalPlayer:FindFirstChild("dab") then
		game.Players.LocalPlayer.dab:Destroy()
		end

			
                            
                end
		



		if string.find(lower,":stopsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = false
				end
			end
                end

		if string.find(lower,"/e stopsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = false
				end
			end
                end

		if string.find(lower,"/e :stopsounds") then
                local player = nil
                	for i,v in pairs(game.Workspace:GetChildren()) do
        			if v.Name == "Music" then
					v.Playing = false
				end
			end
                end








		if string.find(lower,"/e ") then
                
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end

		end


		if string.find(lower,"/e") then
                
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end

		end

		if string.find(lower,"/e wda") then
                
		local A=Instance.new'Animation'
		A.AnimationId='rbxassetid://277597389'
		local P=game:GetService'Players'.LocalPlayer
		local C=P.Character or P.CharacterAdded:Wait()
		local H=C:WaitForChild'Humanoid':LoadAnimation(A)
		H:Play()

		end

		if string.find(lower,"/e shrug") then
                
		game.Players:Chat("¯\_(ツ)_/¯")

		end

		if string.find(lower,"/e twerk") then
                
		local AB=Instance.new'Animation'
		AB.AnimationId='rbxassetid://277485142'
		local PP=game:GetService'Players'.LocalPlayer
		local CC=PP.Character or PP.CharacterAdded:Wait()
		local HH=CC:WaitForChild'Humanoid':LoadAnimation(AB)
		HH:Play()

		end


		if string.find(lower,"/e ko") then
                
		local A=Instance.new'Animation'
        	A.AnimationId='rbxassetid://572563081'
        	local P=game:GetService'Players'.LocalPlayer
       		local C=P.Character or P.CharacterAdded:Wait()
        	local H=C:WaitForChild'Humanoid':LoadAnimation(A)
       		H:Play()

		end

		if string.find(lower,"/e lay") then
                
		local A=Instance.new'Animation'
        	A.AnimationId='rbxassetid://572563081'
        	local P=game:GetService'Players'.LocalPlayer
       		local C=P.Character or P.CharacterAdded:Wait()
        	local H=C:WaitForChild'Humanoid':LoadAnimation(A)
       		H:Play()

		end

		if string.find(lower,"/e getup") then
                
		local A=Instance.new'Animation'
             A.AnimationId='rbxassetid://572569182'
            local P=game:GetService'Players'.LocalPlayer
             local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
             H:Play() 
        wait(0.89)
        local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
             for i, track in pairs (AnimationTracks) do
            track:Stop()
              end
		end





		if string.find(lower,":shield me") then
                local player = nil
		
               

local dab = Instance.new("Part")
dab.Parent = game.Players.LocalPlayer.Character.Torso
dab.Name = "PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = game.Players.LocalPlayer.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = game.Players.LocalPlayer.Character.Torso.PersonalSpace
weld.Part0 = weld.Parent
weld.Part1 = game.Players.LocalPlayer.Character.Torso

		
                end





		if string.find(lower,":shield ") then
                local name = string.gsub(lower,":shield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = v.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = v.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = v.Character.Torso
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = player.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = player.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = player.Character.Torso
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e shield ") then
                local name = string.gsub(lower,"/e shield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = v.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = v.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = v.Character.Torso
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = player.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = player.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = player.Character.Torso
                                    end
                                end
                            end
                end
                end


		if string.find(lower,"/e :shield ") then
                local name = string.gsub(lower,"/e :shield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = v.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = v.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = v.Character.Torso
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
local dab = Instance.new("Part")
dab.Parent = game.Workspace
dab.Name = player.Name.."PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = player.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = dab
weld.Part0 = weld.Parent
weld.Part1 = player.Character.Torso
                                    end
                                end
                            end
                end
                end




		if string.find(lower,":removeshield ") then
                local name = string.gsub(lower,":removeshield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                               	if game.Workspace[v.Name.."PersonalSpace"] then
					game.Workspace[v.Name.."PersonalSpace"]:Destroy()
				end
					
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if game.Workspace[player.Name.."PersonalSpace"] then
					game.Workspace[player.Name.."PersonalSpace"]:Destroy()
					end
                                    end
                                end
                            end
                end
                end



		if string.find(lower,"/e removeshield ") then
                local name = string.gsub(lower,"/e removeshield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                               	if game.Workspace[v.Name.."PersonalSpace"] then
					game.Workspace[v.Name.."PersonalSpace"]:Destroy()
				end
					
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if game.Workspace[player.Name.."PersonalSpace"] then
					game.Workspace[player.Name.."PersonalSpace"]:Destroy()
					end
                                    end
                                end
                            end
                end
                end

		if string.find(lower,"/e :removeshield ") then
                local name = string.gsub(lower,"/e :removeshield ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                               	if game.Workspace[v.Name.."PersonalSpace"] then
					game.Workspace[v.Name.."PersonalSpace"]:Destroy()
				end
					
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
					if game.Workspace[player.Name.."PersonalSpace"] then
					game.Workspace[player.Name.."PersonalSpace"]:Destroy()
					end
                                    end
                                end
                            end
                end
                end




		if string.find(lower,"/e shield me") then
                local player = nil
		
               

local dab = Instance.new("Part")
dab.Parent = game.Players.LocalPlayer.Character.Torso
dab.Name = "PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = game.Players.LocalPlayer.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = game.Players.LocalPlayer.Character.Torso.PersonalSpace
weld.Part0 = weld.Parent
weld.Part1 = game.Players.LocalPlayer.Character.Torso

		
                end


		if string.find(lower,"/e :shield me") then
                local player = nil
		
               

local dab = Instance.new("Part")
dab.Parent = game.Players.LocalPlayer.Character.Torso
dab.Name = "PersonalSpace"
dab.CanCollide = false
dab.Shape = "Ball"
dab.Material = "SmoothPlastic"
dab.Transparency = 0.6
dab.Color = Color3.new(170, 255, 255)
dab.Size = Vector3.new(6.5, 6.5, 6.5)
dab.Position = game.Players.LocalPlayer.Character.Torso.Position
dab.Touched:connect(death)

local weld = Instance.new("Weld")
weld.Parent = game.Players.LocalPlayer.Character.Torso.PersonalSpace
weld.Part0 = weld.Parent
weld.Part1 = game.Players.LocalPlayer.Character.Torso

		
                end



		

		

		if string.find(lower,":removeshield me") then
                local player = nil
                if game.Players.LocalPlayer.Character.Torso.PersonalSpace then
		game.Players.LocalPlayer.Character.Torso.PersonalSpace:Destroy()
		end
                end


		if string.find(lower,"/e removeshield me") then
                local player = nil
                if game.Players.LocalPlayer.Character.Torso.PersonalSpace then
		game.Players.LocalPlayer.Character.Torso.PersonalSpace:Destroy()
		end
                end


		if string.find(lower,"/e :removeshield me") then
                local player = nil
                if game.Players.LocalPlayer.Character.Torso.PersonalSpace then
		game.Players.LocalPlayer.Character.Torso.PersonalSpace:Destroy()
		end
                end


		if string.find(lower,":flyspeed ") then
                local name = string.gsub(lower,":flyspeed ","")
                local player = nil

                	iyflyspeed = name
			
                end


		if string.find(lower,"/e flyspeed ") then
                local name = string.gsub(lower,"/e flyspeed ","")
                local player = nil

                	iyflyspeed = name
			
                end


		if string.find(lower,"/e :flyspeed ") then
                local name = string.gsub(lower,"/e :flyspeed ","")
                local player = nil

                	iyflyspeed = name
			
                end




		if string.find(lower,"/e deathtouch") then
                
			local epic = Instance.new("Tool")
			local dab = Instance.new("Part")
			local plr = game.Players.LocalPlayer
			local tar_obj = nil
			dab.Parent = epic
			dab.Size = Vector3.new(2, 2, 2)
			dab.Transparency = 1
			epic.Parent = plr.Backpack
			epic.Name = "Death Touch"
			dab.Name = "Handle"
			epic.Equipped:Connect(function(m_S)
			dab.Touched:connect(death)
			end)
		end

		if string.find(lower,"/e :deathtouch") then
                
			local epic = Instance.new("Tool")
			local dab = Instance.new("Part")
			local plr = game.Players.LocalPlayer
			local tar_obj = nil
			dab.Parent = epic
			dab.Size = Vector3.new(2, 2, 2)
			dab.Transparency = 1
			epic.Parent = plr.Backpack
			epic.Name = "Death Touch"
			dab.Name = "Handle"
			epic.Equipped:Connect(function(m_S)
			dab.Touched:connect(death)
			end)
		end

		if string.find(lower,":deathtouch") then
                
			local epic = Instance.new("Tool")
			local dab = Instance.new("Part")
			local plr = game.Players.LocalPlayer
			local tar_obj = nil
			dab.Parent = epic
			dab.Size = Vector3.new(2, 2, 2)
			dab.Transparency = 1
			epic.Parent = plr.Backpack
			epic.Name = "Death Touch"
			dab.Name = "Handle"
			epic.Equipped:Connect(function(m_S)
			dab.Touched:connect(death)
			end)
		end

		if string.find(lower,"/e spaz") then
                
		local A=Instance.new'Animation'
		A.AnimationId='rbxassetid://277597389'
		local P=game:GetService'Players'.LocalPlayer
		local C=P.Character or P.CharacterAdded:Wait()
		local H=C:WaitForChild'Humanoid':LoadAnimation(A)
		H:Play()

		end


		if string.find(lower,":punch") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end

		if string.find(lower,"/e :punch") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end

		if string.find(lower,"/e punch") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end


		if string.find(lower,":kungfu") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()


m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end


		if string.find(lower,"/e :kungfu") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()


m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end

		if string.find(lower,"/e kungfu") then
                
	local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(2, 2, 2)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()


m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death)

  

    
end)
end)

		end




if string.find(lower,":weakkungfu") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death2)

  

    
end)
end)


		end

if string.find(lower,"/e weakkungfu") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death2)

  

    
end)
end)


		end


if string.find(lower,"/e :weakkungfu") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "Punch"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
local A=Instance.new'Animation'
            A.AnimationId='rbxassetid://572575467'
            local P=game:GetService'Players'.LocalPlayer
            local C=P.Character or P.CharacterAdded:Wait()
            local H=C:WaitForChild'Humanoid':LoadAnimation(A)
            H:Play()
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    
dab.Touched:connect(death2)

  

    
end)
end)


		end



if string.find(lower,":ora") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "ORARARA"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, 791374350)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    

dab.Touched:connect(death2)

  

    
end)
end)
epic.Unequipped:Connect(function()
game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
end)


		end



if string.find(lower,"/e ora") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "ORARARA"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, 791374350)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    

dab.Touched:connect(death2)

  

    
end)
end)
epic.Unequipped:Connect(function()
game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
end)


		end



if string.find(lower,"/e :ora") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "ORARARA"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
game.ReplicatedStorage.Event:FireServer("PlayRadio", game.Players.LocalPlayer, 791374350)
m_S.Button1Down:Connect(function()

        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://572551390'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()    

dab.Touched:connect(death2)

  

    
end)
end)
epic.Unequipped:Connect(function()
game.ReplicatedStorage.Event:FireServer("StopRadio", game.Players.LocalPlayer)
end)


		end



if string.find(lower,":charge") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end



if string.find(lower,"/e charge") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end

if string.find(lower,"/e :charge") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end



if string.find(lower,":tackle") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end



if string.find(lower,"/e tackle") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end




if string.find(lower,"/e :tackle") then
                
local epic = Instance.new("Tool")
local dab = Instance.new("Part")
local plr = game.Players.LocalPlayer
local tar_obj = nil
dab.Parent = epic
dab.Size = Vector3.new(1, 1, 1)
dab.Transparency = 1
epic.Parent = plr.Backpack
epic.Name = "epic"
dab.Name = "Handle"
epic.Equipped:Connect(function(m_S)
        local A=Instance.new'Animation'
        A.AnimationId='rbxassetid://320586929'
        local P=game:GetService'Players'.LocalPlayer
        local C=P.Character or P.CharacterAdded:Wait()
        local H=C:WaitForChild'Humanoid':LoadAnimation(A)
        H:Play()  
dab.Touched:connect(death)
m_S.Button1Down:Connect(function()

  



  

    
end)
end)
epic.Unequipped:Connect(function()
	local AnimationTracks = game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()
        for i, track in pairs (AnimationTracks) do
            track:Stop()
        end
end)


		end


		if string.find(lower,":fly") then
                
	        sFLY()
        	flydab = true

		end

		if string.find(lower,"/e fly") then
                
	        sFLY()
        	flydab = true

		end

		if string.find(lower,"/e :fly") then
                
	        sFLY()
        	flydab = true

		end


		if string.find(lower,":unfly") then
                
	        NOFLY()
            	flydab = false

		end


		if string.find(lower,"/e unfly") then
                
	        NOFLY()
            	flydab = false

		end

		if string.find(lower,"/e :unfly") then
                
	        NOFLY()
            	flydab = false

		end

		if string.find(lower,":noclip") then
                
	
	if game.Players.LocalPlayer:FindFirstChild("noclip") then
	game.Players.LocalPlayer.noclip:Destroy()
	end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)
	
	

		end

		if string.find(lower,"/e noclip") then
                
	        if game.Players.LocalPlayer:FindFirstChild("noclip") then
		game.Players.LocalPlayer.noclip:Destroy()
		end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)

		end

		if string.find(lower,"/e :noclip") then
                
	        if game.Players.LocalPlayer:FindFirstChild("noclip") then
		game.Players.LocalPlayer.noclip:Destroy()
		end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)

		end




		if string.find(lower,":nc") then
                
	        if game.Players.LocalPlayer:FindFirstChild("noclip") then
		game.Players.LocalPlayer.noclip:Destroy()
		end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)

		end

		if string.find(lower,"/e nc") then
                
	        if game.Players.LocalPlayer:FindFirstChild("noclip") then
		game.Players.LocalPlayer.noclip:Destroy()
		end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)

		end

		if string.find(lower,"/e :nc") then
                
	        if game.Players.LocalPlayer:FindFirstChild("noclip") then
		game.Players.LocalPlayer.noclip:Destroy()
		end

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)

		end




		if string.find(lower,":clip") then
                
	        game.Players.LocalPlayer.noclip:Destroy()

		end

		if string.find(lower,"/e clip") then
                
	        game.Players.LocalPlayer.noclip:Destroy()

		end

		if string.find(lower,"/e :clip") then
                
	        game.Players.LocalPlayer.noclip:Destroy()

		end




            
            
            
            if string.find(lower,":cmds") then
                local Cmds = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local Scroll = Instance.new("ScrollingFrame")
local anticheat = Instance.new("TextLabel")
local cloak = Instance.new("TextLabel")
local cloakme = Instance.new("TextLabel")
local cmds = Instance.new("TextLabel")
local god = Instance.new("TextLabel")
local kill = Instance.new("TextLabel")
local stopsounds = Instance.new("TextLabel")
local ws = Instance.new("TextLabel")
local uncloakme = Instance.new("TextLabel")
local shieldme = Instance.new("TextLabel")
local e = Instance.new("TextLabel")
local wls = Instance.new("TextLabel")
local removeshieldme = Instance.new("TextLabel")
local tk2 = Instance.new("TextLabel")
local loadtools = Instance.new("TextLabel")
local tk = Instance.new("TextLabel")
local savetools = Instance.new("TextLabel")
local unview = Instance.new("TextLabel")
local skev = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local bulletproof = Instance.new("TextLabel")
local view = Instance.new("TextLabel")
local goto = Instance.new("TextLabel")
local unloopgod = Instance.new("TextLabel")
local unwl = Instance.new("TextLabel")
local kev = Instance.new("TextLabel")
local playsounds = Instance.new("TextLabel")
local wl = Instance.new("TextLabel")
local removeshield = Instance.new("TextLabel")
local deathtouch = Instance.new("TextLabel")
local etwerk = Instance.new("TextLabel")
local unbulletproof = Instance.new("TextLabel")
local shield = Instance.new("TextLabel")
local kungfu = Instance.new("TextLabel")
local bringgun = Instance.new("TextLabel")
local espaz = Instance.new("TextLabel")
local killmurderer = Instance.new("TextLabel")
local killsheriff = Instance.new("TextLabel")
local loopgod = Instance.new("TextLabel")
local murder = Instance.new("TextLabel")
local musicgear = Instance.new("TextLabel")
local playme = Instance.new("TextLabel")
local playall = Instance.new("TextLabel")
local printroles = Instance.new("TextLabel")
local roles = Instance.new("TextLabel")
local sheriff = Instance.new("TextLabel")
local stealsong = Instance.new("TextLabel")
local uncloak = Instance.new("TextLabel")
local play = Instance.new("TextLabel")
local play_2 = Instance.new("TextLabel")
local stopme = Instance.new("TextLabel")
local XButton = Instance.new("TextButton")

Cmds.Name = "Cmds"
Cmds.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = Cmds
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Position = UDim2.new(0.324435323, 0, 0.0436432622, 0)
Background.Size = UDim2.new(0, 480, 0, 480)
Background.ZIndex = 0
Background.Image = "rbxassetid://0&hash=a9e521a7d12d33b211097c38b3339a49"
Background.Draggable = true

Scroll.Name = "Scroll"
Scroll.Parent = Background
Scroll.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scroll.BackgroundTransparency = 0.89999997615814
Scroll.Position = UDim2.new(-0.000695437193, 0, -0.000106737018, 0)
Scroll.Size = UDim2.new(0, 480, 0, 480)
Scroll.CanvasPosition = Vector2.new(12, 850)
Scroll.CanvasSize = UDim2.new(0, 0, 3, 0)

anticheat.Name = "anticheat"
anticheat.Parent = Scroll
anticheat.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
anticheat.BackgroundTransparency = 0.40000000596046
anticheat.Position = UDim2.new(0.0250000004, 0, 0.25230056, 0)
anticheat.Size = UDim2.new(0, 467, 0, 21)
anticheat.Font = Enum.Font.SourceSans
anticheat.Text = ":anticheat - Removes the anticheat (Needed to have more than 200 health.)"
anticheat.TextColor3 = Color3.new(1, 1, 1)
anticheat.TextScaled = true
anticheat.TextSize = 14
anticheat.TextWrapped = true
anticheat.TextXAlignment = Enum.TextXAlignment.Left

cloak.Name = "cloak"
cloak.Parent = Scroll
cloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloak.BackgroundTransparency = 0.40000000596046
cloak.Position = UDim2.new(0.0250000004, 0, 0.105984271, 0)
cloak.Size = UDim2.new(0, 467, 0, 21)
cloak.Font = Enum.Font.SourceSans
cloak.Text = ":cloak PLAYERNAME - cloaks the selected player"
cloak.TextColor3 = Color3.new(1, 1, 1)
cloak.TextScaled = true
cloak.TextSize = 14
cloak.TextWrapped = true
cloak.TextXAlignment = Enum.TextXAlignment.Left

cloakme.Name = "cloakme"
cloakme.Parent = Scroll
cloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloakme.BackgroundTransparency = 0.40000000596046
cloakme.Position = UDim2.new(0.0250000004, 0, 0.0794738084, 0)
cloakme.Size = UDim2.new(0, 467, 0, 21)
cloakme.Font = Enum.Font.SourceSans
cloakme.Text = ":cloakme - cloaks you"
cloakme.TextColor3 = Color3.new(1, 1, 1)
cloakme.TextScaled = true
cloakme.TextSize = 14
cloakme.TextWrapped = true
cloakme.TextXAlignment = Enum.TextXAlignment.Left

cmds.Name = "cmds"
cmds.Parent = Scroll
cmds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmds.BackgroundTransparency = 0.40000000596046
cmds.Position = UDim2.new(0.0250000004, 0, 0, 0)
cmds.Size = UDim2.new(0, 467, 0, 21)
cmds.Font = Enum.Font.SourceSans
cmds.Text = ":cmds - I wonder what this does."
cmds.TextColor3 = Color3.new(1, 1, 1)
cmds.TextScaled = true
cmds.TextSize = 14
cmds.TextWrapped = true
cmds.TextXAlignment = Enum.TextXAlignment.Left

god.Name = "god"
god.Parent = Scroll
god.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
god.BackgroundTransparency = 0.40000000596046
god.Position = UDim2.new(0.0250000004, 0, 0.265954584, 0)
god.Size = UDim2.new(0, 467, 0, 21)
god.Font = Enum.Font.SourceSans
god.Text = ":god - Gods you (Anticheat must be removed, or else you'll just die.)"
god.TextColor3 = Color3.new(1, 1, 1)
god.TextScaled = true
god.TextSize = 14
god.TextWrapped = true
god.TextXAlignment = Enum.TextXAlignment.Left

kill.Name = "kill"
kill.Parent = Scroll
kill.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kill.BackgroundTransparency = 0.40000000596046
kill.Position = UDim2.new(0.0250000004, 0, 0.0134032164, 0)
kill.Size = UDim2.new(0, 467, 0, 21)
kill.Font = Enum.Font.SourceSans
kill.Text = ":kill PLAYERNAME - Kills the target"
kill.TextColor3 = Color3.new(1, 1, 1)
kill.TextScaled = true
kill.TextSize = 14
kill.TextWrapped = true
kill.TextXAlignment = Enum.TextXAlignment.Left

stopsounds.Name = "stopsounds"
stopsounds.Parent = Scroll
stopsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopsounds.BackgroundTransparency = 0.40000000596046
stopsounds.Position = UDim2.new(0.0250000004, 0, 0.358617485, 0)
stopsounds.Size = UDim2.new(0, 467, 0, 21)
stopsounds.Font = Enum.Font.SourceSans
stopsounds.Text = ":stopsounds - Stops said ear explosion"
stopsounds.TextColor3 = Color3.new(1, 1, 1)
stopsounds.TextScaled = true
stopsounds.TextSize = 14
stopsounds.TextWrapped = true
stopsounds.TextXAlignment = Enum.TextXAlignment.Left

ws.Name = "ws"
ws.Parent = Scroll
ws.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ws.BackgroundTransparency = 0.40000000596046
ws.Position = UDim2.new(0.0250000004, 0, 0.597816586, 0)
ws.Size = UDim2.new(0, 467, 0, 21)
ws.Font = Enum.Font.SourceSans
ws.Text = ":ws NUMBER - Changes your speed to the number"
ws.TextColor3 = Color3.new(1, 1, 1)
ws.TextScaled = true
ws.TextSize = 14
ws.TextWrapped = true
ws.TextXAlignment = Enum.TextXAlignment.Left

uncloakme.Name = "uncloakme"
uncloakme.Parent = Scroll
uncloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloakme.BackgroundTransparency = 0.40000000596046
uncloakme.Position = UDim2.new(0.0250000004, 0, 0.0927702859, 0)
uncloakme.Size = UDim2.new(0, 467, 0, 21)
uncloakme.Font = Enum.Font.SourceSans
uncloakme.Text = ":uncloakme - uncloaks you"
uncloakme.TextColor3 = Color3.new(1, 1, 1)
uncloakme.TextScaled = true
uncloakme.TextSize = 14
uncloakme.TextWrapped = true
uncloakme.TextXAlignment = Enum.TextXAlignment.Left

shieldme.Name = "shieldme"
shieldme.Parent = Scroll
shieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shieldme.BackgroundTransparency = 0.40000000596046
shieldme.Position = UDim2.new(0.0250000004, 0, 0.544685662, 0)
shieldme.Size = UDim2.new(0, 467, 0, 21)
shieldme.Font = Enum.Font.SourceSans
shieldme.Text = ":shield me - Puts a shield around you. Kills anyone who touches it. Only you can see it"
shieldme.TextColor3 = Color3.new(1, 1, 1)
shieldme.TextScaled = true
shieldme.TextSize = 14
shieldme.TextWrapped = true
shieldme.TextXAlignment = Enum.TextXAlignment.Left

e.Name = "e"
e.Parent = Scroll
e.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e.BackgroundTransparency = 0.40000000596046
e.Position = UDim2.new(0.0250000022, 0, 0.477873266, 0)
e.Size = UDim2.new(0, 467, 0, 21)
e.Font = Enum.Font.SourceSans
e.Text = "/e  - Stops your animations."
e.TextColor3 = Color3.new(1, 1, 1)
e.TextScaled = true
e.TextSize = 14
e.TextWrapped = true
e.TextXAlignment = Enum.TextXAlignment.Left

wls.Name = "wls"
wls.Parent = Scroll
wls.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wls.BackgroundTransparency = 0.40000000596046
wls.Position = UDim2.new(0.0250000004, 0, 0.239279091, 0)
wls.Size = UDim2.new(0, 467, 0, 21)
wls.Font = Enum.Font.SourceSans
wls.Text = ":wls Outputs the names of whitelisted players to the dev console"
wls.TextColor3 = Color3.new(1, 1, 1)
wls.TextScaled = true
wls.TextSize = 14
wls.TextWrapped = true
wls.TextXAlignment = Enum.TextXAlignment.Left

removeshieldme.Name = "removeshieldme"
removeshieldme.Parent = Scroll
removeshieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshieldme.BackgroundTransparency = 0.40000000596046
removeshieldme.Position = UDim2.new(0.0250000004, 0, 0.558119655, 0)
removeshieldme.Size = UDim2.new(0, 467, 0, 21)
removeshieldme.Font = Enum.Font.SourceSans
removeshieldme.Text = ":removeshield me - Removes the shield placed on you"
removeshieldme.TextColor3 = Color3.new(1, 1, 1)
removeshieldme.TextScaled = true
removeshieldme.TextSize = 14
removeshieldme.TextWrapped = true
removeshieldme.TextXAlignment = Enum.TextXAlignment.Left

tk2.Name = "tk2"
tk2.Parent = Scroll
tk2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk2.BackgroundTransparency = 0.40000000596046
tk2.Position = UDim2.new(0.0250000004, 0, 0.332134485, 0)
tk2.Size = UDim2.new(0, 467, 0, 21)
tk2.Font = Enum.Font.SourceSans
tk2.Text = ":tk2 - Like tk, but loops until the player dies."
tk2.TextColor3 = Color3.new(1, 1, 1)
tk2.TextScaled = true
tk2.TextSize = 14
tk2.TextWrapped = true
tk2.TextXAlignment = Enum.TextXAlignment.Left

loadtools.Name = "loadtools"
loadtools.Parent = Scroll
loadtools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loadtools.BackgroundTransparency = 0.40000000596046
loadtools.Position = UDim2.new(0.0250000022, 0, 0.385292858, 0)
loadtools.Size = UDim2.new(0, 467, 0, 21)
loadtools.Font = Enum.Font.SourceSans
loadtools.Text = ":loadtools - Takes your tools out of the magic vault (For using knives and stuff in the lobby.)"
loadtools.TextColor3 = Color3.new(1, 1, 1)
loadtools.TextScaled = true
loadtools.TextSize = 14
loadtools.TextWrapped = true
loadtools.TextXAlignment = Enum.TextXAlignment.Left

tk.Name = "tk"
tk.Parent = Scroll
tk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk.BackgroundTransparency = 0.40000000596046
tk.Position = UDim2.new(0.0250000004, 0, 0.318480492, 0)
tk.Size = UDim2.new(0, 467, 0, 21)
tk.Font = Enum.Font.SourceSans
tk.Text = ":tk PLAYERNAME - Test kill, takes the target's health, then drains that exact ammount away. For killing other exploiters."
tk.TextColor3 = Color3.new(1, 1, 1)
tk.TextScaled = true
tk.TextSize = 14
tk.TextWrapped = true
tk.TextXAlignment = Enum.TextXAlignment.Left

savetools.Name = "savetools"
savetools.Parent = Scroll
savetools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
savetools.BackgroundTransparency = 0.40000000596046
savetools.Position = UDim2.new(0.0250000004, 0, 0.371638954, 0)
savetools.Size = UDim2.new(0, 467, 0, 21)
savetools.Font = Enum.Font.SourceSans
savetools.Text = ":savetools - Stores your tools in a magic vault (Stays in the vault even if you die.)"
savetools.TextColor3 = Color3.new(1, 1, 1)
savetools.TextScaled = true
savetools.TextSize = 14
savetools.TextWrapped = true
savetools.TextXAlignment = Enum.TextXAlignment.Left

unview.Name = "unview"
unview.Parent = Scroll
unview.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unview.BackgroundTransparency = 0.40000000596046
unview.Position = UDim2.new(0.0250000004, 0, 0.584162593, 0)
unview.Size = UDim2.new(0, 467, 0, 21)
unview.Font = Enum.Font.SourceSans
unview.Text = ":unview - Unviews the target"
unview.TextColor3 = Color3.new(1, 1, 1)
unview.TextScaled = true
unview.TextSize = 14
unview.TextWrapped = true
unview.TextXAlignment = Enum.TextXAlignment.Left

skev.Name = "skev"
skev.Parent = Scroll
skev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
skev.BackgroundTransparency = 0.40000000596046
skev.Position = UDim2.new(0.0250000004, 0, 0.41196838, 0)
skev.Size = UDim2.new(0, 467, 0, 21)
skev.Font = Enum.Font.SourceSans
skev.Text = ":skev - Same as the kev command, but checks the target's health before applying it. (To prevent dying.)"
skev.TextColor3 = Color3.new(1, 1, 1)
skev.TextScaled = true
skev.TextSize = 14
skev.TextWrapped = true
skev.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = Scroll
Credits.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Credits.BackgroundTransparency = 0.40000000596046
Credits.Position = UDim2.new(0.0250000004, 0, 0.670799673, 0)
Credits.Size = UDim2.new(0, 467, 0, 21)
Credits.Font = Enum.Font.SourceSans
Credits.Text = ":credits - Shows the cool gui you saw when you executed the script."
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left

bulletproof.Name = "bulletproof"
bulletproof.Parent = Scroll
bulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bulletproof.BackgroundTransparency = 0.40000000596046
bulletproof.Position = UDim2.new(0.0250000004, 0, 0.424989879, 0)
bulletproof.Size = UDim2.new(0, 467, 0, 21)
bulletproof.Font = Enum.Font.SourceSans
bulletproof.Text = ":bulletproof PLAYERNAME - Automatically gives the target kevlar if they get shot."
bulletproof.TextColor3 = Color3.new(1, 1, 1)
bulletproof.TextScaled = true
bulletproof.TextSize = 14
bulletproof.TextWrapped = true
bulletproof.TextXAlignment = Enum.TextXAlignment.Left

view.Name = "view"
view.Parent = Scroll
view.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
view.BackgroundTransparency = 0.40000000596046
view.Position = UDim2.new(0.0250000004, 0, 0.571141005, 0)
view.Size = UDim2.new(0, 467, 0, 21)
view.Font = Enum.Font.SourceSans
view.Text = ":view PLAYERNAME - Views the target"
view.TextColor3 = Color3.new(1, 1, 1)
view.TextScaled = true
view.TextSize = 14
view.TextWrapped = true
view.TextXAlignment = Enum.TextXAlignment.Left

goto.Name = "goto"
goto.Parent = Scroll
goto.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
goto.BackgroundTransparency = 0.40000000596046
goto.Position = UDim2.new(0.0250000004, 0, 0.611250579, 0)
goto.Size = UDim2.new(0, 467, 0, 21)
goto.Font = Enum.Font.SourceSans
goto.Text = ":goto PLAYERNAME - teleports you to the target"
goto.TextColor3 = Color3.new(1, 1, 1)
goto.TextScaled = true
goto.TextSize = 14
goto.TextWrapped = true
goto.TextXAlignment = Enum.TextXAlignment.Left

unloopgod.Name = "unloopgod"
unloopgod.Parent = Scroll
unloopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unloopgod.BackgroundTransparency = 0.40000000596046
unloopgod.Position = UDim2.new(0.0250000022, 0, 0.292437524, 0)
unloopgod.Size = UDim2.new(0, 467, 0, 21)
unloopgod.Font = Enum.Font.SourceSans
unloopgod.Text = ":unloopgod - Unloopgods the you"
unloopgod.TextColor3 = Color3.new(1, 1, 1)
unloopgod.TextScaled = true
unloopgod.TextSize = 14
unloopgod.TextWrapped = true
unloopgod.TextXAlignment = Enum.TextXAlignment.Left

unwl.Name = "unwl"
unwl.Parent = Scroll
unwl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unwl.BackgroundTransparency = 0.40000000596046
unwl.Position = UDim2.new(0.0250000004, 0, 0.225625128, 0)
unwl.Size = UDim2.new(0, 467, 0, 21)
unwl.Font = Enum.Font.SourceSans
unwl.Text = ":unwl PLAYERNAME - Unwhitelists a player"
unwl.TextColor3 = Color3.new(1, 1, 1)
unwl.TextScaled = true
unwl.TextSize = 14
unwl.TextWrapped = true
unwl.TextXAlignment = Enum.TextXAlignment.Left

kev.Name = "kev"
kev.Parent = Scroll
kev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kev.BackgroundTransparency = 0.40000000596046
kev.Position = UDim2.new(0.0250000004, 0, 0.398314416, 0)
kev.Size = UDim2.new(0, 467, 0, 21)
kev.Font = Enum.Font.SourceSans
kev.Text = ":kev - Gives you kevlar. You'll die if you use this when you already have kevlar on."
kev.TextColor3 = Color3.new(1, 1, 1)
kev.TextScaled = true
kev.TextSize = 14
kev.TextWrapped = true
kev.TextXAlignment = Enum.TextXAlignment.Left

playsounds.Name = "playsounds"
playsounds.Parent = Scroll
playsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playsounds.BackgroundTransparency = 0.40000000596046
playsounds.Position = UDim2.new(0.0250000004, 0, 0.345155984, 0)
playsounds.Size = UDim2.new(0, 467, 0, 21)
playsounds.Font = Enum.Font.SourceSans
playsounds.Text = ":playsounds - Plays the sounds in the workspace, resulting in a refreshing ear explosion"
playsounds.TextColor3 = Color3.new(1, 1, 1)
playsounds.TextScaled = true
playsounds.TextSize = 14
playsounds.TextWrapped = true
playsounds.TextXAlignment = Enum.TextXAlignment.Left

wl.Name = "wl"
wl.Parent = Scroll
wl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wl.BackgroundTransparency = 0.40000000596046
wl.Position = UDim2.new(0.0250000004, 0, 0.212603629, 0)
wl.Size = UDim2.new(0, 467, 0, 21)
wl.Font = Enum.Font.SourceSans
wl.Text = ":wl PLAYERNAME - Whitelists a player (Let's them use commands)"
wl.TextColor3 = Color3.new(1, 1, 1)
wl.TextScaled = true
wl.TextSize = 14
wl.TextWrapped = true
wl.TextXAlignment = Enum.TextXAlignment.Left

removeshield.Name = "removeshield"
removeshield.Parent = Scroll
removeshield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshield.BackgroundTransparency = 0.40000000596046
removeshield.Position = UDim2.new(0.0250000004, 0, 0.531031668, 0)
removeshield.Size = UDim2.new(0, 467, 0, 21)
removeshield.Font = Enum.Font.SourceSans
removeshield.Text = ":removeshield PLAYERNAME - Removes the shield on the target"
removeshield.TextColor3 = Color3.new(1, 1, 1)
removeshield.TextScaled = true
removeshield.TextSize = 14
removeshield.TextWrapped = true
removeshield.TextXAlignment = Enum.TextXAlignment.Left

deathtouch.Name = "deathtouch"
deathtouch.Parent = Scroll
deathtouch.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
deathtouch.BackgroundTransparency = 0.40000000596046
deathtouch.Position = UDim2.new(0.0250000004, 0, 0.491334736, 0)
deathtouch.Size = UDim2.new(0, 467, 0, 21)
deathtouch.Font = Enum.Font.SourceSans
deathtouch.Text = ":deathtouch - Gives you a tool that kills anyone you touch with it"
deathtouch.TextColor3 = Color3.new(1, 1, 1)
deathtouch.TextScaled = true
deathtouch.TextSize = 14
deathtouch.TextWrapped = true
deathtouch.TextXAlignment = Enum.TextXAlignment.Left

etwerk.Name = "etwerk"
etwerk.Parent = Scroll
etwerk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
etwerk.BackgroundTransparency = 0.40000000596046
etwerk.Position = UDim2.new(0.0250000004, 0, 0.451830268, 0)
etwerk.Size = UDim2.new(0, 467, 0, 21)
etwerk.Font = Enum.Font.SourceSans
etwerk.Text = "/e twerk - Bad meme, dead meme. But it's here, so enjoy. (Animation)"
etwerk.TextColor3 = Color3.new(1, 1, 1)
etwerk.TextScaled = true
etwerk.TextSize = 14
etwerk.TextWrapped = true
etwerk.TextXAlignment = Enum.TextXAlignment.Left

unbulletproof.Name = "unbulletproof"
unbulletproof.Parent = Scroll
unbulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unbulletproof.BackgroundTransparency = 0.40000000596046
unbulletproof.Position = UDim2.new(0.0250000004, 0, 0.438176334, 0)
unbulletproof.Size = UDim2.new(0, 467, 0, 21)
unbulletproof.Font = Enum.Font.SourceSans
unbulletproof.Text = ":unbulletproof - Stops the effects of the bulletproof command."
unbulletproof.TextColor3 = Color3.new(1, 1, 1)
unbulletproof.TextScaled = true
unbulletproof.TextSize = 14
unbulletproof.TextWrapped = true
unbulletproof.TextXAlignment = Enum.TextXAlignment.Left

shield.Name = "shield"
shield.Parent = Scroll
shield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shield.BackgroundTransparency = 0.40000000596046
shield.Position = UDim2.new(0.0250000004, 0, 0.51801008, 0)
shield.Size = UDim2.new(0, 467, 0, 21)
shield.Font = Enum.Font.SourceSans
shield.Text = ":shield PLAYERNAME - Puts a shield around the target. Kills anyone who touches it. Only you can see it"
shield.TextColor3 = Color3.new(1, 1, 1)
shield.TextScaled = true
shield.TextSize = 14
shield.TextWrapped = true
shield.TextXAlignment = Enum.TextXAlignment.Left

kungfu.Name = "kungfu"
kungfu.Parent = Scroll
kungfu.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kungfu.BackgroundTransparency = 0.40000000596046
kungfu.Position = UDim2.new(0.0250000004, 0, 0.50498873, 0)
kungfu.Size = UDim2.new(0, 467, 0, 21)
kungfu.Font = Enum.Font.SourceSans
kungfu.Text = ":kungfu - Gives you a tool that lets you become a kung fu god"
kungfu.TextColor3 = Color3.new(1, 1, 1)
kungfu.TextScaled = true
kungfu.TextSize = 14
kungfu.TextWrapped = true
kungfu.TextXAlignment = Enum.TextXAlignment.Left

bringgun.Name = "bringgun"
bringgun.Parent = Scroll
bringgun.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bringgun.BackgroundTransparency = 0.40000000596046
bringgun.Position = UDim2.new(0.0250000004, 0, 0.305459023, 0)
bringgun.Size = UDim2.new(0, 467, 0, 21)
bringgun.Font = Enum.Font.SourceSans
bringgun.Text = ":bringgun - Brings the gun (Also set to a hotkey, if you press \"=\" the gun will come to you. [Might have to try multiple times.])"
bringgun.TextColor3 = Color3.new(1, 1, 1)
bringgun.TextScaled = true
bringgun.TextSize = 14
bringgun.TextWrapped = true
bringgun.TextXAlignment = Enum.TextXAlignment.Left

espaz.Name = "espaz"
espaz.Parent = Scroll
espaz.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
espaz.BackgroundTransparency = 0.40000000596046
espaz.Position = UDim2.new(0.0250000004, 0, 0.464851797, 0)
espaz.Size = UDim2.new(0, 467, 0, 21)
espaz.Font = Enum.Font.SourceSans
espaz.Text = "/e spaz - That can't be healthy for your body. (Animation)"
espaz.TextColor3 = Color3.new(1, 1, 1)
espaz.TextScaled = true
espaz.TextSize = 14
espaz.TextWrapped = true
espaz.TextXAlignment = Enum.TextXAlignment.Left

killmurderer.Name = "killmurderer"
killmurderer.Parent = Scroll
killmurderer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killmurderer.BackgroundTransparency = 0.40000000596046
killmurderer.Position = UDim2.new(0.0250000004, 0, 0.185928196, 0)
killmurderer.Size = UDim2.new(0, 467, 0, 21)
killmurderer.Font = Enum.Font.SourceSans
killmurderer.Text = ":killmurderer - Kills whoever is murderer. (Works on groups.)"
killmurderer.TextColor3 = Color3.new(1, 1, 1)
killmurderer.TextScaled = true
killmurderer.TextSize = 14
killmurderer.TextWrapped = true
killmurderer.TextXAlignment = Enum.TextXAlignment.Left

killsheriff.Name = "killsheriff"
killsheriff.Parent = Scroll
killsheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killsheriff.BackgroundTransparency = 0.40000000596046
killsheriff.Position = UDim2.new(0.0250000004, 0, 0.198949665, 0)
killsheriff.Size = UDim2.new(0, 467, 0, 21)
killsheriff.Font = Enum.Font.SourceSans
killsheriff.Text = ":killsheriff - Kills whoever is sheriff. (Works on groups.)"
killsheriff.TextColor3 = Color3.new(1, 1, 1)
killsheriff.TextScaled = true
killsheriff.TextSize = 14
killsheriff.TextWrapped = true
killsheriff.TextXAlignment = Enum.TextXAlignment.Left

loopgod.Name = "loopgod"
loopgod.Parent = Scroll
loopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loopgod.BackgroundTransparency = 0.40000000596046
loopgod.Position = UDim2.new(0.0250000004, 0, 0.27878353, 0)
loopgod.Size = UDim2.new(0, 467, 0, 21)
loopgod.Font = Enum.Font.SourceSans
loopgod.Text = ":loopgod - Loopgods you."
loopgod.TextColor3 = Color3.new(1, 1, 1)
loopgod.TextScaled = true
loopgod.TextSize = 14
loopgod.TextWrapped = true
loopgod.TextXAlignment = Enum.TextXAlignment.Left

murder.Name = "murder"
murder.Parent = Scroll
murder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
murder.BackgroundTransparency = 0.40000000596046
murder.Position = UDim2.new(0.0250000004, 0, 0.159445211, 0)
murder.Size = UDim2.new(0, 467, 0, 21)
murder.Font = Enum.Font.SourceSans
murder.Text = ":murderer - Says the name of who's murderer in chat"
murder.TextColor3 = Color3.new(1, 1, 1)
murder.TextScaled = true
murder.TextSize = 14
murder.TextWrapped = true
murder.TextXAlignment = Enum.TextXAlignment.Left

musicgear.Name = "musicgear"
musicgear.Parent = Scroll
musicgear.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
musicgear.BackgroundTransparency = 0.40000000596046
musicgear.Position = UDim2.new(0.0250000004, 0, 0.0528933853, 0)
musicgear.Size = UDim2.new(0, 467, 0, 21)
musicgear.Font = Enum.Font.SourceSans
musicgear.Text = ":music gear: SONGID - Plays a music ID on everyone's radio (For whitelisted users, or when you want to show your ID)"
musicgear.TextColor3 = Color3.new(1, 1, 1)
musicgear.TextScaled = true
musicgear.TextSize = 14
musicgear.TextWrapped = true
musicgear.TextXAlignment = Enum.TextXAlignment.Left

playme.Name = "playme"
playme.Parent = Scroll
playme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playme.BackgroundTransparency = 0.40000000596046
playme.Position = UDim2.new(0.0250000004, 0, 0.0395743847, 0)
playme.Size = UDim2.new(0, 467, 0, 21)
playme.Font = Enum.Font.SourceSans
playme.Text = ":play  me SONGID - Plays an ID on your radio"
playme.TextColor3 = Color3.new(1, 1, 1)
playme.TextScaled = true
playme.TextSize = 14
playme.TextWrapped = true
playme.TextXAlignment = Enum.TextXAlignment.Left

playall.Name = "playall"
playall.Parent = Scroll
playall.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playall.BackgroundTransparency = 0.40000000596046
playall.Position = UDim2.new(0.0250000004, 0, 0.0262806565, 0)
playall.Size = UDim2.new(0, 467, 0, 21)
playall.Font = Enum.Font.SourceSans
playall.Text = ":playall SONGID - Plays a music ID on everyone's radio."
playall.TextColor3 = Color3.new(1, 1, 1)
playall.TextScaled = true
playall.TextSize = 14
playall.TextWrapped = true
playall.TextXAlignment = Enum.TextXAlignment.Left

printroles.Name = "printroles"
printroles.Parent = Scroll
printroles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
printroles.BackgroundTransparency = 0.40000000596046
printroles.Position = UDim2.new(0.0250000004, 0, 0.17246671, 0)
printroles.Size = UDim2.new(0, 467, 0, 21)
printroles.Font = Enum.Font.SourceSans
printroles.Text = ":printroles - Prints who's sheriff and who's murderer to the dev console."
printroles.TextColor3 = Color3.new(1, 1, 1)
printroles.TextScaled = true
printroles.TextSize = 14
printroles.TextWrapped = true
printroles.TextXAlignment = Enum.TextXAlignment.Left

roles.Name = "roles"
roles.Parent = Scroll
roles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
roles.BackgroundTransparency = 0.40000000596046
roles.Position = UDim2.new(0.0250000004, 0, 0.132769749, 0)
roles.Size = UDim2.new(0, 467, 0, 21)
roles.Font = Enum.Font.SourceSans
roles.Text = ":roles - Says who's sheriff and who's murderer in the chat (:whois also works)"
roles.TextColor3 = Color3.new(1, 1, 1)
roles.TextScaled = true
roles.TextSize = 14
roles.TextWrapped = true
roles.TextXAlignment = Enum.TextXAlignment.Left

sheriff.Name = "sheriff"
sheriff.Parent = Scroll
sheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
sheriff.BackgroundTransparency = 0.40000000596046
sheriff.Position = UDim2.new(0.0250000004, 0, 0.146423727, 0)
sheriff.Size = UDim2.new(0, 467, 0, 21)
sheriff.Font = Enum.Font.SourceSans
sheriff.Text = ":sheriff - Says the name of who's sheriff in chat"
sheriff.TextColor3 = Color3.new(1, 1, 1)
sheriff.TextScaled = true
sheriff.TextSize = 14
sheriff.TextWrapped = true
sheriff.TextXAlignment = Enum.TextXAlignment.Left

stealsong.Name = "stealsong"
stealsong.Parent = Scroll
stealsong.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stealsong.BackgroundTransparency = 0.40000000596046
stealsong.Position = UDim2.new(0.0250000004, 0, 0.0666998401, 0)
stealsong.Size = UDim2.new(0, 467, 0, 21)
stealsong.Font = Enum.Font.SourceSans
stealsong.Text = ":stealsong PLAYERNAME - Steals the person's song ID (That they're playing on their radio)"
stealsong.TextColor3 = Color3.new(1, 1, 1)
stealsong.TextScaled = true
stealsong.TextSize = 14
stealsong.TextWrapped = true
stealsong.TextXAlignment = Enum.TextXAlignment.Left

uncloak.Name = "uncloak"
uncloak.Parent = Scroll
uncloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloak.BackgroundTransparency = 0.40000000596046
uncloak.Position = UDim2.new(0.0250000004, 0, 0.119418263, 0)
uncloak.Size = UDim2.new(0, 467, 0, 21)
uncloak.Font = Enum.Font.SourceSans
uncloak.Text = ":uncloak PLAYERNAME - uncloaks the selected player"
uncloak.TextColor3 = Color3.new(1, 1, 1)
uncloak.TextScaled = true
uncloak.TextSize = 14
uncloak.TextWrapped = true
uncloak.TextXAlignment = Enum.TextXAlignment.Left

play.Name = "play"
play.Parent = Scroll
play.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play.BackgroundTransparency = 0.40000000596046
play.Position = UDim2.new(0.0250000004, 0, 0.625833869, 0)
play.Size = UDim2.new(0, 467, 0, 21)
play.Font = Enum.Font.SourceSans
play.Text = ":play PLAYERNAME - Plays the id put into the ID GUI on the target player"
play.TextColor3 = Color3.new(1, 1, 1)
play.TextScaled = true
play.TextSize = 14
play.TextWrapped = true
play.TextXAlignment = Enum.TextXAlignment.Left

play_2.Name = "play"
play_2.Parent = Scroll
play_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play_2.BackgroundTransparency = 0.40000000596046
play_2.Position = UDim2.new(0.0250000004, 0, 0.641806066, 0)
play_2.Size = UDim2.new(0, 467, 0, 21)
play_2.Font = Enum.Font.SourceSans
play_2.Text = ":stop PLAYERNAME - Stops the radio of the target"
play_2.TextColor3 = Color3.new(1, 1, 1)
play_2.TextScaled = true
play_2.TextSize = 14
play_2.TextWrapped = true
play_2.TextXAlignment = Enum.TextXAlignment.Left

stopme.Name = "stopme"
stopme.Parent = Scroll
stopme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopme.BackgroundTransparency = 0.40000000596046
stopme.Position = UDim2.new(0.0250000004, 0, 0.656389415, 0)
stopme.Size = UDim2.new(0, 467, 0, 21)
stopme.Font = Enum.Font.SourceSans
stopme.Text = ":stop me - Stops your radio"
stopme.TextColor3 = Color3.new(1, 1, 1)
stopme.TextScaled = true
stopme.TextSize = 14
stopme.TextWrapped = true
stopme.TextXAlignment = Enum.TextXAlignment.Left

XButton.Name = "XButton"
XButton.Parent = Background
XButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
XButton.Position = UDim2.new(1, 0, 0, 0)
XButton.Size = UDim2.new(0, 30, 0, 30)
XButton.Font = Enum.Font.SciFi
XButton.Text = "X"
XButton.TextColor3 = Color3.new(1, 1, 1)
XButton.TextScaled = true
XButton.TextSize = 14
XButton.TextWrapped = true
XButton.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.Cmds:Destroy()
end)

            
                
            end

		if string.find(lower,"/e cmds") then
                local Cmds = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local Scroll = Instance.new("ScrollingFrame")
local anticheat = Instance.new("TextLabel")
local cloak = Instance.new("TextLabel")
local cloakme = Instance.new("TextLabel")
local cmds = Instance.new("TextLabel")
local god = Instance.new("TextLabel")
local kill = Instance.new("TextLabel")
local stopsounds = Instance.new("TextLabel")
local ws = Instance.new("TextLabel")
local uncloakme = Instance.new("TextLabel")
local shieldme = Instance.new("TextLabel")
local e = Instance.new("TextLabel")
local wls = Instance.new("TextLabel")
local removeshieldme = Instance.new("TextLabel")
local tk2 = Instance.new("TextLabel")
local loadtools = Instance.new("TextLabel")
local tk = Instance.new("TextLabel")
local savetools = Instance.new("TextLabel")
local unview = Instance.new("TextLabel")
local skev = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local bulletproof = Instance.new("TextLabel")
local view = Instance.new("TextLabel")
local goto = Instance.new("TextLabel")
local unloopgod = Instance.new("TextLabel")
local unwl = Instance.new("TextLabel")
local kev = Instance.new("TextLabel")
local playsounds = Instance.new("TextLabel")
local wl = Instance.new("TextLabel")
local removeshield = Instance.new("TextLabel")
local deathtouch = Instance.new("TextLabel")
local etwerk = Instance.new("TextLabel")
local unbulletproof = Instance.new("TextLabel")
local shield = Instance.new("TextLabel")
local kungfu = Instance.new("TextLabel")
local bringgun = Instance.new("TextLabel")
local espaz = Instance.new("TextLabel")
local killmurderer = Instance.new("TextLabel")
local killsheriff = Instance.new("TextLabel")
local loopgod = Instance.new("TextLabel")
local murder = Instance.new("TextLabel")
local musicgear = Instance.new("TextLabel")
local playme = Instance.new("TextLabel")
local playall = Instance.new("TextLabel")
local printroles = Instance.new("TextLabel")
local roles = Instance.new("TextLabel")
local sheriff = Instance.new("TextLabel")
local stealsong = Instance.new("TextLabel")
local uncloak = Instance.new("TextLabel")
local play = Instance.new("TextLabel")
local play_2 = Instance.new("TextLabel")
local stopme = Instance.new("TextLabel")
local XButton = Instance.new("TextButton")

Cmds.Name = "Cmds"
Cmds.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = Cmds
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Position = UDim2.new(0.324435323, 0, 0.0436432622, 0)
Background.Size = UDim2.new(0, 480, 0, 480)
Background.ZIndex = 0
Background.Image = "rbxassetid://0&hash=a9e521a7d12d33b211097c38b3339a49"
Background.Draggable = true

Scroll.Name = "Scroll"
Scroll.Parent = Background
Scroll.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scroll.BackgroundTransparency = 0.89999997615814
Scroll.Position = UDim2.new(-0.000695437193, 0, -0.000106737018, 0)
Scroll.Size = UDim2.new(0, 480, 0, 480)
Scroll.CanvasPosition = Vector2.new(12, 850)
Scroll.CanvasSize = UDim2.new(0, 0, 3, 0)

anticheat.Name = "anticheat"
anticheat.Parent = Scroll
anticheat.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
anticheat.BackgroundTransparency = 0.40000000596046
anticheat.Position = UDim2.new(0.0250000004, 0, 0.25230056, 0)
anticheat.Size = UDim2.new(0, 467, 0, 21)
anticheat.Font = Enum.Font.SourceSans
anticheat.Text = ":anticheat - Removes the anticheat (Needed to have more than 200 health.)"
anticheat.TextColor3 = Color3.new(1, 1, 1)
anticheat.TextScaled = true
anticheat.TextSize = 14
anticheat.TextWrapped = true
anticheat.TextXAlignment = Enum.TextXAlignment.Left

cloak.Name = "cloak"
cloak.Parent = Scroll
cloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloak.BackgroundTransparency = 0.40000000596046
cloak.Position = UDim2.new(0.0250000004, 0, 0.105984271, 0)
cloak.Size = UDim2.new(0, 467, 0, 21)
cloak.Font = Enum.Font.SourceSans
cloak.Text = ":cloak PLAYERNAME - cloaks the selected player"
cloak.TextColor3 = Color3.new(1, 1, 1)
cloak.TextScaled = true
cloak.TextSize = 14
cloak.TextWrapped = true
cloak.TextXAlignment = Enum.TextXAlignment.Left

cloakme.Name = "cloakme"
cloakme.Parent = Scroll
cloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloakme.BackgroundTransparency = 0.40000000596046
cloakme.Position = UDim2.new(0.0250000004, 0, 0.0794738084, 0)
cloakme.Size = UDim2.new(0, 467, 0, 21)
cloakme.Font = Enum.Font.SourceSans
cloakme.Text = ":cloakme - cloaks you"
cloakme.TextColor3 = Color3.new(1, 1, 1)
cloakme.TextScaled = true
cloakme.TextSize = 14
cloakme.TextWrapped = true
cloakme.TextXAlignment = Enum.TextXAlignment.Left

cmds.Name = "cmds"
cmds.Parent = Scroll
cmds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmds.BackgroundTransparency = 0.40000000596046
cmds.Position = UDim2.new(0.0250000004, 0, 0, 0)
cmds.Size = UDim2.new(0, 467, 0, 21)
cmds.Font = Enum.Font.SourceSans
cmds.Text = ":cmds - I wonder what this does."
cmds.TextColor3 = Color3.new(1, 1, 1)
cmds.TextScaled = true
cmds.TextSize = 14
cmds.TextWrapped = true
cmds.TextXAlignment = Enum.TextXAlignment.Left

god.Name = "god"
god.Parent = Scroll
god.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
god.BackgroundTransparency = 0.40000000596046
god.Position = UDim2.new(0.0250000004, 0, 0.265954584, 0)
god.Size = UDim2.new(0, 467, 0, 21)
god.Font = Enum.Font.SourceSans
god.Text = ":god - Gods you (Anticheat must be removed, or else you'll just die.)"
god.TextColor3 = Color3.new(1, 1, 1)
god.TextScaled = true
god.TextSize = 14
god.TextWrapped = true
god.TextXAlignment = Enum.TextXAlignment.Left

kill.Name = "kill"
kill.Parent = Scroll
kill.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kill.BackgroundTransparency = 0.40000000596046
kill.Position = UDim2.new(0.0250000004, 0, 0.0134032164, 0)
kill.Size = UDim2.new(0, 467, 0, 21)
kill.Font = Enum.Font.SourceSans
kill.Text = ":kill PLAYERNAME - Kills the target"
kill.TextColor3 = Color3.new(1, 1, 1)
kill.TextScaled = true
kill.TextSize = 14
kill.TextWrapped = true
kill.TextXAlignment = Enum.TextXAlignment.Left

stopsounds.Name = "stopsounds"
stopsounds.Parent = Scroll
stopsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopsounds.BackgroundTransparency = 0.40000000596046
stopsounds.Position = UDim2.new(0.0250000004, 0, 0.358617485, 0)
stopsounds.Size = UDim2.new(0, 467, 0, 21)
stopsounds.Font = Enum.Font.SourceSans
stopsounds.Text = ":stopsounds - Stops said ear explosion"
stopsounds.TextColor3 = Color3.new(1, 1, 1)
stopsounds.TextScaled = true
stopsounds.TextSize = 14
stopsounds.TextWrapped = true
stopsounds.TextXAlignment = Enum.TextXAlignment.Left

ws.Name = "ws"
ws.Parent = Scroll
ws.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ws.BackgroundTransparency = 0.40000000596046
ws.Position = UDim2.new(0.0250000004, 0, 0.597816586, 0)
ws.Size = UDim2.new(0, 467, 0, 21)
ws.Font = Enum.Font.SourceSans
ws.Text = ":ws NUMBER - Changes your speed to the number"
ws.TextColor3 = Color3.new(1, 1, 1)
ws.TextScaled = true
ws.TextSize = 14
ws.TextWrapped = true
ws.TextXAlignment = Enum.TextXAlignment.Left

uncloakme.Name = "uncloakme"
uncloakme.Parent = Scroll
uncloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloakme.BackgroundTransparency = 0.40000000596046
uncloakme.Position = UDim2.new(0.0250000004, 0, 0.0927702859, 0)
uncloakme.Size = UDim2.new(0, 467, 0, 21)
uncloakme.Font = Enum.Font.SourceSans
uncloakme.Text = ":uncloakme - uncloaks you"
uncloakme.TextColor3 = Color3.new(1, 1, 1)
uncloakme.TextScaled = true
uncloakme.TextSize = 14
uncloakme.TextWrapped = true
uncloakme.TextXAlignment = Enum.TextXAlignment.Left

shieldme.Name = "shieldme"
shieldme.Parent = Scroll
shieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shieldme.BackgroundTransparency = 0.40000000596046
shieldme.Position = UDim2.new(0.0250000004, 0, 0.544685662, 0)
shieldme.Size = UDim2.new(0, 467, 0, 21)
shieldme.Font = Enum.Font.SourceSans
shieldme.Text = ":shield me - Puts a shield around you. Kills anyone who touches it. Only you can see it"
shieldme.TextColor3 = Color3.new(1, 1, 1)
shieldme.TextScaled = true
shieldme.TextSize = 14
shieldme.TextWrapped = true
shieldme.TextXAlignment = Enum.TextXAlignment.Left

e.Name = "e"
e.Parent = Scroll
e.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e.BackgroundTransparency = 0.40000000596046
e.Position = UDim2.new(0.0250000022, 0, 0.477873266, 0)
e.Size = UDim2.new(0, 467, 0, 21)
e.Font = Enum.Font.SourceSans
e.Text = "/e  - Stops your animations."
e.TextColor3 = Color3.new(1, 1, 1)
e.TextScaled = true
e.TextSize = 14
e.TextWrapped = true
e.TextXAlignment = Enum.TextXAlignment.Left

wls.Name = "wls"
wls.Parent = Scroll
wls.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wls.BackgroundTransparency = 0.40000000596046
wls.Position = UDim2.new(0.0250000004, 0, 0.239279091, 0)
wls.Size = UDim2.new(0, 467, 0, 21)
wls.Font = Enum.Font.SourceSans
wls.Text = ":wls Outputs the names of whitelisted players to the dev console"
wls.TextColor3 = Color3.new(1, 1, 1)
wls.TextScaled = true
wls.TextSize = 14
wls.TextWrapped = true
wls.TextXAlignment = Enum.TextXAlignment.Left

removeshieldme.Name = "removeshieldme"
removeshieldme.Parent = Scroll
removeshieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshieldme.BackgroundTransparency = 0.40000000596046
removeshieldme.Position = UDim2.new(0.0250000004, 0, 0.558119655, 0)
removeshieldme.Size = UDim2.new(0, 467, 0, 21)
removeshieldme.Font = Enum.Font.SourceSans
removeshieldme.Text = ":removeshield me - Removes the shield placed on you"
removeshieldme.TextColor3 = Color3.new(1, 1, 1)
removeshieldme.TextScaled = true
removeshieldme.TextSize = 14
removeshieldme.TextWrapped = true
removeshieldme.TextXAlignment = Enum.TextXAlignment.Left

tk2.Name = "tk2"
tk2.Parent = Scroll
tk2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk2.BackgroundTransparency = 0.40000000596046
tk2.Position = UDim2.new(0.0250000004, 0, 0.332134485, 0)
tk2.Size = UDim2.new(0, 467, 0, 21)
tk2.Font = Enum.Font.SourceSans
tk2.Text = ":tk2 - Like tk, but loops until the player dies."
tk2.TextColor3 = Color3.new(1, 1, 1)
tk2.TextScaled = true
tk2.TextSize = 14
tk2.TextWrapped = true
tk2.TextXAlignment = Enum.TextXAlignment.Left

loadtools.Name = "loadtools"
loadtools.Parent = Scroll
loadtools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loadtools.BackgroundTransparency = 0.40000000596046
loadtools.Position = UDim2.new(0.0250000022, 0, 0.385292858, 0)
loadtools.Size = UDim2.new(0, 467, 0, 21)
loadtools.Font = Enum.Font.SourceSans
loadtools.Text = ":loadtools - Takes your tools out of the magic vault (For using knives and stuff in the lobby.)"
loadtools.TextColor3 = Color3.new(1, 1, 1)
loadtools.TextScaled = true
loadtools.TextSize = 14
loadtools.TextWrapped = true
loadtools.TextXAlignment = Enum.TextXAlignment.Left

tk.Name = "tk"
tk.Parent = Scroll
tk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk.BackgroundTransparency = 0.40000000596046
tk.Position = UDim2.new(0.0250000004, 0, 0.318480492, 0)
tk.Size = UDim2.new(0, 467, 0, 21)
tk.Font = Enum.Font.SourceSans
tk.Text = ":tk PLAYERNAME - Test kill, takes the target's health, then drains that exact ammount away. For killing other exploiters."
tk.TextColor3 = Color3.new(1, 1, 1)
tk.TextScaled = true
tk.TextSize = 14
tk.TextWrapped = true
tk.TextXAlignment = Enum.TextXAlignment.Left

savetools.Name = "savetools"
savetools.Parent = Scroll
savetools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
savetools.BackgroundTransparency = 0.40000000596046
savetools.Position = UDim2.new(0.0250000004, 0, 0.371638954, 0)
savetools.Size = UDim2.new(0, 467, 0, 21)
savetools.Font = Enum.Font.SourceSans
savetools.Text = ":savetools - Stores your tools in a magic vault (Stays in the vault even if you die.)"
savetools.TextColor3 = Color3.new(1, 1, 1)
savetools.TextScaled = true
savetools.TextSize = 14
savetools.TextWrapped = true
savetools.TextXAlignment = Enum.TextXAlignment.Left

unview.Name = "unview"
unview.Parent = Scroll
unview.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unview.BackgroundTransparency = 0.40000000596046
unview.Position = UDim2.new(0.0250000004, 0, 0.584162593, 0)
unview.Size = UDim2.new(0, 467, 0, 21)
unview.Font = Enum.Font.SourceSans
unview.Text = ":unview - Unviews the target"
unview.TextColor3 = Color3.new(1, 1, 1)
unview.TextScaled = true
unview.TextSize = 14
unview.TextWrapped = true
unview.TextXAlignment = Enum.TextXAlignment.Left

skev.Name = "skev"
skev.Parent = Scroll
skev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
skev.BackgroundTransparency = 0.40000000596046
skev.Position = UDim2.new(0.0250000004, 0, 0.41196838, 0)
skev.Size = UDim2.new(0, 467, 0, 21)
skev.Font = Enum.Font.SourceSans
skev.Text = ":skev - Same as the kev command, but checks the target's health before applying it. (To prevent dying.)"
skev.TextColor3 = Color3.new(1, 1, 1)
skev.TextScaled = true
skev.TextSize = 14
skev.TextWrapped = true
skev.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = Scroll
Credits.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Credits.BackgroundTransparency = 0.40000000596046
Credits.Position = UDim2.new(0.0250000004, 0, 0.670799673, 0)
Credits.Size = UDim2.new(0, 467, 0, 21)
Credits.Font = Enum.Font.SourceSans
Credits.Text = ":credits - Shows the cool gui you saw when you executed the script."
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left

bulletproof.Name = "bulletproof"
bulletproof.Parent = Scroll
bulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bulletproof.BackgroundTransparency = 0.40000000596046
bulletproof.Position = UDim2.new(0.0250000004, 0, 0.424989879, 0)
bulletproof.Size = UDim2.new(0, 467, 0, 21)
bulletproof.Font = Enum.Font.SourceSans
bulletproof.Text = ":bulletproof PLAYERNAME - Automatically gives the target kevlar if they get shot."
bulletproof.TextColor3 = Color3.new(1, 1, 1)
bulletproof.TextScaled = true
bulletproof.TextSize = 14
bulletproof.TextWrapped = true
bulletproof.TextXAlignment = Enum.TextXAlignment.Left

view.Name = "view"
view.Parent = Scroll
view.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
view.BackgroundTransparency = 0.40000000596046
view.Position = UDim2.new(0.0250000004, 0, 0.571141005, 0)
view.Size = UDim2.new(0, 467, 0, 21)
view.Font = Enum.Font.SourceSans
view.Text = ":view PLAYERNAME - Views the target"
view.TextColor3 = Color3.new(1, 1, 1)
view.TextScaled = true
view.TextSize = 14
view.TextWrapped = true
view.TextXAlignment = Enum.TextXAlignment.Left

goto.Name = "goto"
goto.Parent = Scroll
goto.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
goto.BackgroundTransparency = 0.40000000596046
goto.Position = UDim2.new(0.0250000004, 0, 0.611250579, 0)
goto.Size = UDim2.new(0, 467, 0, 21)
goto.Font = Enum.Font.SourceSans
goto.Text = ":goto PLAYERNAME - teleports you to the target"
goto.TextColor3 = Color3.new(1, 1, 1)
goto.TextScaled = true
goto.TextSize = 14
goto.TextWrapped = true
goto.TextXAlignment = Enum.TextXAlignment.Left

unloopgod.Name = "unloopgod"
unloopgod.Parent = Scroll
unloopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unloopgod.BackgroundTransparency = 0.40000000596046
unloopgod.Position = UDim2.new(0.0250000022, 0, 0.292437524, 0)
unloopgod.Size = UDim2.new(0, 467, 0, 21)
unloopgod.Font = Enum.Font.SourceSans
unloopgod.Text = ":unloopgod - Unloopgods the you"
unloopgod.TextColor3 = Color3.new(1, 1, 1)
unloopgod.TextScaled = true
unloopgod.TextSize = 14
unloopgod.TextWrapped = true
unloopgod.TextXAlignment = Enum.TextXAlignment.Left

unwl.Name = "unwl"
unwl.Parent = Scroll
unwl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unwl.BackgroundTransparency = 0.40000000596046
unwl.Position = UDim2.new(0.0250000004, 0, 0.225625128, 0)
unwl.Size = UDim2.new(0, 467, 0, 21)
unwl.Font = Enum.Font.SourceSans
unwl.Text = ":unwl PLAYERNAME - Unwhitelists a player"
unwl.TextColor3 = Color3.new(1, 1, 1)
unwl.TextScaled = true
unwl.TextSize = 14
unwl.TextWrapped = true
unwl.TextXAlignment = Enum.TextXAlignment.Left

kev.Name = "kev"
kev.Parent = Scroll
kev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kev.BackgroundTransparency = 0.40000000596046
kev.Position = UDim2.new(0.0250000004, 0, 0.398314416, 0)
kev.Size = UDim2.new(0, 467, 0, 21)
kev.Font = Enum.Font.SourceSans
kev.Text = ":kev - Gives you kevlar. You'll die if you use this when you already have kevlar on."
kev.TextColor3 = Color3.new(1, 1, 1)
kev.TextScaled = true
kev.TextSize = 14
kev.TextWrapped = true
kev.TextXAlignment = Enum.TextXAlignment.Left

playsounds.Name = "playsounds"
playsounds.Parent = Scroll
playsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playsounds.BackgroundTransparency = 0.40000000596046
playsounds.Position = UDim2.new(0.0250000004, 0, 0.345155984, 0)
playsounds.Size = UDim2.new(0, 467, 0, 21)
playsounds.Font = Enum.Font.SourceSans
playsounds.Text = ":playsounds - Plays the sounds in the workspace, resulting in a refreshing ear explosion"
playsounds.TextColor3 = Color3.new(1, 1, 1)
playsounds.TextScaled = true
playsounds.TextSize = 14
playsounds.TextWrapped = true
playsounds.TextXAlignment = Enum.TextXAlignment.Left

wl.Name = "wl"
wl.Parent = Scroll
wl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wl.BackgroundTransparency = 0.40000000596046
wl.Position = UDim2.new(0.0250000004, 0, 0.212603629, 0)
wl.Size = UDim2.new(0, 467, 0, 21)
wl.Font = Enum.Font.SourceSans
wl.Text = ":wl PLAYERNAME - Whitelists a player (Let's them use commands)"
wl.TextColor3 = Color3.new(1, 1, 1)
wl.TextScaled = true
wl.TextSize = 14
wl.TextWrapped = true
wl.TextXAlignment = Enum.TextXAlignment.Left

removeshield.Name = "removeshield"
removeshield.Parent = Scroll
removeshield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshield.BackgroundTransparency = 0.40000000596046
removeshield.Position = UDim2.new(0.0250000004, 0, 0.531031668, 0)
removeshield.Size = UDim2.new(0, 467, 0, 21)
removeshield.Font = Enum.Font.SourceSans
removeshield.Text = ":removeshield PLAYERNAME - Removes the shield on the target"
removeshield.TextColor3 = Color3.new(1, 1, 1)
removeshield.TextScaled = true
removeshield.TextSize = 14
removeshield.TextWrapped = true
removeshield.TextXAlignment = Enum.TextXAlignment.Left

deathtouch.Name = "deathtouch"
deathtouch.Parent = Scroll
deathtouch.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
deathtouch.BackgroundTransparency = 0.40000000596046
deathtouch.Position = UDim2.new(0.0250000004, 0, 0.491334736, 0)
deathtouch.Size = UDim2.new(0, 467, 0, 21)
deathtouch.Font = Enum.Font.SourceSans
deathtouch.Text = ":deathtouch - Gives you a tool that kills anyone you touch with it"
deathtouch.TextColor3 = Color3.new(1, 1, 1)
deathtouch.TextScaled = true
deathtouch.TextSize = 14
deathtouch.TextWrapped = true
deathtouch.TextXAlignment = Enum.TextXAlignment.Left

etwerk.Name = "etwerk"
etwerk.Parent = Scroll
etwerk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
etwerk.BackgroundTransparency = 0.40000000596046
etwerk.Position = UDim2.new(0.0250000004, 0, 0.451830268, 0)
etwerk.Size = UDim2.new(0, 467, 0, 21)
etwerk.Font = Enum.Font.SourceSans
etwerk.Text = "/e twerk - Bad meme, dead meme. But it's here, so enjoy. (Animation)"
etwerk.TextColor3 = Color3.new(1, 1, 1)
etwerk.TextScaled = true
etwerk.TextSize = 14
etwerk.TextWrapped = true
etwerk.TextXAlignment = Enum.TextXAlignment.Left

unbulletproof.Name = "unbulletproof"
unbulletproof.Parent = Scroll
unbulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unbulletproof.BackgroundTransparency = 0.40000000596046
unbulletproof.Position = UDim2.new(0.0250000004, 0, 0.438176334, 0)
unbulletproof.Size = UDim2.new(0, 467, 0, 21)
unbulletproof.Font = Enum.Font.SourceSans
unbulletproof.Text = ":unbulletproof - Stops the effects of the bulletproof command."
unbulletproof.TextColor3 = Color3.new(1, 1, 1)
unbulletproof.TextScaled = true
unbulletproof.TextSize = 14
unbulletproof.TextWrapped = true
unbulletproof.TextXAlignment = Enum.TextXAlignment.Left

shield.Name = "shield"
shield.Parent = Scroll
shield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shield.BackgroundTransparency = 0.40000000596046
shield.Position = UDim2.new(0.0250000004, 0, 0.51801008, 0)
shield.Size = UDim2.new(0, 467, 0, 21)
shield.Font = Enum.Font.SourceSans
shield.Text = ":shield PLAYERNAME - Puts a shield around the target. Kills anyone who touches it. Only you can see it"
shield.TextColor3 = Color3.new(1, 1, 1)
shield.TextScaled = true
shield.TextSize = 14
shield.TextWrapped = true
shield.TextXAlignment = Enum.TextXAlignment.Left

kungfu.Name = "kungfu"
kungfu.Parent = Scroll
kungfu.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kungfu.BackgroundTransparency = 0.40000000596046
kungfu.Position = UDim2.new(0.0250000004, 0, 0.50498873, 0)
kungfu.Size = UDim2.new(0, 467, 0, 21)
kungfu.Font = Enum.Font.SourceSans
kungfu.Text = ":kungfu - Gives you a tool that lets you become a kung fu god"
kungfu.TextColor3 = Color3.new(1, 1, 1)
kungfu.TextScaled = true
kungfu.TextSize = 14
kungfu.TextWrapped = true
kungfu.TextXAlignment = Enum.TextXAlignment.Left

bringgun.Name = "bringgun"
bringgun.Parent = Scroll
bringgun.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bringgun.BackgroundTransparency = 0.40000000596046
bringgun.Position = UDim2.new(0.0250000004, 0, 0.305459023, 0)
bringgun.Size = UDim2.new(0, 467, 0, 21)
bringgun.Font = Enum.Font.SourceSans
bringgun.Text = ":bringgun - Brings the gun (Also set to a hotkey, if you press \"=\" the gun will come to you. [Might have to try multiple times.])"
bringgun.TextColor3 = Color3.new(1, 1, 1)
bringgun.TextScaled = true
bringgun.TextSize = 14
bringgun.TextWrapped = true
bringgun.TextXAlignment = Enum.TextXAlignment.Left

espaz.Name = "espaz"
espaz.Parent = Scroll
espaz.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
espaz.BackgroundTransparency = 0.40000000596046
espaz.Position = UDim2.new(0.0250000004, 0, 0.464851797, 0)
espaz.Size = UDim2.new(0, 467, 0, 21)
espaz.Font = Enum.Font.SourceSans
espaz.Text = "/e spaz - That can't be healthy for your body. (Animation)"
espaz.TextColor3 = Color3.new(1, 1, 1)
espaz.TextScaled = true
espaz.TextSize = 14
espaz.TextWrapped = true
espaz.TextXAlignment = Enum.TextXAlignment.Left

killmurderer.Name = "killmurderer"
killmurderer.Parent = Scroll
killmurderer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killmurderer.BackgroundTransparency = 0.40000000596046
killmurderer.Position = UDim2.new(0.0250000004, 0, 0.185928196, 0)
killmurderer.Size = UDim2.new(0, 467, 0, 21)
killmurderer.Font = Enum.Font.SourceSans
killmurderer.Text = ":killmurderer - Kills whoever is murderer. (Works on groups.)"
killmurderer.TextColor3 = Color3.new(1, 1, 1)
killmurderer.TextScaled = true
killmurderer.TextSize = 14
killmurderer.TextWrapped = true
killmurderer.TextXAlignment = Enum.TextXAlignment.Left

killsheriff.Name = "killsheriff"
killsheriff.Parent = Scroll
killsheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killsheriff.BackgroundTransparency = 0.40000000596046
killsheriff.Position = UDim2.new(0.0250000004, 0, 0.198949665, 0)
killsheriff.Size = UDim2.new(0, 467, 0, 21)
killsheriff.Font = Enum.Font.SourceSans
killsheriff.Text = ":killsheriff - Kills whoever is sheriff. (Works on groups.)"
killsheriff.TextColor3 = Color3.new(1, 1, 1)
killsheriff.TextScaled = true
killsheriff.TextSize = 14
killsheriff.TextWrapped = true
killsheriff.TextXAlignment = Enum.TextXAlignment.Left

loopgod.Name = "loopgod"
loopgod.Parent = Scroll
loopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loopgod.BackgroundTransparency = 0.40000000596046
loopgod.Position = UDim2.new(0.0250000004, 0, 0.27878353, 0)
loopgod.Size = UDim2.new(0, 467, 0, 21)
loopgod.Font = Enum.Font.SourceSans
loopgod.Text = ":loopgod - Loopgods you."
loopgod.TextColor3 = Color3.new(1, 1, 1)
loopgod.TextScaled = true
loopgod.TextSize = 14
loopgod.TextWrapped = true
loopgod.TextXAlignment = Enum.TextXAlignment.Left

murder.Name = "murder"
murder.Parent = Scroll
murder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
murder.BackgroundTransparency = 0.40000000596046
murder.Position = UDim2.new(0.0250000004, 0, 0.159445211, 0)
murder.Size = UDim2.new(0, 467, 0, 21)
murder.Font = Enum.Font.SourceSans
murder.Text = ":murderer - Says the name of who's murderer in chat"
murder.TextColor3 = Color3.new(1, 1, 1)
murder.TextScaled = true
murder.TextSize = 14
murder.TextWrapped = true
murder.TextXAlignment = Enum.TextXAlignment.Left

musicgear.Name = "musicgear"
musicgear.Parent = Scroll
musicgear.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
musicgear.BackgroundTransparency = 0.40000000596046
musicgear.Position = UDim2.new(0.0250000004, 0, 0.0528933853, 0)
musicgear.Size = UDim2.new(0, 467, 0, 21)
musicgear.Font = Enum.Font.SourceSans
musicgear.Text = ":music gear: SONGID - Plays a music ID on everyone's radio (For whitelisted users, or when you want to show your ID)"
musicgear.TextColor3 = Color3.new(1, 1, 1)
musicgear.TextScaled = true
musicgear.TextSize = 14
musicgear.TextWrapped = true
musicgear.TextXAlignment = Enum.TextXAlignment.Left

playme.Name = "playme"
playme.Parent = Scroll
playme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playme.BackgroundTransparency = 0.40000000596046
playme.Position = UDim2.new(0.0250000004, 0, 0.0395743847, 0)
playme.Size = UDim2.new(0, 467, 0, 21)
playme.Font = Enum.Font.SourceSans
playme.Text = ":play  me SONGID - Plays an ID on your radio"
playme.TextColor3 = Color3.new(1, 1, 1)
playme.TextScaled = true
playme.TextSize = 14
playme.TextWrapped = true
playme.TextXAlignment = Enum.TextXAlignment.Left

playall.Name = "playall"
playall.Parent = Scroll
playall.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playall.BackgroundTransparency = 0.40000000596046
playall.Position = UDim2.new(0.0250000004, 0, 0.0262806565, 0)
playall.Size = UDim2.new(0, 467, 0, 21)
playall.Font = Enum.Font.SourceSans
playall.Text = ":playall SONGID - Plays a music ID on everyone's radio."
playall.TextColor3 = Color3.new(1, 1, 1)
playall.TextScaled = true
playall.TextSize = 14
playall.TextWrapped = true
playall.TextXAlignment = Enum.TextXAlignment.Left

printroles.Name = "printroles"
printroles.Parent = Scroll
printroles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
printroles.BackgroundTransparency = 0.40000000596046
printroles.Position = UDim2.new(0.0250000004, 0, 0.17246671, 0)
printroles.Size = UDim2.new(0, 467, 0, 21)
printroles.Font = Enum.Font.SourceSans
printroles.Text = ":printroles - Prints who's sheriff and who's murderer to the dev console."
printroles.TextColor3 = Color3.new(1, 1, 1)
printroles.TextScaled = true
printroles.TextSize = 14
printroles.TextWrapped = true
printroles.TextXAlignment = Enum.TextXAlignment.Left

roles.Name = "roles"
roles.Parent = Scroll
roles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
roles.BackgroundTransparency = 0.40000000596046
roles.Position = UDim2.new(0.0250000004, 0, 0.132769749, 0)
roles.Size = UDim2.new(0, 467, 0, 21)
roles.Font = Enum.Font.SourceSans
roles.Text = ":roles - Says who's sheriff and who's murderer in the chat (:whois also works)"
roles.TextColor3 = Color3.new(1, 1, 1)
roles.TextScaled = true
roles.TextSize = 14
roles.TextWrapped = true
roles.TextXAlignment = Enum.TextXAlignment.Left

sheriff.Name = "sheriff"
sheriff.Parent = Scroll
sheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
sheriff.BackgroundTransparency = 0.40000000596046
sheriff.Position = UDim2.new(0.0250000004, 0, 0.146423727, 0)
sheriff.Size = UDim2.new(0, 467, 0, 21)
sheriff.Font = Enum.Font.SourceSans
sheriff.Text = ":sheriff - Says the name of who's sheriff in chat"
sheriff.TextColor3 = Color3.new(1, 1, 1)
sheriff.TextScaled = true
sheriff.TextSize = 14
sheriff.TextWrapped = true
sheriff.TextXAlignment = Enum.TextXAlignment.Left

stealsong.Name = "stealsong"
stealsong.Parent = Scroll
stealsong.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stealsong.BackgroundTransparency = 0.40000000596046
stealsong.Position = UDim2.new(0.0250000004, 0, 0.0666998401, 0)
stealsong.Size = UDim2.new(0, 467, 0, 21)
stealsong.Font = Enum.Font.SourceSans
stealsong.Text = ":stealsong PLAYERNAME - Steals the person's song ID (That they're playing on their radio)"
stealsong.TextColor3 = Color3.new(1, 1, 1)
stealsong.TextScaled = true
stealsong.TextSize = 14
stealsong.TextWrapped = true
stealsong.TextXAlignment = Enum.TextXAlignment.Left

uncloak.Name = "uncloak"
uncloak.Parent = Scroll
uncloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloak.BackgroundTransparency = 0.40000000596046
uncloak.Position = UDim2.new(0.0250000004, 0, 0.119418263, 0)
uncloak.Size = UDim2.new(0, 467, 0, 21)
uncloak.Font = Enum.Font.SourceSans
uncloak.Text = ":uncloak PLAYERNAME - uncloaks the selected player"
uncloak.TextColor3 = Color3.new(1, 1, 1)
uncloak.TextScaled = true
uncloak.TextSize = 14
uncloak.TextWrapped = true
uncloak.TextXAlignment = Enum.TextXAlignment.Left

play.Name = "play"
play.Parent = Scroll
play.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play.BackgroundTransparency = 0.40000000596046
play.Position = UDim2.new(0.0250000004, 0, 0.625833869, 0)
play.Size = UDim2.new(0, 467, 0, 21)
play.Font = Enum.Font.SourceSans
play.Text = ":play PLAYERNAME - Plays the id put into the ID GUI on the target player"
play.TextColor3 = Color3.new(1, 1, 1)
play.TextScaled = true
play.TextSize = 14
play.TextWrapped = true
play.TextXAlignment = Enum.TextXAlignment.Left

play_2.Name = "play"
play_2.Parent = Scroll
play_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play_2.BackgroundTransparency = 0.40000000596046
play_2.Position = UDim2.new(0.0250000004, 0, 0.641806066, 0)
play_2.Size = UDim2.new(0, 467, 0, 21)
play_2.Font = Enum.Font.SourceSans
play_2.Text = ":stop PLAYERNAME - Stops the radio of the target"
play_2.TextColor3 = Color3.new(1, 1, 1)
play_2.TextScaled = true
play_2.TextSize = 14
play_2.TextWrapped = true
play_2.TextXAlignment = Enum.TextXAlignment.Left

stopme.Name = "stopme"
stopme.Parent = Scroll
stopme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopme.BackgroundTransparency = 0.40000000596046
stopme.Position = UDim2.new(0.0250000004, 0, 0.656389415, 0)
stopme.Size = UDim2.new(0, 467, 0, 21)
stopme.Font = Enum.Font.SourceSans
stopme.Text = ":stop me - Stops your radio"
stopme.TextColor3 = Color3.new(1, 1, 1)
stopme.TextScaled = true
stopme.TextSize = 14
stopme.TextWrapped = true
stopme.TextXAlignment = Enum.TextXAlignment.Left

XButton.Name = "XButton"
XButton.Parent = Background
XButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
XButton.Position = UDim2.new(1, 0, 0, 0)
XButton.Size = UDim2.new(0, 30, 0, 30)
XButton.Font = Enum.Font.SciFi
XButton.Text = "X"
XButton.TextColor3 = Color3.new(1, 1, 1)
XButton.TextScaled = true
XButton.TextSize = 14
XButton.TextWrapped = true
XButton.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.Cmds:Destroy()
end)

            
                
            end

		if string.find(lower,"/e :cmds") then
                local Cmds = Instance.new("ScreenGui")
local Background = Instance.new("ImageLabel")
local Scroll = Instance.new("ScrollingFrame")
local anticheat = Instance.new("TextLabel")
local cloak = Instance.new("TextLabel")
local cloakme = Instance.new("TextLabel")
local cmds = Instance.new("TextLabel")
local god = Instance.new("TextLabel")
local kill = Instance.new("TextLabel")
local stopsounds = Instance.new("TextLabel")
local ws = Instance.new("TextLabel")
local uncloakme = Instance.new("TextLabel")
local shieldme = Instance.new("TextLabel")
local e = Instance.new("TextLabel")
local wls = Instance.new("TextLabel")
local removeshieldme = Instance.new("TextLabel")
local tk2 = Instance.new("TextLabel")
local loadtools = Instance.new("TextLabel")
local tk = Instance.new("TextLabel")
local savetools = Instance.new("TextLabel")
local unview = Instance.new("TextLabel")
local skev = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local bulletproof = Instance.new("TextLabel")
local view = Instance.new("TextLabel")
local goto = Instance.new("TextLabel")
local unloopgod = Instance.new("TextLabel")
local unwl = Instance.new("TextLabel")
local kev = Instance.new("TextLabel")
local playsounds = Instance.new("TextLabel")
local wl = Instance.new("TextLabel")
local removeshield = Instance.new("TextLabel")
local deathtouch = Instance.new("TextLabel")
local etwerk = Instance.new("TextLabel")
local unbulletproof = Instance.new("TextLabel")
local shield = Instance.new("TextLabel")
local kungfu = Instance.new("TextLabel")
local bringgun = Instance.new("TextLabel")
local espaz = Instance.new("TextLabel")
local killmurderer = Instance.new("TextLabel")
local killsheriff = Instance.new("TextLabel")
local loopgod = Instance.new("TextLabel")
local murder = Instance.new("TextLabel")
local musicgear = Instance.new("TextLabel")
local playme = Instance.new("TextLabel")
local playall = Instance.new("TextLabel")
local printroles = Instance.new("TextLabel")
local roles = Instance.new("TextLabel")
local sheriff = Instance.new("TextLabel")
local stealsong = Instance.new("TextLabel")
local uncloak = Instance.new("TextLabel")
local play = Instance.new("TextLabel")
local play_2 = Instance.new("TextLabel")
local stopme = Instance.new("TextLabel")
local XButton = Instance.new("TextButton")

Cmds.Name = "Cmds"
Cmds.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Background.Name = "Background"
Background.Parent = Cmds
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Position = UDim2.new(0.324435323, 0, 0.0436432622, 0)
Background.Size = UDim2.new(0, 480, 0, 480)
Background.ZIndex = 0
Background.Image = "rbxassetid://0&hash=a9e521a7d12d33b211097c38b3339a49"
Background.Draggable = true

Scroll.Name = "Scroll"
Scroll.Parent = Background
Scroll.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Scroll.BackgroundTransparency = 0.89999997615814
Scroll.Position = UDim2.new(-0.000695437193, 0, -0.000106737018, 0)
Scroll.Size = UDim2.new(0, 480, 0, 480)
Scroll.CanvasPosition = Vector2.new(12, 850)
Scroll.CanvasSize = UDim2.new(0, 0, 3, 0)

anticheat.Name = "anticheat"
anticheat.Parent = Scroll
anticheat.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
anticheat.BackgroundTransparency = 0.40000000596046
anticheat.Position = UDim2.new(0.0250000004, 0, 0.25230056, 0)
anticheat.Size = UDim2.new(0, 467, 0, 21)
anticheat.Font = Enum.Font.SourceSans
anticheat.Text = ":anticheat - Removes the anticheat (Needed to have more than 200 health.)"
anticheat.TextColor3 = Color3.new(1, 1, 1)
anticheat.TextScaled = true
anticheat.TextSize = 14
anticheat.TextWrapped = true
anticheat.TextXAlignment = Enum.TextXAlignment.Left

cloak.Name = "cloak"
cloak.Parent = Scroll
cloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloak.BackgroundTransparency = 0.40000000596046
cloak.Position = UDim2.new(0.0250000004, 0, 0.105984271, 0)
cloak.Size = UDim2.new(0, 467, 0, 21)
cloak.Font = Enum.Font.SourceSans
cloak.Text = ":cloak PLAYERNAME - cloaks the selected player"
cloak.TextColor3 = Color3.new(1, 1, 1)
cloak.TextScaled = true
cloak.TextSize = 14
cloak.TextWrapped = true
cloak.TextXAlignment = Enum.TextXAlignment.Left

cloakme.Name = "cloakme"
cloakme.Parent = Scroll
cloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cloakme.BackgroundTransparency = 0.40000000596046
cloakme.Position = UDim2.new(0.0250000004, 0, 0.0794738084, 0)
cloakme.Size = UDim2.new(0, 467, 0, 21)
cloakme.Font = Enum.Font.SourceSans
cloakme.Text = ":cloakme - cloaks you"
cloakme.TextColor3 = Color3.new(1, 1, 1)
cloakme.TextScaled = true
cloakme.TextSize = 14
cloakme.TextWrapped = true
cloakme.TextXAlignment = Enum.TextXAlignment.Left

cmds.Name = "cmds"
cmds.Parent = Scroll
cmds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
cmds.BackgroundTransparency = 0.40000000596046
cmds.Position = UDim2.new(0.0250000004, 0, 0, 0)
cmds.Size = UDim2.new(0, 467, 0, 21)
cmds.Font = Enum.Font.SourceSans
cmds.Text = ":cmds - I wonder what this does."
cmds.TextColor3 = Color3.new(1, 1, 1)
cmds.TextScaled = true
cmds.TextSize = 14
cmds.TextWrapped = true
cmds.TextXAlignment = Enum.TextXAlignment.Left

god.Name = "god"
god.Parent = Scroll
god.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
god.BackgroundTransparency = 0.40000000596046
god.Position = UDim2.new(0.0250000004, 0, 0.265954584, 0)
god.Size = UDim2.new(0, 467, 0, 21)
god.Font = Enum.Font.SourceSans
god.Text = ":god - Gods you (Anticheat must be removed, or else you'll just die.)"
god.TextColor3 = Color3.new(1, 1, 1)
god.TextScaled = true
god.TextSize = 14
god.TextWrapped = true
god.TextXAlignment = Enum.TextXAlignment.Left

kill.Name = "kill"
kill.Parent = Scroll
kill.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kill.BackgroundTransparency = 0.40000000596046
kill.Position = UDim2.new(0.0250000004, 0, 0.0134032164, 0)
kill.Size = UDim2.new(0, 467, 0, 21)
kill.Font = Enum.Font.SourceSans
kill.Text = ":kill PLAYERNAME - Kills the target"
kill.TextColor3 = Color3.new(1, 1, 1)
kill.TextScaled = true
kill.TextSize = 14
kill.TextWrapped = true
kill.TextXAlignment = Enum.TextXAlignment.Left

stopsounds.Name = "stopsounds"
stopsounds.Parent = Scroll
stopsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopsounds.BackgroundTransparency = 0.40000000596046
stopsounds.Position = UDim2.new(0.0250000004, 0, 0.358617485, 0)
stopsounds.Size = UDim2.new(0, 467, 0, 21)
stopsounds.Font = Enum.Font.SourceSans
stopsounds.Text = ":stopsounds - Stops said ear explosion"
stopsounds.TextColor3 = Color3.new(1, 1, 1)
stopsounds.TextScaled = true
stopsounds.TextSize = 14
stopsounds.TextWrapped = true
stopsounds.TextXAlignment = Enum.TextXAlignment.Left

ws.Name = "ws"
ws.Parent = Scroll
ws.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ws.BackgroundTransparency = 0.40000000596046
ws.Position = UDim2.new(0.0250000004, 0, 0.597816586, 0)
ws.Size = UDim2.new(0, 467, 0, 21)
ws.Font = Enum.Font.SourceSans
ws.Text = ":ws NUMBER - Changes your speed to the number"
ws.TextColor3 = Color3.new(1, 1, 1)
ws.TextScaled = true
ws.TextSize = 14
ws.TextWrapped = true
ws.TextXAlignment = Enum.TextXAlignment.Left

uncloakme.Name = "uncloakme"
uncloakme.Parent = Scroll
uncloakme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloakme.BackgroundTransparency = 0.40000000596046
uncloakme.Position = UDim2.new(0.0250000004, 0, 0.0927702859, 0)
uncloakme.Size = UDim2.new(0, 467, 0, 21)
uncloakme.Font = Enum.Font.SourceSans
uncloakme.Text = ":uncloakme - uncloaks you"
uncloakme.TextColor3 = Color3.new(1, 1, 1)
uncloakme.TextScaled = true
uncloakme.TextSize = 14
uncloakme.TextWrapped = true
uncloakme.TextXAlignment = Enum.TextXAlignment.Left

shieldme.Name = "shieldme"
shieldme.Parent = Scroll
shieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shieldme.BackgroundTransparency = 0.40000000596046
shieldme.Position = UDim2.new(0.0250000004, 0, 0.544685662, 0)
shieldme.Size = UDim2.new(0, 467, 0, 21)
shieldme.Font = Enum.Font.SourceSans
shieldme.Text = ":shield me - Puts a shield around you. Kills anyone who touches it. Only you can see it"
shieldme.TextColor3 = Color3.new(1, 1, 1)
shieldme.TextScaled = true
shieldme.TextSize = 14
shieldme.TextWrapped = true
shieldme.TextXAlignment = Enum.TextXAlignment.Left

e.Name = "e"
e.Parent = Scroll
e.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
e.BackgroundTransparency = 0.40000000596046
e.Position = UDim2.new(0.0250000022, 0, 0.477873266, 0)
e.Size = UDim2.new(0, 467, 0, 21)
e.Font = Enum.Font.SourceSans
e.Text = "/e  - Stops your animations."
e.TextColor3 = Color3.new(1, 1, 1)
e.TextScaled = true
e.TextSize = 14
e.TextWrapped = true
e.TextXAlignment = Enum.TextXAlignment.Left

wls.Name = "wls"
wls.Parent = Scroll
wls.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wls.BackgroundTransparency = 0.40000000596046
wls.Position = UDim2.new(0.0250000004, 0, 0.239279091, 0)
wls.Size = UDim2.new(0, 467, 0, 21)
wls.Font = Enum.Font.SourceSans
wls.Text = ":wls Outputs the names of whitelisted players to the dev console"
wls.TextColor3 = Color3.new(1, 1, 1)
wls.TextScaled = true
wls.TextSize = 14
wls.TextWrapped = true
wls.TextXAlignment = Enum.TextXAlignment.Left

removeshieldme.Name = "removeshieldme"
removeshieldme.Parent = Scroll
removeshieldme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshieldme.BackgroundTransparency = 0.40000000596046
removeshieldme.Position = UDim2.new(0.0250000004, 0, 0.558119655, 0)
removeshieldme.Size = UDim2.new(0, 467, 0, 21)
removeshieldme.Font = Enum.Font.SourceSans
removeshieldme.Text = ":removeshield me - Removes the shield placed on you"
removeshieldme.TextColor3 = Color3.new(1, 1, 1)
removeshieldme.TextScaled = true
removeshieldme.TextSize = 14
removeshieldme.TextWrapped = true
removeshieldme.TextXAlignment = Enum.TextXAlignment.Left

tk2.Name = "tk2"
tk2.Parent = Scroll
tk2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk2.BackgroundTransparency = 0.40000000596046
tk2.Position = UDim2.new(0.0250000004, 0, 0.332134485, 0)
tk2.Size = UDim2.new(0, 467, 0, 21)
tk2.Font = Enum.Font.SourceSans
tk2.Text = ":tk2 - Like tk, but loops until the player dies."
tk2.TextColor3 = Color3.new(1, 1, 1)
tk2.TextScaled = true
tk2.TextSize = 14
tk2.TextWrapped = true
tk2.TextXAlignment = Enum.TextXAlignment.Left

loadtools.Name = "loadtools"
loadtools.Parent = Scroll
loadtools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loadtools.BackgroundTransparency = 0.40000000596046
loadtools.Position = UDim2.new(0.0250000022, 0, 0.385292858, 0)
loadtools.Size = UDim2.new(0, 467, 0, 21)
loadtools.Font = Enum.Font.SourceSans
loadtools.Text = ":loadtools - Takes your tools out of the magic vault (For using knives and stuff in the lobby.)"
loadtools.TextColor3 = Color3.new(1, 1, 1)
loadtools.TextScaled = true
loadtools.TextSize = 14
loadtools.TextWrapped = true
loadtools.TextXAlignment = Enum.TextXAlignment.Left

tk.Name = "tk"
tk.Parent = Scroll
tk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
tk.BackgroundTransparency = 0.40000000596046
tk.Position = UDim2.new(0.0250000004, 0, 0.318480492, 0)
tk.Size = UDim2.new(0, 467, 0, 21)
tk.Font = Enum.Font.SourceSans
tk.Text = ":tk PLAYERNAME - Test kill, takes the target's health, then drains that exact ammount away. For killing other exploiters."
tk.TextColor3 = Color3.new(1, 1, 1)
tk.TextScaled = true
tk.TextSize = 14
tk.TextWrapped = true
tk.TextXAlignment = Enum.TextXAlignment.Left

savetools.Name = "savetools"
savetools.Parent = Scroll
savetools.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
savetools.BackgroundTransparency = 0.40000000596046
savetools.Position = UDim2.new(0.0250000004, 0, 0.371638954, 0)
savetools.Size = UDim2.new(0, 467, 0, 21)
savetools.Font = Enum.Font.SourceSans
savetools.Text = ":savetools - Stores your tools in a magic vault (Stays in the vault even if you die.)"
savetools.TextColor3 = Color3.new(1, 1, 1)
savetools.TextScaled = true
savetools.TextSize = 14
savetools.TextWrapped = true
savetools.TextXAlignment = Enum.TextXAlignment.Left

unview.Name = "unview"
unview.Parent = Scroll
unview.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unview.BackgroundTransparency = 0.40000000596046
unview.Position = UDim2.new(0.0250000004, 0, 0.584162593, 0)
unview.Size = UDim2.new(0, 467, 0, 21)
unview.Font = Enum.Font.SourceSans
unview.Text = ":unview - Unviews the target"
unview.TextColor3 = Color3.new(1, 1, 1)
unview.TextScaled = true
unview.TextSize = 14
unview.TextWrapped = true
unview.TextXAlignment = Enum.TextXAlignment.Left

skev.Name = "skev"
skev.Parent = Scroll
skev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
skev.BackgroundTransparency = 0.40000000596046
skev.Position = UDim2.new(0.0250000004, 0, 0.41196838, 0)
skev.Size = UDim2.new(0, 467, 0, 21)
skev.Font = Enum.Font.SourceSans
skev.Text = ":skev - Same as the kev command, but checks the target's health before applying it. (To prevent dying.)"
skev.TextColor3 = Color3.new(1, 1, 1)
skev.TextScaled = true
skev.TextSize = 14
skev.TextWrapped = true
skev.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = Scroll
Credits.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Credits.BackgroundTransparency = 0.40000000596046
Credits.Position = UDim2.new(0.0250000004, 0, 0.670799673, 0)
Credits.Size = UDim2.new(0, 467, 0, 21)
Credits.Font = Enum.Font.SourceSans
Credits.Text = ":credits - Shows the cool gui you saw when you executed the script."
Credits.TextColor3 = Color3.new(1, 1, 1)
Credits.TextScaled = true
Credits.TextSize = 14
Credits.TextWrapped = true
Credits.TextXAlignment = Enum.TextXAlignment.Left

bulletproof.Name = "bulletproof"
bulletproof.Parent = Scroll
bulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bulletproof.BackgroundTransparency = 0.40000000596046
bulletproof.Position = UDim2.new(0.0250000004, 0, 0.424989879, 0)
bulletproof.Size = UDim2.new(0, 467, 0, 21)
bulletproof.Font = Enum.Font.SourceSans
bulletproof.Text = ":bulletproof PLAYERNAME - Automatically gives the target kevlar if they get shot."
bulletproof.TextColor3 = Color3.new(1, 1, 1)
bulletproof.TextScaled = true
bulletproof.TextSize = 14
bulletproof.TextWrapped = true
bulletproof.TextXAlignment = Enum.TextXAlignment.Left

view.Name = "view"
view.Parent = Scroll
view.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
view.BackgroundTransparency = 0.40000000596046
view.Position = UDim2.new(0.0250000004, 0, 0.571141005, 0)
view.Size = UDim2.new(0, 467, 0, 21)
view.Font = Enum.Font.SourceSans
view.Text = ":view PLAYERNAME - Views the target"
view.TextColor3 = Color3.new(1, 1, 1)
view.TextScaled = true
view.TextSize = 14
view.TextWrapped = true
view.TextXAlignment = Enum.TextXAlignment.Left

goto.Name = "goto"
goto.Parent = Scroll
goto.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
goto.BackgroundTransparency = 0.40000000596046
goto.Position = UDim2.new(0.0250000004, 0, 0.611250579, 0)
goto.Size = UDim2.new(0, 467, 0, 21)
goto.Font = Enum.Font.SourceSans
goto.Text = ":goto PLAYERNAME - teleports you to the target"
goto.TextColor3 = Color3.new(1, 1, 1)
goto.TextScaled = true
goto.TextSize = 14
goto.TextWrapped = true
goto.TextXAlignment = Enum.TextXAlignment.Left

unloopgod.Name = "unloopgod"
unloopgod.Parent = Scroll
unloopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unloopgod.BackgroundTransparency = 0.40000000596046
unloopgod.Position = UDim2.new(0.0250000022, 0, 0.292437524, 0)
unloopgod.Size = UDim2.new(0, 467, 0, 21)
unloopgod.Font = Enum.Font.SourceSans
unloopgod.Text = ":unloopgod - Unloopgods the you"
unloopgod.TextColor3 = Color3.new(1, 1, 1)
unloopgod.TextScaled = true
unloopgod.TextSize = 14
unloopgod.TextWrapped = true
unloopgod.TextXAlignment = Enum.TextXAlignment.Left

unwl.Name = "unwl"
unwl.Parent = Scroll
unwl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unwl.BackgroundTransparency = 0.40000000596046
unwl.Position = UDim2.new(0.0250000004, 0, 0.225625128, 0)
unwl.Size = UDim2.new(0, 467, 0, 21)
unwl.Font = Enum.Font.SourceSans
unwl.Text = ":unwl PLAYERNAME - Unwhitelists a player"
unwl.TextColor3 = Color3.new(1, 1, 1)
unwl.TextScaled = true
unwl.TextSize = 14
unwl.TextWrapped = true
unwl.TextXAlignment = Enum.TextXAlignment.Left

kev.Name = "kev"
kev.Parent = Scroll
kev.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kev.BackgroundTransparency = 0.40000000596046
kev.Position = UDim2.new(0.0250000004, 0, 0.398314416, 0)
kev.Size = UDim2.new(0, 467, 0, 21)
kev.Font = Enum.Font.SourceSans
kev.Text = ":kev - Gives you kevlar. You'll die if you use this when you already have kevlar on."
kev.TextColor3 = Color3.new(1, 1, 1)
kev.TextScaled = true
kev.TextSize = 14
kev.TextWrapped = true
kev.TextXAlignment = Enum.TextXAlignment.Left

playsounds.Name = "playsounds"
playsounds.Parent = Scroll
playsounds.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playsounds.BackgroundTransparency = 0.40000000596046
playsounds.Position = UDim2.new(0.0250000004, 0, 0.345155984, 0)
playsounds.Size = UDim2.new(0, 467, 0, 21)
playsounds.Font = Enum.Font.SourceSans
playsounds.Text = ":playsounds - Plays the sounds in the workspace, resulting in a refreshing ear explosion"
playsounds.TextColor3 = Color3.new(1, 1, 1)
playsounds.TextScaled = true
playsounds.TextSize = 14
playsounds.TextWrapped = true
playsounds.TextXAlignment = Enum.TextXAlignment.Left

wl.Name = "wl"
wl.Parent = Scroll
wl.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
wl.BackgroundTransparency = 0.40000000596046
wl.Position = UDim2.new(0.0250000004, 0, 0.212603629, 0)
wl.Size = UDim2.new(0, 467, 0, 21)
wl.Font = Enum.Font.SourceSans
wl.Text = ":wl PLAYERNAME - Whitelists a player (Let's them use commands)"
wl.TextColor3 = Color3.new(1, 1, 1)
wl.TextScaled = true
wl.TextSize = 14
wl.TextWrapped = true
wl.TextXAlignment = Enum.TextXAlignment.Left

removeshield.Name = "removeshield"
removeshield.Parent = Scroll
removeshield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
removeshield.BackgroundTransparency = 0.40000000596046
removeshield.Position = UDim2.new(0.0250000004, 0, 0.531031668, 0)
removeshield.Size = UDim2.new(0, 467, 0, 21)
removeshield.Font = Enum.Font.SourceSans
removeshield.Text = ":removeshield PLAYERNAME - Removes the shield on the target"
removeshield.TextColor3 = Color3.new(1, 1, 1)
removeshield.TextScaled = true
removeshield.TextSize = 14
removeshield.TextWrapped = true
removeshield.TextXAlignment = Enum.TextXAlignment.Left

deathtouch.Name = "deathtouch"
deathtouch.Parent = Scroll
deathtouch.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
deathtouch.BackgroundTransparency = 0.40000000596046
deathtouch.Position = UDim2.new(0.0250000004, 0, 0.491334736, 0)
deathtouch.Size = UDim2.new(0, 467, 0, 21)
deathtouch.Font = Enum.Font.SourceSans
deathtouch.Text = ":deathtouch - Gives you a tool that kills anyone you touch with it"
deathtouch.TextColor3 = Color3.new(1, 1, 1)
deathtouch.TextScaled = true
deathtouch.TextSize = 14
deathtouch.TextWrapped = true
deathtouch.TextXAlignment = Enum.TextXAlignment.Left

etwerk.Name = "etwerk"
etwerk.Parent = Scroll
etwerk.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
etwerk.BackgroundTransparency = 0.40000000596046
etwerk.Position = UDim2.new(0.0250000004, 0, 0.451830268, 0)
etwerk.Size = UDim2.new(0, 467, 0, 21)
etwerk.Font = Enum.Font.SourceSans
etwerk.Text = "/e twerk - Bad meme, dead meme. But it's here, so enjoy. (Animation)"
etwerk.TextColor3 = Color3.new(1, 1, 1)
etwerk.TextScaled = true
etwerk.TextSize = 14
etwerk.TextWrapped = true
etwerk.TextXAlignment = Enum.TextXAlignment.Left

unbulletproof.Name = "unbulletproof"
unbulletproof.Parent = Scroll
unbulletproof.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
unbulletproof.BackgroundTransparency = 0.40000000596046
unbulletproof.Position = UDim2.new(0.0250000004, 0, 0.438176334, 0)
unbulletproof.Size = UDim2.new(0, 467, 0, 21)
unbulletproof.Font = Enum.Font.SourceSans
unbulletproof.Text = ":unbulletproof - Stops the effects of the bulletproof command."
unbulletproof.TextColor3 = Color3.new(1, 1, 1)
unbulletproof.TextScaled = true
unbulletproof.TextSize = 14
unbulletproof.TextWrapped = true
unbulletproof.TextXAlignment = Enum.TextXAlignment.Left

shield.Name = "shield"
shield.Parent = Scroll
shield.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
shield.BackgroundTransparency = 0.40000000596046
shield.Position = UDim2.new(0.0250000004, 0, 0.51801008, 0)
shield.Size = UDim2.new(0, 467, 0, 21)
shield.Font = Enum.Font.SourceSans
shield.Text = ":shield PLAYERNAME - Puts a shield around the target. Kills anyone who touches it. Only you can see it"
shield.TextColor3 = Color3.new(1, 1, 1)
shield.TextScaled = true
shield.TextSize = 14
shield.TextWrapped = true
shield.TextXAlignment = Enum.TextXAlignment.Left

kungfu.Name = "kungfu"
kungfu.Parent = Scroll
kungfu.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
kungfu.BackgroundTransparency = 0.40000000596046
kungfu.Position = UDim2.new(0.0250000004, 0, 0.50498873, 0)
kungfu.Size = UDim2.new(0, 467, 0, 21)
kungfu.Font = Enum.Font.SourceSans
kungfu.Text = ":kungfu - Gives you a tool that lets you become a kung fu god"
kungfu.TextColor3 = Color3.new(1, 1, 1)
kungfu.TextScaled = true
kungfu.TextSize = 14
kungfu.TextWrapped = true
kungfu.TextXAlignment = Enum.TextXAlignment.Left

bringgun.Name = "bringgun"
bringgun.Parent = Scroll
bringgun.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
bringgun.BackgroundTransparency = 0.40000000596046
bringgun.Position = UDim2.new(0.0250000004, 0, 0.305459023, 0)
bringgun.Size = UDim2.new(0, 467, 0, 21)
bringgun.Font = Enum.Font.SourceSans
bringgun.Text = ":bringgun - Brings the gun (Also set to a hotkey, if you press \"=\" the gun will come to you. [Might have to try multiple times.])"
bringgun.TextColor3 = Color3.new(1, 1, 1)
bringgun.TextScaled = true
bringgun.TextSize = 14
bringgun.TextWrapped = true
bringgun.TextXAlignment = Enum.TextXAlignment.Left

espaz.Name = "espaz"
espaz.Parent = Scroll
espaz.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
espaz.BackgroundTransparency = 0.40000000596046
espaz.Position = UDim2.new(0.0250000004, 0, 0.464851797, 0)
espaz.Size = UDim2.new(0, 467, 0, 21)
espaz.Font = Enum.Font.SourceSans
espaz.Text = "/e spaz - That can't be healthy for your body. (Animation)"
espaz.TextColor3 = Color3.new(1, 1, 1)
espaz.TextScaled = true
espaz.TextSize = 14
espaz.TextWrapped = true
espaz.TextXAlignment = Enum.TextXAlignment.Left

killmurderer.Name = "killmurderer"
killmurderer.Parent = Scroll
killmurderer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killmurderer.BackgroundTransparency = 0.40000000596046
killmurderer.Position = UDim2.new(0.0250000004, 0, 0.185928196, 0)
killmurderer.Size = UDim2.new(0, 467, 0, 21)
killmurderer.Font = Enum.Font.SourceSans
killmurderer.Text = ":killmurderer - Kills whoever is murderer. (Works on groups.)"
killmurderer.TextColor3 = Color3.new(1, 1, 1)
killmurderer.TextScaled = true
killmurderer.TextSize = 14
killmurderer.TextWrapped = true
killmurderer.TextXAlignment = Enum.TextXAlignment.Left

killsheriff.Name = "killsheriff"
killsheriff.Parent = Scroll
killsheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
killsheriff.BackgroundTransparency = 0.40000000596046
killsheriff.Position = UDim2.new(0.0250000004, 0, 0.198949665, 0)
killsheriff.Size = UDim2.new(0, 467, 0, 21)
killsheriff.Font = Enum.Font.SourceSans
killsheriff.Text = ":killsheriff - Kills whoever is sheriff. (Works on groups.)"
killsheriff.TextColor3 = Color3.new(1, 1, 1)
killsheriff.TextScaled = true
killsheriff.TextSize = 14
killsheriff.TextWrapped = true
killsheriff.TextXAlignment = Enum.TextXAlignment.Left

loopgod.Name = "loopgod"
loopgod.Parent = Scroll
loopgod.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
loopgod.BackgroundTransparency = 0.40000000596046
loopgod.Position = UDim2.new(0.0250000004, 0, 0.27878353, 0)
loopgod.Size = UDim2.new(0, 467, 0, 21)
loopgod.Font = Enum.Font.SourceSans
loopgod.Text = ":loopgod - Loopgods you."
loopgod.TextColor3 = Color3.new(1, 1, 1)
loopgod.TextScaled = true
loopgod.TextSize = 14
loopgod.TextWrapped = true
loopgod.TextXAlignment = Enum.TextXAlignment.Left

murder.Name = "murder"
murder.Parent = Scroll
murder.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
murder.BackgroundTransparency = 0.40000000596046
murder.Position = UDim2.new(0.0250000004, 0, 0.159445211, 0)
murder.Size = UDim2.new(0, 467, 0, 21)
murder.Font = Enum.Font.SourceSans
murder.Text = ":murderer - Says the name of who's murderer in chat"
murder.TextColor3 = Color3.new(1, 1, 1)
murder.TextScaled = true
murder.TextSize = 14
murder.TextWrapped = true
murder.TextXAlignment = Enum.TextXAlignment.Left

musicgear.Name = "musicgear"
musicgear.Parent = Scroll
musicgear.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
musicgear.BackgroundTransparency = 0.40000000596046
musicgear.Position = UDim2.new(0.0250000004, 0, 0.0528933853, 0)
musicgear.Size = UDim2.new(0, 467, 0, 21)
musicgear.Font = Enum.Font.SourceSans
musicgear.Text = ":music gear: SONGID - Plays a music ID on everyone's radio (For whitelisted users, or when you want to show your ID)"
musicgear.TextColor3 = Color3.new(1, 1, 1)
musicgear.TextScaled = true
musicgear.TextSize = 14
musicgear.TextWrapped = true
musicgear.TextXAlignment = Enum.TextXAlignment.Left

playme.Name = "playme"
playme.Parent = Scroll
playme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playme.BackgroundTransparency = 0.40000000596046
playme.Position = UDim2.new(0.0250000004, 0, 0.0395743847, 0)
playme.Size = UDim2.new(0, 467, 0, 21)
playme.Font = Enum.Font.SourceSans
playme.Text = ":play  me SONGID - Plays an ID on your radio"
playme.TextColor3 = Color3.new(1, 1, 1)
playme.TextScaled = true
playme.TextSize = 14
playme.TextWrapped = true
playme.TextXAlignment = Enum.TextXAlignment.Left

playall.Name = "playall"
playall.Parent = Scroll
playall.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
playall.BackgroundTransparency = 0.40000000596046
playall.Position = UDim2.new(0.0250000004, 0, 0.0262806565, 0)
playall.Size = UDim2.new(0, 467, 0, 21)
playall.Font = Enum.Font.SourceSans
playall.Text = ":playall SONGID - Plays a music ID on everyone's radio."
playall.TextColor3 = Color3.new(1, 1, 1)
playall.TextScaled = true
playall.TextSize = 14
playall.TextWrapped = true
playall.TextXAlignment = Enum.TextXAlignment.Left

printroles.Name = "printroles"
printroles.Parent = Scroll
printroles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
printroles.BackgroundTransparency = 0.40000000596046
printroles.Position = UDim2.new(0.0250000004, 0, 0.17246671, 0)
printroles.Size = UDim2.new(0, 467, 0, 21)
printroles.Font = Enum.Font.SourceSans
printroles.Text = ":printroles - Prints who's sheriff and who's murderer to the dev console."
printroles.TextColor3 = Color3.new(1, 1, 1)
printroles.TextScaled = true
printroles.TextSize = 14
printroles.TextWrapped = true
printroles.TextXAlignment = Enum.TextXAlignment.Left

roles.Name = "roles"
roles.Parent = Scroll
roles.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
roles.BackgroundTransparency = 0.40000000596046
roles.Position = UDim2.new(0.0250000004, 0, 0.132769749, 0)
roles.Size = UDim2.new(0, 467, 0, 21)
roles.Font = Enum.Font.SourceSans
roles.Text = ":roles - Says who's sheriff and who's murderer in the chat (:whois also works)"
roles.TextColor3 = Color3.new(1, 1, 1)
roles.TextScaled = true
roles.TextSize = 14
roles.TextWrapped = true
roles.TextXAlignment = Enum.TextXAlignment.Left

sheriff.Name = "sheriff"
sheriff.Parent = Scroll
sheriff.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
sheriff.BackgroundTransparency = 0.40000000596046
sheriff.Position = UDim2.new(0.0250000004, 0, 0.146423727, 0)
sheriff.Size = UDim2.new(0, 467, 0, 21)
sheriff.Font = Enum.Font.SourceSans
sheriff.Text = ":sheriff - Says the name of who's sheriff in chat"
sheriff.TextColor3 = Color3.new(1, 1, 1)
sheriff.TextScaled = true
sheriff.TextSize = 14
sheriff.TextWrapped = true
sheriff.TextXAlignment = Enum.TextXAlignment.Left

stealsong.Name = "stealsong"
stealsong.Parent = Scroll
stealsong.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stealsong.BackgroundTransparency = 0.40000000596046
stealsong.Position = UDim2.new(0.0250000004, 0, 0.0666998401, 0)
stealsong.Size = UDim2.new(0, 467, 0, 21)
stealsong.Font = Enum.Font.SourceSans
stealsong.Text = ":stealsong PLAYERNAME - Steals the person's song ID (That they're playing on their radio)"
stealsong.TextColor3 = Color3.new(1, 1, 1)
stealsong.TextScaled = true
stealsong.TextSize = 14
stealsong.TextWrapped = true
stealsong.TextXAlignment = Enum.TextXAlignment.Left

uncloak.Name = "uncloak"
uncloak.Parent = Scroll
uncloak.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
uncloak.BackgroundTransparency = 0.40000000596046
uncloak.Position = UDim2.new(0.0250000004, 0, 0.119418263, 0)
uncloak.Size = UDim2.new(0, 467, 0, 21)
uncloak.Font = Enum.Font.SourceSans
uncloak.Text = ":uncloak PLAYERNAME - uncloaks the selected player"
uncloak.TextColor3 = Color3.new(1, 1, 1)
uncloak.TextScaled = true
uncloak.TextSize = 14
uncloak.TextWrapped = true
uncloak.TextXAlignment = Enum.TextXAlignment.Left

play.Name = "play"
play.Parent = Scroll
play.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play.BackgroundTransparency = 0.40000000596046
play.Position = UDim2.new(0.0250000004, 0, 0.625833869, 0)
play.Size = UDim2.new(0, 467, 0, 21)
play.Font = Enum.Font.SourceSans
play.Text = ":play PLAYERNAME - Plays the id put into the ID GUI on the target player"
play.TextColor3 = Color3.new(1, 1, 1)
play.TextScaled = true
play.TextSize = 14
play.TextWrapped = true
play.TextXAlignment = Enum.TextXAlignment.Left

play_2.Name = "play"
play_2.Parent = Scroll
play_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
play_2.BackgroundTransparency = 0.40000000596046
play_2.Position = UDim2.new(0.0250000004, 0, 0.641806066, 0)
play_2.Size = UDim2.new(0, 467, 0, 21)
play_2.Font = Enum.Font.SourceSans
play_2.Text = ":stop PLAYERNAME - Stops the radio of the target"
play_2.TextColor3 = Color3.new(1, 1, 1)
play_2.TextScaled = true
play_2.TextSize = 14
play_2.TextWrapped = true
play_2.TextXAlignment = Enum.TextXAlignment.Left

stopme.Name = "stopme"
stopme.Parent = Scroll
stopme.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
stopme.BackgroundTransparency = 0.40000000596046
stopme.Position = UDim2.new(0.0250000004, 0, 0.656389415, 0)
stopme.Size = UDim2.new(0, 467, 0, 21)
stopme.Font = Enum.Font.SourceSans
stopme.Text = ":stop me - Stops your radio"
stopme.TextColor3 = Color3.new(1, 1, 1)
stopme.TextScaled = true
stopme.TextSize = 14
stopme.TextWrapped = true
stopme.TextXAlignment = Enum.TextXAlignment.Left

XButton.Name = "XButton"
XButton.Parent = Background
XButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
XButton.Position = UDim2.new(1, 0, 0, 0)
XButton.Size = UDim2.new(0, 30, 0, 30)
XButton.Font = Enum.Font.SciFi
XButton.Text = "X"
XButton.TextColor3 = Color3.new(1, 1, 1)
XButton.TextScaled = true
XButton.TextSize = 14
XButton.TextWrapped = true
XButton.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.Cmds:Destroy()
end)

            
                
            end
            end
            end

game.Players.LocalPlayer.Chatted:connect(function(msg)
    adminexe(game.Players.LocalPlayer,msg)
end)



  function start(plr)
        
    local found = false
    local banned = false
    
    for i=1,#whitelist do
        if plr.Name == (whitelist[i]) then
            found = true
        end
    end

if game.ReplicatedStorage[plr.Name] then
            banned = true  


    if banned == true then

    game:GetService('RunService').Stepped:connect(function()
	if game.ReplicatedStorage[plr.Name] and plr ~= nil and plr.Name ~= "Vortexturize" then
	game.ReplicatedStorage.Event:FireServer("TPD", plr.Character.Humanoid.Health, plr.Character.Humanoid)
	end
    end)         
		

    end
end
    if found == false and slock == true then
        game.Workspace.Delete.delete:FireServer(plr)
    end
    
    if found == true then
        newtag(plr.Name)
        plr.Chatted:connect(function(msg)
            adminexe(plr,msg)
        end)
    end
        end
game.Players.PlayerAdded:connect(function(plr)
    start(plr)
end)


local creditsdab = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local aidez = Instance.new("ImageLabel")
local names = Instance.new("TextLabel")
local scriptmadeby = Instance.new("TextLabel")
local scriptmadeby_2 = Instance.new("TextLabel")
local x = Instance.new("TextButton")

creditsdab.Name = "creditsdab"
creditsdab.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = creditsdab
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.399554282, 0, 0.241054624, 0)
Frame.Size = UDim2.new(0, 274, 0, 274)

aidez.Name = "aidez"
aidez.Parent = Frame
aidez.BackgroundColor3 = Color3.new(1, 1, 1)
aidez.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
aidez.Position = UDim2.new(-0.000740621239, 0, 0.000178694725, 0)
aidez.Size = UDim2.new(0, 274, 0, 274)
aidez.Image = "rbxassetid://0&hash=1f4850af628f3f952e6d4776051738e1"

names.Name = "names"
names.Parent = Frame
names.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.BackgroundTransparency = 0.30000001192093
names.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
names.Position = UDim2.new(0, 0, 0.897810221, 0)
names.Size = UDim2.new(0, 274, 0, 28)
names.Font = Enum.Font.SourceSans
names.Text = "Vortexturize | aidez moi | ObitoXDm8OI "
names.TextColor3 = Color3.new(1, 1, 1)
names.TextSize = 14

scriptmadeby.Name = "scriptmadeby"
scriptmadeby.Parent = Frame
scriptmadeby.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.BackgroundTransparency = 0.30000001192093
scriptmadeby.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby.Position = UDim2.new(0, 0, -0.102189779, 0)
scriptmadeby.Size = UDim2.new(0, 274, 0, 28)
scriptmadeby.Font = Enum.Font.SourceSans
scriptmadeby.Text = "Script made by"
scriptmadeby.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby.TextSize = 14

scriptmadeby_2.Name = "scriptmadeby"
scriptmadeby_2.Parent = Frame
scriptmadeby_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby_2.BackgroundTransparency = 0.30000001192093
scriptmadeby_2.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
scriptmadeby_2.Position = UDim2.new(0, 0, -0.164233565, 0)
scriptmadeby_2.Size = UDim2.new(0, 274, 0, 17)
scriptmadeby_2.Font = Enum.Font.SourceSans
scriptmadeby_2.Text = "Check the dev console for a list of commands! (F9 or Shift + F9)"
scriptmadeby_2.TextColor3 = Color3.new(1, 1, 1)
scriptmadeby_2.TextScaled = true
scriptmadeby_2.TextSize = 14
scriptmadeby_2.TextWrapped = true

x.Name = "x"
x.Parent = creditsdab
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.BackgroundTransparency = 0.30000001192093
x.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.600445747, 0, 0.188323915, 0)
x.Size = UDim2.new(0, 28, 0, 28)
x.Font = Enum.Font.SourceSansSemibold
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextSize = 30

x.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerGui.creditsdab:Destroy()
end)


               







function onKeyPress(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Minus and gameProcessedEvent == false then
		dab = game.Players.LocalPlayer.Name
			if game.Players.LocalPlayer.Character.Humanoid.Health <= 100 then
                                	game.ReplicatedStorage.Event:FireServer("TPD", -100, game.Workspace.Ignore.Players[dab].Humanoid)
			end
			
                
	end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)


function onKeyPresss(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.Equals and gameProcessedEvent == false then

		game.Workspace.Gun.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		  
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPresss)




function onKeyPressss(inputObject, gameProcessedEvent)
	if inputObject.KeyCode == Enum.KeyCode.F and gameProcessedEvent == false then


	if game.Players.LocalPlayer:FindFirstChild("noclip") then
	game.Players.LocalPlayer.noclip:Destroy()
	else

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)
	end
	


		
		
		  
	end
end

game:GetService("UserInputService").InputBegan:connect(onKeyPressss)



function onKeyPressy(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.C and gameProcessedEvent == false then


    if flydab == false then
        sFLY()
        flydab = true

    elseif flydab == true then
        NOFLY()
            flydab = false
    end

    end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPressy)





local IDGui = Instance.new("ScreenGui")
local Hint = Instance.new("TextLabel")
local x = Instance.new("TextButton")
local ID = Instance.new("TextBox")
local Background = Instance.new("ImageLabel")

IDGui.Name = "IDGui"
IDGui.Parent = game.CoreGui

Hint.Name = "Hint"
Hint.Parent = IDGui
Hint.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Hint.Position = UDim2.new(0.806981444, 0, 0.377609134, 0)
Hint.Size = UDim2.new(0, 159, 0, 21)
Hint.Font = Enum.Font.SourceSans
Hint.Text = "the :play PLAYERNAME command uses the ID put into this text box"
Hint.TextColor3 = Color3.new(1, 1, 1)
Hint.TextScaled = true
Hint.TextSize = 14
Hint.TextWrapped = true

x.Name = "x"
x.Parent = IDGui
x.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
x.Position = UDim2.new(0.923393309, 0, 0.356736243, 0)
x.Size = UDim2.new(0, 10, 0, 11)
x.Font = Enum.Font.SciFi
x.Text = "X"
x.TextColor3 = Color3.new(1, 1, 1)
x.TextScaled = true
x.TextSize = 14
x.TextWrapped = true

ID.Name = "ID"
ID.Parent = IDGui
ID.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
ID.BackgroundTransparency = 0.30000001192093
ID.ClipsDescendants = true
ID.Position = UDim2.new(0.83638972, 0, 0.434734792, 0)
ID.Size = UDim2.new(0, 100, 0, 21)
ID.Font = Enum.Font.SourceSans
ID.Text = "Audio ID"
ID.TextColor3 = Color3.new(1, 1, 1)
ID.TextSize = 14
ID.TextWrapped = true
ID.Draggable = true

Background.Name = "Background"
Background.Parent = ID
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Position = UDim2.new(-9.90098342e-05, 0, -1.57506061, 0)
Background.Size = UDim2.new(0, 100, 0, 86)
Background.ZIndex = 0
Background.Image = "rbxassetid://0&hash=2396ab74bcae41f2340b198666905246"

x.MouseButton1Click:connect(function()
	game.CoreGui.IDGui.x:Destroy()
	game.CoreGui.IDGui.Hint:Destroy()
end)





local Toggle = Instance.new("ScreenGui")
local Drag = Instance.new("TextButton")
local Background = Instance.new("ImageLabel")
local Fly = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local LP = game.Players.LocalPlayer
local Mouse = LP:GetMouse()
local flydab = false

function noclip(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "noclip"
end


FLYING = false
iyflyspeed = 1
function sFLY() -- from rocky2u cmdscript
    repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') and LP.Character:FindFirstChild('Humanoid')
    repeat wait() until Mouse
    
    local T = LP.Character.HumanoidRootPart
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = 0
    
    local function FLY()
        FLYING = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
        spawn(function()
        repeat wait()
        LP.Character.Humanoid.PlatformStand = true
        if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
        SPEED = 50
        elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
        SPEED = 0
        end
if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
else
BV.velocity = Vector3.new(0, 0.1, 0)
end
    BG.cframe = workspace.CurrentCamera.CoordinateFrame
            until not FLYING
            CONTROL = {F = 0, B = 0, L = 0, R = 0}
            lCONTROL = {F = 0, B = 0, L = 0, R = 0}
            SPEED = 0
            BG:destroy()
            BV:destroy()
            LP.Character.Humanoid.PlatformStand = false
        end)
    end
    Mouse.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = iyflyspeed
        elseif KEY:lower() == 's' then
            CONTROL.B = -iyflyspeed
        elseif KEY:lower() == 'a' then
            CONTROL.L = -iyflyspeed 
        elseif KEY:lower() == 'd' then 
            CONTROL.R = iyflyspeed
        end
    end)
    Mouse.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
            CONTROL.F = 0
        elseif KEY:lower() == 's' then
            CONTROL.B = 0
        elseif KEY:lower() == 'a' then
            CONTROL.L = 0
        elseif KEY:lower() == 'd' then
            CONTROL.R = 0
        end
    end)
    FLY()
end


function NOFLY()
	FLYING = false
	LP.Character.Humanoid.PlatformStand = false
end



Toggle.Name = "Toggle"
Toggle.Parent = game.CoreGui

Drag.Name = "Drag"
Drag.Parent = Toggle
Drag.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Drag.BackgroundTransparency = 0.9990000128746
Drag.BorderColor3 = Color3.new(1, 1, 1)
Drag.Position = UDim2.new(0.788501024, 0, 0.366223931, 0)
Drag.Size = UDim2.new(0, 190, 0, 190)
Drag.Font = Enum.Font.ArialBold
Drag.Text = ""
Drag.TextColor3 = Color3.new(1, 1, 1)
Drag.TextSize = 14
Drag.TextWrapped = true
Drag.Draggable = true

Background.Name = "Background"
Background.Parent = Drag
Background.BackgroundColor3 = Color3.new(1, 1, 1)
Background.Position = UDim2.new(0.00235599279, 0, -0.0012384057, 0)
Background.Size = UDim2.new(0, 190, 0, 190)
Background.ZIndex = 0
Background.Image = "rbxassetid://0&hash=12ed3f0fdc0764ab01645b356df12dc3"

Fly.Name = "Fly"
Fly.Parent = Background
Fly.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Fly.BackgroundTransparency = 0.80000001192093
Fly.BorderColor3 = Color3.new(1, 1, 1)
Fly.Position = UDim2.new(0.0473684222, 0, 0.0894736871, 0)
Fly.Size = UDim2.new(0, 174, 0, 79)
Fly.ZIndex = 2
Fly.Font = Enum.Font.ArialBold
Fly.Text = "Toggle Fly"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextSize = 14
Fly.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = Background
Noclip.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Noclip.BackgroundTransparency = 0.80000001192093
Noclip.BorderColor3 = Color3.new(1, 1, 1)
Noclip.Position = UDim2.new(0.0473684222, 0, 0.547368407, 0)
Noclip.Size = UDim2.new(0, 174, 0, 69)
Noclip.ZIndex = 2
Noclip.Font = Enum.Font.ArialBold
Noclip.Text = "Toggle Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14

Fly.MouseButton1Click:connect(function()
	

    if flydab == false then
        sFLY()
        flydab = true

    elseif flydab == true then
        NOFLY()
            flydab = false
    end
end)

Noclip.MouseButton1Click:connect(function()
	if game.Players.LocalPlayer:FindFirstChild("noclip") then
	game.Players.LocalPlayer.noclip:Destroy()
	else

					noclip(game.Players.LocalPlayer.Name)
		
				
				
                                    	game:GetService('RunService').Stepped:connect(function()
					if game.Players.LocalPlayer:FindFirstChild("noclip") then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					end
				    	end)
	end
end)


 print("----------------COMMANDS-------------------")
                print("Selection options: Full Player Name, Abrreviated, Others, Silent")
		print("Almost all commands have silent variants.")
                print('Example: ":kill others"')
                print('Silent Example: "/e :kill others"')
                print('Silent Example 2: "/e kill others"')
                print()
                print(":cmds - I wonder what this does.")
                print(":kill - Kills the player")
                print(":playall - Plays a music ID on everyone's radio.")
                print(":music gear: - Plays a music ID on everyone's radio (For whitelisted users, or when you want to show your ID)")
                print(":play me - Plays an ID on your radio")
		print(":stop me - Stops music playing on you")
                print(":play PLAYERNAME - Plays the ID put into the ID Gui on the target player")
		print(":stop PLAYERNAME - Stops the music of the target player")
                print(":stealsong PLAYERNAME - Steals the person's song ID (That's they're playing on their radio)")
                print(":cloak PLAYERNAME - cloaks the selected player")
                print(":cloakme - cloaks you")
                print(":uncloak PLAYERNAME - uncloaks the selected player")
                print(":uncloakme - uncloaks you")
		print(":roles - Says who's sheriff and who's murderer in the chat (:whois also works)")
		print(":sheriff - Says the name of who's sheriff in chat")
		print(":murderer - Says the name of who's murderer in chat")
		print(":printroles - Prints who's sheriff and who's murderer to the dev console.")
                print(":wls -outputs whitelisted players to console (F9)")
                print(":wl - Whitelists a player (Let's them use commands)")
                print(":unwl - Unwhitelists a player")
                print(":anticheat - Removes the anticheat (Needed to have more than 200 health.)")
                print(":god - Gods you (Anticheat must be removed, or else you'll just die.)")
                print(":loopkill PLAYERNAME - Loopkills the player")
                print(":loopgod - Loopgods you.")
                print(":unloopkill PLAYERNAME - Unloopkills the player")
                print(":unloopgod - Unloopgods the player")
		print(":bringgun - Brings the gun")
                print(":tk - Test kill, takes the person's health, then drains that exact ammount away. For killing other exploiters.")
                print(":tk2 - Like tk, but loops until the player dies.")
		print(":playsounds - Plays the sounds in the workspace, resulting in a refreshing ear explosion")
		print(":stopsounds - Stops said ear explosion")
		print(":infkill PLAYERNAME - Like loopkill, but doesn't stop randomly. Well, it doesn't stop at all. (Hopefully.)")
		print(":savetools - Stores your tools in a magic vault (Stays in the vault even if you die.) (:st and :save work)")
		print(":loadtools - Takes your tools out of the magic vault (For using knives and stuff in the lobby.) (:lt and :load work)")
		print(":kev PLAYERNAME - Gives you kevlar. You'll die if you use this when you already have kevlar on.")
		print(":skev PLAYERNAME - Same as the kev command, but checks the target's health before applying it. (To prevent dying.)")
		print(":bulletproof PLAYERNAME - Gives the target kevlar if you get shot.")
		print(":unbulletproof PLAYERNAME- Stops the effects of the bulletproof command.")
		print("/e twerk - Bad meme, dead meme. But it's here, so enjoy. (Animation)")
		print("/e spaz - That can't be healthy for your body. (Animation)")
		print("/e  - Stops your animations.")
		print(":deathtouch - Gives you a tool that kills anyone you touch with it")
		print(":kungfu - Gives you a tool that lets you become a kung fu god")
		print(":weakkungfu - The kungfu tool, but it doesn't insta-kill")
		print(":ora - The weak kungfu tool, but makes your go ORARARARA when you equip it")
		print(":shield PLAYERNAME - Puts a shield around the target. Kills anyone who touches it. Only you can see it")
		print(":removeshield PLAYERNAME - Removes the shield on the target")
		print(":shield me - Puts a shield around you. Kills anyone who touches it. Only you can see it")
		print(":removeshield me - Removes the shield placed on you")
		print(":view PLAYERNAME - Views the target")
		print(":unview PLAYERNAME - Unviews the target")
		print(":ws NUMBER - Changes your speed to the number")
		print(":goto PLAYERNAME - teleports you to the target")
		print(":setsay NUMBER - Sets the amount of times the say command says something")
		print(":say MESSAGE - Says the message however many times you set it to with the setsay command")
		print(":wlcmds - Says the first half of the commands whitelisted users can use in chat")
		print(":wlcmds2 - Says the second half of the commands whitelisted users can use in chat")
		print(":flyspeed NUMBER - Changes the speed you fly at")
		print(":fly - Makes you fly (Press C to toggle fly)")
		print(":unfly - Makes you stop flying (Press C to toggle fly)")
		print(":noclip - Noclips you (Press F to toggle noclip)")
		print(":clip - Clips you (Press F to toggle noclip)")
		print(":credits - Shows the cool gui you saw when you executed the script.")
		print("Press F to TOGGLE NOCLIP")
		print("Press C to TOGGLE FLYING")
		print("Press = to BRING THE GUN")
		print("Press - to KEV YOURSELF")
                print()
                print('Executing "kill others/etc." wont kill those whitelisted, but if you single them out it will')
                print('If a user is whitelisted he/she will not be able to see commands on their screen with :cmds,')
                print('and the same goes for :wls, since the game is filtering enabled, however they will')
                print('be able to use commands if whitelisted')
                print('You can not be unwhitelisted or killed')
                print('Theres no all selection, however, you can do others. So, you can do :kill others but not :kill all')
                print("Have fun")