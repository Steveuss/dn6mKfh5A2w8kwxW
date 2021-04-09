local library = loadstring(game:HttpGet("https://pastebin.com/raw/eWKgbdix", true))()
library.options.underlinecolor = "rainbow"
local w = library:CreateWindow('Main')
w:Section('Toggles')

spawn(function()
local partt = Instance.new("Part", workspace)
partt.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,-40,0)
partt.Size = Vector3.new(3000,1,3000)
partt.Anchored = true
partt.BrickColor = BrickColor.random()
end)

w:Toggle('Kill Zombies', {flag = "toggle1"}) 
spawn(function()
while wait() do
    if w.flags.toggle1 then
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
for i,v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do 
	if v.Name == "Torso" then
		if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Position).magnitude < 100 then
			local A_1 = v.Parent.Humanoid
local A_2 = 2000
local Event = game:GetService("ReplicatedStorage").Damage
Event:FireServer(A_1, A_2)
		end
	end
	end
		end
	end
	end
	end)

w:Toggle('Lag Server', {flag = "toggle1"}) 
spawn(function()
while wait() do
    if w.flags.toggle1 then
		wait(1)
		if game.Players.LocalPlayer.Character:WaitForChild("Humanoid") then
			for i,v in pairs(game.workspace:GetDescendants()) do 
	if v:IsA("Part") then
local A_1 = game:GetService("ReplicatedStorage").Assets["Basic Building"]["Metal Block"]
local A_2 = CFrame.new(v.Position)
local A_3 = game:GetService("Workspace").Plates.Purple.AddedParts
local Event = game:GetService("ReplicatedStorage").CloneBlock
Event:FireServer(A_1, A_2, A_3)
	end
	end
	end
	end
	end
	end)

w:Button("Get All Items", function()
for i,v in pairs(game:GetService("ReplicatedStorage").Assets:GetDescendants()) do 
	if v.Name == "AssetID" then
 local A_1 = v.Parent.Name
local A_2 = 100000000000
local Event = game:GetService("ReplicatedStorage").AddItems
Event:FireServer(A_1, A_2)
	end
	end
	end)

w:Button("Unlimited Gold", function()
local A_1 = 9e18
local Event = game:GetService("ReplicatedStorage").AddGold
Event:FireServer(A_1)
end)
w:Button("Reset Gold", function()
local A_1 = -game:GetService("Players")[game.Players.LocalPlayer.Name].leaderstats.Gold.Value
local Event = game:GetService("ReplicatedStorage").AddGold
Event:FireServer(A_1)
end)
