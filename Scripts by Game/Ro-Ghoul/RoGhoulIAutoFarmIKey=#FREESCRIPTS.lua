discord = "http://discordapp.com/invite/BhfEaYV"
dehkey = "http://ceesty.com/wMywA5"

local codes = {
	"Midori";
	"DevMiracle";
	"PG1.6Release";
	"#FREESCRIPTS"
}

local ProjectGhoul = Instance.new("ScreenGui")
local F1 = Instance.new("ImageLabel")
local F2 = Instance.new("ImageLabel")
local functions = Instance.new("Frame")
local inf = Instance.new("TextButton")
local auto = Instance.new("TextButton")
local train = Instance.new("TextButton")
local quest = Instance.new("TextButton")
local speed = Instance.new("TextButton")
local rep = Instance.new("TextButton")
local ps = Instance.new("TextButton")
local credit = Instance.new("Frame")
local clabel = Instance.new("TextLabel")
local c1 = Instance.new("TextLabel")
local Cgui = Instance.new("ScrollingFrame")
local clogs = Instance.new("TextLabel")
local t = Instance.new("TextLabel")
local t_2 = Instance.new("TextLabel")
local t_3 = Instance.new("TextLabel")
local t_4 = Instance.new("TextLabel")
local c2 = Instance.new("TextLabel")
local Discord = Instance.new("ImageButton")
local joinjoin = Instance.new("TextLabel")
local copied = Instance.new("TextLabel")
local farm = Instance.new("Frame")
local HoldingFrame = Instance.new("ScrollingFrame")
local startfarming = Instance.new("TextButton")
local run = Instance.new("TextButton")
local ra2 = Instance.new("TextButton")
local ra1 = Instance.new("TextButton")
local mid = Instance.new("TextButton")
local low = Instance.new("TextButton")
local hooman = Instance.new("TextButton")
local high = Instance.new("TextButton")
local first = Instance.new("TextButton")
local tab1 = Instance.new("Frame")
local r1 = Instance.new("TextButton")
local l1 = Instance.new("TextButton")
local fs1 = Instance.new("TextLabel")
local tab2 = Instance.new("Frame")
local r2 = Instance.new("TextButton")
local l2 = Instance.new("TextButton")
local fs2 = Instance.new("TextLabel")
local tab3 = Instance.new("Frame")
local r3 = Instance.new("TextButton")
local l3 = Instance.new("TextButton")
local fs3 = Instance.new("TextLabel")
local login = Instance.new("Frame")
local Holder = Instance.new("Frame")
local WhitelistText = Instance.new("TextLabel")
local KeyBox = Instance.new("TextBox")
local LoginButton = Instance.new("TextButton")
local getkeybutton = Instance.new("TextButton")
local link = Instance.new("TextLabel")
local welcometext = Instance.new("TextLabel")
local TT = Instance.new("ImageLabel")
local T = Instance.new("ImageLabel")
local Tx = Instance.new("TextLabel")
local Txx = Instance.new("TextLabel")
local ActiveFarming = Instance.new("ImageLabel")
local borderPixel = Instance.new("ImageLabel")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("ImageButton")
local TextLabel_3 = Instance.new("TextLabel")
local borderPixel_2 = Instance.new("ImageButton")
local S1 = Instance.new("ImageLabel")
local S2 = Instance.new("ImageLabel")
local S3 = Instance.new("Frame")
local LoadValues = Instance.new("TextButton")
local Username = Instance.new("TextBox")
local Name = Instance.new("TextLabel")
local Nickname = Instance.new("TextLabel")
local Level = Instance.new("TextLabel")
local Physical = Instance.new("TextLabel")
local Durability = Instance.new("TextLabel")
local Kagune = Instance.new("TextLabel")
local Exp = Instance.new("TextLabel")
local Rep = Instance.new("TextLabel")
local Yen = Instance.new("TextLabel")
local Rc = Instance.new("TextLabel")
local Weapon = Instance.new("TextLabel")
local Speed = Instance.new("TextLabel")
local SC = Instance.new("ImageLabel")
local BD = Instance.new("ImageLabel")
local Txx_2 = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
--Properties:
ProjectGhoul.Name = "Project Ghoul"
ProjectGhoul.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ProjectGhoul.ResetOnSpawn = false

F1.Name = "F1"
F1.Parent = ProjectGhoul
F1.Active = true
F1.BackgroundColor3 = Color3.new(1, 1, 1)
F1.BackgroundTransparency = 1
F1.Position = UDim2.new(0.0153304338, 0, 0.41386798, 0)
F1.Size = UDim2.new(0, 338, 0, 186)
F1.Image = "rbxassetid://2851928141"
F1.ImageColor3 = Color3.new(1, 0, 0)
F1.ScaleType = Enum.ScaleType.Slice
F1.SliceCenter = Rect.new(8, 8, 8, 8)
F1.Draggable = true

F2.Name = "F2"
F2.Parent = F1
F2.BackgroundColor3 = Color3.new(0, 0, 0)
F2.BackgroundTransparency = 1
F2.Position = UDim2.new(0.0103617106, 2, 0.00397893414, 0)
F2.Size = UDim2.new(0, 330, 0, 180)
F2.Image = "rbxassetid://2851928141"
F2.ImageColor3 = Color3.new(0, 0, 0)
F2.ScaleType = Enum.ScaleType.Slice
F2.SliceCenter = Rect.new(8, 8, 8, 8)

functions.Name = "functions"
functions.Parent = F2
functions.BackgroundColor3 = Color3.new(1, 1, 1)
functions.BackgroundTransparency = 1
functions.Size = UDim2.new(0, 100, 0, 100)
functions.Visible = false

inf.Name = "inf"
inf.Parent = functions
inf.BackgroundColor3 = Color3.new(0, 0, 0)
inf.BorderColor3 = Color3.new(1, 0, 0)
inf.Position = UDim2.new(0.063000001, 0, 0.611000001, 0)
inf.Size = UDim2.new(0, 94, 0, 30)
inf.Font = Enum.Font.GothamSemibold
inf.Text = "Inf Dash"
inf.TextColor3 = Color3.new(1, 0, 0)
inf.TextSize = 14

auto.Name = "auto"
auto.Parent = functions
auto.BackgroundColor3 = Color3.new(0, 0, 0)
auto.BorderColor3 = Color3.new(1, 0, 0)
auto.Position = UDim2.new(2.28999996, 0, 0.611000001, 0)
auto.Size = UDim2.new(0, 94, 0, 30)
auto.Font = Enum.Font.GothamSemibold
auto.Text = "Auto-Attack"
auto.TextColor3 = Color3.new(1, 0, 0)
auto.TextSize = 14

train.Name = "train"
train.Parent = functions
train.BackgroundColor3 = Color3.new(0, 0, 0)
train.BorderColor3 = Color3.new(1, 0, 0)
train.Position = UDim2.new(1.18499994, 0, 0.611000001, 0)
train.Size = UDim2.new(0, 94, 0, 30)
train.Font = Enum.Font.GothamSemibold
train.Text = "GotoTrainer"
train.TextColor3 = Color3.new(1, 0, 0)
train.TextSize = 14

quest.Name = "quest"
quest.Parent = functions
quest.BackgroundColor3 = Color3.new(0, 0, 0)
quest.BorderColor3 = Color3.new(1, 0, 0)
quest.Position = UDim2.new(1.18499994, 0, 0.181999996, 0)
quest.Size = UDim2.new(0, 94, 0, 30)
quest.Font = Enum.Font.GothamSemibold
quest.Text = "GetQuests"
quest.TextColor3 = Color3.new(1, 0, 0)
quest.TextSize = 14

speed.Name = "speed"
speed.Parent = functions
speed.BackgroundColor3 = Color3.new(0, 0, 0)
speed.BorderColor3 = Color3.new(1, 0, 0)
speed.Position = UDim2.new(2.28999996, 0, 0.18233335, 0)
speed.Size = UDim2.new(0, 94, 0, 30)
speed.Font = Enum.Font.GothamSemibold
speed.Text = "Speed [Q]"
speed.TextColor3 = Color3.new(1, 0, 0)
speed.TextSize = 14

rep.Name = "rep"
rep.Parent = functions
rep.BackgroundColor3 = Color3.new(0, 0, 0)
rep.BorderColor3 = Color3.new(1, 0, 0)
rep.Position = UDim2.new(0.063000001, 0, 0.181999996, 0)
rep.Size = UDim2.new(0, 94, 0, 30)
rep.Font = Enum.Font.GothamSemibold
rep.Text = "CashOutrep"
rep.TextColor3 = Color3.new(1, 0, 0)
rep.TextSize = 14

