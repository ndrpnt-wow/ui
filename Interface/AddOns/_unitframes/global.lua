-- hooksecurefunc("UIParent_UpdateTopFramePositions", function()
-- 	PlayerFrame:ClearAllPoints()
-- 	PlayerFrame:SetPoint("TOPLEFT", 330, -300)
-- 	PlayerFrame:SetUserPlaced(true)
-- 	PlayerFrame_SetLocked(true)

-- 	TargetFrame:ClearAllPoints()
-- 	TargetFrame:SetPoint("LEFT", PlayerFrame, "RIGHT", 0, 0)
-- 	TargetFrame:SetUserPlaced(true)
-- 	TargetFrame_SetLocked(true)

-- 	FocusFrame:ClearAllPoints()
-- 	FocusFrame:SetPoint("TOP", TargetFrame, "BOTTOM", 0, -150)
-- 	FocusFrame_SetLock(true)
-- end)

-- CLASS COLORED HEALTH BAR
-- local classColor = function(statusbar)
-- 	local unit = statusbar.unit
-- 	if unit and UnitIsPlayer(unit) and UnitIsConnected(unit) then
-- 		local _, class = UnitClass(unit)
-- 		if class then
-- 			local c = RAID_CLASS_COLORS[class]
-- 			if c then
-- 				statusbar:SetStatusBarColor(c.r, c.g, c.b)
-- 				if UnitIsUnit(unit, "player") then
-- 					_G.PlayerFrame.PlayerFrameContent.PlayerFrameContentMain.HealthBarArea.HealthBar:SetStatusBarColor(0,1,0)
-- 				end
-- 			end
-- 		end
-- 	end
-- end
-- hooksecurefunc("HealthBar_OnValueChanged", classColor)
-- hooksecurefunc("UnitFrameHealthBar_Update", classColor)
