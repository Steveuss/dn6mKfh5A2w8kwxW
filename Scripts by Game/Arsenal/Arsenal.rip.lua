--Made by Greekazo on V3rmillion

if game.CoreGui:FindFirstChild("AFuckingTabYouIdiot") then
game.CoreGui:FindFirstChild("AFuckingTabYouIdiot"):Destroy()
end

_G.CurrentRainbowColor = Color3.fromRGB(255, 60, 35);

local library = loadstring(game:HttpGet("https://paste.ee/r/WjuO0"))();


local Config = {
   silent_aimbot = false,
   show_fov      = false,
   fov_value     = 200,
   inf_ammo      = false,
   no_recoil     = false,
   no_spread     = false,
   automatic     = false,
   reload_time   = false,
   team_check    = true,

   box_esp       = true,
   tracer_esp    = true,
   lock_players  = false
}

local aim_tab = library:CreateMain("Aimbot")
local gun_tab = library:CreateMain("Guns")
local mis_tab = library:CreateMain("Misc")

aim_tab:CreateToggle("Silent Aimbot", function()
   Config.silent_aimbot = not Config.silent_aimbot;
end)

aim_tab:CreateToggle("Show FOV", function()
   Config.show_fov = not Config.show_fov;
end)

aim_tab:CreateSlider("Field Of View", 10, 500, function(val)
   Config.fov_value = tonumber(val);
end)

gun_tab:CreateToggle("Infinite Ammo", function()
   Config.inf_ammo = not Config.inf_ammo;
end)

gun_tab:CreateToggle("Automatic", function()
   Config.automatic = not Config.automatic;
end)

gun_tab:CreateToggle("No Recoil", function()
   Config.no_recoil = not Config.no_recoil;
end)

gun_tab:CreateToggle("No Spread", function()
   Config.no_spread = not Config.no_spread;
end)

gun_tab:CreateToggle("Fuck Reload Time", function()
   Config.no_spread = not Config.no_spread;
end)

mis_tab:CreateToggle("Lock Behind Players", function()
   Config.lock_players = not Config.lock_players;
end)


local cc = game.workspace.CurrentCamera
local mouse = game.Players.LocalPlayer:GetMouse()

local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(0, 0)
FOVCircle.Radius = Config.fov_value;
FOVCircle.Thickness = 1
FOVCircle.Filled = false
FOVCircle.Transparency = 0
FOVCircle.NumSides = 10
FOVCircle.Visible = true
FOVCircle.Color = Color3.fromRGB(0, 0, 0)
mouse.Move:Connect(function()
 if Config.show_fov then
   FOVCircle.Thickness = 3;
   FOVCircle.Radius = Config.fov_value;
   FOVCircle.NumSides = 100
   FOVCircle.Color = Color3.fromRGB(30, 30, 30);
   FOVCircle.Position = Vector2.new(mouse.X, mouse.Y + 36)
   FOVCircle.Transparency = 1
 else
   FOVCircle.Transparency = 0
 end
end)

function getClosestMouse(trg_part)
   local nearest = nil  
   local last = math.huge
   for i,v in pairs(game.Players:GetPlayers()) do
       if v ~= game.Players.LocalPlayer and game.Players.LocalPlayer.Character and v.Character and v.Character:FindFirstChild(trg_part) and v.TeamColor ~= game.Players.LocalPlayer.TeamColor then
           local ePos = cc:WorldToViewportPoint(v.Character[trg_part].Position)
           local AccPos = Vector2.new(ePos.x, ePos.y)
           local mousePos = Vector2.new(cc.ViewportSize.x / 2, cc.ViewportSize.y / 2)
           local distance = (AccPos - mousePos).magnitude
           if distance < last then
               last = distance
               nearest = v
           end
       end
   end
   if nearest ~= nil then
       return nearest
   end
end

