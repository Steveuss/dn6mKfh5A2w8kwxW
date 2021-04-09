function LoadLibrary(a)
    return loadstring(game:HttpGet("https://pastebin.com/raw/UfzKgS6T", true))()
end

loadstring(game:GetObjects("rbxassetid://4480871791")[1].Source)()

	--[[ Thank you ]]--
-------------------------------------------------------
--[[

This script was created by WafflesAreVeryGood or Nobody#3907

--]]
-------------------------------------------------------
	--[[ Reference ]]--
--[[
	Burn Function
	hurt(char.Head, 15, "Burn", {char, {Color = Color3.new(0,1,1), Time = 1, Rate = 20, Damage = {1,5}}})
	
	Freeze Function
	hurt(char.Head, 0, "Freeze", {char, 1})
	
	Stun Function
	hurt(char.Head, 0, "Stun", {char, 0.2})
--]]
-------------------------------------------------------
math.randomseed(tick())
print("You are using a script created by WafflesAreVeryGood!")
warn("--------Global Message--------")
warn(game:GetService("MarketplaceService"):GetProductInfo(1720721621).Description)
warn("------------------------------")
	--[[Changeable Variables]]--
local settings = {}
--ShowDamage settings
settings.Damage = {
	Color = nil,
	StrokeColor = nil,
	Font = nil,
}
settings.ShowDamageEnabled = false
settings.CustomAnim = true
local soundlist = {
	HardHit1 = "rbxassetid://565207203",
	HardHit2 = "rbxassetid://541909913",
	HardHit3 = "rbxassetid://541909983",
	WeakHit1 = "rbxassetid://558642292",
	WeakHit2 = "rbxassetid://541907812",
	Slice1 = "rbxassetid://260429964",
	Slice2 = "rbxassetid://260430015",
	Explosion1 = "rbxassetid://138186576",
	Explosion2 = "rbxassetid://157878578",
	Woosh1 = "rbxassetid://541909867",
	Woosh2 = "rbxassetid://541909763",
	Freeze = "rbxassetid://268249319",
	Thaw = "rbxassetid://1578580965",
	Burn = "rbxassetid://298181829",
	
}
local attack_data = {
	{
		Name = "Attack",
		Description = "Description",
		Key = "Key",
	},
	
}

	--[[Important Variables]]--
local plr = game:GetService('Players').LocalPlayer
local char = workspace.CloneCharacter
local mouse = plr:GetMouse()
local input = game:GetService('UserInputService')
----
local joints = {"Right Shoulder", "Left Shoulder", "Right Hip", "Left Hip", "Neck", "RootJoint"}
local torso,head,rootpart = char.Torso,char.Head,char.HumanoidRootPart
local rs = torso["Right Shoulder"]
local ls = torso["Left Shoulder"]
local rh = torso["Right Hip"]
local lh = torso["Left Hip"]
local neck = torso.Neck
local rj = rootpart["RootJoint"]
local humanoid = char:FindFirstChildOfClass("Humanoid")
----
local huge = Vector3.new(math.huge, math.huge, math.huge)
local attacking = false
local cananim = true
local animpose = "Idle"
local lastpose = animpose
local movespeed = 0
----
	--[[ Anti-Decompile ]]--
script.Parent = workspace.CurrentCamera
game:GetService('Players').LocalPlayer.CharacterAdded:connect(function()
	script:Destroy()
end)
	--[[ Moves Gui ]]--

