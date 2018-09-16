local _, class = UnitClass("player")
if class ~= "ROGUE" then
	return
end

local _, ns = ...

ns.macros[259] = {

	["1"] = [[
/use [nomod] Vanish
/use [mod:shift] Shroud of Concealment
/use [mod:alt] Distract
]],

	["2"] = [[
/use [nomod] Toxic Blade
/use [nomod] Exsanguinate
/use [mod:shift, @focus] Toxic Blade
/use [mod:shift, @focus] Exsanguinate
/use [mod:alt] Vendetta
/use [mod:ctrl, @focus] Vendetta
]],

	["3"] = [[
/use [nomod]
/use [mod:shift] Sprint
/use [mod:alt] Marked for Death
/use [mod:ctrl, @focus] Marked for Death
]],

	["4"] = [[
/use [nomod] Cloak of Shadows
/use [mod:shift] Smoke Bomb
/use [mod:ctrl] Detection
]],

	["5"] = [[
/use [nomod] Evasion
/use [mod:shift, @XXX, exists, noharm, nodead][mod:shift, @mouseover, exists, noharm, nodead][mod:shift, @focus, exists, noharm, nodead][mod:shift] Tricks of the Trade
/use [mod:ctrl, @mouseover, exists][mod:ctrl] Pick Pocket
]],


	["q"] = [[
/stopattack [nomod]
/use [nomod] !Stealth
/cancelaura [mod:shift] Stealth
/cancelaura [mod:shift] Vanish
/use [mod:alt] Death from Above
/use [mod:ctrl, @focus] Death from Above
]],

	["w"] = [[
/use [nomod] Cheap Shot
/use [mod:shift, @focus] Cheap Shot
/use [mod:alt] Kidney Shot
/use [mod:ctrl, @focus] Kidney Shot
]],

	["e"] = [[
/use [nomod] Mutilate
/use [mod:shift, @focus] Mutilate
/use [mod:alt] Envenom
/use [mod:ctrl, @focus] Envenom
]],

	["r"] = [[
/use [nomod] Garrote
/use [mod:shift, @focus] Garrote
/use [mod:alt] Rupture
/use [mod:ctrl, @focus] Rupture
]],

	["t"] = [[
/use [nomod] Shiv
/use [mod:shift, @focus] Shiv
/use [mod:alt] Blindside
/use [mod:ctrl, @focus] Blindside
]],

	["a"] = [[
/use [nomod] Shadowstep
/use [mod:shift, @focus] Shadowstep
/use [mod:alt] Shadowstep
/use [mod:ctrl, @focus] Shadowstep
]],

	["g"] = [[
/use [nomod] Kick
/use [mod:shift, @focus] Kick
/use [mod:alt]
/use [mod:ctrl] Feint
]],

	["h"] = [[
/use [nomod] Blind
/use [mod:shift, @focus] Blind
/use [mod:alt] Neurotoxin
/use [mod:ctrl, @focus] Neurotoxin
]],

	["v"] = [[
/use [nomod] Poisoned Knife
/use [mod:shift, @focus] Poisoned Knife
/use [mod:alt] Fan of Knives
/use [mod:ctrl] Crimson Tempest
]],

	["b"] = [[
/use [nomod] Sap
/use [mod:shift, @focus] Sap
/targetenemy [mod:alt]
/use [mod:alt] Sap
/use [mod:ctrl] Crimson Vial
/cast [mod:ctrl] Crimson Vial
]],
-- /use [mod:alt, @arena1, exists, harm, nodead][mod:alt, @arena2, exists, harm, nodead][mod:alt, @arena3, exists, harm, nodead] Sap


	["capslock"] = [[
/stopattack [mod:alt]
/use [mod:alt, combat] Shadowmeld
/use [mod:alt] !Stealth
]],

}