ps.Name = "ps"
ps.Parent = functions
ps.BackgroundColor3 = Color3.new(0, 0, 0)
ps.BorderColor3 = Color3.new(1, 0, 0)
ps.Position = UDim2.new(0.063000001, 0, 1.06099999, 0)
ps.Size = UDim2.new(0, 94, 0, 30)
ps.Font = Enum.Font.GothamSemibold
ps.Text = "Plr-Stats"
ps.TextColor3 = Color3.new(1, 0, 0)
ps.TextSize = 14

credit.Name = "credit"
credit.Parent = F2
credit.BackgroundColor3 = Color3.new(1, 1, 1)
credit.BackgroundTransparency = 1
credit.Size = UDim2.new(0, 100, 0, 100)
credit.Visible = false

clabel.Name = "clabel"
clabel.Parent = credit
clabel.BackgroundColor3 = Color3.new(1, 1, 1)
clabel.BackgroundTransparency = 1
clabel.Position = UDim2.new(-0.150000006, 0, -0.109999999, 0)
clabel.Size = UDim2.new(0, 200, 0, 50)
clabel.Font = Enum.Font.Code
clabel.Text = "Credits"
clabel.TextColor3 = Color3.new(1, 0, 0)
clabel.TextSize = 14

c1.Name = "c1"
c1.Parent = credit
c1.BackgroundColor3 = Color3.new(1, 1, 1)
c1.BackgroundTransparency = 1
c1.Position = UDim2.new(0.0799999982, 0, 0.259100378, 0)
c1.Size = UDim2.new(0, 154, 0, 26)
c1.Font = Enum.Font.Code
c1.Text = "Akiyama Midori#0961"
c1.TextColor3 = Color3.new(1, 0, 0)
c1.TextSize = 14
c1.TextWrapped = true

Cgui.Name = "Cgui"
Cgui.Parent = credit
Cgui.BackgroundColor3 = Color3.new(0, 0, 0)
Cgui.BorderColor3 = Color3.new(1, 0, 0)
Cgui.Position = UDim2.new(1.84939384, 0, 0.158888891, 0)
Cgui.Size = UDim2.new(0, 138, 0, 134)

clogs.Name = "clogs"
clogs.Parent = Cgui
clogs.BackgroundColor3 = Color3.new(1, 1, 1)
clogs.BackgroundTransparency = 1
clogs.Position = UDim2.new(0.0456520766, 0, -0.0198943224, 0)
clogs.Size = UDim2.new(0, 117, 0, 40)
clogs.Font = Enum.Font.Code
clogs.Text = "Changelogs"
clogs.TextColor3 = Color3.new(1, 0, 0)
clogs.TextSize = 14

t.Name = "t"
t.Parent = Cgui
t.BackgroundColor3 = Color3.new(1, 1, 1)
t.BackgroundTransparency = 1
t.Position = UDim2.new(0.0384057015, 0, 0.0967723429, 0)
t.Size = UDim2.new(0, 117, 0, 40)
t.Font = Enum.Font.Code
t.Text = "- Added autofarm on death"
t.TextColor3 = Color3.new(1, 0, 0)
t.TextSize = 14
t.TextWrapped = true
t.TextXAlignment = Enum.TextXAlignment.Left

t_2.Name = "t"
t_2.Parent = Cgui
t_2.BackgroundColor3 = Color3.new(1, 1, 1)
t_2.BackgroundTransparency = 1
t_2.Position = UDim2.new(0.038405709, 0, 0.268357784, 0)
t_2.Size = UDim2.new(0, 117, 0, 60)
t_2.Font = Enum.Font.Code
t_2.Text = "- Added select/unselect npc's you want to farm"
t_2.TextColor3 = Color3.new(1, 0, 0)
t_2.TextSize = 14
t_2.TextWrapped = true
t_2.TextXAlignment = Enum.TextXAlignment.Left

t_3.Name = "t"
t_3.Parent = Cgui
t_3.BackgroundColor3 = Color3.new(1, 1, 1)
t_3.BackgroundTransparency = 1
t_3.Position = UDim2.new(0.038405709, 0, 0.55858326, 0)
t_3.Size = UDim2.new(0, 117, 0, 34)
t_3.Font = Enum.Font.Code
t_3.Text = "- Added whitelist key"
t_3.TextColor3 = Color3.new(1, 0, 0)
t_3.TextSize = 14
t_3.TextWrapped = true
t_3.TextXAlignment = Enum.TextXAlignment.Left

t_4.Name = "t"
t_4.Parent = Cgui
t_4.BackgroundColor3 = Color3.new(1, 1, 1)
t_4.BackgroundTransparency = 1
t_4.Position = UDim2.new(0.031159332, 0, 0.728583276, 0)
t_4.Size = UDim2.new(0, 117, 0, 34)
t_4.Font = Enum.Font.Code
t_4.Text = "- Made gui draggable"
t_4.TextColor3 = Color3.new(1, 0, 0)
t_4.TextSize = 14
t_4.TextWrapped = true
t_4.TextXAlignment = Enum.TextXAlignment.Left

c2.Name = "c2"
c2.Parent = credit
c2.BackgroundColor3 = Color3.new(1, 1, 1)
c2.BackgroundTransparency = 1
c2.Position = UDim2.new(0.0799999982, 0, 0.479100376, 0)
c2.Size = UDim2.new(0, 154, 0, 26)
c2.Font = Enum.Font.Code
c2.Text = "Miracle#2623"
c2.TextColor3 = Color3.new(1, 0, 0)
c2.TextSize = 14
c2.TextWrapped = true

Discord.Name = "Discord"
Discord.Parent = credit
Discord.BackgroundColor3 = Color3.new(1, 1, 1)
Discord.BackgroundTransparency = 1
Discord.Position = UDim2.new(0.529999971, 0, 0.780000031, 0)
Discord.Size = UDim2.new(0, 48, 0, 44)
Discord.Image = "rbxassetid://3061834551"

joinjoin.Name = "joinjoin"
joinjoin.Parent = credit
joinjoin.BackgroundColor3 = Color3.new(1, 1, 1)
joinjoin.BackgroundTransparency = 1
joinjoin.Position = UDim2.new(0.129999995, 0, 1.20910025, 0)
joinjoin.Size = UDim2.new(0, 144, 0, 47)
joinjoin.Font = Enum.Font.Code
joinjoin.Text = "Join PG Official Discord server!"
joinjoin.TextColor3 = Color3.new(1, 0, 0)
joinjoin.TextSize = 14
joinjoin.TextWrapped = true

copied.Name = "copied"
copied.Parent = credit
copied.BackgroundColor3 = Color3.new(1, 1, 1)
copied.BackgroundTransparency = 1
copied.Position = UDim2.new(1.00999999, 0, 0.859100401, 0)
copied.Size = UDim2.new(0, 88, 0, 26)
copied.Visible = false
copied.Font = Enum.Font.Code
copied.Text = "Link Copied!"
copied.TextColor3 = Color3.new(1, 0, 0)
copied.TextSize = 14
copied.TextWrapped = true

farm.Name = "farm"
farm.Parent = F2
farm.BackgroundColor3 = Color3.new(1, 1, 1)
farm.BackgroundTransparency = 1
farm.Size = UDim2.new(0, 100, 0, 100)
farm.Visible = false

HoldingFrame.Name = "HoldingFrame"
HoldingFrame.Parent = farm
HoldingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
HoldingFrame.BackgroundTransparency = 1
HoldingFrame.Position = UDim2.new(0, 0, 0.159999996, 0)
HoldingFrame.Size = UDim2.new(0, 330, 0, 119)
HoldingFrame.ScrollBarThickness = 0

startfarming.Name = "start farming"
startfarming.Parent = HoldingFrame
startfarming.BackgroundColor3 = Color3.new(0, 0, 0)
startfarming.BorderColor3 = Color3.new(0, 0.392157, 1)
startfarming.Position = UDim2.new(0.686969757, 0, 0.426999956, 0)
startfarming.Size = UDim2.new(0, 94, 0, 30)
startfarming.Font = Enum.Font.GothamSemibold
startfarming.Text = "Start farming"
startfarming.TextColor3 = Color3.new(0, 0.392157, 1)
startfarming.TextSize = 14

run.Name = "run"
run.Parent = HoldingFrame
run.BackgroundColor3 = Color3.new(0, 0, 0)
run.BorderColor3 = Color3.new(1, 0, 0)
run.Position = UDim2.new(0.35772723, 0, 0.00599998236, 0)
run.Size = UDim2.new(0, 94, 0, 30)
run.Font = Enum.Font.GothamSemibold
run.Text = "Athlete"
run.TextColor3 = Color3.new(1, 0, 0)
run.TextSize = 14

ra2.Name = "ra2"
ra2.Parent = HoldingFrame
ra2.BackgroundColor3 = Color3.new(0, 0, 0)
ra2.BorderColor3 = Color3.new(1, 0, 0)
ra2.Position = UDim2.new(0.0215757824, 0, 0.429999977, 0)
ra2.Size = UDim2.new(0, 94, 0, 30)
ra2.Font = Enum.Font.GothamSemibold
ra2.Text = "Rank 2 | CCG"
ra2.TextColor3 = Color3.new(1, 0, 0)
ra2.TextSize = 14

