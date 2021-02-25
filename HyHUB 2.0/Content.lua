local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/OxyHub/main/documentation", true))() -- gets lib

local PlrName = string.sub( game.Players.LocalPlayer:GetFullName(), 9)
local speedSwitch
local speedBoostValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
local oldSpeedValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed

InfiniteJumpEnabled = false

game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

local Version = "2.0.0"
local GameName = ""
if game.PlaceId == 6304340354 then
    GameName = "ROWpuREd's Place"
elseif game.PlaceId == 6305942109 then
    GameName = "Laundry Simulator"
elseif game.PlaceId == 286090429 then
    GameName = "Arsenal"
else
	GameName = "Unknown"
end

local Window = Lib:Create();--creates main lib
------------------------------------------------------------------------------------------------------------
local MainTab = Window:CreateSection("Home") -- Create Section makes new tab

MainTab:CreateLabel("Welcome to HyHub") -- 1 Label Text
MainTab:CreateButton(PlrName,"Player Name:", function() -- 1 (Button Info) 2 (Button Text)
   print("Player name is: "..PlrName)
end)
MainTab:CreateButton(GameName,"Game Name:", function() -- 1 (Button Info) 2 (Button Text)
    print("Game name is: "..GameName)
end)
MainTab:CreateButton(Version,"Version:", function() -- 1 (Button Info) 2 (Button Text)
    print("Version is: "..Version)
end)
MainTab:CreateKeyBind("Opens or Closes UI", Enum.KeyCode.F, function() --1 (Keybind info); 2 default keybind
   Lib:CloseOpen()  -- closes or opens on F click
end)
MainTab:CreateButton("Destroy GUI","Destroy", function() --1 (Button Text); 2 (Button Info)
   Lib:Destroy() -- function to destroy UI
end)

-- AntiCheatByPassesPage
------------------------------------------------------------------------------------------------------------
local AntiCheatByPassesPage = Window:CreateSection("ByPasses") -- Create Section makes new tab

AntiCheatByPassesPage:CreateLabel("AntiCheat ByPasses") -- 1 Label Text
AntiCheatByPassesPage:CreateToggle("Basic ByPass", function(BasicByPass) --1 (Toggle Info) / state = on or off
   if BasicByPass == true then
      local vu = game:GetService("VirtualUser")
      game:GetService("Players").LocalPlayer.Idled:connect(function()
         vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
         wait(1)
         vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      end)
      print("BasicByPass = on")
   else
      print("BasicByPass = off")
   end
end)
AntiCheatByPassesPage:CreateToggle("ScreenShot ByPass", function(ScreenShotByPass) --1 (Toggle Info) / state = on or off
   if ScreenShotByPass == true then
      setfflag("AbuseReportScreenshot", "True")
      print("ScreenShotByPass = on")
   else
      setfflag("AbuseReportScreenshot", "False")
      print("ScreenShotPass = off")
   end
end)

-- ToolsPage
------------------------------------------------------------------------------------------------------------
local ToolsPage = Window:CreateSection("Tools") -- Create Section makes new tab

ToolsPage:CreateLabel("Tools") -- 1 Label Text
ToolsPage:CreateButton("v 5.0","Infinite Yield:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
   print("Infinite Yield = injected")
end)
ToolsPage:CreateButton("v 1.0","FPS Boost:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://github.com/MarsQQ/ScriptHubScripts/blob/master/FPS%20Boost'),true))()
   print("FPS Boost = on")
end)
ToolsPage:CreateButton("Inject","Alt + Print:", function() -- 1 (Button Info) 2 (Button Text)
   local Plr = game:GetService("Players").LocalPlayer
   local Mouse = Plr:GetMouse()

   Mouse.Button1Down:connect(function()
   if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftAlt) then return end
   if not Mouse.Target then return end
       print(Mouse.Target)
   end)
   print("Alt + Print = injected")
end)
ToolsPage:CreateButton("Inject","Ctrl + Del:", function() -- 1 (Button Info) 2 (Button Text)
   local Plr = game:GetService("Players").LocalPlayer
   local Mouse = Plr:GetMouse()

   Mouse.Button1Down:connect(function()
   if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
   if not Mouse.Target then return end
       Mouse.Target:Destroy()
   end)
   print("Ctrl + Del = injected")
end)
ToolsPage:CreateButton("Inject","Invisible Fling:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/Invisible%20Fling.txt'),true))()
   print("Invisible Fling = injected")
   print("Z = Activate")
   print("X = Respawn")
end)
ToolsPage:CreateButton("v 2.0","Reviz Admin:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/Reviz%20Admin.txt'),true))()
   print("Reviz Admin = injected")
end)
ToolsPage:CreateButton("v 2.0","Explorer:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/Explorer.lua'),true))()
   print("Explorer = injected")
end)
ToolsPage:CreateButton("Inject","LagSwitch:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/FrezzeSwitch.lua'),true))()
   print("LagSwitch = injected")
end)
ToolsPage:CreateButton("v1","AntiAFK:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/AfkTimer.lua'),true))()
   print("AntiAFK1 = injected")
end)
ToolsPage:CreateButton("v2","AntiAFK:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Game%20Scripts/Laundry%20Simulator/Scripts/AntiAFK.lua'),true))()
   print("AntiAFK2 = injected")
end)

-- MovementPage
------------------------------------------------------------------------------------------------------------
local MovementPage = Window:CreateSection("Movement") -- Create Section makes new tab
MovementPage:CreateLabel("Movement") -- 1 Label Text
MovementPage:CreateSlider(16, 500, "Walkspeed", function(Walkspeed) -- 1 (Min Value) 2 (Max Value) 3 (Slider Info)
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Walkspeed
   oldSpeedValue = Walkspeed
end)
MovementPage:CreateSlider(16, 500, "Walkspeed Boost Value", function(boostValueFuncion) -- 1 (Min Value) 2 (Max Value) 3 (Slider Info)
   speedBoostValue = boostValueFuncion
end)
MovementPage:CreateKeyBind("Walkspeed Boost Keybind", Enum.KeyCode.LeftShift, function() --1 (Keybind info); 2 default keybind
   if speedSwitch == true then
      oldSpeedValue = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedBoostValue
      speedSwitch = false
   else
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = oldSpeedValue
      speedSwitch = true
   end
end)
MovementPage:CreateButton("Give","Click TP tool:", function() -- 1 (Button Info) 2 (Button Text)
   mouse = game.Players.LocalPlayer:GetMouse()
   tool = Instance.new("Tool")
   tool.RequiresHandle = false
   tool.Name = "Click Teleport"
   tool.Activated:connect(function()
   local pos = mouse.Hit+Vector3.new(0,2.5,0)
   pos = CFrame.new(pos.X,pos.Y,pos.Z)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
   end)
   tool.Parent = game.Players.LocalPlayer.Backpack
end)
MovementPage:CreateButton("Inject","Double Jump:", function() -- 1 (Button Info) 2 (Button Text)
   loadstring(game:HttpGet(('https://raw.githubusercontent.com/Hysonax/HyHUB/main/data/Tools/DoubleJump.lua'),true))()
end)
MovementPage:CreateToggle("Infinity Jump:", function(InfJumpSwitch) --1 (Toggle Info) / state = on or off
   if InfJumpSwitch then
      InfiniteJumpEnabled = true
   else 
      InfiniteJumpEnabled = false
   end
end)

-- GameScriptsPage
------------------------------------------------------------------------------------------------------------
local GameScriptsPage = Window:CreateSection("Game Scripts") -- Create Section makes new tab
------------------------------------------------------------------------------------------------------------