_G.d = true
function getgiant()
for i,d in pairs(game.workspace:GetChildren()) do
if string.sub(d.Name,1,6) == "Giant_" then
return d
end
end
end
local giant = getgiant()
while _G.d == true and wait() do
if giant and giant.Parent ~= nil then
local args =
{
[1] =
{
[1] = giant.Name,
[2] = 14,
[3] = 0.96785491759897
},
[2] =
{
[1] = false,
[2] = false,
[3] = false
}
}
local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["giant_dealdamage"]
Event:FireServer(args)
else
giant = getgiant()
wait(0.25)
end
end