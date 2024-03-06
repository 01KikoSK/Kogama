-- Mod Menu for Kogama

local Menu = script.Parent
local Player = game.Players.LocalPlayer

-- Create a new frame for the menu
local Frame = Instance.new("Frame")
Frame.Parent = Menu
Frame.Size = UDim2.new(0.2, 0, 0.3, 0)
Frame.Position = UDim2.new(0.4, 0, 0.3, 0)
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

-- Create a new text label for the title
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0.1, 0)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "Mod Menu"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24
Title.TextColor3 = Color3.new(1, 1, 1)

-- Create a new toggle button for invincibility
local InvincibilityToggle = Instance.new("TextButton")
InvincibilityToggle.Parent = Frame
InvincibilityToggle.Size = UDim2.new(1, 0, 0.1, 0)
InvincibilityToggle.Position = UDim2.new(0, 0, 0.15, 0)
InvincibilityToggle.Text = "Invincibility"
InvincibilityToggle.Font = Enum.Font.SourceSans
InvincibilityToggle.TextSize = 18
InvincibilityToggle.TextColor3 = Color3.new(1, 1, 1)

-- Create a new toggle button for speed
local SpeedToggle = Instance.new("TextButton")
SpeedToggle.Parent = Frame
SpeedToggle.Size = UDim2.new(1, 0, 0.1, 0)
SpeedToggle.Position = UDim2.new(0, 0, 0.25, 0)
SpeedToggle.Text = "Increase Speed"
SpeedToggle.Font = Enum.Font.SourceSans
SpeedToggle.TextSize = 18
SpeedToggle.TextColor3 = Color3.new(1, 1, 1)

-- Variables to track the toggle states
local InvincibilityEnabled = false
local SpeedEnabled = false

-- Function to toggle invincibility
function ToggleInvincibility()
	if InvincibilityEnabled then
		Player.Character.Humanoid.Health = Player.Character.Humanoid.MaxHealth
		InvincibilityEnabled = false
	else
		Player.Character.Humanoid.Health = math.huge
		InvincibilityEnabled = true
	end
end

-- Function to toggle speed
function ToggleSpeed()
	if SpeedEnabled then
		Player.Character.Humanoid.WalkSpeed = 16
		SpeedEnabled = false
	else
		Player.Character.Humanoid.WalkSpeed = 100
		SpeedEnabled = true
	end
end

-- Connect the toggle buttons to the functions
InvincibilityToggle.MouseButton1Click:Connect(ToggleInvincibility)
SpeedToggle.MouseButton1Click:Connect(ToggleSpeed)