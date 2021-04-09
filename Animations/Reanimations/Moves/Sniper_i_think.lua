local defchar = game.Players.LocalPlayer.Character
local Camera = workspace.CurrentCamera
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UIS = game:GetService("UserInputService")
 
local Character = workspace.CloneCharacter
local Root = Character:WaitForChild("HumanoidRootPart")
local Neck = Character:FindFirstChild("Neck", true)
local YOffset = Neck.C0.Y
 
local rifl = Character.Sniper.Handle
rifl.AccessoryWeld:Destroy()

local Motor = Instance.new("Motor6D")
Motor.C0, Motor.C1 = CFrame.new(-0.413142204, -0.593961, -0.33846283, -0.0217578746, 0.0313622057, 0.999271333, -0.999763548, -0.000682536513, -0.0217471626, 0, -0.999508083, 0.0313696228), CFrame.new(-1.01772833, -0.315422386, 0.0552891195, 1.00000298, 8.73116801e-10, 6.50522131e-18, 8.73116801e-10, 1.00000238, 1.86264781e-08, 6.50522172e-18, 1.86264781e-08, 1.00000119)
Motor.Parent = rifl
Motor.Part0, Motor.Part1 = Character["Right Arm"], rifl

local TweenService = game:GetService("TweenService")
local Info = TweenInfo.new(
	0.25,                             -- Length
	Enum.EasingStyle.Quad,      -- Easing Style
	Enum.EasingDirection.Out,      -- Easing Direction
	0,                             -- Times repeated
	false,                          -- Delay
	0
)

TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(0.199545979, 1.63425934, -0.944666266, 0.569451451, 0.602627039, -0.559075654, 0.809754074, -0.294157088, 0.507710576, 0.141504019, -0.741830409, -0.655487776)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new(-0.418852895, 0.114560604, -0.261225104, 0, 0, 0.99999994, -0.999949336, -0.0100634666, 0, 0.0100634666, -0.999949336, 0)}):Play()
 
local Char = game.Players.LocalPlayer.Character
game:GetService("RunService").RenderStepped:Connect(function()
    if (workspace.CurrentCamera.CFrame.Position - Char.Torso.Position).magnitude < 2 then
     for i, v in pairs(Char:GetDescendants()) do
         if v:IsA("Part")  then
             if not v.Name:find("Arm") then
                 if v.Parent.Name ~= "Sniper" then
                    v.Transparency = 1
                 end
             end
         end
     end
else
    for i, v in pairs(Char:GetDescendants()) do
         if v:IsA("Part") then
              if not v.Name:find("Arm") then
                 if v.Parent.Name ~= "Sniper" then
                    v.Transparency = 0
                 end
             end
         end
     end
    end
end)

local Camera = workspace.CurrentCamera
local Player = game.Players.LocalPlayer
 
local Character = workspace.CloneCharacter
local Root = Character:WaitForChild("HumanoidRootPart")
local Neck = Character:FindFirstChild("Neck", true)
local YOffset = Neck.C0.Y
local torso = Character:WaitForChild("Torso")
local rightShoulder = torso:WaitForChild("Right Shoulder")
local leftShoulder = torso:WaitForChild("Left Shoulder")
local camera = game.Workspace.CurrentCamera
updateSpeed = 0.5/2
 
local CFNew, CFAng = CFrame.new, CFrame.Angles
local asin = math.asin
 
game:GetService("RunService").RenderStepped:Connect(function()
    local CameraDirection = Root.CFrame:toObjectSpace(Camera.CFrame).lookVector
    if Neck then
        if Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
            Neck.C0 = CFNew(0, YOffset, 0) * CFAng(0, -asin(CameraDirection.x), 0) * CFAng(asin(CameraDirection.y), 0, 0)
        elseif Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
            Neck.C0 = CFNew(0, YOffset, 0) * CFAng(3 * math.pi/2, 0, math.pi) * CFAng(0, 0, -asin(CameraDirection.x)) * CFAng(-asin(CameraDirection.y), 0, 0)
        end
    end
   	local distance = (Character.Head.Position - camera.CoordinateFrame.p).magnitude
	if distance <= 2 then
		rightShoulder.C0 = rightShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, math.pi/2, 0), updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp((camera.CoordinateFrame * CFrame.new(-1, -1, 0)):toObjectSpace(torso.CFrame):inverse() * CFrame.Angles(0, -math.pi/2, 0), updateSpeed)
	else
		rightShoulder.C0 = rightShoulder.C0:lerp(CFrame.new(1, 0.5, 0) * CFrame.Angles(0, math.pi/2, 0),updateSpeed)
		leftShoulder.C0 = leftShoulder.C0:lerp(CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, -math.pi/2, 0),updateSpeed)
	end
end)


