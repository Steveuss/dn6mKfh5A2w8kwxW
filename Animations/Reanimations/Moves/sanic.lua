function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

-- [ SANIIIC HES ON DA RAWN ] --
wait()
thing = 0
LoudVolume = false
Submerged = false
Music = true
script.Name = "SANIIIIC"
Player = game.Players.LocalPlayer
c = workspace.CloneCharacter
Head = c.Head
Humanoid = c.Humanoid
anim = c.Humanoid.Animator
rage = false
p = game.Players.LocalPlayer
Music = false
anim = Humanoid.Animator
local Effects = {}
attack = false
local attacking = false
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
cf = CFrame.new
euler = CFrame.fromEulerAnglesXYZ
angles = CFrame.Angles
matr = math.random
mouse = Player:GetMouse()

  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RS = c.Torso:FindFirstChild("Right Shoulder")
  LS = c.Torso:FindFirstChild("Left Shoulder")
  RH = c.Torso:FindFirstChild("Right Hip")
  LH = c.Torso:FindFirstChild("Left Hip")
  RJ = c.HumanoidRootPart:FindFirstChild("RootJoint")
  N = c.Torso:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random

--[[mainShirt = c.Shirt
mainPants = c.Pants
mainBColors = c["Body Colors"]
mainShirt.ShirtTemplate = "rbxassetid://769869277"
mainPants.PantsTemplate = "rbxassetid://805486769"
mainBColors.HeadColor = BrickColor.new("Pastel brown")
mainBColors.LeftArmColor = BrickColor.new("Pastel brown")
mainBColors.LeftLegColor = BrickColor.new("Pastel brown")
mainBColors.RightArmColor = BrickColor.new("Pastel brown")
mainBColors.RightLegColor = BrickColor.new("Pastel brown")
mainBColors.TorsoColor = BrickColor.new("Pastel brown")]]
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Heartbeat:wait(0)
else
for i=0,num do
game:service'RunService'.Heartbeat:wait(0)
end
end
end
	
  function lerpz(joint, prop, cfrmz, alp)
    joint[prop] = joint[prop]:lerp(cfrmz, alp)
  end
  function resetlerp()
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
	LH.C1 = LHC1
  end

local S2 = Instance.new("Sound",c.HumanoidRootPart)S2.SoundId = "rbxassetid://1246460167" S2.Volume = 0 S2.PlaybackSpeed = 0 S2.Looped = true S2:Play()
c.Head.face:remove()

local ColorArray = {ColorSequenceKeypoint.new(0, Color3.new(0/255,170/255,255/255)),ColorSequenceKeypoint.new(1, Color3.new(0/255,170/255,255/255))}
local att1 = Instance.new("Attachment", c["Right Leg"])
att1.Name = "att1"
att1.Position = Vector3.new(0.5, 1, 0.5)
local att2 = Instance.new("Attachment", c["Right Leg"])
att2.Name = "att2"
att2.Position = Vector3.new(-0.5, 1, 0.5)
local att3 = Instance.new("Attachment", c["Right Leg"])
att3.Name = "att3"
att3.Position = Vector3.new(0.5, -1, 0.5)
local att4 = Instance.new("Attachment", c["Right Leg"])
att4.Name = "att4"
att4.Position = Vector3.new(-0.5, -1, 0.5)

local attt1 = Instance.new("Attachment", c["Left Leg"])
attt1.Name = "att1"
attt1.Position = Vector3.new(0.5, 1, 0.5)
local attt2 = Instance.new("Attachment", c["Left Leg"])
attt2.Name = "att2"
attt2.Position = Vector3.new(-0.5, 1, 0.5)
local attt3 = Instance.new("Attachment", c["Left Leg"])
attt3.Name = "att3"
attt3.Position = Vector3.new(0.5, -1, 0.5)
local attt4 = Instance.new("Attachment", c["Left Leg"])
attt4.Name = "att4"
attt4.Position = Vector3.new(-0.5, -1, 0.5)

local trailtop1 = Instance.new("Trail", c["Right Leg"])
trailtop1.Enabled = true
trailtop1.Texture = "rbxassetid://16607923"
trailtop1.Name = "toptrail"
trailtop1.MinLength = 0
trailtop1.Lifetime = 0.1