ra1.Name = "ra1"
ra1.Parent = HoldingFrame
ra1.BackgroundColor3 = Color3.new(0, 0, 0)
ra1.BorderColor3 = Color3.new(1, 0, 0)
ra1.Position = UDim2.new(0.688030243, 0, 0.215999991, 0)
ra1.Size = UDim2.new(0, 94, 0, 30)
ra1.Font = Enum.Font.GothamSemibold
ra1.Text = "Rank 1 | CCG"
ra1.TextColor3 = Color3.new(1, 0, 0)
ra1.TextSize = 14

mid.Name = "mid"
mid.Parent = HoldingFrame
mid.BackgroundColor3 = Color3.new(0, 0, 0)
mid.BorderColor3 = Color3.new(1, 0, 0)
mid.Position = UDim2.new(0.0175454542, 0, 0.220999986, 0)
mid.Size = UDim2.new(0, 94, 0, 30)
mid.Font = Enum.Font.GothamSemibold
mid.Text = "Mid | Aogiri"
mid.TextColor3 = Color3.new(1, 0, 0)
mid.TextSize = 14

low.Name = "low"
low.Parent = HoldingFrame
low.BackgroundColor3 = Color3.new(0, 0, 0)
low.BorderColor3 = Color3.new(1, 0, 0)
low.Position = UDim2.new(0.686969757, 0, 0.00699996948, 0)
low.Size = UDim2.new(0, 94, 0, 30)
low.Font = Enum.Font.GothamSemibold
low.Text = "Low | Aogiri"
low.TextColor3 = Color3.new(1, 0, 0)
low.TextSize = 14

hooman.Name = "hooman"
hooman.Parent = HoldingFrame
hooman.BackgroundColor3 = Color3.new(0, 0, 0)
hooman.BorderColor3 = Color3.new(1, 0, 0)
hooman.Position = UDim2.new(0.0175454542, 0, 0.00699998904, 0)
hooman.Size = UDim2.new(0, 94, 0, 30)
hooman.Font = Enum.Font.GothamSemibold
hooman.Text = "Human"
hooman.TextColor3 = Color3.new(1, 0, 0)
hooman.TextSize = 14

high.Name = "high"
high.Parent = HoldingFrame
high.BackgroundColor3 = Color3.new(0, 0, 0)
high.BorderColor3 = Color3.new(1, 0, 0)
high.Position = UDim2.new(0.356969714, 0, 0.21800001, 0)
high.Size = UDim2.new(0, 94, 0, 30)
high.ZIndex = 2
high.Font = Enum.Font.GothamSemibold
high.Text = "High | Aogiri"
high.TextColor3 = Color3.new(1, 0, 0)
high.TextSize = 14

first.Name = "first"
first.Parent = HoldingFrame
first.BackgroundColor3 = Color3.new(0, 0, 0)
first.BorderColor3 = Color3.new(1, 0, 0)
first.Position = UDim2.new(0.35772723, 0, 0.429999977, 0)
first.Size = UDim2.new(0, 94, 0, 30)
first.Font = Enum.Font.GothamSemibold
first.Text = "First Class"
first.TextColor3 = Color3.new(1, 0, 0)
first.TextSize = 14

tab1.Name = "tab1"
tab1.Parent = F2
tab1.BackgroundColor3 = Color3.new(1, 1, 1)
tab1.BackgroundTransparency = 1
tab1.Size = UDim2.new(0, 100, 0, 100)
tab1.Visible = false

r1.Name = "r1"
r1.Parent = tab1
r1.BackgroundColor3 = Color3.new(1, 1, 1)
r1.BackgroundTransparency = 1
r1.Position = UDim2.new(2.31587029, 0, 1.49333334, 0)
r1.Size = UDim2.new(0, 35, 0, 30)
r1.Text = ">"
r1.TextColor3 = Color3.new(1, 0, 0)
r1.TextScaled = true
r1.TextSize = 12
r1.TextWrapped = true

l1.Name = "l1"
l1.Parent = tab1
l1.BackgroundColor3 = Color3.new(1, 1, 1)
l1.BackgroundTransparency = 1
l1.Position = UDim2.new(0.68162787, 0, 1.49333334, 0)
l1.Size = UDim2.new(0, 32, 0, 30)
l1.Text = "<"
l1.TextColor3 = Color3.new(1, 0, 0)
l1.TextScaled = true
l1.TextSize = 12
l1.TextWrapped = true

fs1.Name = "fs1"
fs1.Parent = tab1
fs1.BackgroundColor3 = Color3.new(1, 1, 1)
fs1.BackgroundTransparency = 1
fs1.Position = UDim2.new(0.966173291, 0, 1.49333334, 0)
fs1.Size = UDim2.new(0, 136, 0, 30)
fs1.Text = "Credits & C-Logs"
fs1.TextColor3 = Color3.new(1, 0, 0)
fs1.TextSize = 12

tab2.Name = "tab2"
tab2.Parent = F2
tab2.BackgroundColor3 = Color3.new(1, 1, 1)
tab2.BackgroundTransparency = 1
tab2.Size = UDim2.new(0, 100, 0, 100)
tab2.Visible = false

r2.Name = "r2"
r2.Parent = tab2
r2.BackgroundColor3 = Color3.new(1, 1, 1)
r2.BackgroundTransparency = 1
r2.Position = UDim2.new(2.31587029, 0, 1.49333334, 0)
r2.Size = UDim2.new(0, 35, 0, 30)
r2.Text = ">"
r2.TextColor3 = Color3.new(1, 0, 0)
r2.TextScaled = true
r2.TextSize = 12
r2.TextWrapped = true

l2.Name = "l2"
l2.Parent = tab2
l2.BackgroundColor3 = Color3.new(1, 1, 1)
l2.BackgroundTransparency = 1
l2.Position = UDim2.new(0.68162787, 0, 1.49333334, 0)
l2.Size = UDim2.new(0, 32, 0, 30)
l2.Text = "<"
l2.TextColor3 = Color3.new(1, 0, 0)
l2.TextScaled = true
l2.TextSize = 12
l2.TextWrapped = true

fs2.Name = "fs2"
fs2.Parent = tab2
fs2.BackgroundColor3 = Color3.new(1, 1, 1)
fs2.BackgroundTransparency = 1
fs2.Position = UDim2.new(0.966173291, 0, 1.49333334, 0)
fs2.Size = UDim2.new(0, 136, 0, 30)
fs2.Text = "Functions"
fs2.TextColor3 = Color3.new(1, 0, 0)
fs2.TextSize = 12

tab3.Name = "tab3"
tab3.Parent = F2
tab3.BackgroundColor3 = Color3.new(1, 1, 1)
tab3.BackgroundTransparency = 1
tab3.Size = UDim2.new(0, 100, 0, 100)
tab3.Visible = false

r3.Name = "r3"
r3.Parent = tab3
r3.BackgroundColor3 = Color3.new(1, 1, 1)
r3.BackgroundTransparency = 1
r3.Position = UDim2.new(2.31587029, 0, 1.49333334, 0)
r3.Size = UDim2.new(0, 35, 0, 30)
r3.Text = ">"
r3.TextColor3 = Color3.new(1, 0, 0)
r3.TextScaled = true
r3.TextSize = 12
r3.TextWrapped = true

l3.Name = "l3"
l3.Parent = tab3
l3.BackgroundColor3 = Color3.new(1, 1, 1)
l3.BackgroundTransparency = 1
l3.Position = UDim2.new(0.68162787, 0, 1.49333334, 0)
l3.Size = UDim2.new(0, 32, 0, 30)
l3.Text = "<"
l3.TextColor3 = Color3.new(1, 0, 0)
l3.TextScaled = true
l3.TextSize = 12
l3.TextWrapped = true

fs3.Name = "fs3"
fs3.Parent = tab3
fs3.BackgroundColor3 = Color3.new(1, 1, 1)
fs3.BackgroundTransparency = 1
fs3.Position = UDim2.new(0.966173291, 0, 1.49333334, 0)
fs3.Size = UDim2.new(0, 136, 0, 30)
fs3.Text = "Farming"
fs3.TextColor3 = Color3.new(1, 0, 0)
fs3.TextSize = 12

login.Name = "login"
login.Parent = F2
login.BackgroundColor3 = Color3.new(1, 1, 1)
login.BackgroundTransparency = 1
login.BorderSizePixel = 0
login.Size = UDim2.new(0, 100, 0, 100)

Holder.Name = "Holder"
Holder.Parent = login
Holder.BackgroundColor3 = Color3.new(1, 1, 1)
Holder.BackgroundTransparency = 1
Holder.BorderSizePixel = 0
Holder.Size = UDim2.new(0, 330, 0, 141)

