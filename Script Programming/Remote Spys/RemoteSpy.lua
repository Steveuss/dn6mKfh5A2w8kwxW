RemoteM = nil
times = 0
times2 = 0
On = true
Ignore = {}
ButtonsTable = {}
ls = nil
--MoveableGui Functions--
MDown = false
Mouse = game.Players.LocalPlayer:GetMouse()
function ConvertNumbers(X, Y)
TX = Mouse.ViewSizeX*X
TY = Mouse.ViewSizeY*Y
return TX, TY
end
function MoveableItem(item)
    item.InputBegan:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            MDown = true
            CX, CY = ConvertNumbers(item.Position.X.Scale, item.Position.Y.Scale)
            item.Position = UDim2.new(0, item.Position.X.Offset+CX, 0, item.Position.Y.Offset+CY)
            StartX = Mouse.X - item.Position.X.Offset
            StartY = Mouse.Y - item.Position.Y.Offset
            while MDown == true do
                item.Position = UDim2.new(0, Mouse.X - StartX, 0, Mouse.Y - StartY)
                wait()
            end
        end
    end)
    item.InputEnded:connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            MDown = false
        end
    end)
end
--End of MoveableGui Functions--

RemoteFolder = Instance.new("Folder")
RemoteFolder.Name = "RemoteHolder"

function AddNewRemote(Remote, Line, scr)
RemoteModel = Instance.new("Model", RemoteFolder)
RemoteModel.Name = Remote.Name
RemoteObject = Instance.new("ObjectValue", RemoteModel)
RemoteObject.Name = "Remote"
RemoteObject.Value = Remote
ScriptObject = Instance.new("ObjectValue", RemoteModel)
ScriptObject.Name = "Script"
if typeof(scr) == "Instance" then
ScriptObject.Value = scr
end
RemoteArgs = Instance.new("StringValue", RemoteModel)
RemoteArgs.Name = "Args"
RemoteArgs.Value = Line
end

RemoteFolder.ChildAdded:connect(function(c)
wait(0.1)
arb(c["Remote"].Value, c["Args"].Value, c["Script"].Value)
end)

function dcp(scr)
par = GetParent(scr)
if par ~= "Object was either removed or something went wrong." then
en = "\n "..par.. " Is the location of the local script."
else
en = par
end
scsr = nil
repeat
wait()
dec = decompile(scr)
until scsr ~= nil or tostring(scsr) ~= "boolean"
if Synapse then
Synapse:Copy(dec..en)
else
setclipboard(dec..en)

end
end