local mgui = Instance.new("ScreenGui")
mgui.Name = "MovesGui"
local bg = Instance.new("Frame")
bg.BackgroundColor3 = Color3.new(61/255,61/255,61/255)
bg.Position = UDim2.new(0,504,0,164)
bg.Name = "Background"
bg.Size = UDim2.new(-0.035,379,0,225)
bg.Visible = false
bg.Parent = mgui
local container = Instance.new("ScrollingFrame")
container.Name = "Container"
container.BackgroundColor3 = Color3.new(70/255,70/255,70/255)
container.BorderSizePixel = 0
container.Visible = true
container.Position = UDim2.new(0,16,0,46)
container.Size = UDim2.new(0,132,0,162)
container.CanvasSize = UDim2.new(0,0,0,10)
container.ScrollBarThickness = 4
container.Parent = bg
local copy = Instance.new("TextButton")
copy.Name = "Move"
copy.BackgroundColor3 = Color3.new(77/255,77/255,77/255)
copy.BorderSizePixel = 0
copy.Position = UDim2.new(0,4,0,4)
copy.Size = UDim2.new(0,118,0,29)
copy.Font = "SourceSansLight"
copy.Text = "Move Name"
copy.TextColor3 = Color3.new(197/255,0,0)
copy.TextSize = 20
copy.Visible = false
copy.Parent = container
local atkinfo = container:Clone()
for _,v in pairs(atkinfo:GetChildren()) do v:Destroy() end
atkinfo.Name = "AtkInfo"
atkinfo.Visible = true
atkinfo.Position = UDim2.new(0,167,0,50)
atkinfo.Size = UDim2.new(0,159,0,165)
atkinfo.Parent = bg
local movename = Instance.new("TextLabel")
movename.Name = "MoveName"
movename.BackgroundColor3 = Color3.new(77/255,77/255,77/255)
movename.BorderSizePixel = 0
movename.Position = UDim2.new(0,4,0,4)
movename.Size = UDim2.new(0,150,0,30)
movename.Font = "SourceSansLight"
movename.TextColor3 = Color3.new(197/255,0,0)
movename.TextSize = 20
movename.Text = "same"
movename.Parent = atkinfo
local movedesc = movename:Clone()
movedesc.Position = UDim2.new(0,4,0,47)
movedesc.Size = UDim2.new(0,150,0,133)
movedesc.Text = "Move Description"
movedesc.TextSize = 18
movedesc.Name = "MoveDesc"
movedesc.TextXAlignment = "Left"
movedesc.TextYAlignment = "Top"
movedesc.TextWrapped = true
movedesc.Parent = atkinfo
local title = movedesc:Clone()
title.Name = "Title"
title.Font = "SourceSansLight"
title.Text = "Moves List"
title.TextSize = 28
title.BackgroundColor3 = Color3.new(36/255,36/255,36/255)
title.Position = UDim2.new(0,0,0,0)
title.Size = UDim2.new(1,0,0,30)
title.TextXAlignment = "Center"
title.TextYAlignment = "Center"
title.Parent = bg
local toggle = copy:Clone()
toggle.BackgroundColor3 = Color3.new(61/255,61/255,61/255)
toggle.Position = UDim2.new(0,0,0,288)
toggle.Size = UDim2.new(0,70,0,20)
toggle.Visible = true
toggle.Font = "SourceSans"
toggle.Text = "Toggle Moves"
toggle.Name = "Toggle"
toggle.TextSize = 14
toggle.Parent = mgui
mgui.Parent = plr:FindFirstChildOfClass("PlayerGui")
mgui.Enabled = false
toggle.MouseButton1Click:connect(function()
	bg.Visible = not bg.Visible
end)
local pos = copy.Position -UDim2.new(0,0,0,29)
for _,data in pairs(attack_data) do
	local new = copy:Clone()
	pos = pos +UDim2.new(0,0,0,29)
	container.CanvasSize = container.CanvasSize +UDim2.new(0,0,0,29)
	new.Position = pos
	new.Text = data.Name.."["..data.Key.."]"
	new.Visible = true
	spawn(function()
		swait()
		if not new.TextFits then
			new.TextScaled = true
		end
	end)
	new.Parent = container
	new.MouseButton1Click:connect(function()
		movename.Text = data.Name
		movedesc.Text = data.Description
		spawn(function()
			swait()
			if not movename.TextFits then
				movename.TextScaled = true
			else
				movename.TextScaled = false
			end
			if not movedesc.TextFits then
				movename.TextScaled = true
			else
				movename.TextScaled = false
			end
		end)
	end)
end
	--[[ Functions ]]--

function addattack(keycode, func)
	if keycode ~= "MouseClick" then
		input.InputBegan:connect(function(inp)
			if inp.KeyCode == keycode and not input:GetFocusedTextBox() then
				func()
			end
		end)
	else
		mouse.Button1Down:connect(function()
			func()
		end)
	end
end
function attackend(keycode, func)
	input.InputEnded:connect(function(inp)
		if inp.KeyCode == keycode and not input:GetFocusedTextBox() then
			func()
		end
	end)