trailtop1.Color = ColorSequence.new(ColorArray)

trailtop1.Attachment0 = att1
trailtop1.Attachment1 = att2
trailtop1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailbot1 = Instance.new("Trail", c["Right Leg"])
trailbot1.Enabled = true
trailbot1.Texture = "rbxassetid://16607923"
trailbot1.Name = "bottrail"
trailbot1.MinLength = 0
trailbot1.Lifetime = 0.1

trailbot1.Color = ColorSequence.new(ColorArray)

trailbot1.Attachment0 = att3
trailbot1.Attachment1 = att4
trailbot1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside1 = Instance.new("Trail", c["Right Leg"])
trailside1.Enabled = true
trailside1.Texture = "rbxassetid://16607923"
trailside1.Name = "sidetrail1"
trailside1.MinLength = 0
trailside1.Lifetime = 0.1

trailside1.Color = ColorSequence.new(ColorArray)

trailside1.Attachment0 = att1
trailside1.Attachment1 = att3
trailside1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside2 = Instance.new("Trail", c["Right Leg"])
trailside2.Enabled = true
trailside2.Texture = "rbxassetid://16607923"
trailside2.Name = "sidetrail2"
trailside2.MinLength = 0
trailside2.Lifetime = 0.1
spawn(function()
while true do wait()
trailside2.Color = ColorSequence.new(ColorArray)
end
end)
trailside2.Attachment0 = att2
trailside2.Attachment1 = att4
trailside2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })


local trailtop12 = Instance.new("Trail", c["Left Leg"])
trailtop12.Enabled = true
trailtop12.Texture = "rbxassetid://16607923"
trailtop12.Name = "toptrail"
trailtop12.MinLength = 0
trailtop12.Lifetime = 0.1
spawn(function()
while true do wait()
trailtop12.Color = ColorSequence.new(ColorArray)
end
end)
trailtop12.Attachment0 = attt1
trailtop12.Attachment1 = attt2
trailtop12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailbot2 = Instance.new("Trail", c["Left Leg"])
trailbot2.Enabled = true
trailbot2.Texture = "rbxassetid://16607923"
trailbot2.Name = "bottrail"
trailbot2.MinLength = 0
trailbot2.Lifetime = 0.1

trailbot2.Color = ColorSequence.new(ColorArray)

trailbot2.Attachment0 = attt3
trailbot2.Attachment1 = attt4
trailbot2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside12 = Instance.new("Trail", c["Left Leg"])
trailside12.Enabled = true
trailside12.Texture = "rbxassetid://16607923"
trailside12.Name = "sidetrail1"
trailside12.MinLength = 0
trailside12.Lifetime = 0.1

trailside12.Color = ColorSequence.new(ColorArray)

trailside12.Attachment0 = attt1
trailside12.Attachment1 = attt3
trailside12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside22 = Instance.new("Trail", c["Left Leg"])
trailside22.Enabled = true
trailside22.Texture = "rbxassetid://16607923"
trailside22.Name = "sidetrail2"
trailside22.MinLength = 0
trailside22.Lifetime = 0.1

trailside22.Color = ColorSequence.new(ColorArray)

trailside22.Attachment0 = attt2
trailside22.Attachment1 = attt4
trailside22.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })


local att1 = Instance.new("Attachment", c["Right Arm"])
att1.Name = "att1"
att1.Position = Vector3.new(0.5, 1, 0.5)
local att2 = Instance.new("Attachment", c["Right Arm"])
att2.Name = "att2"
att2.Position = Vector3.new(-0.5, 1, 0.5)
local att3 = Instance.new("Attachment", c["Right Arm"])
att3.Name = "att3"
att3.Position = Vector3.new(0.5, -1, 0.5)
local att4 = Instance.new("Attachment", c["Right Arm"])
att4.Name = "att4"
att4.Position = Vector3.new(-0.5, -1, 0.5)

local attt1 = Instance.new("Attachment", c["Left Arm"])
attt1.Name = "att1"
attt1.Position = Vector3.new(0.5, 1, 0.5)
local attt2 = Instance.new("Attachment", c["Left Arm"])
attt2.Name = "att2"
attt2.Position = Vector3.new(-0.5, 1, 0.5)
local attt3 = Instance.new("Attachment", c["Left Arm"])
attt3.Name = "att3"
attt3.Position = Vector3.new(0.5, -1, 0.5)
local attt4 = Instance.new("Attachment", c["Left Arm"])
attt4.Name = "att4"
attt4.Position = Vector3.new(-0.5, -1, 0.5)

