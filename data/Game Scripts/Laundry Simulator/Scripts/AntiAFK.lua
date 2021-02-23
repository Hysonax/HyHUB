local AntiAFK = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Status = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
local Count = Instance.new("TextLabel")

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = game.CoreGui
AntiAFK.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = AntiAFK
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(-0.000426322222, 0, 0.0579380542, 0)
Frame.Size = UDim2.new(0, 240, 0, 98)
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Draggable = true
Frame.Active=true

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.00196358375, 0, -0.0905457288, 0)
Title.Size = UDim2.new(0, 350, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "HyHUB - AntiAFK"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24
Title.TextXAlignment = Enum.TextXAlignment.Left

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.907819688, 0, 0.0141758248, 0)
Close.Size = UDim2.new(0, 21, 0, 21)
Close.Style = Enum.ButtonStyle.RobloxRoundButton
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
	Frame.Visible = false
end)

Status.Name = "Status"
Status.Parent = Frame
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.00231450424, 0, 0.516074061, 0)
Status.Size = UDim2.new(0, 218, 0, 42)
Status.Font = Enum.Font.SciFi
Status.Text = "Status: ACTIVE"
Status.TextColor3 = Color3.new(1, 1, 1)
Status.TextSize = 20
Status.TextXAlignment = Enum.TextXAlignment.Left

Text.Name = "Text"
Text.Parent = Frame
Text.BackgroundColor3 = Color3.new(1, 1, 1)
Text.BackgroundTransparency = 1
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.00138888042, 0, 0.690134943, 0)
Text.Size = UDim2.new(0, 200, 0, 50)
Text.Font = Enum.Font.SciFi
Text.Text = "Kick tries:"
Text.TextColor3 = Color3.new(1, 1, 1)
Text.TextSize = 14
Text.TextXAlignment = Enum.TextXAlignment.Left

Count.Name = "Count"
Count.Parent = Frame
Count.BackgroundColor3 = Color3.new(1, 1, 1)
Count.BackgroundTransparency = 1
Count.BorderSizePixel = 0
Count.Position = UDim2.new(0.280555546, 0, 0.690134943, 0)
Count.Size = UDim2.new(0, 200, 0, 50)
Count.Font = Enum.Font.SciFi
Count.Text = "0"
Count.TextColor3 = Color3.new(1, 1, 1)
Count.TextSize = 14
Count.TextXAlignment = Enum.TextXAlignment.Left

local bb=game:service'VirtualUser'

game:service'Players'.LocalPlayer.Idled:connect(function()
	bb:CaptureController()
	bb:ClickButton2(Vector2.new())
	Status.Text = "Roblox Tried to kick you but I didnt let them kick you :D"
	Count.Text = tostring(tonumber(Count.text) + 1)
	wait(5)
	Status.Text = "Status: ACTIVE"
end)
