SlashCmdList["FRAMES"] = function(msg)
	if UnitAffectingCombat("player") then return end
	local max = tonumber(msg) or 3
	for i = 1, max - 1 do
		_G["PartyMemberFrame"..i]:Show()
		_G["PartyMemberFrame"..i.."PetFrame"]:Show()
	end
	ArenaEnemyFrames:Show()
	for i = 1, max do
		_G["ArenaEnemyFrame"..i]:Show()
		_G["ArenaEnemyFrame"..i.."CastingBar"]:Show()
		_G["ArenaEnemyFrame"..i.."CastingBar"]:SetAlpha(1)
		_G["ArenaEnemyFrame"..i].CC:Show()
		_G["ArenaEnemyFrame"..i].CC.Icon:SetTexture(1, 1, 1, 1)
		_G["ArenaEnemyFrame"..i].CC.Cooldown:SetCooldown(GetTime(), 120)
	end
end
SLASH_FRAMES1 = "/frames"
