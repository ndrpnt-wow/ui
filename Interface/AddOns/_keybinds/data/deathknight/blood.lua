local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then
	return
end

local _, ns = ...

ns.macros[250] = {

	["1"] = [[
/use [nomod] Control Undead
/use [mod:alt] Raise Ally
]],

	["2"] = [[
]],

	["3"] = [[
]],

	["4"] = [[
]],

	["5"] = [[
/use [mod:alt] Path of Frost
/use [mod:ctrl] Death Gate
]],

	["q"] = [[
/use [nomod] Chains of Ice
/use [mod:shift, @focus] Chains of Ice
/use [mod:ctrl] Dark Command
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
/use [mod:alt] Wraith Walk
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
]],

	["g"] = [[
/use [nomod] Mind Freeze
/use [mod:shift, @focus] Mind Freeze
]],

	["z"] = [[
/use [nomod] Obliteration
/use [nomod] Breath of Sindragosa
]],

	["b"] = [[
/use [nomod] Sindragosa's Fury
]],

	["n"] = [[
/use [nomod] Remorseless Winter
/use [mod:alt] Blinding Sleet
]],

}