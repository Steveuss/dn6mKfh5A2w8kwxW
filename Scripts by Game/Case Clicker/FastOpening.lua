_G.lol = true -- Change to false to stop the opening
while _G.lol do
wait()
local string_1 = "OpenCase";  
local table_1 = {
[1] = 'Starter Case',  -- Change this to your wanted case
[2] = false,
[3] = 1
};
local number_1 = 220295;
local Target = game:GetService("ReplicatedStorage")["Game Objects"].Remotes["565457"];
Target:InvokeServer(string_1, table_1, number_1);
end