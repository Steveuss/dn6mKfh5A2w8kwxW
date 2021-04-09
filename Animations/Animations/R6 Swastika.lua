plr = game.Players.LocalPlayer

rs = game.RunService.RenderStepped

rootpart = plr.Character:WaitForChild("HumanoidRootPart",5)

function cpos(p,a,b,c,x,y,z)

  local bf = Instance.new("BodyForce")

  bf.force = Vector3.new(0, 196.2, 0) * p:GetMass()

  bf.Parent = p

  rs:Connect(function()

      p.CFrame = rootpart.CFrame * CFrame.new(a,b,c) * CFrame.Angles(x,y,z)

  end)

  p:BreakJoints()

end

cpos(plr.Character["Left Arm"],-1,1.5,0,0,0,math.rad(-90))

cpos(plr.Character["Right Arm"],1.5,1,0,0,0,math.rad(180))

cpos(plr.Character["Left Leg"],-1.5,-1,0,0,0,math.rad(0))

cpos(plr.Character["Right Leg"],1,-1.5,0,0,0,math.rad(90))