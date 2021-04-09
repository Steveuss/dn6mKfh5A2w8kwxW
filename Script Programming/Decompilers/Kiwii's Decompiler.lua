
local library = {}

local dragger = {};
local resizer = {};

do
	local mouse = game:GetService("Players").LocalPlayer:GetMouse();
	local inputService = game:GetService('UserInputService');
	local heartbeat = game:GetService("RunService").Heartbeat;
	-- // credits to Ririchi / Inori for this cute drag function :)
	function dragger.new(frame)
	    local s, event = pcall(function()
	    	return frame.MouseEnter
	    end)

	    if s then
	    	frame.Active = true;

	    	event:connect(function()
	    		local input = frame.InputBegan:connect(function(key)
	    			if key.UserInputType == Enum.UserInputType.MouseButton1 then
	    				local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
	    				while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
	    					frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.05, true);
	    				end
	    			end
	    		end)

	    		local leave;
	    		leave = frame.MouseLeave:connect(function()
	    			input:disconnect();
	    			leave:disconnect();
	    		end)
	    	end)
	    end
	end

	function resizer.new(p, s)
		p:GetPropertyChangedSignal('AbsoluteSize'):connect(function()
			s.Size = UDim2.new(s.Size.X.Scale, s.Size.X.Offset, s.Size.Y.Scale, p.AbsoluteSize.Y);
		end)
	end
end

local Kiwii = Instance.new("ScreenGui")
local Frame1 = Instance.new("ImageLabel")
local TopBar = Instance.new("ImageLabel")
local TitleBar = Instance.new("TextLabel")
local ListBox = Instance.new("ImageLabel")
local Frame2 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local BGExec2 = Instance.new("ImageLabel")
local BGExec = Instance.new("ScrollingFrame")
local Write = Instance.new("TextBox")
local Read = Instance.new("TextLabel")
local MenuStrip = Instance.new("ImageLabel")
local SaveButtonFrame = Instance.new("ImageLabel")
local SaveButton = Instance.new("TextButton")
local UIListLayout_2 = Instance.new("UIListLayout")
local CopyButtonFrame = Instance.new("ImageLabel")
local CopyButton = Instance.new("TextButton")
 
Kiwii.Name = "Kiwii"
Kiwii.Parent = game.CoreGui

Frame1.Name = "Frame1"
Frame1.Parent = Kiwii
Frame1.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame1.BackgroundTransparency = 1
Frame1.Position = UDim2.new(0.258010149, 0, 0.202134907, 0)
Frame1.Size = UDim2.new(0, 573, 0, 357)
Frame1.Image = "rbxassetid://3570695787"
Frame1.ImageColor3 = Color3.new(0.133333, 0.133333, 0.133333)
Frame1.ScaleType = Enum.ScaleType.Slice
Frame1.SliceCenter = Rect.new(100, 100, 100, 100)
Frame1.SliceScale = 0.11999999731779
dragger.new(Frame1)

TopBar.Name = "TopBar"
TopBar.Parent = Frame1
TopBar.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TopBar.BackgroundTransparency = 1
TopBar.Position = UDim2.new(0, 0, -0.00270520803, 0)
TopBar.Size = UDim2.new(0, 573, 0, 23)
TopBar.Image = "rbxassetid://1051202035"
TopBar.ImageColor3 = Color3.new(0.309804, 0.72549, 0.301961)
TopBar.ScaleType = Enum.ScaleType.Slice
TopBar.SliceCenter = Rect.new(20, 20, 20, 20)

TitleBar.Name = "TitleBar"
TitleBar.Parent = TopBar
TitleBar.BackgroundColor3 = Color3.new(1, 1, 1)
TitleBar.BackgroundTransparency = 1
TitleBar.Size = UDim2.new(1, 0, 1, 0)
TitleBar.Font = Enum.Font.SourceSansSemibold
TitleBar.Text = "Kiwii's Decompiler"
TitleBar.TextColor3 = Color3.new(1, 1, 1)
TitleBar.TextSize = 16

