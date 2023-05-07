-- This script will explode all players when run.
-- It is server-sided.

local Players = game:GetService("Players")

for _, player in ipairs(Players:GetPlayers()) do
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			local serverScript = Instance.new("Script")
			serverScript.Name = "ExplodeScript"
			serverScript.Source = [[
				local humanoid = script.Parent
				humanoid:TakeDamage(humanoid.MaxHealth + 1)
			]]
			serverScript.Parent = humanoid
		end
	end
end
