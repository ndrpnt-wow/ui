-- /run ArenaEnemyFrames:Show(); for i=1,5 do _G["ArenaEnemyFrame"..i]:Show(); _G["ArenaEnemyFrame"..i.."CastingBar"]:Show() _G["ArenaEnemyFrame"..i.."CastingBar"]:SetAlpha(1)end
if (not IsAddOnLoaded("Blizzard_ArenaUI")) then
    LoadAddOn("Blizzard_ArenaUI")
end

for i = 1, MAX_ARENA_ENEMIES do
    local arenaFrame = _G["ArenaEnemyFrame" .. i]
    local prepFrame = _G["ArenaPrepFrame" .. i]
    local castingBar = _G["ArenaEnemyFrame" .. i .. "CastingBar"]

    arenaFrame:ClearAllPoints()
    if i == 1 then
        arenaFrame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -450, 230)
    else
        arenaFrame:SetPoint("TOP", _G["ArenaEnemyFrame" .. i - 1], "BOTTOM", 0, -20)
    end
    arenaFrame.SetPoint = function() end
    arenaFrame:SetScale(1.5)

    prepFrame:ClearAllPoints()
    prepFrame:SetAllPoints(arenaFrame)
    prepFrame.SetPoint = function() end
    prepFrame:SetScale(1.5)

    castingBar:SetScale(1.05)
    castingBar:SetPoint("RIGHT", arenaFrame, "LEFT", -30, -3)

    arenaFrame.CC:SetScale(1.05)
    arenaFrame.CC:ClearAllPoints()
    arenaFrame.CC:SetPoint("RIGHT", arenaFrame, "LEFT", -4, -3)
    arenaFrame.CC.Cooldown:SetDrawEdge(false)
    arenaFrame.CC.Cooldown:SetHideCountdownNumbers(true)
end
