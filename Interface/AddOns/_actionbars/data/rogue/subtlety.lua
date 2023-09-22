if select(2, UnitClass("player")) ~= "ROGUE" then
	return
end

local _, ns = ...

ns.spells.specializations[ns.SPECIALIZATION_ID.ROGUE_SUBTLETY] = {
	-- Main
	[1] = "Shadowstep",
	[2] = "Shroud of Concealment",
	[3] = "Distract",
	[4] = "Evasion",
	[5] = "Feint",
	[6] = "Shadowy Duel",
	[7] = "Smoke Bomb",
	[8] = "Shiv",
	[9] = "Shadow Blades",
	[10] = "Crimson Vial",

	-- Secondary
	[61] = "Kick",
	[62] = "Vanish",
	[63] = "Sprint",
	[64] = "Cloak of Shadows",
	[65] = "Gouge",
	[66] = "Blind",
	[67] = "Kidney Shot",
	[68] = "Symbols of Death",
	[69] = "Shadow Dance",
	[70] = "Secret Technique",
	[71] = "Cold Blood",
	[72] = "Shadowmeld",

	-- Stance
	[73] = "Shadowstep",
	[74] = "Shroud of Concealment",
	[75] = "Distract",
	[76] = "Evasion",
	[77] = "Feint",
	[78] = "Shadowy Duel",
	[79] = "Smoke Bomb",
	[80] = "Shiv",
	[81] = "Shadow Blades",
	[82] = "Crimson Vial",

	-- Dragonriding
	[121] = "Shadowstep",
	[122] = "Shroud of Concealment",
	[123] = "Distract",
	[124] = "Evasion",
	[125] = "Feint",
	[126] = "Shadowy Duel",
	[127] = "Smoke Bomb",
	[128] = "Shiv",
	[129] = "Shadow Blades",
	[130] = "Crimson Vial",
}
