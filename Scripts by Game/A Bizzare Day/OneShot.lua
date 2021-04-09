local mt = getrawmetatable(game);
local nc = mt.__namecall;
setreadonly(mt, false);
mt.__namecall = newcclosure(function(...) [nonamecall]
    if getnamecallmethod():lower()=="fireserver" then
        local args={...};
        if tostring(args[1])=='Damage' then
            args[4]=180;
        end
        return nc(unpack(args))
    end
    return nc(...)
end)