local VRS = Instance.new("ScreenGui", game:GetService("CoreGui"))
VRS.Name = "Victini's RemoteSpy"
VRS.ResetOnSpawn = false
-------
local Holder = Instance.new("ScrollingFrame", VRS)
Holder.Name = "Holder"
Holder.Size = UDim2.new(0, 270, 0, 295)
Holder.BackgroundColor3 = Color3.new(161/255, 1, 248/255)
Holder.BackgroundTransparency = 0.6
Holder.CanvasSize = UDim2.new(0, 0, 20, 99999)
Holder.Position = UDim2.new(0, 0, 0, 25)
MoveableItem(Holder)
--------
Folder = Instance.new("Folder")
Folder.Parent = Holder
Folder.Name = "Buttons and stuff holder"
-------
local Bar = Instance.new("Frame")
Bar.BackgroundColor3 = Color3.new(0, 0, 0)
Bar.Name = "Bar"
Bar.Size = UDim2.new(0, 254, 0, 27)
Bar.Parent = Folder
-------
local Clear = Instance.new("TextButton")
Clear.Active = true
Clear.BackgroundColor3 = Color3.new(0, 0, 0)
Clear.Name = "CLR"
Clear.Position = UDim2.new(0.63, 0, 0, 0)
Clear.Selectable = true
Clear.Size = UDim2.new(0, 39, 0, 27)
Clear.Style = Enum.ButtonStyle.Custom
Clear.Font = Enum.Font.Cartoon
Clear.FontSize = Enum.FontSize.Size14
Clear.Text = "CLR"
Clear.TextColor3 = Color3.new(1, 1, 1)
Clear.TextScaled = true
Clear.TextWrapped = true
Clear.Parent = Folder
Clear.MouseButton1Down:connect(function()
for i = 1, #ButtonsTable do
pcall(function()
ButtonsTable[i]:remove()
end)
end
times = 0
ButtonsTable = {}
end)
-------
local Title = Instance.new("TextLabel")
Title.BackgroundColor3 = Color3.new(0, 0, 0)
Title.Name = "TextHolder"
Title.Position = UDim2.new(0.00545596238, 0, 0, 0)
Title.Size = UDim2.new(0, 165, 0, 27)
Title.Font = Enum.Font.Cartoon
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Victini's RemoteSpy"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextScaled = true
Title.TextWrapped = true
Title.Parent = Folder
-------
local RHR = Instance.new("TextLabel")
RHR.BorderColor3 = Color3.new(0, 0, 0)
RHR.BorderSizePixel = 3
RHR.Name = "Full Remote Holder"
RHR.Position = UDim2.new(0.20265004, 0, 0.345752597, 0)
RHR.Size = UDim2.new(0, 314, 0, 63)
RHR.Font = Enum.Font.Cartoon
RHR.FontSize = Enum.FontSize.Size14
RHR.Text = ""
RHR.TextColor3 = Color3.new(0, 0, 0)
RHR.TextScaled = true
RHR.BackgroundColor3 = Color3.new(161/255, 1, 248/255)
RHR.BackgroundTransparency = 0.6
RHR.Parent = VRS
MoveableItem(RHR)
RHR.Visible = false
-------
local Close = Instance.new("TextButton")
Close.Active = true
Close.Name = "Close"
Close.Position = UDim2.new(0, 0, 1, 0)
Close.Selectable = true
Close.Size = UDim2.new(0, 23, 0, 23)
Close.Style = Enum.ButtonStyle.Custom
Close.Font = Enum.Font.Cartoon
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextWrapped = true
Close.Parent = RHR
Close.MouseButton1Down:connect(function()
RHR.Visible = false
end)
-------
local AddT = Instance.new("TextButton")
AddT.Active = true
AddT.Name = "AddT"
AddT.Position = UDim2.new(0, 24, 1, 0)
AddT.Selectable = true
AddT.Size = UDim2.new(0, 23, 0, 23)
AddT.Style = Enum.ButtonStyle.Custom
AddT.Font = Enum.Font.Cartoon
AddT.FontSize = Enum.FontSize.Size14
AddT.Text = "+"
AddT.TextColor3 = Color3.new(0, 0, 0)
AddT.TextScaled = true
AddT.TextWrapped = true
AddT.Parent = RHR
AddT.MouseButton1Down:connect(function()
table.insert(Ignore, RemoteM)
aib(RemoteM)
end)
-------
local Copy = Instance.new("TextButton")
Copy.Active = true
Copy.Modal = true
Copy.Name = "Copy"
Copy.Position = UDim2.new(0, 48, 1, 0)
Copy.Selectable = true
Copy.Size = UDim2.new(0, 23, 0, 23)
Copy.Style = Enum.ButtonStyle.Custom
Copy.Font = Enum.Font.Cartoon
Copy.FontSize = Enum.FontSize.Size14
Copy.Text = "CPY"
Copy.TextColor3 = Color3.new(0, 0, 0)
Copy.TextScaled = true
Copy.Parent = RHR
Copy.MouseButton1Down:connect(function()
if Synapse then
Synapse:Copy(RHR.Text)
elseif setclipboard then
setclipboard(RHR.Text)
end
end)
-------
local Decom = Instance.new("TextButton")
Decom.Active = true
Decom.Modal = true
Decom.Name = "Decompile"
Decom.Position = UDim2.new(0, 72, 1, 0)
Decom.Selectable = true
Decom.Size = UDim2.new(0, 23, 0, 23)
Decom.Style = Enum.ButtonStyle.Custom
Decom.Font = Enum.Font.Cartoon
Decom.FontSize = Enum.FontSize.Size14
Decom.Text = "DCP"
Decom.TextColor3 = Color3.new(0, 0, 0)
Decom.TextScaled = true
Decom.Parent = RHR
Decom.MouseButton1Down:connect(function()
dcp(ls)
end)
-------
local ONOFF = Instance.new("TextButton")
ONOFF.Active = true
ONOFF.BackgroundColor3 = Color3.new(0, 0, 0)
ONOFF.Name = "ONOFF"
ONOFF.Position = UDim2.new(0.79, 0, 0, 0)
ONOFF.Selectable = true
ONOFF.Size = UDim2.new(0, 39, 0, 27)
ONOFF.Style = Enum.ButtonStyle.Custom
ONOFF.Font = Enum.Font.Cartoon
ONOFF.FontSize = Enum.FontSize.Size14
ONOFF.Text = "ON"
ONOFF.TextColor3 = Color3.new(1, 1, 1)
ONOFF.TextScaled = true
ONOFF.Parent = Folder
ONOFF.MouseButton1Down:connect(function()
if ONOFF.Text == "ON" then
ONOFF.Text = "OFF"
On = false
else
ONOFF.Text = "ON"
On = true
end
end)

