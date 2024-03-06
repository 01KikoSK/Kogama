-- Cheat Menu for Kogama

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
Title.Text = "Cheat Menu"
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 24
Title.TextColor3 = Color3.new(1, 1, 1)

-- Create a new button for invincibility
local InvincibilityButton = Instance.new("TextButton")
InvincibilityButton.Parent = Frame
InvincibilityButton.Size = UDim2.new(1, 0, 0.1, 0)
InvincibilityButton.Position = UDim2.new(0, 0, 0.15, 0)
InvincibilityButton.Text = "Invincibility"
InvincibilityButton.Font = Enum.Font.SourceSans
InvincibilityButton.TextSize = 18
InvincibilityButton.TextColor3 = Color3.new(1, 1, 1)

-- Function to make the player invincible
function Invincibility()
	Player.Character.Humanoid.Health = math.huge
	Player.Character.Humanoid.MaxHealth = math.huge
end

-- Connect the button to the function
InvincibilityButton.MouseButton1Click:Connect(Invincibility)

-- Create a new button for speed
local SpeedButton = Instance.new("TextButton")
SpeedButton.Parent = Frame
SpeedButton.Size = UDim2.new(1, 0, 0.1, 0)
SpeedButton.Position = UDim2.new(0, 0, 0.25, 0)
SpeedButton.Text = "Increase Speed"
SpeedButton.Font = Enum.Font.SourceSans
SpeedButton.TextSize = 18
SpeedButton.TextColor3 = Color3.new(1, 1, 1)

-- Function to increase the player's speed
function IncreaseSpeed()
	Player.Character.Humanoid.WalkSpeed = Player.Character.Humanoid.WalkSpeed + 50
end

-- Connect the button to the function
SpeedButton.MouseButton1Click:Connect(IncreaseSpeed)