local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then
	return
end

local _, ns = ...

ns.macros[251] = {

	["1"] = [[
]],

	["2"] = [[
/use [nomod] Control Undead
]],

	["3"] = [[
]],

	["4"] = [[
/use [nomod] Path of Frost
]],

	["5"] = [[
/use [nomod] Raise Ally
/use [mod:ctrl] Death Gate
]],


	["q"] = [[
/use [nomod] Chains of Ice
/use [mod:shift, @focus] Chains of Ice
]],

	["w"] = [[
/use [nomod] Howling Blast
/use [mod:shift, @focus] Howling Blast
/use [mod:alt] Icebound Fortitude
/use [mod:ctrl] Glacial Advance
]],

	["e"] = [[
/use [nomod] Obliterate
/use [mod:shift, @focus] Obliterate
/use [mod:alt] !Wraith Walk
/use [mod:ctrl] Frostscythe
]],

	["r"] = [[
/use [nomod] Frost Strike
/use [mod:shift, @focus] Frost Strike
/use [mod:alt] Anti-Magic Shell
]],

	["t"] = [[
/use [nomod] Death Strike
/use [mod:shift, @focus] Death Strike
/use [mod:alt] Anti-Magic Zone
/use [mod:alt] Dark Simulacrum
/use [mod:ctrl, @focus] Dark Simulacrum
]],


	["y"] = [[
/use [nomod] Pillar of Frost
/use [mod:alt] Empower Rune Weapon
/use [mod:ctrl] Horn of Winter
]],

	["a"] = [[
/use [nomod] Death Grip
/use [mod:shift, @focus] Death Grip
/use [mod:ctrl] Dark Command
]],

	["g"] = [[
/use [nomod] Mind Freeze
/use [mod:shift, @focus] Mind Freeze
]],

	["z"] = [[
/use [nomod] Remorseless Winter
]],

	["b"] = [[
/use [nomod] Sindragosa's Fury
/use [mod:alt] Obliteration
/use [mod:alt] Breath of Sindragosa
]],

	["n"] = [[
/use [nomod] Blinding Sleet
]],

}