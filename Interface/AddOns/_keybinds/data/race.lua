local _, ns = ...

local race = {
	BloodElf = {
		[31] = [[
/use [__MOD_1__] Arcane Torrent
]],
	},
	Draenei  = {},
	Dwarf    = {},
	Gnome    = {
		[31] = [[
/use [__MOD_1__] Escape Artist
]],
	},
	Goblin   = {
		[31] = [[
/use [__MOD_1__] Rocket Jump
/use [__MOD_4__] Rocket Barrage
]],
	},
	Human    = {
		[31] = [[
/use [__MOD_1__] Every Man for Himself
]],
	},
	NightElf = {
		[31] = [[
/use [__MOD_1__] Shadowmeld
]],
	},
	Orc      = {
		[31] = [[
/use [__MOD_1__] Blood Fury
]],
	},
	Pandaren = {},
	Scourge  = {
		[31] = [[
/use [__MOD_1__] Will of the Forsaken
/use [__MOD_4__] Cannibalize
]],
	},
	Tauren   = {
		[31] = [[
/use [__MOD_1__] War Stomp
]],
	},
	Troll    = {
		[31] = [[
/use [__MOD_1__] Berzerk
]],
	},
	Worgen   = {},
}

ns.fragments.race = race[select(2, UnitRace("player"))]
