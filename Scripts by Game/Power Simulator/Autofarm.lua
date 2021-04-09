local Powers = {
   "PunchPower",
   "Agility",
   "Endurance",
   "PsychicForce",
   "Swiftness"
}
local PunchPower = "PunchPower"
local EquipAbility = game:GetService("ReplicatedStorage").EquipAbility
local IncreaseAbilities = game:GetService("ReplicatedStorage").IncreaseAbilities
_G.SuperHeroHax = false
EquipAbility:FireServer(PunchPower)
while true do
   if _G.SuperHeroHax then return end
   for i,v in pairs(Powers) do
       IncreaseAbilities:FireServer(v)
       wait(0.5)
   end
end