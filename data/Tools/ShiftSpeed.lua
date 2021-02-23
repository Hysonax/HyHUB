local player = game.Players.LocalPlayer
repeat wait() until player.Character -- Wait until character isn't nil
local char = player.Character
local hum = char:WaitForChild("Humanoid")
local inputService = game:GetService('UserInputService') 
--  UserInputService is the new way to do anything with user input now



-- Easy way to store and check for variables is to use a table Dictionary
local keys = {

    ['Enum.KeyCode.LeftShift'] = true;
    ['Enum.KeyCode.RightShift'] = true;

}

inputService.InputBegan:connect(function(inputType)
    if inputType.UserInputType == Enum.UserInputType.Keyboard then 
        -- Make sure you're checking for KeyBoard input only.
        local makeKeyCodeAString = tostring(inputType.KeyCode)
        if keys[makeKeyCodeAString] then 
            local speed = hum.WalkSpeed <= 16 and 35 or 16 
            -- Ternary operator 
            -- speed is equal to thiss
            --[[
                if hum.WalkSpeed <= 16 then 
                    speed = 30
                else
                    speed = 16
                end
            --]]
            hum.WalkSpeed = speed
        end
    end
end)