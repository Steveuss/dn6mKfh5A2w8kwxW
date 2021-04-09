local localPlayer = game:GetService("Players").LocalPlayer
local currentCamera = game:GetService("Workspace").CurrentCamera
local mouse = localPlayer:GetMouse()

local function getClosestPlayerToCursor()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Name ~= localPlayer.Name then
            if v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Head") then
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

mt.__namecall = newClose(function(...)
    local method = namecallMethod()
    local args = {...}

    if tostring(method) == "FireServer" and tostring(args[1]) == "ThrowKnife" and getClosestPlayerToCursor() and getClosestPlayerToCursor().Character:FindFirstChild("HumanoidRootPart") then
        local humRootPart = getClosestPlayerToCursor().Character.HumanoidRootPart
        local pos = humRootPart.Position
        local vel = humRootPart.Velocity
        args[2] = pos + Vector3.new((vel.X >= 1 and 1) or (vel.X <= -1 and -1) or 0, (vel.Y >= 1 and 1) or (vel.Y <= -1 and -1) or 0, (vel.Z >= 1 and 1) or (vel.Z <= -1 and -1) or 0)

        return oldNamecall(unpack(args))
    end

    return oldNamecall(...)
end)

if setreadonly then setreadonly(mt, true) else make_writeable(mt, false) end