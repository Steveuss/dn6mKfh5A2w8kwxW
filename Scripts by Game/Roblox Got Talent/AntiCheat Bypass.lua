local mt = getrawmetatable(game)
local old = mt.__namecall
local setreadonly = setreadonly or make_writeable

setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if method == "Kick" then
        return nil
    end

    return old(self, ...)
end)