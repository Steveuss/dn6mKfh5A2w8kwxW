for i, v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v, "BaseRecoil") then
       v.BaseRecoil = 0.01
	   v.FireSpeed = 100
	   v.ProjectileAccuracy = 100
	   v.ProjectilePenetration = 100
	   v.ProjectilePower = 10000
	   v.ProjectileDamage = 10000
	   print("Modified:" , v)
     for ch,e in pairs(v) do
		--print(ch,e)


   end
   end
end