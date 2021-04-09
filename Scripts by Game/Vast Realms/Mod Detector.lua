--Thanks to KunXL on V3rmillion

local Mods = { -- not all of the mods
    ["eggy_lmao"] = true,
    ["hyjo_blac"] = true,
    ["KatsuKasai"] = true,
    ["RobxSoft"] = true,
    ["Istunniq"] = true,
    ["Alphacord"] = true,
    ["SwxnBoomin"] = true,
    ["fabuss254"] = true,
    ["HyjoAI"] = true,
    ["Par1337"] = true,
    ["FallenState"] = true,
    ["StellarPowered"] = true,
    ["deathgunfromhell"] = true,
    ["kenami"] = true,
}

local function newSound()
    local Sound = Instance.new("Sound", game.Players.LocalPlayer.PlayerGui)
    Sound.SoundId = "rbxassetid://138081500"
    Sound.Volume = 5
    Sound:Play()
    Sound.Ended:connect(function()
        Sound:Destroy()
    end)
end

for k,v in pairs(game.Players:GetChildren()) do
    if Mods[v.Name] then
        newSound()
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "Mod detected!",
           Text = v.Name,
           Duration = 10,
           Button1 = "Close"
        })
    end
end

game.Players.PlayerAdded:connect(function(Player)
    if Mods[Player.Name] then
        newSound()
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "Mod detected!",
           Text = Player.Name,
           Duration = 10,
           Button1 = "Close"
        })
    end
end)

game.Players.PlayerRemoving:connect(function(Player)
    if Mods[Player.Name] then
        game:GetService("StarterGui"):SetCore("SendNotification", {
           Title = "Mod left!",
           Text = Player.Name,
           Duration = 10,
           Button1 = "Close"
        })
    end
end)