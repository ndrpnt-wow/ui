local _, ns = ...

local f = CreateFrame("frame")
f:SetScript("OnEvent", function(self, event)
	local spells = ns.spells.specializations[GetSpecializationInfo(GetSpecialization())]
	for k, v in pairs(spells) do
		_, _, _, _, _, _, spellID, _ = GetSpellInfo(v)
		PickupSpell(spellID)
		PlaceAction(k)
		ClearCursor()
	end

	f:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED") -- Fires too early otherwise
end)
f:RegisterEvent("PLAYER_LOGIN")
