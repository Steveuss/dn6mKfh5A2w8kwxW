--Made by liel1124

--[[
lonely hours sword script (took below 2min to write)
Say ":sword" to get sword
This script doesn't work on free exploits
]]
game:service'Players'.LocalPlayer.Chatted:connect(function(msg)
   if (msg:sub(1, tostring':sword':len'') == ':sword') then
       coroutine.wrap(function(...)
           if game:service'Players'.LocalPlayer.PlayerGui:FindFirstChild'KCoreUI'~=nil then
           game:service'Players'.LocalPlayer.PlayerGui:FindFirstChild'KCoreUI'.Enabled = false;
           end;
       wait(7);
       if game:service'Players'.LocalPlayer.PlayerGui:FindFirstChild'KCoreUI'~=nil then
           game:service'Players'.LocalPlayer.PlayerGui:FindFirstChild'KCoreUI'.Enabled = not game:service'Players'.LocalPlayer.PlayerGui:FindFirstChild'KCoreUI'.Enabled;
       end;end)'';
       local area = workspace:FindFirstChild('ArenaEnter', true);
       firetouchinterest(game:service'Players'.LocalPlayer.Character.PrimaryPart, area, 0)
       
   end;
end);
