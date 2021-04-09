--Created by bunedune on V3rmillion

print("hahahah this game is gay")
s = game:GetService("ReplicatedStorage").ScriptData.WeaponData
rs = require(s)
for i,v in next, rs do 
    for r,f in next, v do 
        if r == 'Stats' then 
            for e,d in next, f do
                f.Reload = 0
            end
        end
    end
end