WhitelistText.Name = "WhitelistText"
WhitelistText.Parent = Holder
WhitelistText.BackgroundColor3 = Color3.new(1, 1, 1)
WhitelistText.BackgroundTransparency = 1
WhitelistText.BorderSizePixel = 0
WhitelistText.Position = UDim2.new(0.333333313, 0, 0.212765977, 0)
WhitelistText.Size = UDim2.new(0, 110, 0, 25)
WhitelistText.Font = Enum.Font.Code
WhitelistText.Text = "Whitelist"
WhitelistText.TextColor3 = Color3.new(1, 0, 0)
WhitelistText.TextSize = 25

KeyBox.Name = "KeyBox"
KeyBox.Parent = Holder
KeyBox.BackgroundColor3 = Color3.new(0, 0, 0)
KeyBox.BorderColor3 = Color3.new(1, 0, 0)
KeyBox.BorderSizePixel = 2
KeyBox.Position = UDim2.new(0.163636357, 0, 0.439716309, 0)
KeyBox.Size = UDim2.new(0, 217, 0, 31)
KeyBox.Font = Enum.Font.SourceSans
KeyBox.PlaceholderColor3 = Color3.new(0.784314, 0.784314, 0.784314)
KeyBox.PlaceholderText = "Put Key Here!"
KeyBox.Text = ""
KeyBox.TextColor3 = Color3.new(1, 1, 1)
KeyBox.TextSize = 14

LoginButton.Name = "LoginButton"
LoginButton.Parent = Holder
LoginButton.BackgroundColor3 = Color3.new(0, 0, 0)
LoginButton.BorderColor3 = Color3.new(1, 0, 0)
LoginButton.BorderSizePixel = 2
LoginButton.Position = UDim2.new(0.312000006, 0, 0.73652482, 0)
LoginButton.Size = UDim2.new(0, 121, 0, 24)
LoginButton.Font = Enum.Font.SourceSans
LoginButton.Text = "Login"
LoginButton.TextColor3 = Color3.new(1, 0, 0)
LoginButton.TextSize = 14

getkeybutton.Name = "getkeybutton"
getkeybutton.Parent = Holder
getkeybutton.BackgroundColor3 = Color3.new(0, 0, 0)
getkeybutton.BorderColor3 = Color3.new(1, 0, 0)
getkeybutton.BorderSizePixel = 2
getkeybutton.Position = UDim2.new(0.312000006, 0, 0.984751761, 0)
getkeybutton.Size = UDim2.new(0, 121, 0, 24)
getkeybutton.Font = Enum.Font.SourceSans
getkeybutton.Text = "GET KEY"
getkeybutton.TextColor3 = Color3.new(1, 0, 0)
getkeybutton.TextSize = 14

link.Name = "link"
link.Parent = Holder
link.BackgroundColor3 = Color3.new(1, 1, 1)
link.BackgroundTransparency = 1
link.BorderSizePixel = 0
link.Position = UDim2.new(0.672727227, 0, 0.978723466, 0)
link.Size = UDim2.new(0, 110, 0, 25)
link.Visible = false
link.Font = Enum.Font.Code
link.Text = "Link Copied!"
link.TextColor3 = Color3.new(1, 0, 0)
link.TextSize = 14

welcometext.Name = "welcometext"
welcometext.Parent = Holder
welcometext.BackgroundColor3 = Color3.new(1, 1, 1)
welcometext.BackgroundTransparency = 1
welcometext.BorderSizePixel = 0
welcometext.Position = UDim2.new(0.069696933, 0, 0.0354610085, 0)
welcometext.Size = UDim2.new(0, 110, 0, 25)
welcometext.Font = Enum.Font.Code
welcometext.Text = "Hello, "..game.Players.localPlayer.Name
welcometext.TextColor3 = Color3.new(1, 0, 0)
welcometext.TextSize = 14

TT.Name = "TT"
TT.Parent = F1
TT.Active = true
TT.BackgroundColor3 = Color3.new(1, 1, 1)
TT.BackgroundTransparency = 1
TT.Position = UDim2.new(0, 0, -0.196280196, 0)
TT.Size = UDim2.new(0, 336, 0, 37)
TT.Image = "rbxassetid://2851928141"
TT.ImageColor3 = Color3.new(1, 0, 0)
TT.ScaleType = Enum.ScaleType.Slice
TT.SliceCenter = Rect.new(8, 8, 8, 8)

T.Name = "T"
T.Parent = TT
T.BackgroundColor3 = Color3.new(0, 0, 0)
T.BackgroundTransparency = 1
T.Position = UDim2.new(0.0074471971, 2, 0.0644993111, 0)
T.Size = UDim2.new(0, 329, 0, 31)
T.Image = "rbxassetid://2851928141"
T.ImageColor3 = Color3.new(0, 0, 0)
T.ScaleType = Enum.ScaleType.Slice
T.SliceCenter = Rect.new(8, 8, 8, 8)

Tx.Name = "Tx"
Tx.Parent = T
Tx.BackgroundColor3 = Color3.new(1, 1, 1)
Tx.BackgroundTransparency = 1
Tx.Position = UDim2.new(0.0213771835, 0, -0.0645161271, 0)
Tx.Size = UDim2.new(0, 243, 0, 35)
Tx.Font = Enum.Font.Code
Tx.Text = "Project Ghoul"
Tx.TextColor3 = Color3.new(1, 0, 0)
Tx.TextSize = 20
Tx.TextStrokeColor3 = Color3.new(1, 1, 1)
Tx.TextWrapped = true

Txx.Name = "Txx"
Txx.Parent = T
Txx.BackgroundColor3 = Color3.new(1, 1, 1)
Txx.BackgroundTransparency = 1
Txx.Position = UDim2.new(0.610077798, 0, -0.0645161271, 0)
Txx.Size = UDim2.new(0, 106, 0, 35)
Txx.Font = Enum.Font.Code
Txx.Text = "| v1.6"
Txx.TextColor3 = Color3.new(1, 0, 0)
Txx.TextSize = 20
Txx.TextStrokeColor3 = Color3.new(1, 1, 1)
Txx.TextWrapped = true

ActiveFarming.Name = "ActiveFarming"
ActiveFarming.Parent = ProjectGhoul
ActiveFarming.BackgroundColor3 = Color3.new(0, 0, 0)
ActiveFarming.BackgroundTransparency = 1
ActiveFarming.Position = UDim2.new(0.0160000008, 0, 0.800000012, 0)
ActiveFarming.Size = UDim2.new(0, 339, 0, 50)
ActiveFarming.Visible = false
ActiveFarming.ZIndex = 0
ActiveFarming.Image = "rbxassetid://2790389767"
ActiveFarming.ImageColor3 = Color3.new(0, 0, 0)
ActiveFarming.ScaleType = Enum.ScaleType.Slice
ActiveFarming.SliceCenter = Rect.new(8, 8, 248, 248)
ActiveFarming.Draggable = true
ActiveFarming.Selectable = true

borderPixel.Name = "borderPixel"
borderPixel.Parent = ActiveFarming
borderPixel.AnchorPoint = Vector2.new(0.5, 0.5)
borderPixel.BackgroundColor3 = Color3.new(0, 0, 0)
borderPixel.BackgroundTransparency = 1
borderPixel.Position = UDim2.new(0.5, 0, 0.5, 0)
borderPixel.Size = UDim2.new(1, 8, 1, 8)
borderPixel.ZIndex = -1
borderPixel.Image = "rbxassetid://2790389767"
borderPixel.ImageColor3 = Color3.new(1, 0, 0)
borderPixel.ScaleType = Enum.ScaleType.Slice
borderPixel.SliceCenter = Rect.new(8, 8, 248, 248)

Frame.Parent = ActiveFarming
Frame.BackgroundColor3 = Color3.new(1, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.489675522, 0, -0.0799999982, 0)
Frame.Size = UDim2.new(0, 6, 0, 58)

TextLabel.Parent = ActiveFarming
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.525073767, 0, 0.100000001, 0)
TextLabel.Size = UDim2.new(0, 161, 0, 17)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "RC: 0"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 18

TextLabel_2.Parent = ActiveFarming
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.525073767, 0, 0.560000002, 0)
TextLabel_2.Size = UDim2.new(0, 161, 0, 17)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "YEN: 0"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 18

TextButton.Name = "TextButton"
TextButton.Parent = ActiveFarming
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BackgroundTransparency = 1
TextButton.Position = UDim2.new(0.0299999993, 0, 0.211999997, 0)
TextButton.Size = UDim2.new(0, 144, 0, 27)
TextButton.ZIndex = 2
TextButton.Image = "rbxassetid://2790390993"
TextButton.ImageColor3 = Color3.new(0, 0, 0)
TextButton.ScaleType = Enum.ScaleType.Slice
TextButton.SliceCenter = Rect.new(16, 16, 240, 240)

