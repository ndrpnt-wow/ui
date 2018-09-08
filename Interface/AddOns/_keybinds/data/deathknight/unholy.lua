local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then
	return
end

local _, ns = ...

ns.macros[252] = {

	["1"] = [[
/use [nomod] Raise Dead
/use [mod:ctrl] Raise Ally
]],

	["2"] = [[
/use [nomod] Summon Gargoyle
/use [nomod] Unholy Frenzy
/use [mod:shift, @focus] Summon Gargoyle
/use [mod:alt] Control Undead
/use [mod:ctrl, @focus] Control Undead
]],

	["3"] = [[
/use [nomod] Death's Advance
/use [mod:shift] !Wraith Walk
/use [mod:shift] Death Pact
/use [mod:ctrl] Army of the Dead
]],

	["4"] = [[
/use [nomod] Anti-Magic Shell
/use [mod:shift] Anti-Magic Zone
/use [mod:ctrl] Path of Frost
]],

	["5"] = [[
/use [nomod] Icebound Fortitude
/use [mod:shift] Huddle
/use [mod:ctrl] Death Gate
]],

	["q"] = [[
/use [nomod] Chains of Ice
/use [mod:shift, @focus] Chains of Ice
/use [mod:alt] Dark Command
/use [mod:ctrl, @focus] Dark Command
]],

	["w"] = [[
/use [nomod] Outbreak
/use [mod:shift, @focus] Outbreak
/use [mod:alt] Soul Reaper
/use [mod:ctrl, @focus] Soul Reaper
]],

	["e"] = [[
/use [nomod] Scourge Strike
/use [mod:shift, @focus] Scourge Strike
/use [mod:alt] Necrotic Strike
/use [mod:ctrl, @focus] Necrotic Strike
]],

	["r"] = [[
/use [nomod] Festering Strike
/use [mod:shift, @focus] Festering Strike
/use [mod:alt] Dark Simulacrum
/use [mod:ctrl, @focus] Dark Simulacrum
]],

	["t"] = [[
/use [nomod] Death Coil
/use [mod:shift, @focus] Death Coil
/use [mod:alt] Death Strike
/use [mod:ctrl, @focus] Death Strike
]],

	["a"] = [[
/use [nomod] Death Grip
/use [mod:shift, @focus] Death Grip
/use [mod:alt] Dark Transformation
]],

	["g"] = [[
/use [nomod] Mind Freeze
/use [mod:shift, @focus] Mind Freeze
/use [mod:alt] Leap
/use [mod:alt] Hook
/use [mod:ctrl, @focus] Leap
/use [mod:ctrl, @focus] Hook
]],

	["h"] = [[
/use [nomod] Asphyxiate
/use [mod:shift, @focus] Asphyxiate
/use [mod:alt] Gnaw
/use [mod:alt] Smash
/use [mod:ctrl, @focus] Gnaw
/use [mod:ctrl, @focus] Smash
]],

	["v"] = [[
/use [nomod] Death and Decay
/use [mod:shift] Unholy Blight
/use [mod:alt] Epidemic
]],

	["b"] = [[
/cast [nomod] Apocalypse
/cast [mod:shift, @focus] Apocalypse
/use [mod:alt] Reanimation
/use [mod:ctrl, @focus] Reanimation
]],

}