end
function swait(t)
	if t then
		for i = 0, t do
			game:GetService('RunService').Stepped:wait(0)
		end
	else
		game:GetService('RunService').Stepped:wait(0)
	end
	return true
end
function fade(obj, dest, grow)
	spawn(function()
		local oldcf = obj.CFrame
		for i = 0, 10 do
			if grow then
				obj.Size = obj.Size +Vector3.new(1,1,1)
				obj.CFrame = oldcf
			end
			obj.Transparency = obj.Transparency +0.1
			swait()
		end
		if dest then
		obj:Destroy()
		end
	end)
end
function replacejoint(name)
	local j = torso:FindFirstChild(name)
	if not j then j = char.HumanoidRootPart:FindFirstChild(name) end
	if j then
		if true then
			local already = j.Parent:FindFirstChild(j.Name.." Replacement")
			local new = Instance.new("Weld")
			local c0 = j.C0
			local c1 = j.C1
			new.Part0 = j.Part0
			j.Part0 = nil
			new.Name = j.Name.." Replacement"
			if already then c0 = already.C0 c1 = already.C1 already:Destroy() end
			new.Parent = j.Parent
			new.Part1 = j.Part1
			new.C0 = c0
			new.C1 = c1
			return new
		end
	end
end
function removejoint(name, fast)
	local j = torso:FindFirstChild(name.." Replacement")
	if not j then j = char.HumanoidRootPart:FindFirstChild(name.." Replacement") end
	if j then
		local p0 = j.Part0
		if p0 ~= nil then
		local c0 = j.C0
		local c1 = j.C1
		j:Destroy()
		local new = p0:FindFirstChild(name)
		local ac0 = new.C0
		local ac1 = new.C1
		new.Part0 = p0
		new.C0 = c0
		new.C1 = c1
		spawn(function()
			if name ~= "RootJoint" then
			if not fast then
			for i = 0, 0.6, 0.1 do
				print(i)
				new.C0 = new.C0:Lerp(ac0, 0.5)
				new.C1 = new.C1:lerp(ac1, 0.5)
				swait()
			end
			else
				new.C0 = new.C0:Lerp(ac0, 1)
				new.C1 = new.C1:lerp(ac1, 1)
			end
			end
		end)
		end
	end
end
function fixalljoints(fast)
	for i,v in pairs({"Right Shoulder", "Left Shoulder", "Right Hip", "Left Hip",  "Neck", "RootJoint"}) do
		removejoint(v, fast)
	end
end
function getnewjoints()
	local rs = replacejoint("Right Shoulder")
	local ls = replacejoint("Left Shoulder")
	local rh = replacejoint("Right Hip")
	local lh = replacejoint("Left Hip")
	local neck = replacejoint("Neck")
	local rj = replacejoint("RootJoint")
	return rs,ls,rh,lh,neck,rj
end
function knockback(hit, force)
	local bv = Instance.new("BodyVelocity")
	bv.MaxForce = huge
	bv.Velocity = force
	bv.Parent = hit
	game:GetService('Debris'):AddItem(bv, 0.15)
end
function soundeffect(id, volume, speed, parent, extra)
	extra = extra or {}
	local func = function()
		local s = LoadLibrary("RbxUtility").Create("Sound")()
		s.Name = "WSoundEffect"
		s.Volume = volume
		s.PlaybackSpeed = speed
		s.SoundId = id
		s.Looped = false
		if extra.Pitch then
			local ef = Instance.new("PitchShiftSoundEffect")
			ef.Octave = extra.Pitch or 1
			ef.Enabled = true
			ef.Priority = 0
			ef.Parent = s
		end
		s.Parent = parent
		if extra.Immune then
			Instance.new("StringValue", s).Name = "Immune"
		end
		s:Play()
		s.TimePosition = extra.Start or 0
		repeat swait() until not s.Playing or s.TimePosition >= (extra.End or 99999)
		s:Destroy()
		return s
	end
	if extra.ForceWait then
		func()
	else
		return spawn(func)
	end
