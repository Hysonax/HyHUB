local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local AbPlusEsp = Instance.new("TextButton")
local ControlText = Instance.new("TextLabel")
local AltText = Instance.new("TextLabel")
local HitBoxExtender = Instance.new("TextButton")
local HitBoxText = Instance.new("TextLabel")
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.378778577, 0, 0.362997651, 0)
Frame.Size = UDim2.new(0, 274, 0, 178)
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Draggable = true
Frame.Active=true

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.949486375, 0, -0.013035059, 0)
Close.Size = UDim2.new(0, 21, 0, 21)
Close.Style = Enum.ButtonStyle.RobloxRoundButton
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
	Frame.Visible = false
end)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(-0.0507764816, 0, -0.0981526002, 0)
Title.Size = UDim2.new(0, 266, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "HyHUB - Arsenal scripts"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24

AbPlusEsp.Name = "AbPlusEsp"
AbPlusEsp.Parent = Frame
AbPlusEsp.BackgroundColor3 = Color3.new(1, 1, 1)
AbPlusEsp.Position = UDim2.new(0.00213327259, 0, 0.20593369, 0)
AbPlusEsp.Size = UDim2.new(0, 118, 0, 48)
AbPlusEsp.Style = Enum.ButtonStyle.RobloxRoundButton
AbPlusEsp.Font = Enum.Font.SciFi
AbPlusEsp.Text = "AB + ESP"
AbPlusEsp.TextColor3 = Color3.new(0, 0, 0)
AbPlusEsp.TextSize = 14
AbPlusEsp.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Game%20Scripts/Arsenal/Scripts/AB%2BESP.lua",true))()
end)

ControlText.Name = "ControlText"
ControlText.Parent = Frame
ControlText.BackgroundColor3 = Color3.new(1, 1, 1)
ControlText.BackgroundTransparency = 1
ControlText.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ControlText.BorderSizePixel = 0
ControlText.Position = UDim2.new(0.475458086, 0, 0.274111658, 0)
ControlText.Size = UDim2.new(0, 200, 0, 50)
ControlText.Font = Enum.Font.SciFi
ControlText.Text = "LEFT CTRL = AimBot"
ControlText.TextColor3 = Color3.new(1, 1, 1)
ControlText.TextSize = 14
ControlText.TextXAlignment = Enum.TextXAlignment.Left

AltText.Name = "AltText"
AltText.Parent = Frame
AltText.BackgroundColor3 = Color3.new(1, 1, 1)
AltText.BackgroundTransparency = 1
AltText.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
AltText.BorderSizePixel = 0
AltText.Position = UDim2.new(0.474359453, 0, 0.172588885, 0)
AltText.Size = UDim2.new(0, 200, 0, 50)
AltText.Font = Enum.Font.SciFi
AltText.Text = "LEFT ALT = ESP"
AltText.TextColor3 = Color3.new(1, 1, 1)
AltText.TextSize = 14
AltText.TextXAlignment = Enum.TextXAlignment.Left

HitBoxExtender.Name = "HitBoxExtender"
HitBoxExtender.Parent = Frame
HitBoxExtender.BackgroundColor3 = Color3.new(1, 1, 1)
HitBoxExtender.Position = UDim2.new(0.00213327259, 0, 0.576834261, 0)
HitBoxExtender.Size = UDim2.new(0, 118, 0, 48)
HitBoxExtender.Style = Enum.ButtonStyle.RobloxRoundButton
HitBoxExtender.Font = Enum.Font.SciFi
HitBoxExtender.Text = "Hit Box Extender"
HitBoxExtender.TextColor3 = Color3.new(0, 0, 0)
HitBoxExtender.TextSize = 14
AbPlusEsp.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Game%20Scripts/Arsenal/Scripts/ArsenalHitboxExtender.lua",true))()
end)

HitBoxText.Name = "HitBoxText"
HitBoxText.Parent = Frame
HitBoxText.BackgroundColor3 = Color3.new(1, 1, 1)
HitBoxText.BackgroundTransparency = 1
HitBoxText.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
HitBoxText.BorderSizePixel = 0
HitBoxText.Position = UDim2.new(0.474359453, 0, 0.571465254, 0)
HitBoxText.Size = UDim2.new(0, 200, 0, 50)
HitBoxText.Font = Enum.Font.SciFi
HitBoxText.Text = "!!! Little glitches !!!"
HitBoxText.TextColor3 = Color3.new(1, 1, 1)
HitBoxText.TextSize = 14
HitBoxText.TextXAlignment = Enum.TextXAlignment.Left
