local o = require
getrenv().require = function(...)
local d = o(...)

if d.MagazineSize then d.MagazineSize = 9e9 end
if d.FireRate then d.FireRate = 80 end
if d.Damage then d.Damage = 60 end
if d.Automatic then d.Automatic = true end
if d.Spread then d.Spread = .1 end

return d
end