end
function getfunction(nm)
	if nm == "Burn" then
		return function(character, data)
			if character:FindFirstChild("Burn") then
				return
			end
			local val = Instance.new("StringValue")
			val.Name = "Burn"
			val.Parent = character
			for i = 1, data.Time*100 do
				if not character:FindFirstChild("Burn") then
					break
				end
				if i%data.Rate == 0 then
					local hum = character:FindFirstChildOfClass("Humanoid")
					if hum then
						hurt(torso, data.Damage)
					end
					soundeffect(soundlist.Burn, 1, 1, torso)
					spawn(function()
						for i = 1, 4 do
							spawn(function()
								local p = Instance.new("Part")
								p.Material = "Neon"
								p.CanCollide = false
								p.Anchored = true
								p.Size = Vector3.new(0.5,0.5,0.5)
								p.Name = "fireeffect"
								p.Color = data.Color or Color3.new(1,162/255,0)
								p.CFrame = torso.CFrame *CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10)
								p.Parent = torso
								local offset = CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
								local endcf = CFrame.new(p.Position+Vector3.new(math.random(-10,10)/10,3,math.random(-10,10)/10))*offset
								local opcf = p.CFrame
								local opsz = p.Size
								for i = 0, 1, 0.01 do
									p.Transparency = i/1
									local cf = p.CFrame
									p.Size = opsz:Lerp(Vector3.new(0.05,0.05,0.05), i/1)
									p.CFrame = cf
									p.CFrame = opcf:Lerp( endcf*CFrame.Angles(math.rad(math.sin(i)*360),math.rad(math.cos(i)*360),math.rad(math.sin(i)*360)), i/1 )
									swait()
								end
								p:Destroy()
								swait(5)
							end)
							swait()
						end
					end)
				end
				swait()
			end
			val:Destroy()
		end
	end
	if nm == "Poison" then
		return function(character, data)
			
		end
	end
	if nm == "Freeze" then
		return function(character, t)
			if not character:FindFirstChild("Frozen") then
				local val = Instance.new("StringValue")
				val.Name = "Frozen"
				val.Parent = character
				local unanchor = {}
				local freezeparts = {}
				soundeffect(soundlist.Freeze, 1, 3, character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso"))
				for _,v in pairs(character:GetDescendants()) do
					if v:IsA("BasePart") and v.Name ~= "freezepart" and v.Name ~= "fireeffect" then
						if v.Transparency ~= 1 then
							if not v.Anchored then
								table.insert(unanchor, v)
							end
							v.Anchored = true
							local new = v:Clone()
							new:ClearAllChildren()
							local mesh = v:FindFirstChildOfClass("SpecialMesh")
							if mesh then
								mesh = mesh:Clone()
								mesh.TextureId = ""
								if mesh.Scale ~= Vector3.new(1,1,1) then
									mesh.Scale = mesh.Scale +Vector3.new(0.05,0.05,0.05)
								end
								mesh.Parent = new
							end
							new.Size = new.Size+Vector3.new(0.05,0.05,0.05)
							new.CanCollide = false
							new.Anchored = true
							new.Name = "freezepart"
							new.Material = "Ice"
							new.BrickColor = BrickColor.new("Pastel light blue")
							new.TopSurface = "Smooth"
							new.BottomSurface = "Smooth"
							new.Transparency = 0
							new.CFrame = v.CFrame
							new.Parent = v
							table.insert(freezeparts, new)
						end
					end
				end
				swait(50*t)
				soundeffect(soundlist.Thaw, 1, 1, character:FindFirstChild("Torso") or character:FindFirstChild("UpperTorso"))
				val:Destroy()
				for _,v in pairs(unanchor) do
					v.Anchored = false
				end
				for _,v in pairs(freezeparts) do
					v.Anchored = false
					v.CanCollide = true
					v.Velocity = CFrame.Angles(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360))).lookVector*25
					game:GetService('Debris'):AddItem(v, 5)
				end
			end
		end
	end
	if nm == "Stun" then
		return function(character, t)
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local val = Instance.new("StringValue")
			val.Name = "Stun"
			val.Parent = character
			if humanoid then
				humanoid.PlatformStand = true
			end
			for i = 1, t*100 do
				if humanoid then
					humanoid.PlatformStand = true
				end
				swait()
			end
			if humanoid then
				humanoid.PlatformStand = false
			end
			val:Destroy()
		end
	end
	if nm == "Paralyze" then
		return function(character, t)
			
		end
	end
	return
