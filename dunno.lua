-- This script will explode all players when run and everyone will be able to see it.

local Players = game:GetService("Players")

for _, player in ipairs(Players:GetPlayers()) do
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			local explosion = Instance.new("Explosion")
			explosion.Position = humanoid.Position
			explosion.Parent = game.Workspace
		end
	end
end
