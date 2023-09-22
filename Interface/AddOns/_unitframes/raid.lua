-- DEBUFFS
-- hooksecurefunc("CompactUnitFrame_UtilSetDebuff", function(debuffFrame, unit, index, filter, isBossAura, isBossBuff)
-- 	local _, _, _, _, _, _, _, _, _, _, _, _, _, _, nameplateShowAll = UnitDebuff(unit, index, filter)
-- 	local size = debuffFrame.baseSize
-- 	if ( isBossAura or nameplateShowAll) then
-- 		debuffFrame:SetSize(size * 1.6, size * 1.6)
-- 	else
-- 		debuffFrame:SetSize(size * 1.3, size * 1.3)
-- 	end
-- end)

CompactRaidFrameManager:UnregisterAllEvents()
CompactRaidFrameManager:HookScript("OnShow", function(s) s:Hide() end)
CompactRaidFrameManager:Hide()

CompactRaidFrameContainer:UnregisterAllEvents()
CompactRaidFrameContainer:HookScript("OnShow", function(s) s:Hide() end)
CompactRaidFrameContainer:Hide()