------CONFIG?

local MaxAmmo = 5 
local Ammo = 5
--not FE but who cares?
local FireSound = "rbxassetid://492961938"
local NotReloadSound = "rbxassetid://1159825801"
local BulletReload = "rbxassetid://255061162"
--

--dont touch these below
local DidAShot = false
local debounce = false
local Scoped = false
local CanScope = true
local CanShoot = true
local Reloading = false
--dont touch these above

------CONFIG?

local ShootSound = Instance.new("Sound")
local BoltSound = Instance.new("Sound")
local ClipinSound = Instance.new("Sound")
ShootSound.Parent, BoltSound.Parent, ClipinSound.Parent = rifl, rifl, rifl
ShootSound.Volume, BoltSound.Volume, ClipinSound.Volume = 3,3,3

ShootSound.SoundId = FireSound
BoltSound.SoundId = NotReloadSound
ClipinSound.SoundId = BulletReload



function Scope()
    TweenService:Create(workspace.CurrentCamera ,Info,{FieldOfView = 30}):Play()
    TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( -0.462730408, 1.41984558, -1.08005905, 0.225990519, 0.229292884, -0.946759224, 0.881636262, -0.461497992, 0.0986768529, -0.414301604, -0.856997311, -0.306447089)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.0536518097, 0.718389511, 0.165700912, -0.000582660898, 0.303324759, 0.952887058, -0.999979556, -0.00624576863, 0.00137670804, 0.00636910181, -0.952866793, 0.303322196)}):Play()
end

function DefaultArmPose()TweenService:Create(workspace.CurrentCamera ,Info,{FieldOfView = 70}):Play()
    TweenService:Create(Character.HumanoidRootPart:FindFirstChildOfClass("Motor6D") ,Info,{C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}):Play()
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(0.199545979, 1.63425934, -0.944666266, 0.569451451, 0.602627039, -0.559075654, 0.809754074, -0.294157088, 0.507710576, 0.141504019, -0.741830409, -0.655487776)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new(-0.418852895, 0.114560604, -0.261225104, 0, 0, 0.99999994, -0.999949336, -0.0100634666, 0, 0.0100634666, -0.999949336, 0)}):Play()
end

function Reload()
    Reloading = true
    CanShoot = false
    CanScope = false
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 0.768470585, 0.945988774, 0.108700722, 0.345356494, 0.922068954, 0.174692884, 0.800320148, -0.38658461, 0.458301216, 0.490118951, -0.0184670687, -0.871460021)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new(-0.173045158, 0.655335426, -0.214963913, -0.137205273, 0.49406305, 0.858531535, -0.986782551, -0.143623531, -0.0750498846, 0.0862259567, -0.857481182, 0.507238686)}):Play()
wait(.25)
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 0.257508248, 0.579056621, -0.0251624435, -0.0899533033, -0.0502862483, -0.994675636, 0.582784116, 0.807228506, -0.0935137048, 0.807633042, -0.588093042, -0.0433068201)}):Play()

    for i = 1, (MaxAmmo - Ammo) do
    TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 0.29546535, 0.480314136, -0.0328456759, -0.511548281, 0.185700983, -0.838947833, -0.196066916, 0.925382078, 0.324385047, 0.836585999, 0.330428541, -0.43696782)}):Play()
    TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.325364739, 0.694928408, -0.873866022, 0.269583911, 0.931605518, 0.243794203, -0.610361338, -0.0305150747, 0.791535079, 0.744837821, -0.362187713, 0.560389638)}):Play()
        wait(.25)
       TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 1.25237322, 0.593106747, 0.210884988, 0.309964031, 0.907807767, 0.282501996, 0.852146268, -0.397040546, 0.340889215, 0.421626687, 0.135069549, -0.896653175)}):Play()
    TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.325364739, 0.694928408, -0.873866022, 0.269583911, 0.931605518, 0.243794203, -0.610361338, -0.0305150747, 0.791535079, 0.744837821, -0.362187713, 0.560389638)}):Play()
     wait(.25)
     ClipinSound:Play()
       TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(1.25772727, 0.475835919, 0.210884988, 0.437805742, 0.835627198, 0.331742942, 0.794076264, -0.532431543, 0.293188393, 0.421626687, 0.135069549, -0.896653175)}):Play()
    TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new(-0.370379478, 0.696403444, -0.856365204, 0.269583941, 0.931605518, 0.243794218, -0.610361397, -0.0305151157, 0.791535079, 0.74483788, -0.362187713, 0.560389698)}):Play()
    wait(.25)
    TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 1.25237322, 0.593106747, 0.210884988, 0.309964031, 0.907807767, 0.282501996, 0.852146268, -0.397040546, 0.340889215, 0.421626687, 0.135069549, -0.896653175)}):Play()
    TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.325364739, 0.694928408, -0.873866022, 0.269583911, 0.931605518, 0.243794203, -0.610361338, -0.0305150747, 0.791535079, 0.744837821, -0.362187713, 0.560389638)}):Play()
    end
    DefaultArmPose()
    Ammo = MaxAmmo
    CanScope = true
    CanShoot = true
    DidAShot = false
    Reloading = false
