local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local w = library:CreateWindow("Ilum 2")

w:Section("Basic Sabers")

local csabergoal = ""
local ctps = {}
local ccps = game.ReplicatedStorage.Sabers.BasicSabers:getChildren()
for i=1,#ccps do
if ccps[i].ClassName == "Tool" then
table.insert(ctps, 1, ccps[i].Name)
end
end


w:Dropdown("sabers", {
  location = _G;
  flag = "saber";
  list = ctps
}, function(new)
csabergoal = new
end)


w:Section("Regular Sabers")

local ctps = {}
local ccps = game.ReplicatedStorage.Sabers.Regular:getDescendants()
for i