if select(2, UnitClass("player")) ~= "ROGUE" then
	return
end

local _, ns = ...

ns.fragments.specializations[ns.SPECIALIZATION_ID.ROGUE_SUBTLETY] = {
	[12] = [[
/use [__MOD_0__] Vanish
/use [__MOD_1__] Shroud of Concealment
/use [__MOD_2__] Smoke Bomb
/use [__MOD_4__] Distract
]],
	[13] = [[
/use [__MOD_0__] Symbols of Death
/use [__MOD_2__] Shadow Blades
]],
	[14] = [[
/use [__MOD_0__] Shadow Dance
/use [__MOD_1__] Sprint
/use [__MOD_2__] Cold Blood
]],
	[15] = [[
/use [__MOD_0__] Evasion
/use [__MOD_1__] Cloak of Shadows
/use [__MOD_2__] Marked for Death
]],
	[22] = [[
/stopattack [__MOD_0__]
/use [__MOD_0__] !Stealth
/cancelaura [__MOD_1__] Stealth
/cancelaura [__MOD_1__] Shadow Dance
/cancelaura [__MOD_1__] Vanish
/use [__MOD_2__] Rupture
/use [__MOD_3__, @focus] Rupture
/use [__MOD_4__] Slice and Dice
]],
	[23] = [[
/use [__MOD_0__] Cheap Shot
/use [__MOD_1__, @focus] Cheap Shot
/use [__MOD_2__] Kidney Shot
/use [__MOD_3__, @focus] Kidney Shot
/use [__MOD_4__] Dismantle
/use [__MOD_5__, @focus] Dismantle
]],
	[24] = [[
/use [__MOD_0__] Shadowstrike
/use [__MOD_1__, @focus] Shadowstrike
/use [__MOD_2__] Eviscerate
/use [__MOD_3__, @focus] Eviscerate
/use [__MOD_4__] Echoing Reprimand
/use [__MOD_5__, @focus] Echoing Reprimand
]],
	[25] = [[
/use [__MOD_0__] Backstab
/use [__MOD_0__] Gloomblade
/use [__MOD_1__, @focus] Backstab
/use [__MOD_1__, @focus] Gloomblade
/use [__MOD_2__] Secret Technique
/use [__MOD_3__, @focus] Secret Technique
/use [__MOD_4__] Sepsis
/use [__MOD_5__, @focus] Sepsis
]],
	[26] = [[
/use [__MOD_0__] Shiv
/use [__MOD_1__, @focus] Shiv
/use [__MOD_2__] Death from Above
/use [__MOD_3__, @focus] Death from Above
/use [__MOD_4__] Flagellation
/use [__MOD_5__, @focus] Flagellation
]],
	[27] = [[
/use [__MOD_0__] Crimson Vial
]],
	[31] = [[
/stopattack [__MOD_2__]
/use [__MOD_2__, combat] Shadowmeld
/use [__MOD_2__] !Stealth
]],
	[32] = [[
/use [__MOD_0__] Shadowstep
/use [__MOD_1__, @focus] Shadowstep
/use [__MOD_2__] Shadowstep
/use [__MOD_3__, @focus] Shadowstep
/use [__MOD_4__] Shuriken Toss
/use [__MOD_5__, @focus] Shuriken Toss
]],
	[36] = [[
/use [__MOD_0__] Kick
/use [__MOD_1__, @focus] Kick
/use [__MOD_2__] Gouge
/use [__MOD_3__, @focus] Gouge
/use [__MOD_4__] Feint
]],
	[37] = [[
/use [__MOD_0__] Shuriken Storm
/use [__MOD_1__] Shuriken Tornado
/use [__MOD_2__] Black Powder
]],
	[46] = [[
/use [__MOD_0__] Sap
/use [__MOD_1__, @focus] Sap
/targetenemy [__MOD_2__]
/use [__MOD_2__] Sap
/use [__MOD_4__, @XXX] Tricks of the Trade
/use [__MOD_5__, @mouseover, exists, noharm, nodead][__MOD_5__, @target, exists, noharm, nodead][__MOD_5__, @focus, exists, noharm, nodead][__MOD_5__] Tricks of the Trade
]],
	[47] = [[
/use [__MOD_0__] Blind
/use [__MOD_1__, @focus] Blind
/use [__MOD_2__] Shadowy Duel
/use [__MOD_3__, @focus] Shadowy Duel
]],
}
