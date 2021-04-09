-- Variable
local player = game.Players.LocalPlayer
local delay = 0

-- UI
local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
local w = library:CreateWindow('Magic Farm')
w:Section('Made by Megumu')
local box = w:Box('Delay', {
    flag = "delay";
    type = 'number';
}, function(new, old, enter)
    delay = tonumber(new)
end)
local t = w:Toggle('Enabled', {flag = "toggle1"})

-- Loop
while true do
    if w.flags.toggle1 then
        local char = player.Character:GetChildren()
        for i = 1, #char do local v = char[i]
            if v:IsA("Tool") then
                v.Parent = player.Backpack
            end
        end
        local back = player.Backpack:GetChildren()
        for i = 1, #back do local v = back[i]
            local stuff = {
                ["State"] = "Fire";
				["Controller"] = 0;
                ["SkillName"] = v.Name;
                ["Magic"] = string.split(player.PlayerGui.MainGui.MagicsFrame.MagicName.Text, " Magic")[1];
                ["Pos"] = player.Character.Head.Position;
            }
            game.ReplicatedStorage.Network.Events.SkillEvent:FireServer("Render Skill", stuff)
            wait(delay)
        end
    end
    wait()
end