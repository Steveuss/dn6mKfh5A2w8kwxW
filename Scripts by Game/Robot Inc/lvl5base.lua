local A_1 = "LVL5"
local A_2 =
{
["GoldDriller"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
},
["ScrapSmelter"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
},
["ControlPanel"] =
{
["Decors"] =
{
},
["CFrames"] =
{
["1"] = CFrame.new(28, 0.5, -44, 1, 0, 0, 0, 1, 0, 0, 0, 1)
},
["Colors"] =
{
["1"] = Color3.new(0.2, 0.345098, 0.509804)
}
},
["MegaScrapFurnace"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
},
["CoinStamper"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
},
["UpgradedScrapFurnace"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
},
["MegaCoinStamper"] =
{
["Decors"] =
{
},
["CFrames"] =
{
},
["Colors"] =
{
}
}
}
local Event = game:GetService("ReplicatedStorage").baseBuildEvent
Event:FireServer(A_1, A_2)