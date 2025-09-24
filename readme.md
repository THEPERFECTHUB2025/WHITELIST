

  Roblox Script Exploit UI Library

  
    A powerful user interface library for Roblox script executors, designed to create customizable and interactive UI elements.
    
    
    View Demo
    ·
    Report Bug
    ·
    Request Feature
  

  
    
  


Getting Started
This will go through how to use the library in your executor.
Prerequisites
This is how you import the library through the repository.

Example:
-- EXTRA INFO: This library is open-source and can be modified. Contributions are welcome!
-- Flags can be used to store and access UI element states.
-- Future updates may include theming and additional customization options.

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/example/repo/main/library.lua"))()
local flags = Library.flags -- access flags from here.



Elements

Window
local Window = Library:Window({
    name = "Exploit UI",
    size = UDim2.fromOffset(600, 400)
})


Page
local Page = Window:Page({
    name = "Main Page",
    columns = 2,
    subtabs = true
})


SubPage
local SubPage = Page:SubPage({
    icon = "rbxassetid://123456789",
    columns = 1
})


Section
local Section = Page:Section({
    name = "Settings",
    side = 1
})


MultiSection
local Sections = Page:MultiSection({
    sections = {"General", "Advanced"},
    side = 2
})


ScrollableSection
local ScrollableSection = Page:ScrollableSection({
    name = "Scrollable Content",
    side = 1,
    size = 200
})


Divider
Section:Divider()


Label
local Label = Section:Label({
    name = "Welcome Text",
    alignment = "Center"
})


Toggle
local Toggle = Section:Toggle({
    name = "Enable Feature",
    default = false,
    flag = "FeatureToggle",
    callback = function(value)
        print(value)
        print(flags["FeatureToggle"])
    end
})


Button
Section:Button({
    name = "Click Me",
    callback = function()
        print("Button clicked!")
    end
})


Slider
Section:Slider({
    name = "Speed",
    suffix = "%",
    flag = "SpeedSlider",
    default = 50,
    min = 0,
    max = 100,
    decimals = 1,
    callback = function(value)
        print(value)
        print(flags["SpeedSlider"])
    end
})


Textbox
Section:Textbox({
    name = "Input",
    default = "",
    placeholder = "Enter text here",
    flag = "TextInput",
    callback = function(text)
        print(text)
        print(flags["TextInput"])
    end
})


Dropdown
Section:Dropdown({
    name = "Select Option",
    items = {"Option 1", "Option 2", "Option 3"},
    default = "Option 1",
    flag = "DropdownSelection",
    multi = false,
    callback = function(option)
        print(option) -- Will return a table if you set multi to true
        print(flags["DropdownSelection"])
    end
})


Listbox
Section:Listbox({
    name = "List Selection",
    size = 150,
    items = {"Item 1", "Item 2", "Item 3"},
    default = "Item 1",
    multi = true,
    flag = "ListboxSelection",
    callback = function(selection)
        print(selection) -- Will return a table if multi is true
        print(flags["ListboxSelection"])
    end
})


Keybind
-- Can be parented to a section or toggle using Toggle:Keybind({})
Section:Keybind({
    name = "UI Toggle",
    mode = "Toggle",
    default = Enum.KeyCode.End,
    flag = "UIToggleKey",
    callback = function(active)
        print(active)
        print(flags["UIToggleKey"].Active)
    end
})


Colorpicker
-- Can be parented to a section or toggle using Toggle:Colorpicker({})
Section:Colorpicker({
    name = "Color Picker",
    default = Color3.new(1, 1, 1),
    alpha = true,
    flag = "ColorSelection",
    callback = function(color, alpha)
        print(color, alpha)
        print(flags["ColorSelection"].Color, flags["ColorSelection"].Transparency)
    end
})


Watermark
Library:Watermark("My Exploit UI")


Notification
Library:Notification("Welcome!", 5, Color3.fromRGB(0, 255, 0), { icon = "rbxassetid://123456789" })


KeybindList
Library:KeybindList()



Footer
© 2025 GitHub, Inc.
