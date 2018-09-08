LossOfControlFrame.RedLineTop:SetTexture(nil)
LossOfControlFrame.RedLineBottom:SetTexture(nil)
LossOfControlFrame.blackBg:SetTexture(nil)
LossOfControlFrame.Anim = LossOfControlFrame:CreateAnimationGroup()
LossOfControlFrame.AbilityName:Hide()
LossOfControlFrame.TimeLeft.NumberText:Hide()
LossOfControlFrame.TimeLeft.SecondsText:Hide()
LossOfControlFrame.Cooldown:SetDrawEdge(false)
hooksecurefunc("LossOfControlFrame_SetUpDisplay", function(self)
	self.Icon:SetPoint("CENTER", 0, -160);
end)
hooksecurefunc("CooldownFrame_Set", function(self)
	if self.currentCooldownType == COOLDOWN_TYPE_LOSS_OF_CONTROL then
		self:SetCooldown(0,0)
	end
end)
