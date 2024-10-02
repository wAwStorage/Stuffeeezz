--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BackgroundTransparency = 0.800000011920929
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.317708343, 0, 0.268089056, 0)
Main.Size = UDim2.new(0, 700, 0, 605)

TextBox.Parent = Main
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 0.6000000238418579
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0, 0, 0.776000023, 0)
TextBox.Size = UDim2.new(0, 700, 0, 50)
TextBox.Font = Enum.Font.JosefinSans
TextBox.PlaceholderColor3 = Color3.new(0.67451, 0.67451, 0.67451)
TextBox.PlaceholderText = "Key"
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.TextSize = 35
TextBox.TextWrapped = true

UICorner.Parent = Main

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 700, 0, 605)
TextLabel.Font = Enum.Font.JosefinSans
TextLabel.Text = "WaW Hub"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Main
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 700, 0, 75)
TextLabel_2.Font = Enum.Font.JosefinSans
TextLabel_2.Text = "If you wan't the key, you need to get it from me, .wawreal <- my discord"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 0.6000000238418579
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.883471072, 0)
TextButton.Size = UDim2.new(0, 700, 0, 50)
TextButton.Font = Enum.Font.JosefinSans
TextButton.Text = "Submit"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 39
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	if TextBox.Text == "wawreal2024scripthubsigma555" then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/wAwStorage/Stuffeeezz/refs/heads/main/wawhubskibidiohiorizz555.lua"))()
		ScreenGui:Destroy()
		end
	end)
