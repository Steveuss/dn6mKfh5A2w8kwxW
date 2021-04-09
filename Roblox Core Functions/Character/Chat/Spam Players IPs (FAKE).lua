while wait() do
_G.ass = {}
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
  if v.Name ~= game:GetService("Players").LocalPlayer.Name then
   local Thing = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://country.io/names.json"))
   local ParsedCountry = Thing[gethiddenproperty(v, "CountryRegionCodeReplicate")]
  local SayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest:FireServer(
v.Name.." is from "..tostring(ParsedCountry).." ".."IP: "..math.random(1,200).."."..math.random(1,200)..".".."######".." ".."(IP: Successfully Listed)",
"All"
)
wait(2)
end
end
for i = 1,5 do
local SayMessageRequest1 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest1:FireServer(
"IP Leaking Status: Working ⚙️",
"All"
)
wait(1)
end
wait(5)
local SayMessageRequest2 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest2:FireServer(
"IP Leaking Status: Successfully Leaked ✅",
"All"
)
end

while wait() do
_G.ass = {}
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
  if v.Name ~= game:GetService("Players").LocalPlayer.Name then
   local Thing = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://country.io/names.json"))
   local ParsedCountry = Thing[gethiddenproperty(v, "CountryRegionCodeReplicate")]
  local SayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest:FireServer(
v.Name.." is from "..tostring(ParsedCountry).." ".."IP: "..math.random(1,200).."."..math.random(1,200)..".".."######".." ".."(IP: Successfully Listed)",
"All"
)
wait(2)
end
end
for i = 1,5 do
local SayMessageRequest1 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest1:FireServer(
"IP Leaking Status: Working ⚙️",
"All"
)
wait(1)
end
wait(5)
local SayMessageRequest2 = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
SayMessageRequest2:FireServer(
"IP Leaking Status: Successfully Leaked ✅",
"All"
)
end