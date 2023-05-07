-- This script will kill all players when run.
-- It is FE (Fully Exploitable) compatible.

local Players = game:GetService("Players")
local AntiExploitShield = game:GetService("AntiExploitShield")

for _, player in ipairs(Players:GetPlayers()) do
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			AntiExploitShield:SetResourceDisable(true)
			humanoid.Health = 0
			AntiExploitShield:SetResourceDisable(false)
		end
	end
end
