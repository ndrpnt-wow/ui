-- Hide hotkeys
for _, button in ipairs({"ActionButton", "MultiBarBottomRightButton", "MultiBarBottomLeftButton", "MultiBarRightButton", "MultiBarLeftButton"}) do
	for index = 1, 12 do
		_G[button..index.."HotKey"]:SetAlpha(0)
	end
end

-- Hide pet action bar
do
	local h = CreateFrame("frame")
	h:Hide()
	PetActionBar:SetParent(h)
end