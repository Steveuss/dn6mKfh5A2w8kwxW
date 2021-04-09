local MoneyLib = require(game.ReplicatedStorage.MoneyLib)
local Tycoon = game.Players.LocalPlayer.PlayerTycoon.Value
local Ores = workspace.DroppedParts[Tycoon.Name]

local Tracker = game.ReplicatedStorage.Items["Premium Tracker"].Model.UpgraderShip.Tracker
local Player = game.Players.LocalPlayer

local function RefreshTracker(GivenTracker, Cash)
    if GivenTracker then
        GivenTracker.Value.Text = MoneyLib.HandleMoney(Cash)
    end
end

Ores.ChildAdded:Connect(function(Ore)
    local NewTracker = Tracker:Clone()
    NewTracker.Adornee = Ore
    NewTracker.Parent = Ore

    local Cash = Ore:WaitForChild("Cash")

    RefreshTracker(NewTracker, Cash.Value)
    
    Cash.Changed:Connect(function()
        RefreshTracker(NewTracker, Cash.Value)
    end)
end)