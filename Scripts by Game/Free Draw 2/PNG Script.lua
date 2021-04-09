-- // Config: \\ --

local pixelsize = 1; -- Pixel size, keep at 1 for smoothness.
local pngimage = game:HttpGet("https://redphoenix.xyz/images/BRUH.png"); -- Your png link.
local holder = Instance.new("ScreenGui",game.CoreGui); -- Any GUI object
local transparentcolor = Color3.fromRGB(255,255,255); -- Transparent objects render as white, set a specific color for them and it should work out. Set the variable to "nil" if you don't have any transparency.

-- // Positional Config: \\ --

local anchor = Vector2.new(.5,.5); -- The anchor point of the loaded PNG frame
local position = UDim2.new(.5,0,.5,0); -- The position of the loaded PNG frame