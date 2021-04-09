for i,v in next, getgc(true) do 
    if typeof(v) == "table" and rawget(v, 'Damage') then 
        v.Recoil = 0.0000000001
        v.Speed = 300
        v.Debounce = 0.0000001
        v.WS = 150
        v.JP = 150
        v.Spread = 0.00001
        v.PBSpeed = 300
        v.Auto = true
    end
end