function arb(re, arg, lcsr)
local RM = Instance.new("TextButton")
RM.Name = "Button"
RM.Text = re.Name
RM.Size = UDim2.new(0, 270, 0 , 30)
RM.Position = UDim2.new(0, 0, 0, (times * 30) + 25)
RM.Parent = Holder
RM.TextScaled = true
RM.Font = Enum.Font.Cartoon
RM.BackgroundColor3 = Color3.new(0, 0.5, 0.7)
RM.TextColor3 = Color3.new(1, 1, 1)
times = times + 1
table.insert(ButtonsTable, RM)
RM.MouseButton1Down:connect(function()
RHR.Visible = true
RHR.Text = arg
RHR.Position = Holder.Position + UDim2.new(0, 273, 0, 232)
RemoteM = re
ls = lcsr
end)
end

-------
local IgL = Instance.new("ScrollingFrame", VRS)
IgL.BackgroundColor3 = Color3.new(0.631373, 1, 0.972549)
IgL.BackgroundTransparency = 0.6
IgL.Position = UDim2.new(0, 0, 0, 300)
IgL.Size = UDim2.new(0, 270, 0, 279)
IgL.ClipsDescendants = true
IgL.CanvasSize = UDim2.new(0, 0, 20, 99999)
IgL.Visible = false
MoveableItem(IgL)
Folder2 = Instance.new("Folder")
Folder2.Parent = IgL
-------
local Bar4 = Instance.new("Frame")
Bar4.BackgroundColor3 = Color3.new(0, 0, 0)
Bar4.Position = UDim2.new(0, 0, 0, 0)
Bar4.Size = UDim2.new(0, 270, 0, 27)
Bar4.Parent = Folder2
-------
local IgLB = Instance.new("TextLabel")
IgLB.BackgroundTransparency = 1
IgLB.Position = UDim2.new(0, 0, 0, 0)
IgLB.Size = UDim2.new(0, 250, 0, 27)
IgLB.FontSize = Enum.FontSize.Size14
IgLB.Text = "Ignore List"
IgLB.TextColor3 = Color3.new(1, 1, 1)
IgLB.TextScaled = true
IgLB.TextWrapped = true
IgLB.Parent = Folder2
-------
function aib(RN)
local IB = Instance.new("TextButton")
IB.Name = tostring(RN)
IB.Text = tostring(RN)
IB.Size = UDim2.new(0, 270, 0 , 30)
IB.Position = UDim2.new(0, 0, 0, (times2 * 30) + 25)
IB.Parent = IgL
IB.TextScaled = true
IB.Font = Enum.Font.Cartoon
IB.BackgroundColor3 = Color3.new(0, 0.5, 0.7)
IB.TextColor3 = Color3.new(1, 1, 1)
times2 = times2 + 1
IB.MouseButton1Down:connect(function()
for i = 1, #Ignore do
if Ignore[i] == RN then
table.remove(Ignore, i)
break
end
end
IB:remove()
times2 = 0
for i, v in pairs(IgL:GetChildren()) do
if v:IsA("TextButton") then
v.Position = UDim2.new(0, 0, 0, (times2 * 30) + 25)
times2 = times2 + 1
end
end
end)
end
-------