TextLabel_3.Parent = TextButton
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(1, 0, 0.899999976, 0)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Stop farming"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 20

borderPixel_2.Name = "borderPixel"
borderPixel_2.Parent = TextButton
borderPixel_2.AnchorPoint = Vector2.new(0.5, 0.5)
borderPixel_2.BackgroundColor3 = Color3.new(0, 0, 0)
borderPixel_2.BackgroundTransparency = 1
borderPixel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
borderPixel_2.Size = UDim2.new(1, 4, 1, 4)
borderPixel_2.Image = "rbxassetid://2790390993"
borderPixel_2.ImageColor3 = Color3.new(1, 0, 0)
borderPixel_2.ScaleType = Enum.ScaleType.Slice
borderPixel_2.SliceCenter = Rect.new(16, 16, 240, 240)

S1.Name = "S1"
S1.Parent = ProjectGhoul
S1.Active = true
S1.BackgroundColor3 = Color3.new(1, 1, 1)
S1.BackgroundTransparency = 1
S1.Position = UDim2.new(0.416780055, 0, 0.413857669, 0)
S1.Size = UDim2.new(0, 338, 0, 186)
S1.Visible = false
S1.Image = "rbxassetid://2851928141"
S1.ImageColor3 = Color3.new(1, 0, 0)
S1.ScaleType = Enum.ScaleType.Slice
S1.SliceCenter = Rect.new(8, 8, 8, 8)
S1.Draggable = true

S2.Name = "S2"
S2.Parent = S1
S2.BackgroundColor3 = Color3.new(0, 0, 0)
S2.BackgroundTransparency = 1
S2.Position = UDim2.new(0.0103617106, 2, 0.00397893414, 0)
S2.Size = UDim2.new(0, 330, 0, 180)
S2.Image = "rbxassetid://2851928141"
S2.ImageColor3 = Color3.new(0, 0, 0)
S2.ScaleType = Enum.ScaleType.Slice
S2.SliceCenter = Rect.new(8, 8, 8, 8)

S3.Name = "S3"
S3.Parent = S2
S3.BackgroundColor3 = Color3.new(1, 1, 1)
S3.BackgroundTransparency = 1
S3.Size = UDim2.new(0, 100, 0, 100)

LoadValues.Name = "LoadValues"
LoadValues.Parent = S3
LoadValues.BackgroundColor3 = Color3.new(0, 0, 0)
LoadValues.BorderColor3 = Color3.new(1, 0, 0)
LoadValues.Position = UDim2.new(2.25, 0, 0.120999992, 0)
LoadValues.Size = UDim2.new(0, 94, 0, 30)
LoadValues.Font = Enum.Font.GothamSemibold
LoadValues.Text = "LoadValues"
LoadValues.TextColor3 = Color3.new(1, 0, 0)
LoadValues.TextSize = 14

Username.Name = "Username"
Username.Parent = S3
Username.BackgroundColor3 = Color3.new(0, 0, 0)
Username.BorderColor3 = Color3.new(1, 0, 0)
Username.Position = UDim2.new(0.119999997, 0, 0.119999997, 0)
Username.Size = UDim2.new(0, 197, 0, 30)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "Username"
Username.Text = ""
Username.TextColor3 = Color3.new(1, 1, 1)
Username.TextSize = 14

Name.Name = "Name"
Name.Parent = S3
Name.BackgroundColor3 = Color3.new(0, 0, 0)
Name.BackgroundTransparency = 1
Name.BorderColor3 = Color3.new(1, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(1.15999997, 0, 0.569999993, 0)
Name.Size = UDim2.new(0, 94, 0, 30)
Name.Font = Enum.Font.SourceSans
Name.Text = "Name: N/A"
Name.TextColor3 = Color3.new(1, 0, 0)
Name.TextSize = 16

Nickname.Name = "Nickname"
Nickname.Parent = S3
Nickname.BackgroundColor3 = Color3.new(0, 0, 0)
Nickname.BackgroundTransparency = 1
Nickname.BorderColor3 = Color3.new(1, 0, 0)
Nickname.BorderSizePixel = 0
Nickname.Position = UDim2.new(1.17999995, 0, 0.400000006, 0)
Nickname.Size = UDim2.new(0, 94, 0, 30)
Nickname.Font = Enum.Font.SourceSans
Nickname.Text = "Nickname: N/A"
Nickname.TextColor3 = Color3.new(1, 0, 0)
Nickname.TextSize = 16

Level.Name = "Level"
Level.Parent = S3
Level.BackgroundColor3 = Color3.new(0, 0, 0)
Level.BackgroundTransparency = 1
Level.BorderColor3 = Color3.new(1, 0, 0)
Level.BorderSizePixel = 0
Level.Position = UDim2.new(1.90999985, 0, 0.75, 0)
Level.Size = UDim2.new(0, 94, 0, 30)
Level.Font = Enum.Font.SourceSans
Level.Text = "Level: N/A"
Level.TextColor3 = Color3.new(1, 0, 0)
Level.TextSize = 16

Physical.Name = "Physical"
Physical.Parent = S3
Physical.BackgroundColor3 = Color3.new(0, 0, 0)
Physical.BackgroundTransparency = 1
Physical.BorderColor3 = Color3.new(1, 0, 0)
Physical.BorderSizePixel = 0
Physical.Position = UDim2.new(1.90999985, 0, 1.12000012, 0)
Physical.Size = UDim2.new(0, 94, 0, 30)
Physical.Font = Enum.Font.SourceSans
Physical.Text = "Physical: N/A"
Physical.TextColor3 = Color3.new(1, 0, 0)
Physical.TextSize = 16

Durability.Name = "Durability"
Durability.Parent = S3
Durability.BackgroundColor3 = Color3.new(0, 0, 0)
Durability.BackgroundTransparency = 1
Durability.BorderColor3 = Color3.new(1, 0, 0)
Durability.BorderSizePixel = 0
Durability.Position = UDim2.new(1.91000009, 0, 0.950000048, 0)
Durability.Size = UDim2.new(0, 94, 0, 30)
Durability.Font = Enum.Font.SourceSans
Durability.Text = "Durability: N/A"
Durability.TextColor3 = Color3.new(1, 0, 0)
Durability.TextSize = 16

Kagune.Name = "Kagune"
Kagune.Parent = S3
Kagune.BackgroundColor3 = Color3.new(0, 0, 0)
Kagune.BackgroundTransparency = 1
Kagune.BorderColor3 = Color3.new(1, 0, 0)
Kagune.BorderSizePixel = 0
Kagune.Position = UDim2.new(0.239999905, 0, 0.75000006, 0)
Kagune.Size = UDim2.new(0, 94, 0, 30)
Kagune.Font = Enum.Font.SourceSans
Kagune.Text = "Kagune: N/A"
Kagune.TextColor3 = Color3.new(1, 0, 0)
Kagune.TextSize = 16

Exp.Name = "Exp"
Exp.Parent = S3
Exp.BackgroundColor3 = Color3.new(0, 0, 0)
Exp.BackgroundTransparency = 1
Exp.BorderColor3 = Color3.new(1, 0, 0)
Exp.BorderSizePixel = 0
Exp.Position = UDim2.new(1.91000009, 0, 1.49000013, 0)
Exp.Size = UDim2.new(0, 94, 0, 30)
Exp.Font = Enum.Font.SourceSans
Exp.Text = "Exp: N/A"
Exp.TextColor3 = Color3.new(1, 0, 0)
Exp.TextSize = 16

Rep.Name = "Rep"
Rep.Parent = S3
Rep.BackgroundColor3 = Color3.new(0, 0, 0)
Rep.BackgroundTransparency = 1
Rep.BorderColor3 = Color3.new(1, 0, 0)
Rep.BorderSizePixel = 0
Rep.Position = UDim2.new(0.23999989, 0, 1.29999995, 0)
Rep.Size = UDim2.new(0, 94, 0, 30)
Rep.Font = Enum.Font.SourceSans
Rep.Text = "Rep: N/A"
Rep.TextColor3 = Color3.new(1, 0, 0)
Rep.TextSize = 16

Yen.Name = "Yen"
Yen.Parent = S3
Yen.BackgroundColor3 = Color3.new(0, 0, 0)
Yen.BackgroundTransparency = 1
Yen.BorderColor3 = Color3.new(1, 0, 0)
Yen.BorderSizePixel = 0
Yen.Position = UDim2.new(0.23999995, 0, 1.50000012, 0)
Yen.Size = UDim2.new(0, 94, 0, 30)
Yen.Font = Enum.Font.SourceSans
Yen.Text = "Yen: N/A"
Yen.TextColor3 = Color3.new(1, 0, 0)
Yen.TextSize = 16

Rc.Name = "Rc"
Rc.Parent = S3
Rc.BackgroundColor3 = Color3.new(0, 0, 0)
Rc.BackgroundTransparency = 1
Rc.BorderColor3 = Color3.new(1, 0, 0)
Rc.BorderSizePixel = 0
Rc.Position = UDim2.new(0.219999894, 0, 1.12000012, 0)
Rc.Size = UDim2.new(0, 94, 0, 30)
Rc.Font = Enum.Font.SourceSans
Rc.Text = "RC: N/A"
Rc.TextColor3 = Color3.new(1, 0, 0)
Rc.TextSize = 16

Weapon.Name = "Weapon"
Weapon.Parent = S3
Weapon.BackgroundColor3 = Color3.new(0, 0, 0)
Weapon.BackgroundTransparency = 1
Weapon.BorderColor3 = Color3.new(1, 0, 0)
Weapon.BorderSizePixel = 0
Weapon.Position = UDim2.new(0.219999954, 0, 0.950000107, 0)
Weapon.Size = UDim2.new(0, 94, 0, 30)
Weapon.Font = Enum.Font.SourceSans
Weapon.Text = "Weapon: N/A"
Weapon.TextColor3 = Color3.new(1, 0, 0)
Weapon.TextSize = 16

Speed.Name = "Speed"
Speed.Parent = S3
Speed.BackgroundColor3 = Color3.new(0, 0, 0)
Speed.BackgroundTransparency = 1
Speed.BorderColor3 = Color3.new(1, 0, 0)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(1.90999985, 0, 1.30000007, 0)
Speed.Size = UDim2.new(0, 94, 0, 30)
Speed.Font = Enum.Font.SourceSans
Speed.Text = "Speed: N/A"
Speed.TextColor3 = Color3.new(1, 0, 0)
Speed.TextSize = 16

SC.Name = "SC"
SC.Parent = S1
SC.Active = true
SC.BackgroundColor3 = Color3.new(1, 1, 1)
SC.BackgroundTransparency = 1
SC.Position = UDim2.new(0, 0, -0.196280196, 0)
SC.Size = UDim2.new(0, 336, 0, 37)
SC.Image = "rbxassetid://2851928141"
SC.ImageColor3 = Color3.new(1, 0, 0)
SC.ScaleType = Enum.ScaleType.Slice
SC.SliceCenter = Rect.new(8, 8, 8, 8)

BD.Name = "BD"
BD.Parent = SC
BD.BackgroundColor3 = Color3.new(0, 0, 0)
BD.BackgroundTransparency = 1
BD.Position = UDim2.new(0.0074471971, 2, 0.0644993111, 0)
BD.Size = UDim2.new(0, 329, 0, 31)
BD.Image = "rbxassetid://2851928141"
BD.ImageColor3 = Color3.new(0, 0, 0)
BD.ScaleType = Enum.ScaleType.Slice
BD.SliceCenter = Rect.new(8, 8, 8, 8)

Txx_2.Name = "Txx"
Txx_2.Parent = BD
Txx_2.BackgroundColor3 = Color3.new(1, 1, 1)
Txx_2.BackgroundTransparency = 1
Txx_2.Position = UDim2.new(0.00314006396, 0, -0.0967741907, 0)
Txx_2.Size = UDim2.new(0, 296, 0, 35)
Txx_2.Font = Enum.Font.Code
Txx_2.Text = "PG's Ro-Ghoul Stats Checker"
Txx_2.TextColor3 = Color3.new(1, 0, 0)
Txx_2.TextSize = 20
Txx_2.TextStrokeColor3 = Color3.new(1, 1, 1)
Txx_2.TextWrapped = true

Close.Name = "Close"
Close.Parent = SC
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BorderColor3 = Color3.new(1, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.872727334, 0, 0.0644993111, 0)
Close.Size = UDim2.new(0, 31, 0, 29)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 20
Close.TextStrokeColor3 = Color3.new(1, 1, 1)
Close.TextWrapped = true

--Scripts:

Discord.MouseButton1Click:connect(function()
    if Clipboard ~= nil then
      copy = Clipboard.set
    elseif Synapse ~= nil then
      copy = function(str)
      Synapse:Copy(str)
    end
    elseif setclipboard ~= nil then
    copy = setclipboard
    end
    copy(discord)
  copied.Visible = true
wait(0.5)
copied.Visible = false
end)

getkeybutton.MouseButton1Click:connect(function()
    if Clipboard ~= nil then
      copy = Clipboard.set
    elseif Synapse ~= nil then
      copy = function(str)
      Synapse:Copy(str)
    end
    elseif setclipboard ~= nil then
    copy = setclipboard
    end
    copy(dehkey)
  link.Visible = true
wait(0.5)
link.Visible = false
end)

local toggle = false -- false is Off; true is On
 
 
function onKeyPress(actionName, userInputState, inputObject)
    if userInputState == Enum.UserInputState.Begin then
        print("P was pressed")
        if toggle == false then
             toggle = true
              F1.Visible = true
TT.Visible = true
        else
            toggle = false
            F1.Visible = false
TT.Visible = false
        end
    end
end
 
game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.P)
 
 
 