end

function ShootAnim()
    TweenService:Create(Character.HumanoidRootPart:FindFirstChildOfClass("Motor6D") ,Info,{C1 = CFrame.new( 0, 0, 0, -1, 0, 0, 0, 0.116471931, 0.993193984, 0, 0.993193984, -0.116471931)}):Play()
    TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(0.354125977, 1.11425972, -1.4792726, 0.781416237, 0.277169675, -0.559075713, 0.586943746, -0.630656004, 0.507710576, -0.21186249, -0.724879265, -0.655487835)}):Play()
    TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.418852806, -0.211654723, -0.561618865, 0, 0, 1, -0.976373374, -0.216090381, 0, 0.216090381, -0.976373374, 0)}):Play()
    wait(.25)
    if Scoped == false then
        TweenService:Create(Character.HumanoidRootPart:FindFirstChildOfClass("Motor6D") ,Info,{C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}):Play()
        TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(0.199545979, 1.63425934, -0.944666266, 0.569451451, 0.602627039, -0.559075654, 0.809754074, -0.294157088, 0.507710576, 0.141504019, -0.741830409, -0.655487776)}):Play()
        TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new(-0.418852895, 0.114560604, -0.261225104, 0, 0, 0.99999994, -0.999949336, -0.0100634666, 0, 0.0100634666, -0.999949336, 0)}):Play()
    else
        TweenService:Create(Character.HumanoidRootPart:FindFirstChildOfClass("Motor6D") ,Info,{C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)}):Play()
        Scope()
    end
end

function ReloadIthink()
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 2.32529044, 1.36667418, -0.178464115, 0.513767064, 0.61214751, 0.601098061, 0.544681311, -0.774055898, 0.322737902, 0.662846684, 0.161594719, -0.731109798)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.173045158, 0.655335426, -0.214963913, -0.137205273, 0.49406305, 0.858531535, -0.986782551, -0.143623531, -0.0750498846, 0.0862259567, -0.857481182, 0.507238686)}):Play()
wait(.25)
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new(2.21056366, 0.311310768, -0.594788551, 0.760715306, 0.244935364, 0.601098061, 0.0493173264, -0.945202649, 0.322737873, 0.647209406, -0.215867087, -0.731109679)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.155075073, 0.280675888, -0.23487854, -0.167519063, 0.553979695, 0.815502226, -0.977227569, -0.202588871, -0.0631195381, 0.130244732, -0.807504952, 0.575301707)}):Play()
wait(.25)
TweenService:Create(Character.Torso["Left Shoulder"] ,Info,{C1 = CFrame.new( 2.32529044, 1.36667418, -0.178464115, 0.513767064, 0.61214751, 0.601098061, 0.544681311, -0.774055898, 0.322737902, 0.662846684, 0.161594719, -0.731109798)}):Play()
TweenService:Create(Character.Torso["Right Shoulder"] ,Info,{C1 = CFrame.new( -0.173045158, 0.655335426, -0.214963913, -0.137205273, 0.49406305, 0.858531535, -0.986782551, -0.143623531, -0.0750498846, 0.0862259567, -0.857481182, 0.507238686)}):Play()
wait(.15)
    if Scoped == false then
        DefaultArmPose()
    else 
        Scope() 
    end
end



Mouse.Button1Down:Connect(function()
    if CanShoot == false then return end
    if debounce == true then return end
    print(Ammo)
    if DidAShot == false then
        ShootSound:Play()
        Ammo = Ammo - 1
        DidAShot = true
        debounce = true
        ShootAnim()
        wait(1.5)
        debounce = false
    else
        debounce = true
        ReloadIthink()
        BoltSound:Play()
        wait(1.5)
        debounce = false
        DidAShot = false
    end
    if Ammo < 1 then 
        Reload()
    end
end)

Mouse.Button2Down:Connect(function()
    if CanScope == false then return end
    if Scoped == false then
        Scoped = true
        Scope()
     end
end)
Mouse.Button2Up:Connect(function()
    if CanScope == false then return end
    if Scoped == true then
        Scoped = false 
        DefaultArmPose()
    end
end)

UIS.InputBegan:Connect(function(Key, Processing)
    if Key.KeyCode == Enum.KeyCode.R then
        if Reloading == true then return end
        if Processing == false then 
            if Ammo < MaxAmmo then 
                Reload()
            end
        end
    end
end)