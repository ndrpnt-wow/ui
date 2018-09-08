PlayerFrame:SetScale(1.25)
PlayerFrameManaBar.FeedbackFrame:Hide()
PlayerFrameManaBar.FullPowerFrame:Hide()
PlayerFrame:UnregisterEvent("UNIT_COMBAT")

-- REMOVE COMBO FRAME ANIMATIONS
hooksecurefunc(ComboPointPlayerFrame, "UpdateMaxPower", function(self)
	for i = 1, #self.ComboBonus do
		self.ComboBonus[i].AnimIn = self.ComboBonus[i]:CreateAnimationGroup()
		self.ComboBonus[i].AnimOut = self.ComboBonus[i]:CreateAnimationGroup()
	end
	for i = 1, #self.ComboPoints do
		self.ComboPoints[i].PointAnim = self.ComboPoints[i]:CreateAnimationGroup()
		self.ComboPoints[i].AnimIn = self.ComboPoints[i]:CreateAnimationGroup()
		self.ComboPoints[i].AnimOut = self.ComboPoints[i]:CreateAnimationGroup()
	end
end)
hooksecurefunc(ComboPointPlayerFrame, "AnimIn", function(self, frame)
	frame.Point:SetAlpha(1)
end)
hooksecurefunc(ComboPointPlayerFrame, "AnimOut", function(self, frame)
	frame.Point:SetAlpha(0)
end)

-- PET FRAME
PetFrame:ClearAllPoints()
PetFrame:SetPoint("RIGHT", PlayerFrame, "LEFT", 35, 0)
PetFrame:SetScale(0.9)
PetName:Hide()
PetFrame:UnregisterEvent("UNIT_COMBAT")

-- CAST BAR
CastingBarFrame:SetScale(1.11)
CastingBarFrame:ClearAllPoints()
CastingBarFrame:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 150)
CastingBarFrame.SetPoint = function() end
