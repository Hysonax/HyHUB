local LaundrySimulatorMenu = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local eTP = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local AntiAFK = Instance.new("TextButton")
local GamePasses = Instance.new("TextButton")
local DoubleCoins = Instance.new("TextButton")
local GamePassesText = Instance.new("TextLabel")
 
LaundrySimulatorMenu.Name = "LaundrySimulatorMenu"
LaundrySimulatorMenu.Parent = game.CoreGui
LaundrySimulatorMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = LaundrySimulatorMenu
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.213640958, 0, 0.286778152, 0)
Frame.Size = UDim2.new(0, 394, 0, 203)
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
Title.Position = UDim2.new(-0.0208790563, 0, -0.085619621, 0)
Title.Size = UDim2.new(0, 350, 0, 50)
Title.Font = Enum.Font.SciFi
Title.Text = "HyHUB - Laundry Simulator scripts"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 24

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.new(1, 1, 1)
AutoFarm.Position = UDim2.new(0.0109999999, 0, 0.220712006, 0)
AutoFarm.Size = UDim2.new(0, 118, 0, 48)
AutoFarm.Style = Enum.ButtonStyle.RobloxRoundButton
AutoFarm.Font = Enum.Font.SciFi
AutoFarm.Text = "AutoFarm"
AutoFarm.TextColor3 = Color3.new(0, 0, 0)
AutoFarm.TextSize = 14
AutoFarm.MouseButton1Down:connect(function()
	getgenv().on = true -- autofarm toggle

	local Unload = game:GetService("ReplicatedStorage").Events.UnloadWashingMachine
	local Load = game:GetService("ReplicatedStorage").Events.LoadWashingMachine
	local Drop = game:GetService("ReplicatedStorage").Events.DropClothesInChute
	local Grab = game:GetService("ReplicatedStorage").Events.GrabClothing

	local function getPlot()
		for i,v in pairs (game.Workspace.Plots:GetChildren()) do
			if v.Owner.Value == game.Players.LocalPlayer then
				return v
			end
		end
	end

	while wait(.1) and getgenv().on do
		-- Clothes from people
		for i,v in pairs (game.Workspace.Debris.Clothing:GetChildren()) do
			if v:FindFirstChild('SpecialTag') ~= nil then
				Grab:FireServer(v)
			else
				wait(.01)
				Grab:FireServer(v)
			end
		end
		-- Clothes from crates
		for i,v in pairs (game.Workspace.Debris.Crates:GetChildren()) do
			Grab:FireServer(v)
		end
		-- Load and unload machines
		for i,v in pairs (getPlot().WashingMachines:GetChildren()) do
			Load:FireServer(v)
			Unload:FireServer(v)
		end
		-- Drop off washed clothes
		Drop:FireServer()
	end
end)

eTP.Name = "eTP"
eTP.Parent = Frame
eTP.BackgroundColor3 = Color3.new(1, 1, 1)
eTP.Position = UDim2.new(0.34223479, 0, 0.579999983, 0)
eTP.Size = UDim2.new(0, 118, 0, 48)
eTP.Style = Enum.ButtonStyle.RobloxRoundButton
eTP.Font = Enum.Font.SciFi
eTP.Text = "eTP"
eTP.TextColor3 = Color3.new(0, 0, 0)
eTP.TextSize = 14
eTP.MouseButton1Down:connect(function()
	plr = game.Players.LocalPlayer hum = plr.Character.HumanoidRootPart mouse = plr:GetMouse() mouse.KeyDown:connect(function(key) if key == "e" then if mouse.Target then hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) end end end)

    plr = game.Players.LocalPlayer
    hum = plr.Character.HumanoidRootPart
    mouse = plr:GetMouse()
    mouse.KeyDown:connect(function(key)
        if key == "e" then
            if mouse.Target then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
            end
        end
    end)
end)


Speed.Name = "Speed"
Speed.Parent = Frame
Speed.BackgroundColor3 = Color3.new(1, 1, 1)
Speed.Position = UDim2.new(0.0109999999, 0, 0.579999983, 0)
Speed.Size = UDim2.new(0, 118, 0, 48)
Speed.Style = Enum.ButtonStyle.RobloxRoundButton
Speed.Font = Enum.Font.SciFi
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextSize = 14
Speed.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Gamepasses.NitroSpeed.Value = true
end)


AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = Frame
AntiAFK.BackgroundColor3 = Color3.new(1, 1, 1)
AntiAFK.Position = UDim2.new(0.34223479, 0, 0.220712006, 0)
AntiAFK.Size = UDim2.new(0, 118, 0, 48)
AntiAFK.Style = Enum.ButtonStyle.RobloxRoundButton
AntiAFK.Font = Enum.Font.SciFi
AntiAFK.Text = "AntiAFK"
AntiAFK.TextColor3 = Color3.new(0, 0, 0)
AntiAFK.TextSize = 14
AntiAFK.MouseButton1Down:connect(function()
	warn("AntiAFK comming soon!!!")
end)


GamePasses.Name = "GamePasses"
GamePasses.Parent = Frame
GamePasses.BackgroundColor3 = Color3.new(1, 1, 1)
GamePasses.Position = UDim2.new(0.67726016, 0, 0.580317855, 0)
GamePasses.Size = UDim2.new(0, 118, 0, 48)
GamePasses.Style = Enum.ButtonStyle.RobloxRoundButton
GamePasses.Font = Enum.Font.SciFi
GamePasses.Text = "GamePasses"
GamePasses.TextColor3 = Color3.new(0, 0, 0)
GamePasses.TextSize = 14
GamePasses.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Gamepasses.VIP.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.DoubleCoins.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.BasketCapacity.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.NitroSpeed.Value = true
    game:GetService("Players").LocalPlayer.Gamepasses.DoubleClothes.Value = true
end)


DoubleCoins.Name = "DoubleCoins"
DoubleCoins.Parent = Frame
DoubleCoins.BackgroundColor3 = Color3.new(1, 1, 1)
DoubleCoins.Position = UDim2.new(0.67726022, 0, 0.220712021, 0)
DoubleCoins.Size = UDim2.new(0, 118, 0, 48)
DoubleCoins.Style = Enum.ButtonStyle.RobloxRoundButton
DoubleCoins.Font = Enum.Font.SciFi
DoubleCoins.Text = "2x Coins"
DoubleCoins.TextColor3 = Color3.new(0, 0, 0)
DoubleCoins.TextSize = 14
DoubleCoins.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Gamepasses.DoubleCoins.Value = true
end)


GamePassesText.Name = "GamePassesText"
GamePassesText.Parent = Frame
GamePassesText.BackgroundColor3 = Color3.new(1, 1, 1)
GamePassesText.BackgroundTransparency = 1
GamePassesText.BorderSizePixel = 0
GamePassesText.Position = UDim2.new(0.00974006578, 0, 0.889781356, 0)
GamePassesText.Size = UDim2.new(0, 200, 0, 28)
GamePassesText.Font = Enum.Font.SciFi
GamePassesText.Text = "GamePasses may not work"
GamePassesText.TextColor3 = Color3.new(1, 1, 1)
GamePassesText.TextSize = 14
GamePassesText.TextXAlignment = Enum.TextXAlignment.Left