local trailtop1 = Instance.new("Trail", c["Right Arm"])
trailtop1.Enabled = true
trailtop1.Texture = "rbxassetid://16607923"
trailtop1.Name = "toptrail"
trailtop1.MinLength = 0
trailtop1.Lifetime = 0.1

trailtop1.Color = ColorSequence.new(ColorArray)

trailtop1.Attachment0 = att1
trailtop1.Attachment1 = att2
trailtop1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailbot1 = Instance.new("Trail", c["Right Arm"])
trailbot1.Enabled = true
trailbot1.Texture = "rbxassetid://16607923"
trailbot1.Name = "bottrail"
trailbot1.MinLength = 0
trailbot1.Lifetime = 0.1
spawn(function()
while true do wait()
trailbot1.Color = ColorSequence.new(ColorArray)
end
end)
trailbot1.Attachment0 = att3
trailbot1.Attachment1 = att4
trailbot1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside1 = Instance.new("Trail", c["Right Arm"])
trailside1.Enabled = true
trailside1.Texture = "rbxassetid://16607923"
trailside1.Name = "sidetrail1"
trailside1.MinLength = 0
trailside1.Lifetime = 0.1

trailside1.Color = ColorSequence.new(ColorArray)

trailside1.Attachment0 = att1
trailside1.Attachment1 = att3
trailside1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside2 = Instance.new("Trail", c["Right Arm"])
trailside2.Enabled = true
trailside2.Texture = "rbxassetid://16607923"
trailside2.Name = "sidetrail2"
trailside2.MinLength = 0
trailside2.Lifetime = 0.1

trailside2.Color = ColorSequence.new(ColorArray)

trailside2.Attachment0 = att2
trailside2.Attachment1 = att4
trailside2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })


local trailtop12 = Instance.new("Trail", c["Left Arm"])
trailtop12.Enabled = true
trailtop12.Texture = "rbxassetid://16607923"
trailtop12.Name = "toptrail"
trailtop12.MinLength = 0
trailtop12.Lifetime = 0.1

trailtop12.Color = ColorSequence.new(ColorArray)

trailtop12.Attachment0 = attt1
trailtop12.Attachment1 = attt2
trailtop12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailbot2 = Instance.new("Trail", c["Left Arm"])
trailbot2.Enabled = true
trailbot2.Texture = "rbxassetid://16607923"
trailbot2.Name = "bottrail"
trailbot2.MinLength = 0
trailbot2.Lifetime = 0.1

trailbot2.Color = ColorSequence.new(ColorArray)

trailbot2.Attachment0 = attt3
trailbot2.Attachment1 = attt4
trailbot2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside12 = Instance.new("Trail", c["Left Arm"])
trailside12.Enabled = true
trailside12.Texture = "rbxassetid://16607923"
trailside12.Name = "sidetrail1"
trailside12.MinLength = 0
trailside12.Lifetime = 0.1

trailside12.Color = ColorSequence.new(ColorArray)

trailside12.Attachment0 = attt1
trailside12.Attachment1 = attt3
trailside12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })

local trailside22 = Instance.new("Trail", c["Left Arm"])
trailside22.Enabled = true
trailside22.Texture = "rbxassetid://16607923"
trailside22.Name = "sidetrail2"
trailside22.MinLength = 0
trailside22.Lifetime = 0.1

trailside22.Color = ColorSequence.new(ColorArray)

trailside22.Attachment0 = attt2
trailside22.Attachment1 = attt4
trailside22.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })	

local att1 = Instance.new("Attachment", c["Torso"])
att1.Name = "att1"
att1.Position = Vector3.new(1, 1, 0.5)
local att2 = Instance.new("Attachment", c["Torso"])
att2.Name = "att2"
att2.Position = Vector3.new(-1, 1, 0.5)
local att3 = Instance.new("Attachment", c["Torso"])
att3.Name = "att3"
att3.Position = Vector3.new(1, -1, 0.5)
local att4 = Instance.new("Attachment", c["Torso"])
att4.Name = "att4"
att4.Position = Vector3.new(-1, -1, 0.5)

