game["Run Service"].Stepped:connect(function()
game.Players.LocalPlayer.Character.Tors.CanCollide = false
game.Players.LocalPlayer.Character.Head.CanCollide = false
end)
game.Players.LocalPlayer.CharacterAdded:connect(function()
game.Players.LocalPlayer.Character:WaitForChild("Right Arm")
wait(0.1)
rs = game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Clone()
game.Players.LocalPlayer.Character.Torso["Right Shoulder"]:Destroy()
rs.Parent = game.Players.LocalPlayer.Character.Torso
rs.Part0 = game.Players.LocalPlayer.Character.Torso
rs.Part1 = game.Players.LocalPlayer.Character["Right Arm"]:Clone()
game.Players.LocalPlayer.Character["Right Arm"].Name = "ra"
rs.Part1.Parent = game.Players.LocalPlayer.Character
local Attachment0 = Instance.new("Attachment", game.Players.LocalPlayer.Character["Right Arm"])
local rightarm = Instance.new("Attachment", game.Players.LocalPlayer.Character["ra"])
local ol = Instance.new("HingeConstraint", game.Players.LocalPlayer.Character["Right Arm"])
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
ls = game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Clone()
game.Players.LocalPlayer.Character.Torso["Left Shoulder"]:Destroy()
ls.Parent = game.Players.LocalPlayer.Character.Torso
ls.Part0 = game.Players.LocalPlayer.Character.Torso
ls.Part1 = game.Players.LocalPlayer.Character["Left Arm"]:Clone()
game.Players.LocalPlayer.Character["Left Arm"].Name = "la"
ls.Part1.Parent = game.Players.LocalPlayer.Character
local Attachment0 = Instance.new("Attachment", game.Players.LocalPlayer.Character["Left Arm"])
local rightarm = Instance.new("Attachment", game.Players.LocalPlayer.Character["la"])
local ol = Instance.new("HingeConstraint", game.Players.LocalPlayer.Character["Left Arm"])
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
rh = game.Players.LocalPlayer.Character.Torso["Right Hip"]:Clone()
game.Players.LocalPlayer.Character.Torso["Right Hip"]:Destroy()
rh.Parent = game.Players.LocalPlayer.Character.Torso
rh.Part0 = game.Players.LocalPlayer.Character.Torso
rh.Part1 = game.Players.LocalPlayer.Character["Right Leg"]:Clone()
game.Players.LocalPlayer.Character["Right Leg"].Name = "rh"
rh.Part1.Parent = game.Players.LocalPlayer.Character
local Attachment0 = Instance.new("Attachment", game.Players.LocalPlayer.Character["Right Leg"])
local rightarm = Instance.new("Attachment", game.Players.LocalPlayer.Character["rh"])
local ol = Instance.new("HingeConstraint", game.Players.LocalPlayer.Character["Right Leg"])
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
lh = game.Players.LocalPlayer.Character.Torso["Left Hip"]:Clone()
game.Players.LocalPlayer.Character.Torso["Left Hip"]:Destroy()
lh.Parent = game.Players.LocalPlayer.Character.Torso
lh.Part0 = game.Players.LocalPlayer.Character.Torso
lh.Part1 = game.Players.LocalPlayer.Character["Left Leg"]:Clone()
game.Players.LocalPlayer.Character["Left Leg"].Name = "lh"
lh.Part1.Parent = game.Players.LocalPlayer.Character
local Attachment0 = Instance.new("Attachment", game.Players.LocalPlayer.Character["Left Leg"])
local rightarm = Instance.new("Attachment", game.Players.LocalPlayer.Character["lh"])
local ol = Instance.new("HingeConstraint", game.Players.LocalPlayer.Character["Left Leg"])
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
r = game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"]:Clone()
game.Players.LocalPlayer.Character.HumanoidRootPart["RootJoint"]:Destroy()
r.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
r.Part0 = game.Players.LocalPlayer.Character.HumanoidRootPart
r.Part1 = Instance.new("Part", game.Players.LocalPlayer.Character)
r.Part1.Size = Vector3.new(2,2,1)
r.Part1.Name = "Tors"
r.Part1.Parent = game.Players.LocalPlayer.Character
local Attachment0 = Instance.new("Attachment", game.Players.LocalPlayer.Character.Tors)
local rightarm = Instance.new("Attachment", game.Players.LocalPlayer.Character.Torso)
local ol = Instance.new("HingeConstraint", game.Players.LocalPlayer.Character.Tors)
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
char = game.Players.LocalPlayer.Character
repeat wait()until char:FindFirstChildOfClass("Accessory")
wait(0.1)
for i,v in pairs (char:GetChildren()) do
if v:IsA("Accessory") and v:FindFirstChild("Handle") and v:FindFirstChild("Handle"):FindFirstChild("AccessoryWeld").Part1 == char.Head then
local Attachment0 = Instance.new("Attachment", char.Head)
local rightarm = Instance.new("Attachment", v.Handle)
local ol = Instance.new("HingeConstraint", char.Head)
ol.Attachment0 = Attachment0
ol.Attachment1 = rightarm
ol.LimitsEnabled = true
ol.LowerAngle = 0
ol.Restitution = 0
ol.UpperAngle = 0
rightarm.CFrame = v.AttachmentPoint + Vector3.new(0, -0.5, 0)
v.Handle.AccessoryWeld:Destroy()
end
end
end)
game.Players.LocalPlayer.Character.Humanoid.Health = 0
while wait() do
repeat wait() until game.Players.LocalPlayer.Character
char = game.Players.LocalPlayer.Character
for i,v in pairs (char:GetDescendants()) do
if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0,0,0)
v.Massless = true
end
end
end 