l1.MouseButton1Click:connect(function()
    credit.Visible = false
    functions.Visible = true
    farm.Visible = false
    tab1.Visible = false
    tab2.Visible = true
   
end)
 
l2.MouseButton1Click:connect(function()
    credit.Visible = false
    functions.Visible = false
    farm.Visible = true
    tab1.Visible = false
    tab2.Visible = false
    tab3.Visible = true
end)
 
l3.MouseButton1Click:connect(function()
    credit.Visible = true
    functions.Visible = false
    farm.Visible = false
    tab1.Visible = true
    tab2.Visible = false
    tab3.Visible = false
end)
 
r1.MouseButton1Click:connect(function()
    credit.Visible = false
    functions.Visible = false
    farm.Visible = true
    tab1.Visible = false
    tab2.Visible = false
    tab3.Visible = true
end)
 
r3.MouseButton1Click:connect(function()
    credit.Visible = false
    functions.Visible = true
    farm.Visible = false
    tab1.Visible = false
    tab2.Visible = true
    tab3.Visible = false
end)
 
r2.MouseButton1Click:connect(function()
    credit.Visible = true
    functions.Visible = false
    farm.Visible = false
    tab1.Visible = true
    tab2.Visible = false
    tab3.Visible = false
end)
 
     
--Login

local loggedin = false

loginargs = codes

LoginButton.MouseButton1Click:Connect(function()
	local key = KeyBox.Text
	local found = false
	for i = 1, #loginargs + 1 do
		if found == false then
			if i <= #loginargs then
				if loginargs[i] == key then
					found = true
				end
			end
			if i > #loginargs then
				LoginButton.BackgroundColor3 = Color3.fromRGB(0,0,0)
				wait(3)
				LoginButton.BackgroundColor3 = Color3.fromRGB(50,50,50)
				break
			end
		else
			loggedin = true
			login.Visible = false
			credit.Visible = true
			tab1.Visible = true
			break
		end
	end
end)

-- Main
local index_list = {}
local tweenservice = game:GetService("TweenService")
local workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local client = Players.LocalPlayer
local plrrem = client.Character:FindFirstChild("Remotes")
local npcs = workspace.NPCSpawns:GetChildren()
local clr = client.Character:FindFirstChild("Humanoid")
local selected_key = 1
local pressrem = plrrem.KeyEvent
local tp_offset = Vector3.new(1, 0, 0)
local mouse = client:GetMouse()
    client.CameraMode = Enum.CameraMode.Classic
    client.CameraMinZoomDistance = 20
 
 
local npc_table = {
    [1] = "Low Rank Aogiri Member",
    [2] = "Mid Rank Aogiri Member",
    [3] = "High Rank Aogiri Member",
    [4] = "Rank 1 Investigator",
    [5] = "Rank 2 Investigator",
    [6] = "First Class Investigator",
    [7] = "Human",
    [8] = "Athlete",
 
 
}
 
local key_list = {
    [5] = "Mouse1",
}
 
local kagune_list = {
    ["1"] = "One",
    ["2"] = "Two",
    ["3"] = "Three",
    ["4"] = "Four",
    ["5"] = "Five",
    ["6"] = "Six",
}

 
local toggles = {
    ["autofarm"] = true,
 
}
 
function grabKey()
local key
    for i,v in next,(debug.getregistry()) do
        if type(v) == "function" then
            for i,v in next, debug.getupvalues(v) do
                if tostring(i) == "HRPPosition1" then
                    key = v
                end
            end
        end
    end
    return key
end
 
remotepw = grabKey()
 
 
function checkOff(remotes)
    if remotes:FindFirstChild("GetPos") and remotes:FindFirstChild("StatUpdate") and remotes:FindFirstChild("UpdateAll") then
        --remotes:FindFirstChild("GetPos").RobloxLocked = true
        remotes:FindFirstChild("StatUpdate").RobloxLocked = true
        --remotes:FindFirstChild("UpdateAll").RobloxLocked = true
    else
        warn("checks are off")
    end
