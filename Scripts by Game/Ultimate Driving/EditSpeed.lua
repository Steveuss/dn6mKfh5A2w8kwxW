local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local w = library:CreateWindow('UD Speed')
local box = w:Box('Boost Speed', {
   flag = "Boost";
   type = 'number';
}, function(new, old, enter)
Text = new
end)
Boost = false
w:Bind("Change Keybind", {
   flag = "boostbind";
   kbonly = true;
   default = Enum.KeyCode.Q;
}, function()
if Boost == false then
vehicle.VehicleSeat.BoostForce.Force = Vector3.new(0,0,Text/-1*1000)
Boost = true
else
vehicle.VehicleSeat.BoostForce.Force = Vector3.new(0,0,0)
Boost = false
end
end)
w:Section("Teleports")
w:Button("Westover", function()
local me = game.Players.LocalPlayer.Character
me.HumanoidRootPart.CFrame = CFrame.new(2121,65,5554)
end)
w:Button("Kensington", function()
local me = game.Players.LocalPlayer.Character
me.HumanoidRootPart.CFrame = CFrame.new(-4296,16,915)
end)
w:Button("South Beach", function()
local me = game.Players.LocalPlayer.Character
me.HumanoidRootPart.CFrame = CFrame.new(-3812,13,-9129)
end)
w:Button("Woodbury", function()
local me = game.Players.LocalPlayer.Character
me.HumanoidRootPart.CFrame = CFrame.new(-2522,43,6577)
end)
w:Button("NewYork", function()
local me = game.Players.LocalPlayer.Character
me.HumanoidRootPart.CFrame = CFrame.new(37400,57,27560)
end)
vehicle = nil
while true do
wait(0.5)
for i,v in pairs(game.Workspace._Main.Vehicles:GetChildren()) do    
if v.VehicleSeat.Values.Owner.Value == game.Players.LocalPlayer.Name then
vehicle = v
elseif vehicle ~= nil and vehicle.VehicleSeat.Values.Driver.Value == game.Players.LocalPlayer.Name then
vehicle = v
end
end
end