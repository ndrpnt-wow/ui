hooksecurefunc("UIParent_UpdateTopFramePositions", function()
	PlayerFrame:ClearAllPoints()
	PlayerFrame:SetPoint("CENTER", -425, 70)
	PlayerFrame:SetUserPlaced(true)
	PlayerFrame_SetLocked(true)

	TargetFrame:ClearAllPoints()
	TargetFrame:SetPoint("TOP", PlayerFrame, "BOTTOM", 99, 55)
	TargetFrame:SetUserPlaced(true)
	TargetFrame_SetLocked(true)

	FocusFrame:ClearAllPoints()
	FocusFrame:SetPoint("CENTER", 230, -95)
	FocusFrame_SetLock(true)
end)

-- CLASS COLORED HEALTH BAR
local classColor = function(statusbar)
	local unit = statusbar.unit
	if unit and UnitIsPlayer(unit) and UnitIsConnected(unit) then
		local _, class = UnitClass(unit)
		if class then
			local c = RAID_CLASS_COLORS[class]
			if c then
				statusbar:SetStatusBarColor(c.r, c.g, c.b)
				if UnitIsUnit(unit, "player") then
					PlayerFrameHealthBar:SetStatusBarColor(0,1,0)
				end
			end
		end
	end
end
hooksecurefunc("HealthBar_OnValueChanged", classColor)
hooksecurefunc("UnitFrameHealthBar_Update", classColor)
