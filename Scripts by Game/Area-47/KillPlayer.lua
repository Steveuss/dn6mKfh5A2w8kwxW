local all = game.Workspace.CHANGE_NAME.HumanoidRootPart --Change "CHANGE_NAME" to a player name
game.ReplicatedStorage.NewGunEvent:FireServer('ReplicateFire',Vector3.new(), all) 
