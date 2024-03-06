-- Trainer for Kogama

local Player = game.Players.LocalPlayer

-- Function to make the player invincible
function MakeInvincible()
	Player.Character.Humanoid.Health = math.huge
	Player.Character.Humanoid.MaxHealth = math.huge
end

-- Function to increase the player's speed
function IncreaseSpeed()
	Player.Character.Humanoid.WalkSpeed = Player.Character.Humanoid.WalkSpeed + 50
end

-- Function to give the player a weapon
function GiveWeapon(WeaponId)
	local Tool = Instance.new("Tool")
	Tool.Name = "Kogama " .. WeaponId
	Tool.Parent = Player.Backpack
	Tool.ToolTemplate = game.Workspace:WaitForChild("Kogama " .. WeaponId)
end

-- Function to give the player coins
function GiveCoins(Coins)
	Player.leaderstats.Coins.Value = Player.leaderstats.Coins.Value + Coins
end

-- Example usage of the functions
MakeInvincible()
IncreaseSpeed()
GiveWeapon("Sword")
GiveCoins(1000)