LP = game:GetService('Players').LocalPlayer
LP.Character.Parent = workspace.Terrain
LP.Character:BreakJoints()
game:GetService('Workspace'):WaitForChild(LP.Name)
LP.Character:WaitForChild('HumanoidRootPart').CFrame = CFrame.new(2028.8335, -22.4481373, 1296.64417, 0.771370888, -6.83619632e-08, -0.636385858, 2.93115328e-08, 1, -7.18933251e-08, 0.636385858, 3.68029802e-08, 0.771370888)