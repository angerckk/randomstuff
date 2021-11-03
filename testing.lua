local ezlib = loadstring(game:HttpGet("https://pastebin.com/raw/2Fh9FL8c"))();
local mainGUI = ezlib.create("My Script");
local tab1 = mainGUI.newTab("Tab 1");
local tab2 = mainGUI.newTab("Tab 2");

tab1.newTitle("Ez Lib");
tab1.newDiv();

tab1.newButton("Button", function()
    print("Clicked");
end)

tab1.newCheckbox("Checkbox", false, function(state)
    print(state);
end)

tab1.newSlider("Slider", 50, 0, 100, function(state)
    print(state);
end)

-----------------------------

tab2.newTitle("Ez Lib");
tab2.newDiv();

tab2.newKeybind("Keybind", Enum.KeyCode.A, function(state)
    print(state.Name)   -- state = Enum.KeyCode
end)

local dropdown = tab2.newDropdown("Dropdown",game.Players.LocalPlayer.Name, game.Players:GetPlayers(), function(playerName)
    print(playerName)
end)

local function updateDropdown()
    dropdown.changeData(game.Players:GetPlayers());
end

game.Players.PlayerAdded:Connect(updateDropdown);
game.Players.PlayerRemoving:Connect(updateDropdown);

tab2.newTextbox("Textbox", "type...", function(state)
    print(state);
end)

mainGUI.openTab(tab1);
