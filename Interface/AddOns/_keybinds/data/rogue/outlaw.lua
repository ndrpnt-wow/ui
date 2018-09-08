local _, class = UnitClass("player")
if class ~= "ROGUE" then
	return
end

local _, ns = ...

ns.macros[260] = {

	["1"] = [[
/use [nomod] Vanish
/use [mod:shift] Shroud of Concealment
/use [mod:alt] Distract
]],

	["2"] = [[
/use [nomod] Blade Rush
/use [nomod] Killing Spree
/use [mod:shift, @focus] Blade Rush
/use [mod:shift, @focus] Killing Spree
]],

	["3"] = [[
/use [nomod] Adrenaline Rush
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
/use [nomod] Riposte
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
/use [mod:alt] Between the Eyes
/use [mod:ctrl, @focus] Between the Eyes
]],

	["e"] = [[
/use [nomod] Sinister Strike
/use [mod:shift, @focus] Sinister Strike
/use [mod:alt] Dispatch
/use [mod:ctrl, @focus] Dispatch
]],

	["r"] = [[
/use [nomod] Gouge
/use [mod:shift, @focus] Gouge
/use [mod:alt] Roll the Bones
/use [mod:ctrl, @focus] Roll the Bones
]],

	["t"] = [[
/use [nomod] Shiv
/use [mod:shift, @focus] Shiv
/use [mod:alt] Ghostly Strike
/use [mod:ctrl, @focus] Ghostly Strike
]],

	["a"] = [[
/use [nomod] Grappling Hook
/use [mod:shift] Grappling Hook
/use [mod:alt] Dismantle
/use [mod:ctrl, @focus] Dismantle
]],

	["g"] = [[
/use [nomod] Kick
/use [mod:shift, @focus] Kick
/use [mod:alt] Blade Flurry
/use [mod:ctrl] Feint
]],

	["h"] = [[
/use [nomod] Blind
/use [mod:shift, @focus] Blind
/use [mod:alt] Plunder Armor
/use [mod:ctrl, @focus] Plunder Armor
]],

	["v"] = [[
/use [nomod] Pistol Shot
/use [mod:shift, @focus] Pistol Shot
/use [mod:alt] Ambush
/use [mod:ctrl] Ambush
]],

	["b"] = [[
/use [nomod] Sap
/use [mod:shift, @focus] Sap
/use [mod:alt, @arena1, exists, harm, nodead][mod:alt, @arena2, exists, harm, nodead][mod:alt, @arena3, exists, harm, nodead] Sap
/targetenemy [mod:alt]
/use [mod:alt] Sap
/use [mod:ctrl] Crimson Vial
/cast [mod:ctrl] Crimson Vial
]],

	["capslock"] = [[
/stopattack [mod:alt]
/use [mod:alt, combat] Shadowmeld
/use [mod:alt] !Stealth
]],

}
