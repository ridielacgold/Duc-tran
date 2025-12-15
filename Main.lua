-- Simple Single Menu
local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "SimpleMenu"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Khung menu
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 260, 0, 140)
frame.Position = UDim2.new(0.5, -130, 0.5, -70)
frame.BackgroundColor3 = Color3.fromRGB(25,25,25)
frame.BorderSizePixel = 0

-- Bo góc
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0,12)

-- Tiêu đề
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, 0, 0, 35)
title.BackgroundTransparency = 1
title.Text = "TEST MENU"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16

-- Nút Speed
local btn = Instance.new("TextButton")
btn.Parent = frame
btn.Size = UDim2.new(1, -20, 0, 40)
btn.Position = UDim2.new(0, 10, 0, 60)
btn.Text = "Speed: OFF"
btn.Font = Enum.Font.Gotham
btn.TextSize = 14
btn.TextColor3 = Color3.fromRGB(255,255,255)
btn.BackgroundColor3 = Color3.fromRGB(50,50,50)

local btnCorner = Instance.new("UICorner", btn)
btnCorner.CornerRadius = UDim.new(0,8)

-- Chức năng
local on = false
btn.MouseButton1Click:Connect(function()
	on = not on
	local hum = player.Character and player.Character:FindFirstChild("Humanoid")
	if hum then
		if on then
			hum.WalkSpeed = 50
			btn.Text = "Speed: ON"
		else
			hum.WalkSpeed = 16
			btn.Text = "Speed: OFF"
		end
	end
end)
