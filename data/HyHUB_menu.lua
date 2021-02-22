local ScreenGui = Instance.new("ScreenGui")
local Menu = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Soon2 = Instance.new("TextButton")
local GameScripts = Instance.new("TextButton")
local Tools = Instance.new("TextButton")
local AntiCheatByPasses = Instance.new("TextButton")
local Soon1 = Instance.new("TextButton")
local Soon3 = Instance.new("TextButton")
local GameName = Instance.new("TextLabel")
local Text1 = Instance.new("TextLabel")
local Text2 = Instance.new("TextLabel")
local ServerStatus = Instance.new("TextLabel")
local Text3 = Instance.new("TextLabel")
local PlayerName = Instance.new("TextLabel")
local ClosedMenu = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--Main MENU GUI
Menu.Name = "Menu"
Menu.Parent = ScreenGui
Menu.BackgroundColor3 = Color3.new(1, 1, 1)
Menu.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Menu.Position = UDim2.new(0.354102492, 0, 0.304449648, 0)
Menu.Size = UDim2.new(0, 472, 0, 333)
Menu.Style = Enum.FrameStyle.RobloxRound
Menu.Draggable = true
Menu.Active=true

--Close BUTTON
Close.Name = "Close"
Close.Parent = Menu
Close.BackgroundColor3 = Color3.new(0.423529, 0, 0.00392157)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.969774365, 0, -0.016135091, 0)
Close.Size = UDim2.new(0, 21, 0, 21)
Close.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextSize = 14
Close.MouseButton1Down:connect(function()
	Menu.Visible = false
	ClosedMenu.Visible = true
end)