end
 
 
function getNPC(indexes)
    local npc_grab = {}
    for x,index in next, (indexes) do
        for i,v in next, (npcs) do
            if v:FindFirstChild(npc_table[index]) then
                table.insert(npc_grab, v:FindFirstChild(npc_table[index]))
                print("found " .. i)
            else
                warn("not found " .. i)
            end
        end
    end
    return npc_grab
end
 
corpses = {
	["Low Rank Aogiri Member"] = "Low Rank Aogiri Member Corpse",
	["Mid Rank Aogiri Member"] = "Mid Rank Aogiri Member Corpse",
	["High Rank Aogiri Member"] = "High Rank Aogiri Member Corpse",
	["Rank 1 Investigator"] = "Rank 1 Investigator Corpse",
	["Rank 2 Investigator"] = "Rank 2 Investigator Corpse",
	["First Class Investigator"] = "First Class Investigator Corpse",
	["Human"] = "Human Corpse",
	["Athlete"] = "Athlete Corpse"
} 

function eatCorpse(model)
    client.CameraMode = Enum.CameraMode.LockFirstPerson
    wait(1.5)
pcall(function()
	local corpse = model:FindFirstChild(corpses[model.Name])
	local cp = corpse:FindFirstChild("ClickPart")
	local cd
	for i, v in pairs(cp:GetChildren()) do 
		if v:IsA("ClickDetector") then 
			cd = v
		end
	end
    fireclickdetector(cd)
end)
    wait(1)
    client.CameraMode = Enum.CameraMode.Classic
    client.CameraMinZoomDistance = 20
end

function changeCamera(npc)
	game.Workspace.Camera.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, npc.Position)
end

function pressKey(key)
    pressrem:FireServer(remotepw, key_list[key], "Down", mouse.Hit)
end

function pressMouse1()
    local arguments = {
		remotepw;
		"Mouse1";
		"Down";
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	}
	local event = game.Players.LocalPlayer.Character.Remotes.KeyEvent
	event:FireServer(unpack(arguments))
end
 

function tweenMove(model, target)

local CFrameValue = Instance.new("CFrameValue")
CFrameValue.Value = model:GetPrimaryPartCFrame()

CFrameValue:GetPropertyChangedSignal("Value"):connect(function()
	pcall(function()
		model:SetPrimaryPartCFrame(CFrameValue.Value)
	end)
end)

local Info = TweenInfo.new(

((model:GetPrimaryPartCFrame().Position - target.Position).magnitude)/ 250, -- Length

Enum.EasingStyle.Linear, -- Easing Style

Enum.EasingDirection.Out, -- Easing Direction

0, -- Times repeated

false, -- Reverse

0 -- Delay

)
local tween = tweenservice:Create(CFrameValue, Info, {Value = target.CFrame})
 
tween:Play()
end

 
 
function checkTablePosition(number)
	local tab = index_list
	for i = 1, #tab + 1 do
		if i <= #tab then
			if number == tab[i] then
				return i
			end
		else
			return(nil)
		end
	end
end 

local lowselec = false
low.MouseButton1Click:connect(function()
	if lowselec == false then
		table.insert(index_list, 1)
		low.TextColor3 = Color3.fromRGB(0,255,0)
		lowselec = true
	else
		local tabpos = checkTablePosition(1)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		low.TextColor3 = Color3.fromRGB(255,0,0)
		lowselec = false
	end
end)

local midselec = false
mid.MouseButton1Click:connect(function()
	if midselec == false then
		table.insert(index_list, 2)
		mid.TextColor3 = Color3.fromRGB(0,255,0)
		midselec = true
	else
		local tabpos = checkTablePosition(2)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		mid.TextColor3 = Color3.fromRGB(255,0,0)
		midselec = false
	end
end)

local highselec = false
high.MouseButton1Click:connect(function()
	if highselec == false then
		table.insert(index_list, 3)
		high.TextColor3 = Color3.fromRGB(0,255,0)
		highselec = true
	else
		local tabpos = checkTablePosition(3)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		high.TextColor3 = Color3.fromRGB(255,0,0)
		highselec = false
	end
end)

local ra1selec = false
ra1.MouseButton1Click:connect(function()
	if ra1selec == false then
		table.insert(index_list, 4)
		ra1.TextColor3 = Color3.fromRGB(0,255,0)
		ra1selec = true
	else
		local tabpos = checkTablePosition(4)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		ra1.TextColor3 = Color3.fromRGB(255,0,0)
		ra1selec = false
	end
end)

local ra2selec = false
ra2.MouseButton1Click:connect(function()
	if ra2selec == false then
		table.insert(index_list, 5)
		ra2.TextColor3 = Color3.fromRGB(0,255,0)
		ra2selec = true
	else
		local tabpos = checkTablePosition(5)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		ra2.TextColor3 = Color3.fromRGB(255,0,0)
		ra2selec = false
	end
end)

local firstselec = false
first.MouseButton1Click:connect(function()
	if firstselec == false then
		table.insert(index_list, 6)
		first.TextColor3 = Color3.fromRGB(0,255,0)
		firstselec = true
	else
		local tabpos = checkTablePosition(6)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		first.TextColor3 = Color3.fromRGB(255,0,0)
		firstselec = false
	end
end)

local humanselec = false
hooman.MouseButton1Click:connect(function()
	if humanselec == false then
		table.insert(index_list, 7)
		hooman.TextColor3 = Color3.fromRGB(0,255,0)
		humanselec = true
	else
		local tabpos = checkTablePosition(7)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		hooman.TextColor3 = Color3.fromRGB(255,0,0)
		humanselec = false
	end
end)

local runselec = false
run.MouseButton1Click:connect(function()
	if runselec == false then
		table.insert(index_list, 8)
		run.TextColor3 = Color3.fromRGB(0,255,0)
		runselec = true
	else
		local tabpos = checkTablePosition(8)
		if tabpos ~= nil then
			table.remove(index_list, tabpos)
		end
		run.TextColor3 = Color3.fromRGB(255,0,0)
		runselec = false
	end
end)

function transform()
	local arguments = {
		remotepw;
		"One";
		"Down";
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	}
	local event = game.Players.LocalPlayer.Character.Remotes.KeyEvent
	event:FireServer(unpack(arguments))
end

function resetButtons()
	first.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	high.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	hooman.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	low.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	mid.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	ra1.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	ra2.TextColor3 = Color3.fromRGB(255,0,0)
	wait()
	run.TextColor3 = Color3.fromRGB(255,0,0)

	for i = 1, #index_list do
		table.remove(index_list, i)
	end

	firstselec = false
	highselec = false
	humanselec = false
	lowselec = false
	midselec = false
	ra1selec = false
	ra2selec = false
	runselec = false
end

function etoCheck()
	npcspawns = workspace:FindFirstChild("NPCSpawns")
	bs1 = npcspawns:FindFirstChild("BossSpawns")
	bs1.Name = "BossSpawns1"
	bs1.ChildAdded:Connect(function()
		print("Eto Spawned")
	end)
	wait(0.1)
	bs2 = npcspawns:FindFirstChild("BossSpawns")
	bs2.Name = "BossSpawns2"
	bs2.ChildAdded:Connect(function()
		print("Eto Spawned")
	end)
	wait(0.1)
	bs3 = npcspawns:FindFirstChild("BossSpawns")
	bs3.Name = "BossSpawns3"
	bs3.ChildAdded:Connect(function()
		print("Eto Spawned")
	end)
	wait(0.1)
	bs4 = npcspawns:FindFirstChild("BossSpawns")
	bs4.Name = "BossSpawns4"
	bs4.ChildAdded:Connect(function()
		print("Eto Spawned")
	end)
end
etoCheck()

TextButton.MouseButton1Click:Connect(function()
	ActiveFarming.Visible = false
	resetButtons()
	F1.Visible = true
	toggles["autofarm"] = false
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)


startfarming.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	toggles["autofarm"] = true
	checkOff(plrrem)
	wait()
			
	workspace.ChildAdded:Connect(function(child)
		if workspace:FindFirstChild(game.Players.LocalPlayer.Name) == child then
		
			wait(2)
			
			local char = client.Character
			char.PrimaryPart = char.HumanoidRootPart
			
			if toggles["autofarm"] then
				ActiveFarming.Visible = true
				F1.Visible = false
				
				local VirtualUser=game:service'VirtualUser'
				game:service'Players'.LocalPlayer.Idled:connect(function()
					VirtualUser:CaptureController()
					VirtualUser:ClickButton2(Vector2.new())
				end)
				transform()
				workspace[game.Players.LocalPlayer.Name].PrimaryPart = workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
			end
			while toggles["autofarm"] do
				for i,o in next,getNPC(index_list) do
					char.PrimaryPart = char.HumanoidRootPart
					rc = game.Players.LocalPlayer.PlayerFolder.Stats.RC.Value
					yen = game.Players.LocalPlayer.PlayerFolder.Stats.Yen.Value
					while o:FindFirstChild("HumanoidRootPart") do
						if toggles["autofarm"] == false then
							break
						end
						tweenMove(char, o:FindFirstChild("HumanoidRootPart"))
						pressMouse1()
						wait(0.4)
						if o:FindFirstChild("HumanoidRootPart") ~= nil then 
						changeCamera(o.HumanoidRootPart)
						else
						changeCamera(o:FindFirstChild(corpses[o.Name]).HumanoidRootPart)
						
					end
				wait()
			end
		wait()
eatCorpse(o)
end
wait()
end
end
end)
end) 