ListBox.Name = "ListBox"
ListBox.Parent = Frame1
ListBox.BackgroundColor3 = Color3.new(0.0509804, 0, 0.764706)
ListBox.BackgroundTransparency = 1
ListBox.BorderColor3 = Color3.new(1, 0, 0.0156863)
ListBox.BorderSizePixel = 0
ListBox.Position = UDim2.new(0.704547465, 0, 0.0863118321, 0)
ListBox.Size = UDim2.new(0, 162, 0, 319)
ListBox.Image = "rbxassetid://3570695787"
ListBox.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
ListBox.ScaleType = Enum.ScaleType.Slice
ListBox.SliceCenter = Rect.new(100, 100, 100, 100)
ListBox.SliceScale = 0.070000000298023

Frame2.Name = "Frame2"
Frame2.Parent = ListBox
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.BackgroundTransparency = 1
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(-0.00213301182, 0, -0.000939555466, 0)
Frame2.Size = UDim2.new(0, 162, 0, 319)
Frame2.CanvasSize = UDim2.new(2, 0, 11, 0)
Frame2.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
Frame2.ScrollBarThickness = 10

UIListLayout.Parent = Frame2
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

BGExec2.Name = "BGExec2"
BGExec2.Parent = Frame1
BGExec2.BackgroundColor3 = Color3.new(0.0509804, 0, 0.764706)
BGExec2.BackgroundTransparency = 1
BGExec2.BorderColor3 = Color3.new(1, 0, 0.0156863)
BGExec2.BorderSizePixel = 0
BGExec2.Position = UDim2.new(0.0151931737, 0, 0.144295916, 0)
BGExec2.Size = UDim2.new(0, 385, 0, 298)
BGExec2.Image = "rbxassetid://3570695787"
BGExec2.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
BGExec2.ScaleType = Enum.ScaleType.Slice
BGExec2.SliceCenter = Rect.new(100, 100, 100, 100)
BGExec2.SliceScale = 0.070000000298023

BGExec.Name = "BGExec"
BGExec.Parent = BGExec2
BGExec.Active = true
BGExec.BackgroundColor3 = Color3.new(1, 1, 1)
BGExec.BackgroundTransparency = 1
BGExec.BorderSizePixel = 0
BGExec.Size = UDim2.new(1.02597404, -10, 1.20134223, -60)
BGExec.ZIndex = 2
BGExec.CanvasSize = UDim2.new(20, 0, 20, 0)
BGExec.ScrollBarThickness = 8
BGExec.VerticalScrollBarInset = Enum.ScrollBarInset.Always

Write.Name = "Write"
Write.Parent = BGExec
Write.BackgroundColor3 = Color3.new(1, 1, 1)
Write.BackgroundTransparency = 1
Write.BorderSizePixel = 0
Write.Position = UDim2.new(0, 0, -1.02407988e-07, 0)
Write.Size = UDim2.new(1, 0, 100.372002, 25)
Write.ZIndex = 2
Write.ClearTextOnFocus = false
Write.Font = Enum.Font.Code
Write.MultiLine = true
Write.Text = ""
Write.TextColor3 = Color3.new(0.8, 0.8, 0.8)
Write.TextSize = 14
Write.TextStrokeTransparency = 0.94999998807907
Write.TextXAlignment = Enum.TextXAlignment.Left
Write.TextYAlignment = Enum.TextYAlignment.Top

Read.Name = "Read"
Read.Parent = BGExec
Read.BackgroundColor3 = Color3.new(1, 1, 1)
Read.BackgroundTransparency = 1
Read.BorderSizePixel = 0
Read.ZIndex = 2
Read.Font = Enum.Font.Code
Read.Text = ""
Read.TextColor3 = Color3.new(0.8, 0.8, 0.8)
Read.TextSize = 14
Read.TextStrokeTransparency = 0.94999998807907
Read.TextXAlignment = Enum.TextXAlignment.Left
Read.TextYAlignment = Enum.TextYAlignment.Top

MenuStrip.Name = "MenuStrip"
MenuStrip.Parent = Frame1
MenuStrip.BackgroundColor3 = Color3.new(0.0509804, 0, 0.764706)
MenuStrip.BackgroundTransparency = 1
MenuStrip.BorderColor3 = Color3.new(1, 0, 0.0156863)
MenuStrip.BorderSizePixel = 0
MenuStrip.Position = UDim2.new(0.0151931737, 0, 0.0854723826, 0)
MenuStrip.Size = UDim2.new(0, 385, 0, 15)
MenuStrip.Image = "rbxassetid://3570695787"
MenuStrip.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
MenuStrip.ScaleType = Enum.ScaleType.Slice
MenuStrip.SliceCenter = Rect.new(100, 100, 100, 100)
MenuStrip.SliceScale = 0.029999999329448

