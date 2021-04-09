local aux = oh.auxiliary

local base = oh.gui.Base
local drag = base.Drag
local body = base.Body
local close = drag.Close
local components = body.Components
local tabs = body.Tabs

local tween_service = game:GetService("TweenService")
local user_input = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

drag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = base.Position
		
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

drag.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

user_input.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
	    base.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

aux.apply_highlight(close, {
	new_color = Color3.fromRGB(200, 0, 0),
	down_color = Color3.fromRGB(200, 100, 100)
})

local titles = {
    UpvalueScanner = "Upvalue Scanner",
}

oh.selected_component = tabs.Initialized
for i,v in next, components:GetChildren() do
    if v:IsA("TextButton") then
        aux.apply_highlight(v)

        v.MouseButton1Click:Connect(function()
            local tab = tabs[v.Name]
            body.TabsLabel.Text = "  " .. (titles[v.Name] or v.Name)
            
            oh.selected_component.Visible = false
            tab.Visible = true
            oh.selected_component = tab
        end)
    end
end