inf.MouseButton1Click:connect(function()
    game.Players.LocalPlayer.PlayerFolder.Stats.Speed.Value = 200
game.Players.LocalPlayer.PlayerFolder.Stats.Physical.Value = 100
end)
 
speed.MouseButton1Down:connect(function()
    down = false
velocity = Instance.new("BodyVelocity")
velocity.maxForce = Vector3.new(100000, 0, 100000)
---vv Use that to change the speed v
local speed = 150
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(100000, 0, 100000)
 
local hum = game.Players.LocalPlayer.Character.Humanoid
 
function onButton1Down(mouse)
down = true
velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
velocity.velocity = (hum.MoveDirection) * speed
gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
while down do
if not down then break end
velocity.velocity = (hum.MoveDirection) * speed
local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
wait(0.1)
end
end
 
function onButton1Up(mouse)
velocity.Parent = nil
gyro.Parent = nil
down = false
end
--To Change the key in those 2 lines, replace the "q" with your desired key
function onSelected(mouse)
mouse.KeyDown:connect(function(k) if k:lower()=="q"then onButton1Down(mouse)end end)
mouse.KeyUp:connect(function(k) if k:lower()=="q"then onButton1Up(mouse)end end)
end
 
onSelected(game.Players.LocalPlayer:GetMouse())
end)
 
auto.MouseButton1Click:connect(function()
local Players = game:GetService("Players")
local client = Players.LocalPlayer
local plrrem = client.Character:FindFirstChild("Remotes")
local plrr = client.Character:FindFirstChild("Humanoid")
local selected_key = 22
local selected_key1 = 32
local selected_key2 = 42
local selected_key3 = 52
local pressrem = plrrem.KeyEvent
local mouse = client:GetMouse()

local key_list = {
[1] = "C",
[2] = "E",
[3] = "F",
[4] = "R",
[5] = "Mouse1",
}

function grabKey()
local key
    for i,v in next,(debug.getregistry()) do
        if type(v) == "function" then
            for i,v in next, debug.getupvalues(v) do
                if tostring(i) == "HRPPosition1" then
                    key = v
                end
            end
        end
    end
    return key
end
 
remotepw = grabKey()
 
 
function checkOff(remotes)
    if remotes:FindFirstChild("GetPos") and remotes:FindFirstChild("StatUpdate") and remotes:FindFirstChild("UpdateAll") then
        --remotes:FindFirstChild("GetPos").RobloxLocked = true
        remotes:FindFirstChild("StatUpdate").RobloxLocked = true
        --remotes:FindFirstChild("UpdateAll").RobloxLocked = true
    else
        warn("checks are off")
    end
end
 

function pressKey(key)
    pressrem:FireServer(remotepw, key_list[key], "Down", mouse.Hit)
end
end)
 
train.MouseButton1Click:connect(function()
    local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, workspace.TrainerPlaces.Ghoul.Position)
local points = path:GetWaypoints()
           
for _,v in pairs(points) do
rs:wait()
                   
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
wait()
 
end)
 
quest.MouseButton1Click:connect(function()
    local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, game.Workspace.Anteiku.Yoshimura:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
           
for _,v in pairs(points) do
rs:wait()
                   
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
wait()
    local Event = game:GetService("ReplicatedStorage").Remotes.Yoshimura.Task
Event:InvokeServer()
end)
 
rep.MouseButton1Click:connect(function()
    local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, game.Workspace.Anteiku.Yoshimura:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
           
for _,v in pairs(points) do
rs:wait()
                   
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
wait()
local Event = game:GetService("ReplicatedStorage").Remotes.ReputationCashOut
Event:InvokeServer()
end)

ps.MouseButton1Click:Connect(function()
	S1.Visible = true
end)

-- Scripts:

local function split(pString, pPattern) local Table = {} local fpat = "(.-)" .. pPattern local last_end = 1 local s, e, cap = pString:find(fpat, 1) while s do if s ~= 1 or cap ~= "" then table.insert(Table,cap) end last_end = e+1 s, e, cap = pString:find(fpat, last_end) end if last_end <= #pString then cap = pString:sub(last_end) table.insert(Table, cap) end return Table end

local playercrnt = game:GetService("Players").LocalPlayer
local Mouse = playercrnt:GetMouse()

local function getstats(playername)
	local plrfolder = game.Players[playername].PlayerFolder
	local durability = tostring(plrfolder.Stats.Durability.Value)
	local level = tostring(plrfolder.Stats.Level.Value)
	local physical = tostring(plrfolder.Stats.Physical.Value)
	local rc = tostring(plrfolder.Stats.RC.Value)
	local speed = tostring(plrfolder.Stats.Speed.Value)
	local damage = tostring(plrfolder.Stats.Weapon.Value)
	local weapon = tostring(plrfolder.Customization.Weapon.Value)
	local nickname = tostring(plrfolder.Customization.Nickname.Value)
	local exp = tostring(plrfolder.Stats.Experience.Value)
	local yen = tostring(plrfolder.Stats.Yen.Value)
	local rep = tostring(plrfolder.Stats.Reputation.Value)
	local username = game.Players[playername].Name
    Durability.Text = ("Durability: " .. durability)
    Level.Text = ("Level: " .. level)
    Physical.Text = ("Physical: " .. physical)
    Rc.Text = ("RC: " .. rc)
    Speed.Text = ("Speed: " .. speed)
    Kagune.Text = ("Kagune: " .. damage)
    Weapon.Text = ("Weapon: " .. weapon)
    Nickname.Text = ("Nickname: " .. nickname)
    Yen.Text = ("Yen: " .. yen)
    Rep.Text = ("Rep: " .. rep)
    Exp.Text =("EXP: " .. exp)
    Name.Text = ("Username: " .. username)
end
---------------------------------------------------
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
local nonparent = Mouse.Target
local idk = nonparent.Parent.Parent.Name
local idk1 = nonparent.Parent.Name
if idk.Name == "Workspace" then getstats(idk1) else getstats(idk)
end
end)
-----------------------------------------------------
LoadValues.MouseButton1Click:connect(function()
	local playernametxt = Username.Text
	getstats(playernametxt)
end)
-----------------------------------------------------
for _,v in pairs(game.Players:GetChildren()) do
      
	v.Chatted:connect(function(msg)
	 if string.match(msg, "getstats!") then
	 if v.Name == game.Players.LocalPlayer.Name then
		local username = split(msg, "!")[2]
                local teamvalue = game.Players[username].PlayerFolder.Customization.Team.Value
                local teame = "N/A"
                if teamvalue == "CCG" then
                teame = "Quinque"
                elseif teamvalue == "Ghoul" then
                teame = "Kagune"
                end
		local durability = tostring(game.Players[username].PlayerFolder.Stats.Durability.Value)
                local level = tostring(game.Players[username].PlayerFolder.Stats.Level.Value)
                local physical = tostring(game.Players[username].PlayerFolder.Stats.Physical.Value)
                local rc = tostring(game.Players[username].PlayerFolder.Stats.RC.Value)
                local speed = tostring(game.Players[username].PlayerFolder.Stats.Speed.Value)
                local damage = tostring(game.Players[username].PlayerFolder.Stats.Weapon.Value)
                local weapon = tostring(game.Players[username].PlayerFolder.Customization.Weapon.Value)
                local nickname = tostring(game.Players[username].PlayerFolder.Customization.Nickname.Value)
                local exp = tostring(game.Players[username].PlayerFolder.Stats.Experience.Value)
                local yen = tostring(game.Players[username].PlayerFolder.Stats.Yen.Value)
                local rep = tostring(game.Players[username].PlayerFolder.Stats.Reputation.Value)
                local level = tostring(game.Players[username].PlayerFolder.Stats.Level.Value)
		wait(1)
		game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Level; " .. level .. "." .. "Physical; " .. physical .. "." .. teame .. "; " .. damage .. "." .. "Durability; " .. durability .. "." .. "Speed; " .. speed .. ".", "All")
	     end 
	     end
	end)
end

Close.MouseButton1Click:connect(function()
	S1.Visible = false
end)
-------------- stats checker