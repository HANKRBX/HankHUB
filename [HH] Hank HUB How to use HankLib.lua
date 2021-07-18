local Library =
    loadstring(
    game:HttpGet("https://raw.githubusercontent.com/HANKRBX/HankHUB/main/%5BHH%5D%20Hank%20HUB%20HankLib.lua", true)
)() -- Library Loadstring

local Window = Library:Window("YourHUBName", "Adopt Me Scam") -- Create a new Window and Main Title

local NewTab = Window:Tab("TabName", "rbxassetid://3926305904", Vector2.new(964, 924)) -- Create a Tab Button, Icon, Icon Offset

NewTab:Section("Section Name") -- Create a Section (You must to create a Section first or else other functions aren't working)

NewTab:Label("Label") -- Create a Label

NewTab:Button( -- Create a Button
    "Button", -- Name
    function()
        print("Button Pressed")
    end
)

NewTab:Toggle( -- Create a Toggle Button
    "Toggle", -- Name
    function(toggle) 
        if toggle == true then -- When toggle on
            print("Toggle On")
        else -- When toggle off
            print("Toggle Off")
        end
    end
)

NewTab:Slider( -- Create a Slider
    "Slider", -- Name
    16, -- Minimal Value
    500, -- Maximum Value
    function(value)
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = value -- For example how is it works
    end
)

NewTab:TextBox( -- Create a TextBox
    "TextBox", -- Name
    function(text)
        print("Text")
    end
)

NewTab:Dropdown( -- Create a TextBox
    "Dropdown", -- Name
    {"Button1", "Button2", "Button3"}, -- List
    function(v) -- Create a Dropdown, and Add Button on List "{"Button1", "Button2", "Button3"}"
        print(v)
    end
)
