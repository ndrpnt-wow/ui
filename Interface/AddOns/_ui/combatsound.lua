local f = CreateFrame("Frame")

f:SetScript("OnEvent", function()
	PlaySound(SOUNDKIT.ALARM_CLOCK_WARNING_3)
end)
f:RegisterEvent("PLAYER_REGEN_ENABLED")
