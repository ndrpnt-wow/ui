if select(2, UnitClass("player")) ~= "DEATHKNIGHT" then
	return
end

local _, ns = ...

ns.fragments.specializations[ns.SPECIALIZATION_ID.DEATH_KNIGHT_UNHOLY] = {
	[12] = [[
/use [__MOD_0__] Raise Dead
/use [__MOD_1__] Lichborne
/use [__MOD_2__] Army of the Dead
/use [__MOD_4__] Huddle
/use [__MOD_5__] Raise Ally
]],
	[13] = [[
/use [__MOD_0__] Empower Rune Weapon
/use [__MOD_1__] Icebound Fortitude
/use [__MOD_2__] Summon Gargoyle
/use [__MOD_4__] Path of Frost
]],
	[14] = [[
/use [__MOD_0__] Unholy Assault
/use [__MOD_1__] Death's Advance
/use [__MOD_2__] Abomination Limb
/use [__MOD_3__] !Wraith Walk
/use [__MOD_4__] Sacrificial Pact
]],
	[15] = [[
/use [__MOD_0__] Anti-Magic Shell
/use [__MOD_1__, @focus] Anti-Magic Shell
/use [__MOD_2__] Anti-Magic Zone
/use [__MOD_4__] Death Pact
]],
	[22] = [[
/use [__MOD_0__] Chains of Ice
/use [__MOD_1__, @focus] Chains of Ice
/use [__MOD_2__] Outbreak
/use [__MOD_3__, @focus] Outbreak
/use [__MOD_4__] Dark Transformation
]],
	[23] = [[
/use [__MOD_0__] Festering Strike
/use [__MOD_1__, @focus] Festering Strike
/use [__MOD_2__] Death and Decay
/use [__MOD_3__] Epidemic
/use [__MOD_4__] Unholy Blight
]],
	[24] = [[
/use [__MOD_0__] Scourge Strike
/use [__MOD_1__, @focus] Scourge Strike
/use [__MOD_2__] Soul Reaper
/use [__MOD_3__, @focus] Soul Reaper
/use [__MOD_4__] Vile Contagion
/use [__MOD_5__, @focus] Vile Contagion
]],
	[25] = [[
/use [__MOD_0__] Death Coil
/use [__MOD_1__, @focus] Death Coil
/use [__MOD_2__] Death Strike
/use [__MOD_3__, @focus] Death Strike
/use [__MOD_4__, @player] Death Coil
/use [__MOD_5__, @pet] Death Coil
]],
	[26] = [[
/use [__MOD_0__] Apocalypse
/use [__MOD_1__, @focus] Apocalypse
/use [__MOD_2__] Reanimation
/use [__MOD_3__, @focus] Reanimation
]],
	[27] = [[
]],
	[31] = [[
]],
	[32] = [[
/use [__MOD_0__] Death Grip
/use [__MOD_1__, @focus] Death Grip
/use [__MOD_2__] Dark Simulacrum
/use [__MOD_3__, @focus] Dark Simulacrum
/use [__MOD_4__] Dark Command
/use [__MOD_5__, @focus] Dark Command
]],
	[36] = [[
/use [__MOD_0__] Mind Freeze
/use [__MOD_1__, @focus] Mind Freeze
/use [__MOD_2__] Leap
/use [__MOD_3__, @focus] Leap
]],
	[37] = [[
]],
	[46] = [[
/use [__MOD_0__] Asphyxiate
/use [__MOD_1__, @focus] Asphyxiate
/use [__MOD_2__] Strangulate
/use [__MOD_3__, @focus] Strangulate
/use [__MOD_4__] Blinding Sleet
]],
	[47] = [[
/use [__MOD_0__] Gnaw
/use [__MOD_1__, @focus] Gnaw
/use [__MOD_2__] Control Undead
/use [__MOD_3__, @focus] Control Undead
]],
}
