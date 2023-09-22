local _, ns = ...

local buttons = {}
for k, v in pairs(ns.KEY_ID) do
	local buttonName = "Button_" .. v
	local button = CreateFrame("button", buttonName, UIParent, "SecureActionButtonTemplate")
	button:SetAttribute("type", "macro")
	button:RegisterForClicks("AnyDown")
	SetOverrideBindingClick(button, false, v, buttonName)
	buttons[k] = button
end

local f = CreateFrame("frame")
f:SetScript("OnEvent", function(self, event)
	for k, v in pairs(buttons) do
		local vehicle = ns.fragments.vehicle[k] or ""
		local items = ns.fragments.items[k] or ""
		local misc = ns.fragments.misc[k] or ""
		local race = ns.fragments.race[k] or ""
		local targeting = ns.fragments.targeting[k] or ""
		local specialization = ns.fragments.specializations[GetSpecializationInfo(GetSpecialization())][k] or ""
		local level = ns.fragments.level[k] or ""

		local macrotext = vehicle .. items .. misc .. race .. targeting .. specialization .. level
		v:SetAttribute("macrotext", string.gsub(macrotext, "__[A-Z0-9_]+__", ns.ALIAS))
	end

	f:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED") -- Fires too early otherwise
end)
f:RegisterEvent("PLAYER_LOGIN")

SlashCmdList.KEYBIND = function(msg)
	local _, _, cmd, args = string.find(msg, "%s?(%w+)%s?(.*)")

	if cmd == "map" then
		for k, v in pairs(ns.KEY_ID) do
			print(k .. " -> " .. v)
		end
	elseif cmd == "lookup" then
		print(buttons[tonumber(args)]:GetAttribute("macrotext"))
	elseif cmd == "search" then
		for k, v in pairs(buttons) do
			if v:GetAttribute("macrotext"):lower():find(args:lower()) then
				print(k .. " -> " .. ns.KEY_ID[k])
			end
		end
	elseif cmd == "dump" then
		for k, v in pairs(buttons) do
			print(k .. " -> " .. ns.KEY_ID[k] .. ":")
			print(v:GetAttribute("macrotext"))
			print()
		end
	else
		print("Usage: /keybind (map|lookup <keyid>|search <term>|dump)")
	end
end
SLASH_KEYBIND1 = "/kb"
SLASH_KEYBIND2 = "/keybind"