local attt1 = Instance.new("Attachment", c["Head"])
attt1.Name = "att1"
attt1.Position = Vector3.new(.55, .55, 0.025)
local attt2 = Instance.new("Attachment", c["Head"])
attt2.Name = "att2"
attt2.Position = Vector3.new(-.55, .55, 0.025)
local attt3 = Instance.new("Attachment", c["Head"])
attt3.Name = "att3"
attt3.Position = Vector3.new(.55, -.5, 0.025)
local attt4 = Instance.new("Attachment", c["Head"])
attt4.Name = "att4"
attt4.Position = Vector3.new(-.55, -.5, 0.025)
local trailtop1 = Instance.new("Trail", c["Torso"])
trailtop1.Enabled = true
trailtop1.Texture = "rbxassetid://16607923"
trailtop1.Name = "toptrail"
trailtop1.MinLength = 0
trailtop1.Lifetime = 0.1

trailtop1.Color = ColorSequence.new(ColorArray)

trailtop1.Attachment0 = att1
trailtop1.Attachment1 = att2
trailtop1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailbot1 = Instance.new("Trail", c["Torso"])
trailbot1.Enabled = true
trailbot1.Texture = "rbxassetid://16607923"
trailbot1.Name = "bottrail"
trailbot1.MinLength = 0
trailbot1.Lifetime = 0.1

trailbot1.Color = ColorSequence.new(ColorArray)

trailbot1.Attachment0 = att3
trailbot1.Attachment1 = att4
trailbot1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailside1 = Instance.new("Trail", c["Torso"])
trailside1.Enabled = true
trailside1.Texture = "rbxassetid://16607923"
trailside1.Name = "sidetrail1"
trailside1.MinLength = 0
trailside1.Lifetime = 0.1

trailside1.Color = ColorSequence.new(ColorArray)

trailside1.Attachment0 = att1
trailside1.Attachment1 = att3
trailside1.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailside2 = Instance.new("Trail", c["Torso"])
trailside2.Enabled = true
trailside2.Texture = "rbxassetid://16607923"
trailside2.Name = "sidetrail2"
trailside2.MinLength = 0
trailside2.Lifetime = 0.1

trailside2.Color = ColorSequence.new(ColorArray)

trailside2.Attachment0 = att2
trailside2.Attachment1 = att4
trailside2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailtop12 = Instance.new("Trail", c["Head"])
trailtop12.Enabled = true
trailtop12.Texture = "rbxassetid://16607923"
trailtop12.Name = "toptrail"
trailtop12.MinLength = 0
trailtop12.Lifetime = 0.1

trailtop12.Color = ColorSequence.new(ColorArray)

trailtop12.Attachment0 = attt1
trailtop12.Attachment1 = attt2
trailtop12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailbot2 = Instance.new("Trail", c["Head"])
trailbot2.Enabled = true
trailbot2.Texture = "rbxassetid://16607923"
trailbot2.Name = "bottrail"
trailbot2.MinLength = 0
trailbot2.Lifetime = 0.1

trailbot2.Color = ColorSequence.new(ColorArray)

trailbot2.Attachment0 = attt3
trailbot2.Attachment1 = attt4
trailbot2.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailside12 = Instance.new("Trail", c["Head"])
trailside12.Enabled = true
trailside12.Texture = "rbxassetid://16607923"
trailside12.Name = "sidetrail1"
trailside12.MinLength = 0
trailside12.Lifetime = 0.1

trailside12.Color = ColorSequence.new(ColorArray)

trailside12.Attachment0 = attt1
trailside12.Attachment1 = attt3
trailside12.Transparency = NumberSequence.new({
          NumberSequenceKeypoint.new(0, 0.5, 0),
          NumberSequenceKeypoint.new(1, 1, 0)
        })
local trailside22 = Instance.new("Trail", c["Head"])
trailside22.Enabled = true
trailside22.Texture = "rbxassetid://16607923"
trailside22.Name = "sidetrail2"
trailside22.MinLength = 0
trailside22.Lifetime = 0.1

trailside22.Color = ColorSequence.new(ColorArray)