--Menu TITLE
Title.Name = "Title"
Title.Parent = Menu
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(-0.131328464, 0, -0.061937809, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "HyHUB Menu"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

--Soon BUTTON
Soon2.Name = "Soon2"
Soon2.Parent = Menu
Soon2.BackgroundColor3 = Color3.new(1, 1, 1)
Soon2.Position = UDim2.new(-0.00560572743, 0, 0.84608376, 0)
Soon2.Size = UDim2.new(0, 200, 0, 50)
Soon2.Style = Enum.ButtonStyle.RobloxRoundButton
Soon2.Font = Enum.Font.SciFi
Soon2.Text = "Comming Soon..."
Soon2.TextColor3 = Color3.new(0, 0, 0)
Soon2.TextSize = 14

--Game scripts BUTTON
GameScripts.Name = "GameScripts"
GameScripts.Parent = Menu
GameScripts.BackgroundColor3 = Color3.new(1, 1, 1)
GameScripts.Position = UDim2.new(-0.00560572743, 0, 0.446684361, 0)
GameScripts.Size = UDim2.new(0, 200, 0, 50)
GameScripts.Style = Enum.ButtonStyle.RobloxRoundButton
GameScripts.Font = Enum.Font.SciFi
GameScripts.Text = "Game Scripts"
GameScripts.TextColor3 = Color3.new(0, 0, 0)
GameScripts.TextSize = 14
GameScripts.MouseButton1Down:connect(function()
	--SCRIPT HERE!!!
end)

--Tools BUTTON
Tools.Name = "Tools"
Tools.Parent = Menu
Tools.BackgroundColor3 = Color3.new(1, 1, 1)
Tools.Position = UDim2.new(0.574902773, 0, 0.440678358, 0)
Tools.Size = UDim2.new(0, 200, 0, 50)
Tools.Style = Enum.ButtonStyle.RobloxRoundButton
Tools.Font = Enum.Font.SciFi
Tools.Text = "Tools"
Tools.TextColor3 = Color3.new(0, 0, 0)
Tools.TextSize = 14
Tools.MouseButton1Down:connect(function()
	--SCRIPT HERE!!!
end)

--AntiCheatByPasses BUTTON
AntiCheatByPasses.Name = "AntiCheatByPasses"
AntiCheatByPasses.Parent = Menu
AntiCheatByPasses.BackgroundColor3 = Color3.new(1, 1, 1)
AntiCheatByPasses.Position = UDim2.new(-0.00560572743, 0, 0.64488256, 0)
AntiCheatByPasses.Size = UDim2.new(0, 200, 0, 50)
AntiCheatByPasses.Style = Enum.ButtonStyle.RobloxRoundButton
AntiCheatByPasses.Font = Enum.Font.SciFi
AntiCheatByPasses.Text = "Anti-Cheat By-Passes"
AntiCheatByPasses.TextColor3 = Color3.new(0, 0, 0)
AntiCheatByPasses.TextSize = 14
AntiCheatByPasses.MouseButton1Down:connect(function()
	--SCRIPT HERE!!!
end)

--Soon BUTTON
Soon1.Name = "Soon1"
Soon1.Parent = Menu
Soon1.BackgroundColor3 = Color3.new(1, 1, 1)
Soon1.Position = UDim2.new(0.574902773, 0, 0.64488256, 0)
Soon1.Size = UDim2.new(0, 200, 0, 50)
Soon1.Style = Enum.ButtonStyle.RobloxRoundButton
Soon1.Font = Enum.Font.SciFi
Soon1.Text = "Comming Soon..."
Soon1.TextColor3 = Color3.new(0, 0, 0)
Soon1.TextSize = 14

--Soon BUTTON
Soon3.Name = "Soon3"
Soon3.Parent = Menu
Soon3.BackgroundColor3 = Color3.new(1, 1, 1)
Soon3.Position = UDim2.new(0.574902833, 0, 0.84608376, 0)
Soon3.Size = UDim2.new(0, 200, 0, 50)
Soon3.Style = Enum.ButtonStyle.RobloxRoundButton
Soon3.Font = Enum.Font.SciFi
Soon3.Text = "Comming Soon..."
Soon3.TextColor3 = Color3.new(0, 0, 0)
Soon3.TextSize = 14

--Game NAME
GameName.Name = "GameName"
GameName.Parent = Menu
GameName.BackgroundColor3 = Color3.new(1, 1, 1)
GameName.BackgroundTransparency = 1
GameName.BorderSizePixel = 0
GameName.Position = UDim2.new(0.338183641, 0, 0.0498136654, 0)
GameName.Size = UDim2.new(0, 288, 0, 50)
GameName.Font = Enum.Font.SciFi
GameName.Text = "GAME_NAME"
GameName.TextColor3 = Color3.new(1, 1, 1)
GameName.TextSize = 14
GameName.TextXAlignment = Enum.TextXAlignment.Left
GameName.Active = true
if true then
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/GameChack.lua",true))()
end

--Text before Game NAME
Text1.Name = "Text1"
Text1.Parent = Menu
Text1.BackgroundColor3 = Color3.new(1, 1, 1)
Text1.BackgroundTransparency = 1
Text1.BorderSizePixel = 0
Text1.Position = UDim2.new(0.0449130833, 0, 0.047387749, 0)
Text1.Size = UDim2.new(0, 152, 0, 50)
Text1.Font = Enum.Font.SciFi
Text1.Text = "You are now playing:"
Text1.TextColor3 = Color3.new(1, 1, 1)
Text1.TextSize = 14
Text1.TextXAlignment = Enum.TextXAlignment.Left

--Text before Server STATUS
Text2.Name = "Text2"
Text2.Parent = Menu
Text2.BackgroundColor3 = Color3.new(1, 1, 1)
Text2.BackgroundTransparency = 1
Text2.BorderSizePixel = 0
Text2.Position = UDim2.new(0.0455092117, 0, 0.116867289, 0)
Text2.Size = UDim2.new(0, 148, 0, 50)
Text2.Font = Enum.Font.SciFi
Text2.Text = "Server status:"
Text2.TextColor3 = Color3.new(1, 1, 1)
Text2.TextSize = 14
Text2.TextXAlignment = Enum.TextXAlignment.Left

--Server STATUS
ServerStatus.Name = "ServerStatus"
ServerStatus.Parent = Menu
ServerStatus.BackgroundColor3 = Color3.new(1, 1, 1)
ServerStatus.BackgroundTransparency = 1
ServerStatus.BorderSizePixel = 0
ServerStatus.Position = UDim2.new(0.245790169, 0, 0.115239382, 0)
ServerStatus.Size = UDim2.new(0, 200, 0, 50)
ServerStatus.Font = Enum.Font.SciFi
ServerStatus.Text = "SERVER_STATUS"
ServerStatus.TextColor3 = Color3.new(1, 1, 1)
ServerStatus.TextSize = 14
ServerStatus.TextXAlignment = Enum.TextXAlignment.Left

--Text before Player NAME
Text3.Name = "Text3"
Text3.Parent = Menu
Text3.BackgroundColor3 = Color3.new(1, 1, 1)
Text3.BackgroundTransparency = 1
Text3.BorderSizePixel = 0
Text3.Position = UDim2.new(0.0433905683, 0, 0.270020425, 0)
Text3.Size = UDim2.new(0, 148, 0, 50)
Text3.Font = Enum.Font.SciFi
Text3.Text = "Your player name is: "
Text3.TextColor3 = Color3.new(1, 1, 1)
Text3.TextSize = 14
Text3.TextXAlignment = Enum.TextXAlignment.Left

--Player NAME
PlayerName.Name = "PlayerName"
PlayerName.Parent = Menu
PlayerName.BackgroundColor3 = Color3.new(1, 1, 1)
PlayerName.BackgroundTransparency = 1
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0.33689186, 0, 0.268392533, 0)
PlayerName.Size = UDim2.new(0, 200, 0, 50)
PlayerName.Font = Enum.Font.SciFi
PlayerName.Text = "PLAYER_NAME"
PlayerName.TextColor3 = Color3.new(1, 1, 1)
PlayerName.TextSize = 14
PlayerName.TextXAlignment = Enum.TextXAlignment.Left

--Closed MENU GUI
ClosedMenu.Name = "ClosedMenu"
ClosedMenu.Parent = ScreenGui
ClosedMenu.BackgroundColor3 = Color3.new(1, 1, 1)
ClosedMenu.Position = UDim2.new(0, 0, 0.441451967, 0)
ClosedMenu.Size = UDim2.new(0, 100, 0, 100)
ClosedMenu.Visible = false
ClosedMenu.Style = Enum.FrameStyle.RobloxRound
ClosedMenu.Draggable = true
ClosedMenu.Active=true

--Open BUTTON
TextButton.Parent = ClosedMenu
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Position = UDim2.new(0.0391998142, 0, 0.49639982, 0)
TextButton.Size = UDim2.new(0, 79, 0, 38)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "Open"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14
TextButton.MouseButton1Down:connect(function()
	Menu.Visible = true
	ClosedMenu.Visible = false
end)

--Title
TextLabel.Parent = ClosedMenu
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.217200011, 0, -0.0839999393, 0)
TextLabel.Size = UDim2.new(0, 48, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "HyHUB"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
