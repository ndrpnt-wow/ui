local grid = CreateFrame("Frame", nil, UIParent)

do
	grid:Hide()
	grid:SetAllPoints(UIParent)
	local w = GetScreenWidth() / 128
	local h = GetScreenHeight() / 72
	for i = 0, 128, 2 do
		local t = grid:CreateTexture(nil, "BACKGROUND")
		if i == 64 then
			t:SetColorTexture(1, 0, 0, 0.4)
		else
			t:SetColorTexture(0, 0, 0, 0.6)
		end
		t:SetPoint("TOPLEFT", grid, "TOPLEFT", i * w - 1, 0)
		t:SetPoint("BOTTOMRIGHT", grid, "BOTTOMLEFT", i * w + 1, 0)
	end
	for i = 1, 128, 2 do
		local t = grid:CreateTexture(nil, "BACKGROUND")
		t:SetColorTexture(0, 0, 0, 0.2)
		t:SetPoint("TOPLEFT", grid, "TOPLEFT", i * w - 1, 0)
		t:SetPoint("BOTTOMRIGHT", grid, "BOTTOMLEFT", i * w + 1, 0)
	end
	for i = 0, 72, 2 do
		local t = grid:CreateTexture(nil, "BACKGROUND")
		if i == 36 then
			t:SetColorTexture(1, 0, 0, 0.4)
		else
			t:SetColorTexture(0, 0, 0, 0.6)
		end
		t:SetPoint("TOPLEFT", grid, "TOPLEFT", 0, -i * h + 1)
		t:SetPoint("BOTTOMRIGHT", grid, "TOPRIGHT", 0, -i * h - 1)
	end
	for i = 1, 72, 2 do
		local t = grid:CreateTexture(nil, "BACKGROUND")
		t:SetColorTexture(0, 0, 0, 0.2)
		t:SetPoint("TOPLEFT", grid, "TOPLEFT", 0, -i * h + 1)
		t:SetPoint("BOTTOMRIGHT", grid, "TOPRIGHT", 0, -i * h - 1)
	end
end

SlashCmdList["GRID"] = function()
	if grid:IsShown() then
		grid:Hide()
	else
		grid:Show()
	end
end
SLASH_GRID1 = "/grid"