trailside22.Attachment0 = attt2 trailside22.Attachment1 = attt4
trailside22.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0),NumberSequenceKeypoint.new(1, 1, 0)})

Sped = 0

function ragplayer(cactus)
local S = Instance.new("Sound",c.HumanoidRootPart)S.SoundId = "rbxassetid://131026421" S.Volume = 2 S:Play()
cactus.Humanoid.PlatformStand = true cactus:findFirstChild("Humanoid").Health = 0.01
if cactus["Right Arm"]~=nil and cactus.Torso:FindFirstChild("Right Shoulder") then
cactus.Torso:FindFirstChild("Right Shoulder"):Destroy()
makegloo(cactus.Torso, RSC0, RSC1, cactus.Torso, cactus["Right Arm"], "Right Shoulder")
maketouchy(cactus["Right Arm"], cactus["Right Arm"], CFrame.new(0, 0.5, 0))
end
if cactus["Left Arm"]~=nil and cactus.Torso:FindFirstChild("Left Shoulder") then
cactus.Torso:FindFirstChild("Left Shoulder"):Destroy()
makegloo(cactus.Torso, LSC0, LSC1, cactus.Torso, cactus["Left Arm"], "Left Shoulder")
maketouchy(cactus["Left Arm"], cactus["Left Arm"], CFrame.new(0, 0.5, 0))
end
if cactus["Right Leg"]~=nil and cactus.Torso:FindFirstChild("Right Hip") then
cactus.Torso:FindFirstChild("Right Hip"):Destroy()
makegloo(cactus.Torso, RHC0, RHC1, cactus.Torso, cactus["Right Leg"], "Right Hip")
maketouchy(cactus["Right Leg"], cactus["Right Leg"], CFrame.new(0, 0.5, 0))
end
if cactus["Left Leg"]~=nil and cactus.Torso:FindFirstChild("Left Hip") then
cactus.Torso:FindFirstChild("Left Hip"):Destroy()
makegloo(cactus.Torso, LHC0, LHC1, cactus.Torso, cactus["Left Leg"], "Left Hip")
maketouchy(cactus["Left Leg"], cactus["Left Leg"], CFrame.new(0, 0.5, 0))
end
cactus.Parent = game.Workspace game.Debris:AddItem(cactus,15)
end
function makegloo(paren, co, ci, parto, parti, nam) local gloo = Instance.new("Glue") gloo.Name = nam gloo.C0 = co gloo.C1 = ci gloo.Part0 = parto gloo.Part1 = parti gloo.Parent = paren end

function maketouchy(parent, limb, cframe) local pr = Instance.new("Part") pr.Name = "touchy" pr.Size = Vector3.new(1, 1, 1) pr.Transparency = 1 pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5) pr.CanCollide = true pr.Anchored = false pr.Parent = parent local w = Instance.new("Weld") w.Part0 = pr w.Part1 = limb w.C0 = cframe w.Parent = pr end

local hitz = false
c.HumanoidRootPart.Touched:connect(function(Hit)
if thing >= 100 then 
if hitz == false then hitz = true
ragplayer(c) local S = Instance.new("Sound",c.HumanoidRootPart)S.SoundId = "rbxassetid://386946017" S.Volume = 6 S:Play()
wait(15)
end
end
end)

