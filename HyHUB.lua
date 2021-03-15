local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Start = Instance.new("TextButton")
local VersionGUI = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0, 0, 0.345433235, 0)
Frame.Size = UDim2.new(0, 324, 0, 264)
Frame.Style = Enum.FrameStyle.RobloxRound

Start.Name = "Start"
Start.Parent = Frame
Start.BackgroundColor3 = Color3.new(1, 1, 1)
Start.Position = UDim2.new(0.175926104, 0, 0.397727281, 0)
Start.Size = UDim2.new(0, 200, 0, 50)
Start.Style = Enum.ButtonStyle.RobloxRoundButton
Start.Font = Enum.Font.SourceSans
Start.Text = "Start"
Start.TextColor3 = Color3.new(0, 0, 0)
Start.TextSize = 14
Start.MouseButton1Down:connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/HyHUB_menu.lua",true))()
    Frame.Visible = false
end)


VersionGUI.Name = "Version"
VersionGUI.Parent = Frame
VersionGUI.BackgroundColor3 = Color3.new(1, 1, 1)
VersionGUI.BackgroundTransparency = 1
VersionGUI.Position = UDim2.new(0.504695296, 0, 0.861746848, 0)
VersionGUI.Size = UDim2.new(0, 267, 0, 50)
VersionGUI.Font = Enum.Font.SciFi
VersionGUI.Text = "v 1.1.2"
VersionGUI.TextColor3 = Color3.new(1, 1, 1)
VersionGUI.TextSize = 16

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.Position = UDim2.new(0.175926089, 0, 0.655303001, 0)
Close.Size = UDim2.new(0, 200, 0, 50)
Close.Style = Enum.ButtonStyle.RobloxRoundButton
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
	Frame.Visible = false
end)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.0664237067, 0, 0.0322014019, 0)
Title.Size = UDim2.new(0, 267, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "Welcome to SplashHub"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 25
