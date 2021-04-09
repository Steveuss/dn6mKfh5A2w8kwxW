--Made by Rob123

for _, v in pairs(game:GetService("Players").LocalPlayer.Character.inHotBarHolders:GetDescendants()) do
  if v.ClassName == "ModuleScript" then
      require(v).RECOIL_AMT = 0
      require(v).DAMAGE = math.huge
      require(v).AMMO_COUNT = math.huge
      require(v).HEADSHOT_MULTIPLIER = math.huge
      require(v).ADS_MAX_BULLET_SPREAD_ANGLE = 0
      require(v).SHOOT_COOLDOWN = 0
      require(v).SHOW_TRACER = false
      require(v).SHOW_LIGHT_FLASH = false
  end
end