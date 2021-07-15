local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/HANKRBX/HankHUB/main/%5BHH%5D%20Hank%20HUB%20HankLib.lua",true))() -- Library Loadstring

local Window = Library:Window("YourHUBName", "Adopt Me Scam") -- Create a new Window and Main Title

local NewTab = Window:Tab("TabName", "rbxassetid://3926305904", Vector2.new(964, 924)) -- Create a Tab Button, Icon, Icon Offset

NewTab:Section("Section Name") -- Create a Section (You must to create a Section first or else other functions aren't working)

NewTab:Label("Label") -- Create a Label

NewTab:Button("Button", function() -- Create a Button
    print("Button Pressed")
end)

NewTab:Toggle("Toggle", function(toggle) -- Create a Toggle Button
    if toggle == true then -- When toggle on
        print("Toggle On")
    else                   -- When toggle off
        print("Toggle Off")
    end
end)

NewTab:Slider("Slider", 16, 500, function(value) -- Create a Slider, Minimal Value (16), Max Value (500)
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").WalkSpeed = value -- For example how is it works
end)

NewTab:TextBox("TextBox", function(text)
    print("Text")
end)

NewTab:Dropdown("Dropdown", {"Button1", "Button2", "Button3"}, function(v) -- Create a Dropdown, and Add Button on List "{"Button1", "Button2", "Button3"}"
    print(v)
end)