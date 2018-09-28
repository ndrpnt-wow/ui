-- /run for i = 1, 4 do _G["PartyMemberFrame"..i]:Show(); _G["PartyMemberFrame"..i.."PetFrame"]:Show() end
for i = 1, 4 do
	local partyFrame = _G["PartyMemberFrame"..i]
	local petFrame = _G["PartyMemberFrame"..i.."PetFrame"]

	partyFrame:ClearAllPoints()
	if i == 1 then
		partyFrame:SetPoint("TOPRIGHT", PlayerFrame, "TOPRIGHT" , -10, -230)
	else
		partyFrame:SetPoint("TOP", _G["PartyMemberFrame"..i-1], "BOTTOM", 0, -10)
	end
	partyFrame.SetPoint = function() end
	partyFrame:SetScale(1.7)

	petFrame:ClearAllPoints()
	petFrame:SetPoint("RIGHT", partyFrame, "LEFT", -5, 0)
	petFrame.SetPoint = function() end
	petFrame:SetScale(1.1)

	for j = 1, MAX_PARTY_DEBUFFS do
		local debuffName = "PartyMemberFrame"..i.."Debuff"..j
		local debuff = _G[debuffName]
		local f = CreateFrame("Cooldown", debuffName.."Cooldown", debuff, "CooldownFrameTemplate")
		f:SetAllPoints(debuff)
		f:SetHideCountdownNumbers(true)
		f:SetReverse(true)
		f:SetDrawBling(false)
		f:SetDrawEdge(false)
		f:SetSwipeColor(0, 0, 0, 1)
	end
end

-- REMPLACE REALM NAME WITH (*)
hooksecurefunc("UnitFrame_Update", function(self)
	if (self.name) then
		self.name:SetText(GetUnitName(self.overrideName or self.unit));
	end
end)
