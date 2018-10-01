DefaultCompactNamePlateFriendlyFrameOptions.useClassColors = true
NamePlateDriverFrame:UnregisterEvent("UNIT_AURA")
NamePlateDriverFrame.OnUnitAuraUpdate = function() end

-- InterfaceOptionsNamesPanelUnitNameplatesMakeLarger.normalHorizontalScale = 1    -- default: 1.0
-- InterfaceOptionsNamesPanelUnitNameplatesMakeLarger.largeHorizontalScale = 1.2   -- default: 1.4
-- InterfaceOptionsNamesPanelUnitNameplatesMakeLarger.normalVerticalScale = 1      -- default: 1.0
-- InterfaceOptionsNamesPanelUnitNameplatesMakeLarger.largeVerticalScale = 1.6     -- default: 2.7

hooksecurefunc("CompactUnitFrame_UpdateName", function(frame)
    if IsActiveBattlefieldArena() and frame.unit:find("nameplate") then
        for i = 1, 5 do
            if UnitIsUnit(frame.unit, "arena".. i) then
                frame.name:SetText(i)
                frame.name:SetTextColor(1,1,0)
                break
            end
        end
    end
end)
