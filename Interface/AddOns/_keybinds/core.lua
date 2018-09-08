--[[|------------------------|------------------------|------------------------|------------------------|
    | DEATHKNIGHT            | DEMONHUNTER            | DRUID                  | HUNTER                 |
    |------------------------|------------------------|------------------------|------------------------|
    | 250 - Blood            | 577 - Havoc            | 102 - Balance          | 253 - Beast Mastery    |
    | 251 - Frost            | 581 - Vengance         | 103 - Feral            | 254 - Marksmanship     |
    | 252 - Unholy           |                        | 104 - Guardian         | 255 - Survival         |
    |                        |                        | 105 - Restoration      |                        |
    |------------------------|------------------------|------------------------|------------------------|
    | MAGE                   | MONK                   | PALADIN                | PRIEST                 |
    |------------------------|------------------------|------------------------|------------------------|
    | 62 - Arcane            | 268 - Brewmaster       | 65 - Holy              | 256 - Discipline       |
    | 63 - Fire              | 269 - Windwalker       | 66 - Protection        | 257 - Holy             |
    | 64 - Frost             | 270 - Mistweaver       | 70 - Retribution       | 258 - Shadow           |
    |------------------------|------------------------|------------------------|------------------------|
    | ROGUE                  | SHAMAN                 | WARLOCK                | WARRIOR                |
    |------------------------|------------------------|------------------------|------------------------|
    | 259 - Assassination    | 262 - Elemental        | 265 - Affliction       | 71 - Arms              |
    | 260 - Outlaw           | 263 - Enhancement      | 266 - Demonology       | 72 - Furry             |
    | 261 - Subtlety         | 264 - Restoration      | 267 - Destruction      | 73 - Protection        |
    |------------------------|------------------------|------------------------|------------------------|]]--

local _, ns = ...
ns.macros = {}
local buttons = {}
local overrideBindingsFrame = CreateFrame("frame")

do
	for k, v in pairs(ns.keymap) do
		local buttonName = "Button_"..v
		local button = CreateFrame("button", buttonName, nil, "SecureActionButtonTemplate")
		button:SetAttribute("type","macro")
		button:RegisterForClicks("AnyDown")
		SetOverrideBindingClick(overrideBindingsFrame, false, v, buttonName)
		buttons[k] = button
	end
end

local GetMacro = function(key, race, specID)
	local m = ns.macros
	local vehicule = m.common.vehicule[key] or ""
	local utility = m.common.utility[key] or ""
	local racial = m.racial[race] and m.racial[race][key] or ""
	local spec = m[specID] and m[specID][key] or ""
	local low = m.low and m.low[specID] and m.low[specID][key] or ""
	return vehicule..utility..racial..spec..low
end

overrideBindingsFrame:SetScript("OnEvent", function(self, event)
	local specID = GetSpecializationInfo(GetSpecialization())
	local _, race = UnitRace("player")
	if specID then
		for k, v in pairs(buttons) do
			v:SetAttribute("macrotext", GetMacro(k, race, specID))
		end
	end
end)
overrideBindingsFrame:RegisterEvent("PLAYER_LOGIN")
overrideBindingsFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")

SlashCmdList["KEYBIND"] = function(key)
	print(GetMacro(key, select(2, UnitRace("player")), GetSpecializationInfo(GetSpecialization())))
end
SLASH_KEYBIND1 = "/kb"
SLASH_KEYBIND2 = "/keybind"

SlashCmdList["SEARCHKEYBIND"] = function(value)
	for k, v in pairs(buttons) do
		if v:GetAttribute("macrotext"):lower():find(value:lower()) then
			print(ns.keymap[k].." ("..k..")")
		end
	end
end
SLASH_SEARCHKEYBIND1 = "/skb"
SLASH_SEARCHKEYBIND2 = "/searchkeybind"

SlashCmdList["DUMPKEYBIND"] = function()
	for k, v in pairs(buttons) do
		print(ns.keymap[k].." ("..k.."):")
		print(GetMacro(k, select(2, UnitRace("player")), GetSpecializationInfo(GetSpecialization())))
	end
end
SLASH_DUMPKEYBIND1 = "/dkb"
SLASH_DUMPKEYBIND2 = "/dumpkeybind"
