local _, ns = ...
-- Dwarf, Draenei, Gnome, Human, NightElf, Worgen, BloodElf, Goblin, Orc, Tauren, Troll, Scourge, Pandaren

local BloodElf = {
	["capslock"] = [[
/use [mod:shift] Arcane Torrent
]],
}

local Gnome = {
	["capslock"] = [[
/use [mod:shift] Escape Artist
]],
}

local Goblin = {
	["capslock"] = [[
/use [mod:shift] Rocket Jump
/use [mod:ctrl] Rocket Barrage
]],
}

local Human = {
	["capslock"] = [[
/use [mod:shift] Every Man for Himself
]],
}

local NightElf = {
	["capslock"] = [[
/use [mod:shift] Shadowmeld
]],
}

local Orc = {
	["capslock"] = [[
/use [mod:shift] Blood Fury
]],
}

local Scourge = {
	["capslock"] = [[
/use [mod:shift] Will of the Forsaken
/use [mod:ctrl] Cannibalize
]],
}

local Tauren = {
	["capslock"] = [[
/use [mod:shift] War Stomp
]],
}

local Troll = {
	["capslock"] = [[
/use [mod:shift] Berzerk
]],
}


ns.macros.racial = {
	BloodElf = BloodElf,
	Gnome = Gnome,
	Goblin = Goblin,
	Human = Human,
	NightElf = NightElf,
	Orc = Orc,
	Scourge = Scourge,
	Tauren = Tauren,
	Troll = Troll,
}
