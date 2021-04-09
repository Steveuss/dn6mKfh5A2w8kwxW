Target = "Quantum Ore Cleaner" -- The conveyor or upgrader you want to super upgrade
OnlyMines = false -- Set to true if you want to use only your upgraders
MaxOre = true -- Loops stars, upgrades, hits tesla, repeats. loops after it hits sacrifice tesla aswell. Disabling this will just let the ore go through all the upgraders once.

-- Upgraders you don't wanna use
Blacklisted = {
    ["Dragon Blaster"] = true,
    ["Big Bad Blaster"] = true,
    ["Azure Refiner"] = true,
}

loadstring(game:HttpGet("https://pastebin.com/raw/4pkj0ELF", true))()