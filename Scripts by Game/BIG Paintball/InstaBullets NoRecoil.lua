--Made by J j k on v3rmillion

local checks={ "Ammo", "ammo", "Damage", "damage", "Firerate", "firerate", "FireRate", "fireRate", "Recoil", "recoil", "Spread", "spread", "ability", "Ability" }
for i,v in pairs(getgc(true))do
   for x=1,#checks do
       if type(v)=="table" and rawget(v,checks[x]) then
           v.velocity=1000000
       end
   end
end