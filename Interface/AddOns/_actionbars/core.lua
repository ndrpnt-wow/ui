local GetCountdownNumbersRegion = function(cooldown)
	for _, region in next, {cooldown:GetRegions()} do
		if region:GetObjectType() == "FontString" then
			cooldown.countdownNumbers = region
			return region
		end
	end
end

local SetCountdownNumbersFont = function(cooldown, newFilename, newFontHeight, newFlags)
	local countdownNumbers = cooldown.countdownNumbers or GetCountdownNumbersRegion(cooldown)
	if not countdownNumbers then
		return
	end
	local filename, fontHeight, flags = countdownNumbers:GetFont()
	countdownNumbers:SetFont(newFilename or filename, newFontHeight or fontHeight, newFlags or flags)
end

local SetCountdownNumbersOffset = function(cooldown, xOffset, yOffset)
	local countdownNumbers = cooldown.countdownNumbers or GetCountdownNumbersRegion(cooldown)
	if not countdownNumbers then
		return
	end
	countdownNumbers:SetPoint("CENTER", cooldown, xOffset or 0, yOffset or 0)
end

local hidden = CreateFrame("frame")
hidden:Hide()
hidden.Show = function() end
PetActionBarFrame:SetParent(hidden)
MainMenuBarArtFrame.LeftEndCap:Hide()
MainMenuBarArtFrame.RightEndCap:Hide()
IconIntroTracker:UnregisterEvent('SPELL_PUSHED_TO_ACTIONBAR')
for _, button in ipairs({"ActionButton", "MultiBarBottomRightButton", "MultiBarBottomLeftButton", "MultiBarRightButton", "MultiBarLeftButton"}) do
	for index = 1, 12 do
		_G[button..index.."Name"]:SetAlpha(0)
		_G[button..index.."HotKey"]:SetAlpha(0)
		SetCountdownNumbersFont(_G[button..index.."Cooldown"], nil, 13)
		SetCountdownNumbersOffset(_G[button..index.."Cooldown"], 1, 0)
	end
end
for i = 1, 10 do
	SetCountdownNumbersFont(_G["StanceButton"..i.."Cooldown"], nil, 13)
	SetCountdownNumbersOffset(_G["StanceButton"..i.."Cooldown"], 1, 0)
end
