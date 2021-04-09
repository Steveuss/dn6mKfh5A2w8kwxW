AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local a = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
a:Play()
a:AdjustSpeed(10)
game.Players.LocalPlayer.Character.Head.Mesh:Destroy()
local Tool = Instance.new("Tool", game.Players.LocalPlayer.Character)
Tool.Name = "Tool"
game.Players.LocalPlayer.Character.Robloxclassicred.Handle.AccessoryWeld:Destroy()
game.Players.LocalPlayer.Character.Robloxclassicred.Handle.Mesh:Destroy()
game.Players.LocalPlayer.Character.Robloxclassicred.Handle.Parent = game.Players.LocalPlayer.Character.Tool
game.Players.LocalPlayer.Character.Tool.GripForward = Vector3.new(1, -0, -0.018)
game.Players.LocalPlayer.Character.Tool.GripPos = Vector3.new(1.536, -1.514, -1.479)
game.Players.LocalPlayer.Character.Tool.GripRight = Vector3.new(-0, -1, 0)
game.Players.LocalPlayer.Character.Tool.GripUp = Vector3.new(0.018, 0, 1)

game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Tool)