function checkfov(plr, fov_amount)
   local fov
   local vector = workspace.CurrentCamera:WorldToViewportPoint(plr.Character.HumanoidRootPart.Position)
   local magnitude = (Vector2.new(vector.X, vector.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
   local cfov = fov_amount
   if magnitude < cfov then
       fov = true
   else
       fov = false
   end
   return fov
end

local gameMeta = getrawmetatable(game)
setreadonly(gameMeta, false)
local oldNamecall = gameMeta.__namecall
gameMeta.__namecall = newcclosure(function(remote, ...)
   local arguments = {...}
   if tostring(remote) == 'HitPart' then
       if Config.silent_aimbot then
           local getclose = getClosestMouse("Head")
           if getclose and checkfov(getclose, Config.fov_value) then
               arguments[1] = getclose.Character.Head
               arguments[2] = getclose.Character.Head.Position
               return remote.FireServer(remote, unpack(arguments))
           else
               return remote.FireServer(remote, unpack(arguments))
           end
     end
   end
   return oldNamecall(remote, ...)
end)

local updateInventory;
for _,v in pairs(getgc()) do
   if type(v) == "function" then
       if getinfo(v).name == "updateInventory" then
        updateInventory = v;
       end
   end
end

pcall(function()
   function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end
   local counter = 0
   
   spawn(function()
       while wait() do
           counter = counter + 0.01
           _G.CurrentRainbowColor = (Color3.fromHSV(zigzag(counter),1,1));
       end
   end)
end)

local OwlESP = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/CriShoux/OwlHub/master/scripts/OwlESP.lua"))();

local players = game:GetService("Players");
local runService = game:GetService("RunService");
local localPlayer = players.LocalPlayer;
local tracking = {};

local remove = table.remove;
local fromRGB = Color3.fromRGB;

local espColor = _G.CurrentRainbowColor;

local function characterRemoving(char)
   for i, v in next, tracking do
       if v.char == char then
           v:remove();
           remove(tracking, i);
       end;
   end;
end;

local function characterAdded(plr)
   local char = plr.Character;
   char:WaitForChild("HumanoidRootPart"); char:WaitForChild("Head");
   tracking[#tracking + 1] = OwlESP.new({
       plr = plr,
       espBoxVisible = Config.box_esp,
       tracerVisible = Config.tracer_esp,
       text = plr.Name,
       teamCheck = Config.team_check,
       espColor = _G.CurrentRainbowColor
   });
end;

for i, v in next, players:GetPlayers() do
   if v ~= localPlayer then
       local char = v.Character;
       if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Head") then
           tracking[#tracking + 1] = OwlESP.new({
               plr = v,
               espBoxVisible = Config.box_esp,
               tracerVisible = Config.tracer_esp,
               text = v.Name,
               teamCheck = Config.team_check,
               espColor = _G.CurrentRainbowColor;
           });
       end;
       v.CharacterAdded:Connect(function()
           characterAdded(v);
       end);
       v.CharacterRemoving:Connect(characterRemoving);
   end;
end;

local function playerAdded(plr)
   plr.CharacterAdded:Connect(function()
       characterAdded(plr);
   end);
   plr.CharacterRemoving:Connect(characterRemoving);
end;

players.PlayerAdded:Connect(playerAdded);

runService.RenderStepped:Connect(function()
   for i, v in next, tracking do
       v:update();
   end;
end);

local RS = game:GetService("RunService")
local lplayer = game:GetService("Players").LocalPlayer
RS.Stepped:connect(function()
 for i, v in pairs(game.Players:GetChildren()) do
   if Config.lock_players and v.Name ~= game.Players.LocalPlayer.Name and v.TeamColor ~= game.Players.LocalPlayer.TeamColor and v.Character and v.Character.HumanoidRootPart and v.Character.Humanoid and v.Character.HumanoidRootPart.Position.Y > -100 then
     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame + v.Character.HumanoidRootPart.CFrame.lookVector * -3.1
   end
 end
end)


for i,v in pairs(getgc()) do
if type(v) == "table" then
if rawget(v, "getammo") then
           spawn(function()
               while wait() do
                   if Config.no_recoil then
                       v.recoil = 0
                   end
                   if Config.no_spread then
                       v.currentspread = 0
                   end
                   if Config.automatic then
                       v.mode = "automatic"
                   end
                   if Config.reload_time then
                       v.reloadtime = 0
                   end
               end
           end)
end
end
end

while wait() do
   if Config.inf_ammo then
       setupvalue(updateInventory, 3, 999);
   end
end