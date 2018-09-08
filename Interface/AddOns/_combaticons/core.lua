-- TARGET
do
	local f = CreateFrame("Frame", "TargetFrameCombatIcon", TargetFrame)
	f:SetSize(17, 16)
	f:SetPoint("TOP", 15, -14)
	-- f:SetSize(20, 19)
	-- f:SetPoint("RIGHT", -44, -16)

	f.t = f:CreateTexture(nil, "BORDER")
	f.t:SetAllPoints()
	f.t:SetTexture("Interface\\Icons\\ABILITY_DUALWIELD")

	f.b = f:CreateTexture(nil, "BORDER", nil, 1)
	f.b:SetPoint("TOPLEFT", -6, 5)
	f.b:SetPoint("BOTTOMRIGHT", 7, -8)
	f.b:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	f.b:SetTexCoord(0, 39/64, 0, 39/64)

	f:RegisterEvent("PLAYER_TARGET_CHANGED")
	f:RegisterUnitEvent("UNIT_FLAGS", "target")

	f:SetScript("OnEvent", function(self)
		if UnitAffectingCombat("target") then
			self:Show()
		else
			self:Hide()
		end
	end)
end


-- FOCUS
do
	local f = CreateFrame("Frame", "FocusFrameCombatIcon", FocusFrame)
	f:SetSize(17, 16)
	f:SetPoint("TOP", 15, -14)
	-- f:SetSize(20, 19)
	-- f:SetPoint("RIGHT", -44, -16)

	f.t = f:CreateTexture(nil, "BORDER")
	f.t:SetAllPoints()
	f.t:SetTexture("Interface\\Icons\\ABILITY_DUALWIELD")

	f.b = f:CreateTexture(nil, "BORDER", nil, 1)
	f.b:SetPoint("TOPLEFT", -6, 5)
	f.b:SetPoint("BOTTOMRIGHT", 7, -8)
	f.b:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	f.b:SetTexCoord(0, 39/64, 0, 39/64)

	f:RegisterEvent("PLAYER_FOCUS_CHANGED")
	f:RegisterUnitEvent("UNIT_FLAGS", "focus")

	f:SetScript("OnEvent", function(self)
		if UnitAffectingCombat("focus") then
			self:Show()
		else
			self:Hide()
		end
	end)
end