SaveButtonFrame.Name = "SaveButtonFrame"
SaveButtonFrame.Parent = MenuStrip
SaveButtonFrame.BackgroundColor3 = Color3.new(0.0509804, 0, 0.764706)
SaveButtonFrame.BackgroundTransparency = 1
SaveButtonFrame.BorderColor3 = Color3.new(1, 0, 0.0156863)
SaveButtonFrame.BorderSizePixel = 0
SaveButtonFrame.Position = UDim2.new(-0.00039125912, 0, 0, 0)
SaveButtonFrame.Size = UDim2.new(0, 71, 0, 15)
SaveButtonFrame.Image = "rbxassetid://3570695787"
SaveButtonFrame.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
SaveButtonFrame.ScaleType = Enum.ScaleType.Slice
SaveButtonFrame.SliceCenter = Rect.new(100, 100, 100, 100)
SaveButtonFrame.SliceScale = 0.029999999329448

SaveButton.Name = "SaveButton"
SaveButton.Parent = SaveButtonFrame
SaveButton.BackgroundColor3 = Color3.new(1, 1, 1)
SaveButton.BackgroundTransparency = 1
SaveButton.Size = UDim2.new(0, 71, 0, 15)
SaveButton.Font = Enum.Font.SourceSansSemibold
SaveButton.Text = "Save Script"
SaveButton.TextColor3 = Color3.new(0.831373, 0.831373, 0.831373)
SaveButton.TextSize = 12

UIListLayout_2.Parent = MenuStrip
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

CopyButtonFrame.Name = "CopyButtonFrame"
CopyButtonFrame.Parent = MenuStrip
CopyButtonFrame.BackgroundColor3 = Color3.new(0.0509804, 0, 0.764706)
CopyButtonFrame.BackgroundTransparency = 1
CopyButtonFrame.BorderColor3 = Color3.new(1, 0, 0.0156863)
CopyButtonFrame.BorderSizePixel = 0
CopyButtonFrame.Position = UDim2.new(0.184415579, 0, 0, 0)
CopyButtonFrame.Size = UDim2.new(0, 89, 0, 15)
CopyButtonFrame.Image = "rbxassetid://3570695787"
CopyButtonFrame.ImageColor3 = Color3.new(0.192157, 0.192157, 0.192157)
CopyButtonFrame.ScaleType = Enum.ScaleType.Slice
CopyButtonFrame.SliceCenter = Rect.new(100, 100, 100, 100)
CopyButtonFrame.SliceScale = 0.029999999329448

CopyButton.Name = "CopyButton"
CopyButton.Parent = CopyButtonFrame
CopyButton.BackgroundColor3 = Color3.new(1, 1, 1)
CopyButton.BackgroundTransparency = 1
CopyButton.Size = UDim2.new(0, 89, 0, 15)
CopyButton.Font = Enum.Font.SourceSansSemibold
CopyButton.Text = "Copy to Clipboard"
CopyButton.TextColor3 = Color3.new(0.831373, 0.831373, 0.831373)
CopyButton.TextSize = 12

local textserv = game:GetService('TextService')

local replacements = {['\r'] = '', ['\t'] = '    '}
local keyword_list = {'and', 'break', 'do', 'else', 'elseif', 'end', 'false', 'for', 'function', 'if', 'in', 'local', 'nil', 'not', 'or', 'repeat', 'return', 'self', 'then', 'true', 'until', 'while'}
local globals_list = {}
local colors = {
	Comment = Color3.fromRGB(74, 139, 69),
	Global = Color3.fromRGB(69, 180, 152),
	Keyword = Color3.fromRGB(86, 156, 214),
	Number = Color3.fromRGB(181, 206, 168),
	String = Color3.fromRGB(193, 118, 76),
	Symbol = Color3.fromRGB(255, 255, 255),
	Word = Color3.fromRGB(255, 255, 255)
}

do
	local env = getfenv(0)

	local function recurse(s, t)
		for i, v in next, t do
			local name = s .. '.' .. i
			globals_list[name] = true
			if type(v) == 'table' then
				recurse(name, v)
			end
		end
	end
	
	setmetatable(globals_list, {
		__index = function(self, what)
			local got = env[what]
			local rl = got ~= nil
			if rl and type(got) == 'table' then
				recurse(what, got)
			end
			self[what] = rl
			return rl
		end
	})
