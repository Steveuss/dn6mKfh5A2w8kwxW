_G.Amount = 10000

if _G.Executed == nil then
    --ProtoSmasher Compatible
    if PROTOSMASHER_LOADED then
        getgenv().mouse1click = Input.LeftClick
        getgenv().newcclosure = protect_function
        getgenv().fireclickdetector = click_detector
    end
    _G.Executed = true
    --LOL!
    local mt = getrawmetatable(game)
    make_writeable(mt)
    local old = mt.__namecall
    mt.__namecall = newcclosure(loadstring([[
        local old = ...
        return function(self, ...)
            local len = select("#", ...)
            local pack = {...}
            local args = {}
            for i=1,len do
                args[i] = pack[i]
            end
            local method = getnamecallmethod()
            if method == "InvokeServer" and tostring(self) == game.Players.LocalPlayer.Name then
                args[1] = _G.Amount
                return old(self, unpack(args))
            end
            return old(self, ...)
        end
    ]])(old))
end