function Spin()
attack = true
while attack == true do Sped = Sped + 0.25
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(Sped*Sped*5), rd(0), rd(0)), 1)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(60), rd(0), rd(0)), 1)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(15), rd(25), rd(25)), 1)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(15), rd(-25), rd(-25)), 1)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RH, "C0", RHC0 * cf(0.5, 1.5, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LH, "C0", LHC0 * cf(-0.5, 1.5, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
swait()
end
end

SanicScreams = {585370931,202427593}	

mouse.KeyDown:connect(function(key)
if attack == true then return end
if key == "q" then
Spin()
end
if key == "e" then
local S = Instance.new("Sound",c.HumanoidRootPart)S.SoundId = "rbxassetid://537371462" S.Volume = 10 S:Play()
wait(1.25)
local Sanic  = SanicScreams[math.random(1,#SanicScreams)]
local S = Instance.new("Sound",c.HumanoidRootPart)S.SoundId = "rbxassetid://"..Sanic S.Volume = 10 S:Play()
spawn(function()
local Sp = Instance.new("Part",game.Workspace)Sp.BrickColor = BrickColor.new("Cyan")Sp.Material = "Neon" Sp.Size = Vector3.new(1,1,1) Sp.Anchored = true Sp.CanCollide = false
local SPM = Instance.new("SpecialMesh",Sp)SPM.MeshType = "Sphere" Sp.CFrame = c.HumanoidRootPart.CFrame
for i = 1,25 do
SPM.Scale = SPM.Scale + Vector3.new(4,4,4)
Sp.Transparency = Sp.Transparency + 1/25
swait()
end
end)
local S = Instance.new("Sound",c.HumanoidRootPart)S.SoundId = "rbxassetid://214444596" S.Volume = 10 S:Play()
Sped = 10000000000
end
end)

mouse.KeyUp:connect(function(key)
if key == "q" then
attack = false
end
end)

local P = Instance.new("Part",game.Workspace.CurrentCamera)P.CanCollide = true P.Anchored = true P.Size = Vector3.new(15,1,15)
P.CFrame = CFrame.new(c.HumanoidRootPart.Position)*CFrame.new(0,-3.5,0)P.Transparency = 0 P.Name = "FlightPart"
P.BrickColor = BrickColor.new("Dark green") P.TopSurface = "Smooth" P.Material = "Grass"
spawn(function()
while true do
P.CFrame = CFrame.new(c.HumanoidRootPart.Position.X,-0.6,c.HumanoidRootPart.Position.Z)
swait()
end
end)

anim.Parent = nil
sine = 0

game:GetService("RunService").RenderStepped:connect(function()
if attack == false then
thing = (c.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude
game.Workspace.CurrentCamera.FieldOfView = 70+thing/100
if c.HumanoidRootPart.Velocity.Y > 1 then sine = sine + 1
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(sine*thing*0.75), rd(0), rd(0)), 1)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(60), rd(0), rd(0)), 1)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(15), rd(25), rd(25)), 1)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(15), rd(-25), rd(-25)), 1)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RH, "C0", RHC0 * cf(0.5, 1.5, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LH, "C0", LHC0 * cf(-0.5, 1.5, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
elseif (c.HumanoidRootPart.Velocity * Vector3.new(1, 0, 1)).magnitude > 2 then
sine = sine + 1 Sped = Sped + 0.1
if thing <= 200 then
if S2.PlaybackSpeed >= 1 then
S2.PlaybackSpeed = 1
else 
S2.PlaybackSpeed = thing/80
end
c.Humanoid.WalkSpeed = 16+(thing/1.5)+Sped
S2.Volume = thing/20
end
if thing <= 200 then
c.Humanoid.WalkSpeed = 16+(thing/1.5)+Sped
S2.Volume = thing/20
else
c.Humanoid.WalkSpeed = 16+(thing/1.5)+Sped
end
if thing <= 100 then
for i,v in pairs(c:children()) do
if v.ClassName == "Part" then
for i,v2 in pairs(v:children()) do
if v2.ClassName == "Trail" then
v2.Enabled = false
v2.LightEmission = 1
end
end
end
end
else
for i,v in pairs(c:children()) do
if v.ClassName == "Part" then
for i,v2 in pairs(v:children()) do
if v2.ClassName == "Trail" then
v2.Lifetime = 2
v2.Enabled = true
end
end
end
end
end
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(thing/7), rd(0), rd(0)), 1)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-thing/1.5)), 1)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(thing/1.5)), 1)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.cos(sine/2))*thing/1.25), 1)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.cos(sine/2))*thing/1.25), 1)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 1)
else c.Humanoid.WalkSpeed = 16 Sped = 0 sine = sine + 1 S2.Volume = 0 S2.PlaybackSpeed = 0
lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.cos(sine/24)*4)), 0.5)
lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(math.cos(sine/24)*4)), 0.5)
lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
end
for i,v in pairs (c:children()) do
if v.ClassName == "Accessory" then
for i,v2 in pairs (v:children()) do
if v2.ClassName == "Part" then
v2.Anchored = false
end
end
end
for i,v in pairs (c:children()) do
if v.ClassName == "Part" then
v.Anchored = false
end
end
end
end
end)