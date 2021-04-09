--// Written by Unverified

for i, v in next, (getgc(true)) do
    if (type(v) == "table" and rawget(v, "damage")) then
        v.firerate = 0.00001 -- Fast Fire
        v.damage = math.huge -- Insta Kill / I'm aware that some guns instant-kill but some don't so I just made this it does kill them instantly
        v.automatic = true -- Automatic Weapon
        v.velocity = 50000 -- No Spread
        v.gadgetDamage = math.huge -- Insta Gadget Damage
        v.additionalspeed = 10 -- Fast Bullets
    end
end