task.spawn(function()
pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-GuiStealer-12751", true))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/gameprober-lua/main/gp.lua"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Free-Hub-Watermark-18808"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Chat-Bypasser-V4-dot-8-22727"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the background frame for the GUI (smaller than before)
local backgroundFrame = Instance.new("Frame")
backgroundFrame.Name = "BackgroundFrame"
backgroundFrame.Parent = screenGui
backgroundFrame.Size = UDim2.new(0.2, 0, 0.4, 0)  -- 20% width, 40% height (smaller)
backgroundFrame.Position = UDim2.new(0.4, 0, 0.35, 0)  -- Positioned centrally
backgroundFrame.BackgroundColor3 = Color3.fromRGB(169, 169, 169)  -- Grey background
backgroundFrame.BackgroundTransparency = 0.5  -- Semi-transparent
backgroundFrame.Visible = false  -- Initially hidden

-- Create Button 1
local textLabel1 = Instance.new("TextLabel")
textLabel1.Name = "TextLabel1"
textLabel1.Parent = backgroundFrame
textLabel1.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textLabel1.Position = UDim2.new(0, 0, 0, 0)  -- At the top of the frame
textLabel1.Text = "Click For Infinity Cash"
textLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textLabel1.BackgroundTransparency = 1  -- Transparent background
textLabel1.TextSize = 10  -- Smaller text

local textButton1 = Instance.new("TextButton")
textButton1.Name = "TextButton1"
textButton1.Parent = backgroundFrame
textButton1.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textButton1.Position = UDim2.new(0, 0, 0.1, 0)  -- Positioned below TextLabel1
textButton1.Text = "Game Name: Hood Wars"
textButton1.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Grey button background
textButton1.BackgroundTransparency = 0.5  -- Semi-transparent background
textButton1.TextSize = 10  -- Smaller text size

-- Create Button 2
local textLabel2 = Instance.new("TextLabel")
textLabel2.Name = "TextLabel2"
textLabel2.Parent = backgroundFrame
textLabel2.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textLabel2.Position = UDim2.new(0, 0, 0.2, 0)  -- Positioned below TextButton1
textLabel2.Text = "Happy Land!"
textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textLabel2.BackgroundTransparency = 1  -- Transparent background
textLabel2.TextSize = 10  -- Smaller text size

local textButton2 = Instance.new("TextButton")
textButton2.Name = "TextButton2"
textButton2.Parent = backgroundFrame
textButton2.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textButton2.Position = UDim2.new(0, 0, 0.3, 0)  -- Positioned below TextLabel2
textButton2.Text = "Load Script"
textButton2.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Grey button background
textButton2.BackgroundTransparency = 0.5  -- Semi-transparent background
textButton2.TextSize = 10  -- Smaller text size

-- Create Button 3
local textLabel3 = Instance.new("TextLabel")
textLabel3.Name = "TextLabel3"
textLabel3.Parent = backgroundFrame
textLabel3.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textLabel3.Position = UDim2.new(0, 0, 0.4, 0)  -- Positioned below TextButton2
textLabel3.Text = "Like Or Pass"
textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textLabel3.BackgroundTransparency = 1  -- Transparent background
textLabel3.TextSize = 10  -- Smaller text size

local textButton3 = Instance.new("TextButton")
textButton3.Name = "TextButton3"
textButton3.Parent = backgroundFrame
textButton3.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textButton3.Position = UDim2.new(0, 0, 0.5, 0)  -- Positioned below TextLabel3
textButton3.Text = "Load Infinity Cash"
textButton3.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Grey button background
textButton3.BackgroundTransparency = 0.5  -- Semi-transparent background
textButton3.TextSize = 10  -- Smaller text size

-- Create Button 4
local textLabel4 = Instance.new("TextLabel")
textLabel4.Name = "TextLabel4"
textLabel4.Parent = backgroundFrame
textLabel4.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textLabel4.Position = UDim2.new(0, 0, 0.6, 0)  -- Positioned below TextButton3
textLabel4.Text = "City Defense Tycoon"
textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textLabel4.BackgroundTransparency = 1  -- Transparent background
textLabel4.TextSize = 10  -- Smaller text size

local textButton4 = Instance.new("TextButton")
textButton4.Name = "TextButton4"
textButton4.Parent = backgroundFrame
textButton4.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textButton4.Position = UDim2.new(0, 0, 0.7, 0)  -- Positioned below TextLabel4
textButton4.Text = "Loaded Infinity Cash!"
textButton4.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Grey button background
textButton4.BackgroundTransparency = 0.5  -- Semi-transparent background
textButton4.TextSize = 10  -- Smaller text size
-- New Button 5
local textLabel5 = Instance.new("TextLabel")
textLabel5.Name = "TextLabel5"
textLabel5.Parent = backgroundFrame
textLabel5.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textLabel5.Position = UDim2.new(0, 0, 0.8, 0)  -- Positioned below TextButton4
textLabel5.Text = "The Floor is LAVA"
textLabel5.TextColor3 = Color3.fromRGB(255, 255, 255)  -- White text
textLabel5.BackgroundTransparency = 1  -- Transparent background
textLabel5.TextSize = 10  -- Smaller text size

local textButton5 = Instance.new("TextButton")
textButton5.Name = "TextButton5"
textButton5.Parent = backgroundFrame
textButton5.Size = UDim2.new(1, 0, 0.1, 0)  -- 10% height
textButton5.Position = UDim2.new(0, 0, 0.9, 0)  -- Positioned below TextLabel5
textButton5.Text = "Activate New Feature"
textButton5.BackgroundColor3 = Color3.fromRGB(128, 128, 128)  -- Grey button background
textButton5.BackgroundTransparency = 0.5  -- Semi-transparent background
textButton5.TextSize = 10  -- Smaller text size

-- Create the toggle button (button to show/hide the GUI)
local toggleButton = Instance.new("ImageButton")
toggleButton.Name = "ToggleButton"
toggleButton.Parent = screenGui
toggleButton.Size = UDim2.new(0, 100, 0, 100)  -- Bigger button size (100x100)
toggleButton.Position = UDim2.new(0.5, -50, 0.1, 0)  -- Positioned at the top center
toggleButton.Image = "rbxassetid://12374566010"  -- Set image (you can use any image ID)
toggleButton.BackgroundTransparency = 1  -- Transparent background
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Neutron.lua/main/MainNeutron.lua"))()
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    messagebox("STILL PARENTS?", "THOSE WHO KNOWS RAGE", 4)
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/vsqzz/Vanity-0.1/refs/heads/main/Hub"))();
end) wait(1)
end) wait(3)
task.spawn(function()
pcall(function()
    lloadstring(game:HttpGet("https://raw.githubusercontent.com/Luarmor123/community-Y-HUB/refs/heads/main/YHUB"))()
end) wait(1)
end) wait(3)
