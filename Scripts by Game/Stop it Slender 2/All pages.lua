local descendants = game.Workspace.MAP:GetDescendants()

for index, descendant in pairs(descendants) do
	if descendant:IsA("ClickDetector") then
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(descendant.Parent.Position)
		wait(0.3)
		fireclickdetector(descendant)
		wait(1)
	end
end