local RSOC = Instance.new("TextButton")
RSOC.Active = true
RSOC.BackgroundColor3 = Color3.new(0.631373, 1, 0.972549)
RSOC.Name = "RSOC"
RSOC.Position = UDim2.new(0, 0, 0.671212125, 0)
RSOC.Selectable = true
RSOC.Size = UDim2.new(0, 151, 0, 50)
RSOC.Style = Enum.ButtonStyle.Custom
RSOC.FontSize = Enum.FontSize.Size14
RSOC.Text = "RemoteSpy: Open"
RSOC.TextColor3 = Color3.new(0, 0, 0)
RSOC.TextScaled = true
RSOC.TextWrapped = true
RSOC.Parent = VRS
RSOC.MouseButton1Down:connect(function()
if RSOC.Text == "RemoteSpy: Open" then
RSOC.Text = "RemoteSpy: Closed"
Holder.Visible = false
else
RSOC.Text = "RemoteSpy: Open"
Holder.Visible = true
end
end)
-------
local IgLOC = Instance.new("TextButton")
IgLOC.Active = true
IgLOC.BackgroundColor3 = Color3.new(0.631373, 1, 0.972549)
IgLOC.Name = "IgLOC"
IgLOC.Position = UDim2.new(0, 0, 0.725, 0)
IgLOC.Selectable = true
IgLOC.Size = UDim2.new(0, 151, 0, 50)
IgLOC.Style = Enum.ButtonStyle.Custom
IgLOC.FontSize = Enum.FontSize.Size14
IgLOC.Text = "Ignore List: Closed"
IgLOC.TextColor3 = Color3.new(0, 0, 0)
IgLOC.TextScaled = true
IgLOC.TextWrapped = true
IgLOC.Parent = VRS
IgLOC.MouseButton1Down:connect(function()
if IgLOC.Text == "Ignore List: Closed" then
IgLOC.Text = "Ignore List: Open"
IgL.Visible = true
else
IgLOC.Text = "Ignore List: Closed"
IgL.Visible = false
end
end)

function GetValues(args)
local Vals = args
local args = ""
for i, v in pairs(Vals) do
t = typeof(Vals[i])
if t == "string" then
args = args..StringConvert(Vals[i])
elseif t == "table" then
if tonumber(i) == nil then
args = args..'["'..tostring(i)..'"] = '.."{"..GetValues(v).."}"
else
args = args.."{"..GetValues(v).."}"
end
elseif t == "Vector3" or t == "CFrame" or t == "Color3" then
args = args..t..".new("..tostring(Vals[i])..")"
elseif t == "BrickColor" then
args = args..t..'.new("'..tostring(Vals[i])..'")'
elseif t == "Instance" then
args = args..GetParent(Vals[i])
else
args = args..tostring(Vals[i])
end
args = args..", "
end
args = string.sub(args, 1, string.len(args) - 2)
return args
end

function StringConvert(S)
for i = 1, string.len(S) do
if S:sub(i, i) == '"' or S:sub(i, i) == "'" then
S = "[["..S.."]]"
return S
end
end
return '"'..S..'"'
end

function CheckForSpecial(Name)
for i = 1, string.len(Name) do
C = tonumber(string.byte(Name, i, i))
if C >= 65 and C <= 90 or C >= 97 and C <= 122 or C >= 48 and C <= 57 then
else
return false
end
end
end

function GetParent(Name)
if Name ~= nil and Name.Parent ~= nil then
TempLineStore = ""
if tonumber(string.sub(Name.Name, 1, 1)) ~= nil or CheckForSpecial(Name.Name) == false then
TempLineStore = '["'..Name.Name..'"]'
else
TempLineStore = Name.Name
end
repeat
if string.sub(TempLineStore, 1, 1) ~= "[" then
TempLineStore = "."..TempLineStore
end
if tonumber(string.sub(Name.Parent.Name, 1, 1)) ~= nil or CheckForSpecial(Name.Parent.Name) == false then
TempLineStore = '["'..Name.Parent.Name..'"]'..TempLineStore
else
TempLineStore = Name.Parent.Name..TempLineStore
end
Name = Name.Parent
until Name.Parent == nil
return TempLineStore
else
return "Object was either nil or deleted."
end
end

meta = getrawmetatable(game)
nc = meta.__namecall
make_writeable(meta)

meta.__namecall = function(rc, ...)
if On == true then
local args = {...}
local callM = getnamecallmethod()
if ((rc.ClassName == "BindableEvent" and callM == "Fire") or (rc.ClassName == "BindableFunction" and callM == "Invoke") or (rc.ClassName == "RemoteEvent" and callM == "FireServer") or (rc.ClassName == "RemoteFunction" and callM == "InvokeServer")) and rc.Name ~= "CharacterSoundEvent" and rc.Parent ~= nil then
for i = 1, #Ignore do
if rc == Ignore[i] then
return nc(rc, ...)
end
end
AddNewRemote(rc, GetParent(rc)..":"..tostring(callM).."("..GetValues(args)..")", getfenv(2).script)
end
return nc(rc, ...)
else
return nc(rc, ...)
end
end