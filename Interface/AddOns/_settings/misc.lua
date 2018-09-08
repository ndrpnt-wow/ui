local handler = CreateFrame("frame")
local events = {}

handler:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...)
end)

events["VARIABLES_LOADED"] = function(self)
	ShowAccountAchievements(0)
	self:UnregisterEvent("VARIABLES_LOADED")
end

events["PLAYER_FOCUS_CHANGED"] = function(self)
	-- SetCurrentTitle requires an hardware event (key or mouse press) in order to be used
	-- PLAYER_TARGET_CHANGED was sometimes causing taints
	SetCurrentTitle(-1)
	self:UnregisterEvent("PLAYER_FOCUS_CHANGED")
end

for k, v in pairs(events) do
	handler:RegisterEvent(k)
end

hooksecurefunc("StaticPopup_Show", function(which)
	if ( which == "EXPERIMENTAL_CVAR_WARNING" ) then
		StaticPopup_Hide("EXPERIMENTAL_CVAR_WARNING")
	end
end)
