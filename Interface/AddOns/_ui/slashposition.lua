SlashCmdList.POSITION = function()
	local p = C_Map.GetPlayerMapPosition(C_Map.GetBestMapForUnit("player"), "player")
	DEFAULT_CHAT_FRAME:AddMessage(format("[%s] %.1f, %.1f", GetZoneText(), p.x * 100, p.y * 100))
end
SLASH_POSITION1 = "/position"
SLASH_POSITION2 = "/po"