end

local function normalize(t)
	for i = 1, #t do
		t[t[i]] = true
		t[i] = nil
	end
end

normalize(keyword_list)

local function text_size(str, size)
	return textserv:GetTextSize(str, 14, Enum.Font.Code, size)
end

local function cut_off(word, n, t)
	if t == "[" then
		warn(word:sub(n, n))
		warn(word:sub(n + 1, n + 1))
	end
	return word:sub(n, n) == t and word:sub(n + 1, n + 1) == t
end

local function is_long(words, s)
	if words:sub(s, s) == '[' then
		local k = s + 1
		while words:sub(k, k) == '=' do
			k = k + 1
		end
		return words:sub(k, k) == '[', k - s + 1
	end
	return false, 0
end

local function read_long(words, s, n)
	local reached
	for i = s, #words do
		local ch = words:sub(i, i)
		if ch == ']' then
			for j = i + 1, #words do
				local wh = words:sub(j, j)
				if wh ~= '=' then
					if wh == ']' and ((j - i - 1) == n) then
						reached = j
					end
					break
				end
			end
		end
		if reached then
			break
		end
	end
	return (reached or #words) - s + 1
end

local function read_comment(words, s)
	local len = s + 2
	local wlen = #words
	local long, longlen = is_long(words, len)
	if long then
		return read_long(words, len + longlen, longlen - 2) + longlen + 2
	else
		local ch
		repeat
			ch = words:sub(len, len)
			len = len + 1
		until len > wlen or ch == '\n'
		return len - s
	end
end

local function read_string(words, s, q)
	local ret = #words
	local esc = false
	for i = s, ret do
		local c = words:sub(i, i)
		if c == '\\' and not esc then
			esc = true
		elseif c == q and not esc then
			ret = i
			break
		else
			esc = false
		end
	end
	return ret - s + 1
end

local function read_alphanum(words, s)
	local len = 0
	while words:sub(s + len, s + len):match('[%w_.:]') do
		len = len + 1
	end
	return len
end

local function read_symbols(words, s)
	local len = 0
	local word
	repeat
		local nx = s + len
		if cut_off(words, nx, '-') or is_long(words, nx) or cut_off(words, nx+1, "[") then
			break
		end
		word = words:sub(nx, nx)
		len = len + 1
		wait();
	until not word:match('[^%s%w_\'"]')
	return len - 1
end

local function read_whitespace(words, s)
	local len = 0
	while words:sub(s + len, s + len):match('%s') do
		len = len + 1
	end
	return len
end

local function parse_words(words)
	local pos = 1
	local wlen = #words
	local list = {}

	while pos <= wlen do
		local ch = words:sub(pos, pos)
		local frm = Read:Clone()
		local col, len

		local long, longlen = is_long(words, pos)

		if long then
			len = read_long(words, pos + longlen, longlen - 2) + longlen
			col = colors.String
		elseif cut_off(words, pos, '-') then
			len = read_comment(words, pos)
			col = colors.Comment
		elseif ch == '"' or ch == '\'' then
			len = read_string(words, pos + 1, ch) + 1
			col = colors.String
		elseif ch:match('[%w_.:]') then
			local word
			len = read_alphanum(words, pos)
			word = words:sub(pos, pos + len - 1)
			if tonumber(word) then
				col = colors.Number
			elseif keyword_list[word] then
				col = colors.Keyword
			else
				local rln = 0
				for cnk in string.gmatch(word, '[^.:]+') do
					local nx = rln + #cnk
					if globals_list[word:sub(1, nx)] then
						rln = nx + 1
					else
						break
					end
				end
				if rln ~= 0 then
					len = rln - 1
					col = colors.Global
				else
					col = colors.Word
				end
			end
		elseif ch:match('[^%s%w_\'"]') then
			len = 1 -- fucking bandaid shit for a crash
			col = colors.Symbol
		elseif ch:match('%s') then
			len = read_whitespace(words, pos)
			col = colors.Word
		else
			error('Failed big man ting!')
		end
		table.insert(list, {
			str = words:sub(pos, pos + len - 1),
			col = col
		})
		pos = pos + len
	end

	return list
end

local function highlight()
	local wtext = Write.Text:gsub('[\r\t]', replacements)
	local parsed = parse_words(wtext)
	local x, y = 0, 0
	
	Write:ClearAllChildren()
	Write.Text = wtext

	local function new_frame(str, col, last, j)
		local txt = str:sub(last, j)
		local sz = text_size(txt, BGExec.AbsoluteSize)
		local num = (BGExec.CanvasPosition.Y + BGExec.AbsoluteSize.Y)
		local num2 = (BGExec.CanvasPosition.Y - BGExec.AbsoluteSize.Y)
		
		if (y > num) or (y < num2) then
			return sz;
		end
		
		if col ~= colors.Word then
			local rd = Read:Clone()
			rd.Text = txt
			rd.TextColor3 = col
			rd.Position = UDim2.new(0, x, 0, y)
			rd.Size = UDim2.new(0, sz.X, 0, sz.Y)
			rd.Parent = Write
		end

		return sz
	end
	
	
	for i = 1, #parsed do
		local word = parsed[i]
		local str = word.str
		local wl = #str
		local tx = {}
		local last = 1
			
		for j = 1, wl do
			local c = str:sub(j, j)
			if c == '\n' then
				local rd = new_frame(str, word.col, last, j - 1)
				y = y + rd.Y
				x = 0
				last = j + 1
			elseif j == wl then
				local rd = new_frame(str, word.col, last, j)
				x = x + rd.X
			end
		end
	end
end

local function dispatch_job()
	highlight()
end

Write:GetPropertyChangedSignal('Text'):Connect(function()
	BGExec.CanvasSize = UDim2.new(0, Write.TextBounds.X, 0, Write.TextBounds.Y)
	coroutine.wrap(dispatch_job)()
end)

coroutine.resume(coroutine.create(function()
	local size = BGExec.CanvasPosition;
	local floor = math.floor;
	local wait = wait;
	while wait(1) do
		local new = BGExec.CanvasPosition
		local vec1 = Vector2.new(size.X, size.Y)
		local vec2 = Vector2.new(new.X, new.Y)
		local distance = floor((vec1 - vec2).magnitude)
		
		if distance > 0 then
			coroutine.wrap(dispatch_job)()
		end
		
		size = new;
	end
end))


local charset = {}

function randomLetter()
     local rLetter = string.char(math.random(65,  90))
     rLetter = math.random() > .5 and rLetter:lower() or rLetter
     return rLetter
end

function generateRandomSequence(length)
     local sequence = ""
     for i = 1, length do
          sequence = sequence..randomLetter()
     end
     return sequence
end

for Index, Value in next, game:GetDescendants() do
	if Value:IsA("LocalScript") or Value:IsA("ModuleScript") then
		    Frame2.CanvasSize = UDim2.new(2, 0, Index / 100, 0)

			local ImgLbl = Instance.new("TextLabel")
			local F = Instance.new("TextButton")
			
			F.Name = generateRandomSequence(3)
			F.Parent = Frame2
			F.BackgroundColor3 = Color3.new(1, 1, 1)
			F.BackgroundTransparency = 1
			F.Size = UDim2.new(0, 334,0, 21)
			F.Font = Enum.Font.SourceSansSemibold
			F.Text = Value.Name
			F.TextColor3 = Color3.new(0.831373, 0.831373, 0.831373)
			F.TextSize = 14
			F.MouseButton1Down:Connect(function()
				TitleBar.Text = Value:GetFullName()
				Write.Text = ""
				Write.Text = decompile(Value)
			end)
			
			ImgLbl.Name = generateRandomSequence(3)
			ImgLbl.Parent = F
			ImgLbl.BackgroundColor3 = Color3.new(1, 1, 1)
			ImgLbl.BackgroundTransparency = 1
			ImgLbl.Size = UDim2.new(0, 80, 0, 21)
			ImgLbl.Font = Enum.Font.SourceSansSemibold
			ImgLbl.TextSize = 10
			ImgLbl.TextColor3 = Color3.new(0.831373, 0.831373, 0.831373)
			
			if Value:IsA("ModuleScript") then
				ImgLbl.Text = "ModuleScript"
			else if Value:IsA("LocalScript") then
				ImgLbl.Text = "LocalScript"
			end
			end
		end
end

CopyButton.MouseButton1Down:Connect(function()
	setclipboard(Write.Text)
end)

SaveButton.MouseButton1Down:Connect(function()
	writefile(TitleBar.Text..".lua", Write.Text)
end)