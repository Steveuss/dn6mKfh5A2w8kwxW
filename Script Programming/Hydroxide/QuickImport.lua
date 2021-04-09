local import = function(toimport)
    if type(toimport) == "string" then
        return loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/nrv-ous/Hydroxide/master/" .. toimport))()
    else 
        return game:GetObjects("rbxassetid://" .. toimport)[1]
    end
end