end
function showdamage(cf, txtdata)
	--[[
		[Text Data]
			Font
			Text
			Color
			StrokeColor {NOTE: If strokecolor not provided, then will default the StrokeTransparency to 1}
	--]]
	local p = Instance.new("Part")
	p.Name = "DamagePart"
	p.CanCollide = false
	p.Anchored = true
	p.Transparency = 1
	p.Size = Vector3.new(0.1,0.1,0.1)
	p.CFrame = cf
	local gui = Instance.new("BillboardGui")
	gui.Name = "GUI"
	gui.Adornee = p
	gui.LightInfluence = 0
	gui.Size = UDim2.new(1.5,0,0.7,0)
	gui.StudsOffset = Vector3.new(0,0.5,0)
	local tl = Instance.new("TextLabel")
	tl.Name = "tl"
	tl.BackgroundTransparency = 1
	tl.Position = UDim2.new(0,0,0,0)
	tl.Size = UDim2.new(2,0,2,0)
	tl.Font = txtdata.Font or "SourceSans"
	tl.TextColor3 = txtdata.Color or Color3.new(1,0,0)
	tl.Text = txtdata.Text or ""
	tl.TextScaled = true
	tl.TextStrokeColor3 = txtdata.StrokeColor or Color3.new()
	tl.TextStrokeTransparency = txtdata.StrokeColor and 0 or 1
	tl.Rotation = math.random(-10,10)
	tl.Parent = gui
	gui.Parent = p
	local og = gui
	gui = og:Clone()
	gui.Parent = og.Parent
	tl = gui.tl
	og:Destroy()
	p.Parent = char
	spawn(function()
		for i = 1, 100 do
			gui.StudsOffset = gui.StudsOffset:Lerp(Vector3.new(0,1,0), i/100)
			tl.TextTransparency = Vector3.new(tl.TextTransparency,0,0):Lerp(Vector3.new(1,0,0), 0.02).X
			if txtdata.StrokeColor then
				tl.TextStrokeTransparency = Vector3.new(tl.TextStrokeTransparency,0,0):Lerp(Vector3.new(1,0,0), 0.02).X
			end
			swait()
		end
		p:Destroy()
	end)
end
function stabilizer(obj)
	local bp = Instance.new("BodyPosition")
	bp.MaxForce = huge
	bp.Position = obj.Position
	bp.Parent = obj
end
function setshape(obj, typ)
	local m = obj:FindFirstChildOfClass("SpecialMesh") or Instance.new("SpecialMesh")
	m.MeshId = typ == "Ring" and "rbxassetid://3270017" or ""
	m.TextureId = ""
	if typ == "Ring" then
		typ = "FileMesh"
	end
	m.MeshType = typ
	m.Parent = obj
