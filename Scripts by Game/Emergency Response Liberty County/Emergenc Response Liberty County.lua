
print("Started.....")
local library = loadstring(game:HttpGet("https://pastebin.com/raw/7Z6TzFnv", true))()
local example = library:CreateWindow({
  text = "Emergency Response: Liberty County"
})
print("Created Lib")

example:AddButton("Autofarm", function()
    while wait(0.1) do
        for __,v in pairs(game.workspace:GetDescendants()) do
            if v.Name == "Bill" then
                v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end
end)

print("Finished!")