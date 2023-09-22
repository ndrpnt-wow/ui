local events = {}

events.VARIABLES_LOADED = function(self)
	ShowAccountAchievements(0)
	self:UnregisterEvent("VARIABLES_LOADED")
end

events.PLAYER_FOCUS_CHANGED = function(self)
	-- SetCurrentTitle requires an hardware event (key or mouse press) in order to be called
	-- PLAYER_TARGET_CHANGED was sometimes causing taints
	SetCurrentTitle(0)
	self:UnregisterEvent("PLAYER_FOCUS_CHANGED")
end

local f = CreateFrame("frame")
f:SetScript("OnEvent", function(self, event, ...) events[event](self, ...) end)
for k, v in pairs(events) do f:RegisterEvent(k) end

hooksecurefunc("StaticPopup_Show", function(which)
	if (which == "EXPERIMENTAL_CVAR_WARNING") then
		StaticPopup_Hide("EXPERIMENTAL_CVAR_WARNING")
	end
end)
