--Made by Stefanuk12

-- // Valiant ENV
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Stefanuk12/ROBLOX/master/Universal/ValiantENV.lua"))()

-- // Vars
local RenderStepped = RunService.RenderStepped
local Heartbeat = RunService.Heartbeat
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded.Wait(LocalPlayer.CharacterAdded)
local Humanoid = Character.WaitForChild(Character, "Humanoid")
local HumnaoidRootPart = Character.WaitForChild(Character, "HumanoidRootPart")
local Backpack = LocalPlayer.Backpack
local CurrentCamera = Workspace.CurrentCamera
local Mouse = LocalPlayer.GetMouse(LocalPlayer)
local GetCameraAim = ReplicatedStorage.Modules.Client["Get_Camera_Aim"]

-- // Base MT Vars + Funs
local mt = getrawmetatable(game)
local backupnamecall = mt.__namecall
local backupnewindex = mt.__newindex
local backupindex = mt.__index 
setreadonly(mt, false)

-- // Silent Aim Vars
getgenv().AimHacks = {
    SilentAimEnabled = true,
    AimbotEnabled = false,
    ShowFOV = true,
    VisibleCheck = true,
    TeamCheck = true,
    FOV = 60,
    HitChance = 100,
    Selected = LocalPlayer,
    BlacklistedTeams = {
        {
            Team = LocalPlayer.Team,
            TeamColor = LocalPlayer.TeamColor,
        },
    },
    BlacklistedPlayers = {game:GetService("Players").LocalPlayer},
}

-- // Show FOV
local circle = Drawing.new("Circle")
function updateCircle()
    if circle then
        circle.Transparency = 1
        circle.Visible = AimHacks["ShowFOV"]
        circle.Thickness = 2
        circle.Color = Color3.fromRGB(231, 84, 128)
        circle.NumSides = 12
        circle.Radius = (AimHacks["FOV"] * 6) / 2
        circle.Filled = false
        circle.Position = Vector2.new(Mouse.X, Mouse.Y + (GuiService.GetGuiInset(GuiService).Y))
    end
end

-- // Custom Functions
setreadonly(math, false); math.chance = function(percentage) local percentage = math.floor(percentage); local chance = math.floor(Random.new().NextNumber(Random.new(), 0, 1) * 100)/100; return chance <= percentage/100 end; setreadonly(math, true);
setreadonly(table, false); table.loopforeach = function(tbl, func) for index, value in pairs(tbl) do if type(value) == 'table' then table.loopforeach(value, func); elseif type(value) == 'function' then table.loopforeach(debug.getupvalues(value)); else func(index, value); end; end; end; setreadonly(table, true);

-- // Silent Aim Function
local function getClosestPlayerToCursor()
    local ClosestPlayer = nil
    local Chance = math.chance(AimHacks["HitChance"])
    local ShortestDistance = math.huge
    if not Chance then AimHacks["Selected"] = (Chance and LocalPlayer or LocalPlayer) return (Chance and LocalPlayer or LocalPlayer) end
    function isPartVisible(Part, PartDescendant)
        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded.Wait(LocalPlayer.CharacterAdded)
        local Origin = CurrentCamera.CFrame.p
        local _, OnScreen = CurrentCamera.WorldToViewportPoint(CurrentCamera, Part.Position)
        if OnScreen then
            local newRay = Ray.new(Origin, Part.Position - Origin)
            local PartHit, _ = Workspace.FindPartOnRayWithIgnoreList(Workspace, newRay, {Character, CurrentCamera})
            local Visible = (not PartHit or PartHit.IsDescendantOf(PartHit, PartDescendant))
            return Visible
        end
        return false
    end
    function checkTeam(localPlayer, targetPlayer)
        if targetPlayer.Team ~= localPlayer.Team then
            for _,v in pairs(AimHacks.BlacklistedTeams) do
                if targetPlayer.Team ~= v.Team and targetPlayer.TeamColor ~= v.TeamColor then
                    return true
                end
            end
        end
        return false
    end
    function checkPlayer(targetPlayer)
        for i,v in pairs(AimHacks.BlacklistedPlayers) do
            if v ~= targetPlayer then
                return true
            end
        end
        return false
    end
    for _,plr in pairs(Players.GetPlayers(Players)) do
        if checkPlayer(plr) and plr.Character and plr.Character.FindFirstChildWhichIsA(plr.Character, "Humanoid") and plr.Character.FindFirstChildWhichIsA(plr.Character, "Humanoid").Health > 0 then
            if (AimHacks["TeamCheck"] and not checkTeam(LocalPlayer, plr)) then break end
            local PartPos, OnScreen = CurrentCamera.WorldToViewportPoint(CurrentCamera, plr.Character.PrimaryPart.Position)
            local Magnitude = (Vector2.new(PartPos.X, PartPos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude  
            if (Magnitude < (AimHacks["FOV"] * 6 - 8)) and (Magnitude < ShortestDistance) then
                if AimHacks["VisibleCheck"] and isPartVisible(plr.Character.Head, plr.Character) then
                    ClosestPlayer = plr
                    ShortestDistance = Magnitude
                elseif not AimHacks["VisibleCheck"] then
                    ClosestPlayer = plr
                    ShortestDistance = Magnitude
                end
            end
        end
    end
    AimHacks["Selected"] = (Chance and ClosestPlayer or LocalPlayer)
    return (Chance and ClosestPlayer or LocalPlayer)
end

-- // Heartbeat Function
local HBFuncs = function()
    updateCircle()
    getClosestPlayerToCursor()
end
Heartbeat.Connect(Heartbeat, HBFuncs)


-- // Anti Mine
for i,v in pairs(Map:GetChildren()) do
    if (v.Name == "Static_Landmine" or v.Name == "Land Mine") then
        v:Destroy()
    end
end
Map.DescendantAdded:Connect(function(Descendant)
    if (Descendant.Name == "Static_Landmine" or Descendant.Name == "Land Mine") then
        v:Destroy()
    end
end)

-- // Silent Aim
mt.__namecall = newcclosure(function(...)
    local method = getnamecallmethod()
    local args = {...}
    if (method == "FindPartOnRayWithIgnoreList" and getcallingscript().Name == "GunScript_Local" and AimHacks["SilentAimEnabled"] and AimHacks["Selected"] ~= LocalPlayer) then
        local rayOrigin = Character.Head.Position
        local rayDestination = AimHacks["Selected"].Character.Head.Position
        local rayDirection = (rayDestination - rayOrigin).Unit * 5000
        args[2] = Ray.new(rayOrigin, rayDirection)
        return backupnamecall(unpack(args))
    end
    return backupnamecall(...)
end)