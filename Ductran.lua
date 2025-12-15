-- Simple Menu Test
local player = game.Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "TestMenu"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0,200,0,120)
frame.Position = UDim2.new(0.5,-100,0.5,-60)
frame.BackgroundColor3 = Color3.fromRGB(40,40,40)

local btn = Instance.new("TextButton")
btn.Parent = frame
btn.Size = UDim2.new(1,0,0,40)
btn.Text = "Speed ON"

btn.MouseButton1Click:Connect(function()
	player.Character:WaitForChild("Humanoid").WalkSpeed = 50
end)
