local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local eTP = Instance.new("TextButton")
local AutoFarm = Instance.new("TextButton")
local AntiAFK = Instance.new("TextButton")
local NitroSpeed = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local DoubleCoins = Instance.new("TextButton")
local InfJump = Instance.new("TextButton")
 
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.Position = UDim2.new(0.611155987, 0, 0.543887138, 0)
Frame.Size = UDim2.new(0, 384, 0, 219)
Frame.Style = Enum.FrameStyle.RobloxRound
Frame.Draggable = true
Frame.Active=true

eTP.Name = "eTP"
eTP.Parent = Frame
eTP.BackgroundColor3 = Color3.new(1, 1, 1)
eTP.Position = UDim2.new(0.69710511, 0, 0.31361264, 0)
eTP.Size = UDim2.new(0, 99, 0, 50)
eTP.Style = Enum.ButtonStyle.RobloxRoundButton
eTP.Font = Enum.Font.SciFi
eTP.Text = "eTP"
eTP.TextColor3 = Color3.new(0, 0, 0)
eTP.TextSize = 14
eTP.TextWrapped = true
eTP.MouseButton1Down:connect(function()
	plr = game.Players.LocalPlayer 
	hum = plr.Character.HumanoidRootPart 
	mouse = plr:GetMouse() 
	mouse.KeyDown:connect(function(key) if key == "e" then if mouse.Target then hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) end end end)

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

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.new(1, 1, 1)
AutoFarm.Position = UDim2.new(0.363942862, 0, 0.31172502, 0)
AutoFarm.Size = UDim2.new(0, 99, 0, 50)
AutoFarm.Style = Enum.ButtonStyle.RobloxRoundButton
AutoFarm.Font = Enum.Font.SciFi
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(0, 0, 0)
AutoFarm.TextSize = 14
AutoFarm.TextWrapped = true
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

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = Frame
AntiAFK.BackgroundColor3 = Color3.new(1, 1, 1)
AntiAFK.Position = UDim2.new(0.0332516953, 0, 0.314871103, 0)
AntiAFK.Size = UDim2.new(0, 99, 0, 50)
AntiAFK.Style = Enum.ButtonStyle.RobloxRoundButton
AntiAFK.Font = Enum.Font.SciFi
AntiAFK.Text = "Anti AFK"
AntiAFK.TextColor3 = Color3.new(0, 0, 0)
AntiAFK.TextSize = 14
AntiAFK.TextWrapped = true
AntiAFK.MouseButton1Down:connect(function()
	wait(0.5)
	local ba=Instance.new("ScreenGui")
	local ca=Instance.new("TextLabel")
	local da=Instance.new("Frame")
	local _b=Instance.new("TextLabel")
	local ab=Instance.new("TextLabel")

	ba.Parent=game.CoreGui
	ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	
	ca.Parent=ba
	ca.Active=true
	ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
	ca.Draggable=true
	ca.Position=UDim2.new(0.698610067,0,0.098096624,0)
	ca.Size=UDim2.new(0,370,0,52)
	ca.Font=Enum.Font.SourceSansSemibold
	ca.Text="Anti AFK Script"
	ca.TextColor3=Color3.new(0,1,1)
	ca.TextSize=22
	
	da.Parent=ca
	da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)
	da.Position=UDim2.new(0,0,1.0192306,0)
	da.Size=UDim2.new(0,370,0,107)
	
	_b.Parent=da
	_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
	_b.Position=UDim2.new(0,0,0.800455689,0)
	_b.Size=UDim2.new(0,370,0,21)
	_b.Font=Enum.Font.Arial
	_b.Text="Made by Hysonax"
	_b.TextColor3=Color3.new(0,1,1)
	_b.TextSize=20
	
	ab.Parent=da
	ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)
	ab.Position=UDim2.new(0,0,0.158377,0)
	ab.Size=UDim2.new(0,370,0,44)
	ab.Font=Enum.Font.ArialBold
	ab.Text="Status: Active"
	ab.TextColor3=Color3.new(0,1,1)
	ab.TextSize=20
	
	local bb=game:service'VirtualUser'
	
	game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()bb:ClickButton2(Vector2.new())
		ab.Text="Roblox Tried to kick you but I didnt let them kick you :D"
		wait(2)
		ab.Text="Status : Active"
	end)
end)

NitroSpeed.Name = "NitroSpeed"
NitroSpeed.Parent = Frame
NitroSpeed.BackgroundColor3 = Color3.new(1, 1, 1)
NitroSpeed.Position = UDim2.new(0.0346583426, 0, 0.69454968, 0)
NitroSpeed.Size = UDim2.new(0, 99, 0, 50)
NitroSpeed.Style = Enum.ButtonStyle.RobloxRoundButton
NitroSpeed.Font = Enum.Font.SciFi
NitroSpeed.Text = "Nitro Speed"
NitroSpeed.TextColor3 = Color3.new(0, 0, 0)
NitroSpeed.TextSize = 14
NitroSpeed.TextWrapped = true
NitroSpeed.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Gamepasses.NitroSpeed.Value = true
end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.0211399943, 0, -0.0314960629, 0)
TextLabel.Size = UDim2.new(0, 297, 0, 50)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Laundry Sim by Hysonax"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 25

DoubleCoins.Name = "DoubleCoins"
DoubleCoins.Parent = Frame
DoubleCoins.BackgroundColor3 = Color3.new(1, 1, 1)
DoubleCoins.Position = UDim2.new(0.363087445, 0, 0.691241801, 0)
DoubleCoins.Size = UDim2.new(0, 99, 0, 50)
DoubleCoins.Style = Enum.ButtonStyle.RobloxRoundButton
DoubleCoins.Font = Enum.Font.SciFi
DoubleCoins.Text = "2x Coins"
DoubleCoins.TextColor3 = Color3.new(0, 0, 0)
DoubleCoins.TextSize = 14
DoubleCoins.TextWrapped = true
DoubleCoins.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Gamepasses.DoubleCoins.Value = true
end)

InfJump.Name = "InfJump"
InfJump.Parent = Frame
InfJump.BackgroundColor3 = Color3.new(1, 1, 1)
InfJump.Position = UDim2.new(0.697276175, 0, 0.692500174, 0)
InfJump.Size = UDim2.new(0, 99, 0, 50)
InfJump.Style = Enum.ButtonStyle.RobloxRoundButton
InfJump.Font = Enum.Font.SciFi
InfJump.Text = "Inf Jump"
InfJump.TextColor3 = Color3.new(0, 0, 0)
InfJump.TextSize = 14
InfJump.TextWrapped = true
InfJump.MouseButton1Down:connect(function()
	InfiniteJumpEnabled = true
	game:GetService("UserInputService").JumpRequest:connect(function()
		if InfiniteJumpEnabled then
			game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
		end
	end)
end)