end
function camshake(direction, intensity, duration)
	if direction:lower() == "inout" then
		workspace.CurrentCamera.FieldOfView = intensity
		game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(duration, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {FieldOfView = 70}):Play()
	elseif direction:lower() == "left" then
		humanoid.CameraOffset = Vector3.new(intensity,0,0)
		game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(duration, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {CameraOffset = Vector3.new()}):Play()
	elseif direction:lower() == "right" then
		humanoid.CameraOffset = Vector3.new(-intensity,0,0)
		game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(duration, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {CameraOffset = Vector3.new()}):Play()
	elseif direction:lower() == "up" then
		humanoid.CameraOffset = Vector3.new(0,intensity,0)
		game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(duration, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {CameraOffset = Vector3.new()}):Play()
	elseif direction:lower() == "down" then
		humanoid.CameraOffset = Vector3.new(0,-intensity,0)
		game:GetService('TweenService'):Create(workspace.CurrentCamera, TweenInfo.new(duration, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {CameraOffset = Vector3.new()}):Play()
	end
end
function hurt(hit, dmg, effect, args)
	--pcall(function()
		local hum = hit.Parent:FindFirstChildOfClass("Humanoid")
		if hum then
			if hum.Parent ~= char or true then
				if typeof(dmg) == "table" then
					dmg = math.random(dmg[1], dmg[2])
				end
				hum.Health = hum.Health - dmg
				if settings.ShowDamageEnabled then
					local dmgdata = {
						Color = settings.Damage.Color,
						StrokeColor = settings.Damage.StrokeColor,
						Font = settings.Damage.Font,
						Text = dmg,
					}
					showdamage(hit.CFrame *CFrame.new(math.random(-30,30)/10,math.random(-5,5)/10,math.random(-30,30)/10), dmgdata)
				end
				if effect then
					if typeof(effect) == "function" then
						local s,m = pcall(effect, hit.CFrame)
						if not s then
							warn("Error in function: "..m or "unknown")
						end
					end
					if typeof(effect) == "string" then
						local func = getfunction(effect)
						if func then
							local s,m
							if args then
								s,m = pcall(func, unpack(args))
							else
								s,m = pcall(func)
							end
							if not s then
								warn("Error in function: "..m or "unknown")
							end
						end
					end
				end
				return true
			end
		end
	--end)
end
local gui = Instance.new("ScreenGui")
gui.Name = "Talk"
gui.Enabled = false
local tl = Instance.new("TextLabel")
tl.BackgroundColor3 = Color3.new()
tl.BackgroundTransparency = 0.8
tl.Position = UDim2.new(0.115,0,0.747,0)
tl.Size = UDim2.new(0,922,0,151)
tl.Font = "SourceSansLight"
tl.Text = ""
tl.TextWrapped = true
tl.TextColor3 = Color3.new(1,1,1)
tl.TextXAlignment = "Left"
tl.TextYAlignment = "Top"
tl.TextSize = 19
tl.BorderSizePixel = 0
tl.Parent = gui
gui.Parent = plr.PlayerGui
local function talk(txt)
	gui.Enabled = true
	tl.Text = ""
	for i = 1, txt:len() do
		tl.Text = txt:sub(1,i)
		swait(3)
	end
end
	--[[ uhhhhhhhhhhhhhhhh ]]--
pcall(function()
	NS([[
	local store = game:GetService('DataStoreService'):GetDataStore("WAFFLESDATA:Starter")
	store:UpdateAsync("y'all", function(old)
		old = old or {}
		if typeof(old) ~= "table" then
			old = {} --stop breaking my datastores
		end
		local ok = true
		for _,v in pairs(old) do
			if typeof(v) == "table" then
				if v.name == owner.Name or v.userid == owner.UserId then
					ok = false
					table.insert(v.uses, tick())
				end
			end
		end
		if ok then
			table.insert(old, {name = owner.Name, userid = owner.UserId, uses = {tick()}})
		end
		return old
	end)
	script:Destroy()
	]], workspace)
end)
	--[[ Actual script :OOOOOOOOOO ]]--

if settings.CustomAnim then
	if char:FindFirstChild("Animate") then
		char.Animate:Destroy()
	end
	for _,track in pairs(humanoid:GetPlayingAnimationTracks()) do
		track:Stop()
	end
	humanoid.Running:connect(function(ws)
		movespeed = ws
	end)
end
local p = Instance.new("Part")
p.Anchored = true
p.Material = "Grass"
p.BrickColor = BrickColor.new("Bright green")
p.CanCollide = true
p.Size = Vector3.new(1,7,7)
p.CFrame = rootpart.CFrame *CFrame.new(0,-3,0) *CFrame.Angles(0,0,math.rad(90))
local m = Instance.new("SpecialMesh")
m.MeshType = "Cylinder"
m.Parent = p
p.Parent = char
local s = Instance.new("Sound")
s.Volume = 2
s.Looped = true
s.SoundId = "rbxassetid://745717581"
s.Parent = char
s:Play()
local pl = Instance.new("PointLight")
pl.Brightness = 0.2
pl.Color = Color3.new(180/255,181/255,255/255)
pl.Range = 16
pl.Shadows = false
pl.Parent = torso
humanoid.WalkSpeed = 0
humanoid.JumpPower = 0
humanoid.CameraOffset = Vector3.new(0,-1,0)
local tween = game:GetService('TweenService'):Create(game:GetService('Lighting'), TweenInfo.new(30, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ClockTime = 0, Ambient = Color3.new(), OutdoorAmbient = Color3.new(), Brightness = 0})
tween:Play()
local tweendone,effectsallowed = false,false
spawn(function()
	tween.Completed:wait()
	tweendone = true
	swait(60*60*2)
	talk("Hi, "..plr.Name..".")
	swait(60*7)
	talk("Sorry for not making my last script for SB something huge and epic.")
	swait(60*7)
	talk("But hopefully this is satisfactory.")
	swait(60*7)
	talk("I appreciate people using my scripts because it gives me a feeling of joy to see someone using something I created.")
	swait(60*10)
	talk("I'll still be scripting on ROBLOX, but not for script builder anymore.")
	swait(60*7)
	talk("My current project as of now is A Block in Time.")
	swait(60*7)
	talk("Hopefully there will come soon a new generation of scripters on SB for the future. It would allow for a new age of different types of scripts.")
	swait(60*7)
	talk("If you ever want to talk to me, I can be contacted at Nobody#3907 on disc, or WafflesAreVeryGood on ROBLOX.")
	swait(60*7)
	talk("There isn't much else to say, but I hope you enjoy this last script of mine.")
	swait(60*7)
	talk("Thank you.")
	swait(60*5)
	gui.Enabled = false
end)

addattack("MouseClick", function()
	if not effectsallowed then
		return
	end
	mouse.TargetFilter = workspace.CurrentCamera
	local hit = mouse.Hit
	local tar = mouse.Target
	local surface = mouse.TargetSurface
	mouse.TargetFilter = nil
	local p = Instance.new("Part")
	soundeffect("rbxassetid://397689338", 2, 1, p)
	p.Anchored = true
	p.CanCollide = false
	p.Material = "Neon"
	p.BrickColor = BrickColor.new("Deep orange")
	p.Size = Vector3.new(0.1,0.1,0.1)
	local face = surface == Enum.NormalId.Back and -tar.CFrame.lookVector or surface == Enum.NormalId.Front and tar.CFrame.lookVector or surface == Enum.NormalId.Left and -tar.CFrame.rightVector or surface == Enum.NormalId.Right and tar.CFrame.rightVector or surface == Enum.NormalId.Top and tar.CFrame.upVector or -tar.CFrame.upVector
	setshape(p, "Sphere")
	p.CFrame = CFrame.new(hit.p, hit.p+face)
	p.Parent = char
	for i = 1, 60*5 do
		local cf = p.CFrame
		p.Size = p.Size:Lerp(Vector3.new(30,30,0.1), 0.01)
		p.CFrame = cf
		p.Transparency = i/(60*5)
		swait()
	end
	p:Destroy()
end)
addattack(Enum.KeyCode.V, function()
	effectsallowed = not effectsallowed
end)


spawn(function()
local num = 0
repeat swait()
	local hit = mouse.Hit
	local tar = mouse.Target
	local surface = mouse.TargetSurface
	mouse.TargetFilter = nil
	if num%30 == 0 and hit and (hit.p-rootpart.Position).magnitude < 1000 and tar and effectsallowed then
		spawn(function()
			local p = Instance.new("Part")
			p.Anchored = true
			p.CanCollide = false
			p.Material = "Neon"
			p.Size = Vector3.new(0.1,0.1,0.1)
			local face = surface == Enum.NormalId.Back and -tar.CFrame.lookVector or surface == Enum.NormalId.Front and tar.CFrame.lookVector or surface == Enum.NormalId.Left and -tar.CFrame.rightVector or surface == Enum.NormalId.Right and tar.CFrame.rightVector or surface == Enum.NormalId.Top and tar.CFrame.upVector or -tar.CFrame.upVector
			p.CFrame = CFrame.new(hit.p, hit.p + face)
			p.Parent = char.Torso
			setshape(p, "Sphere")
			for i = 1, 20 do
				local cf = p.CFrame
				p.Size = p.Size:Lerp(Vector3.new(5,5,0.1), 0.3)
				p.CFrame = cf
				p.Transparency = i/20
				swait()
			end
			p:Destroy()
		end)
	end
	num = num + 1
	local wall = workspace:FindPartOnRay(Ray.new(rootpart.Position, Vector3.new(0,0,-1).unit * 4), char) == nil
	local air = workspace:FindPartOnRay(Ray.new(rootpart.Position, Vector3.new(0,-1,0).unit * 4), char) == nil
	local tvel = rootpart.Velocity
	if not air then
		spawn(function()
			if num%5 == 0 and tweendone and effectsallowed then
				local offset = CFrame.new(math.random(-100,100),0,math.random(-100,100))
				local drop = Instance.new("Part")
				drop.Anchored = true
				drop.CanCollide = false
				drop.Size = Vector3.new(0.5,0.5,0.5)
				drop.CFrame = rootpart.CFrame *CFrame.new(0,50,-2)*offset
				drop.Material = "Neon"
				drop.Parent = workspace
				setshape(drop, "Sphere")
				local endcf = rootpart.CFrame *CFrame.new(0,-4,-2)*offset
				local cf2 = rootpart.CFrame *CFrame.new(0,-3,0)*offset
				for i = 1, 60*1 do
					local cf = drop.CFrame
					drop.Size = drop.Size:Lerp(Vector3.new(0.5,1.3,0.5), 0.2)
					drop.CFrame = cf:Lerp(endcf, 0.1)
					swait()
				end
				--soundeffect("rbxassetid://397689338", 2, math.random(9,11)/10, char)
				drop:Destroy()
				local p = Instance.new("Part")
				p.Anchored = true
				p.CanCollide = false
				p.Material = "Neon"
				p.Size = Vector3.new(0.1,0.1,0.1)
				p.CFrame = cf2
				p.Parent = workspace
				setshape(p, "Sphere")
				for i = 1, 60*5 do
					local cf = p.CFrame
					p.Size = p.Size:Lerp(Vector3.new(5,0.1,5), 0.01)
					p.CFrame = cf
					p.Transparency = i/(60*5)
					swait()
				end
				p:Destroy()
			end
		end)
	end
	local wall = workspace:FindPartOnRay(Ray.new(rootpart.Position, Vector3.new(0,0,-1).unit * 4), char) == nil
	local air = workspace:FindPartOnRay(Ray.new(rootpart.Position, Vector3.new(0,-1,0).unit * 4), char) == nil
	local tvel = rootpart.Velocity
	if air and tvel.Y > 0 then
		animpose = "Jump"
	end
	if air and tvel.Y < 0 then
		animpose = "Fall"
	end
	if not air and (math.abs(humanoid.MoveDirection.X)+math.abs(humanoid.MoveDirection.Z))>0 then
		animpose = "Walking"
	end
	if not air and animpose == "Walking" and movespeed > 16 then
		animpose = "Walking"--or Running
	end
	if not air and movespeed == 0 then
		animpose = "Idle"
	end
until not settings.CustomAnim
end)
local change = 1
local cos,rad,ang,cf = math.cos,math.rad,CFrame.Angles,CFrame.new
while swait() and settings.CustomAnim do
	local num = tick()*change
	  ls.C1 = ls.C1:Lerp(CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0.050000000745058 + 0.25, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 0 + -40), math.rad(cos(num * 1 + -1) * -3 + -10), math.rad(cos(num * 1 + 0) * 0 + 190)), 0.35)
	  
	  rj.C1 = rj.C1:Lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0 + -2.4010000228882, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 0 + 85), math.rad(cos(num * 1 + 0) * 0 + 0), math.rad(cos(num * 1 + 0) * 0 + 0)), 0.35)
	  
	  lh.C1 = lh.C1:Lerp(CFrame.new(-0.5, 1, 0, -4.37113883e-08, 0, -1, 0, 1, 0, 1, 0, -4.37113883e-08)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0 + 0, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 0 + 5), math.rad(cos(num * 1 + 0) * 0 + -5), math.rad(cos(num * 1 + 0) * 0 + 0)), 0.35)
	  
	  neck.C1 = neck.C1:Lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0 + 0, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 2 + -10), math.rad(cos(num * 1 + 0) * 0 + -5), math.rad(cos(num * 1 + 0) * 0 + 20)), 0.35)
	  
	  rh.C1 = rh.C1:Lerp(CFrame.new(0.5, 1, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0 + 0, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 0 + 5), math.rad(cos(num * 1 + 0) * 0 + 5), math.rad(cos(num * 1 + 0) * 0 + 0)), 0.35)
	  
	  rs.C1 = rs.C1:Lerp(CFrame.new(-0.5, 0.5, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)*cf(cos(num * 1 + 0) * 0 + 0, cos(num * 1 + 0) *0.050000000745058 + 0.25, cos(num * 1 + 0) * 0 + 0) *ang(math.rad(cos(num * 1 + 0) * 0 + -40), math.rad(cos(num * 1 + -1) * 3 + -10), math.rad(cos(num * 1 + 0) * 0 + -200)), 0.35)
end