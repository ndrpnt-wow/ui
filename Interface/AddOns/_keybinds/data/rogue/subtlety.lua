local _, class = UnitClass("player")
if class ~= "ROGUE" then
	return
end

local _, ns = ...

ns.macros[261] = {

	["1"] = [[
/use [nomod] Vanish
/use [mod:shift] Shroud of Concealment
/use [mod:alt] Distract
]],

	["2"] = [[
/use [nomod] Symbols of Death
/use [mod:shift] Shadow Blades
]],

	["3"] = [[
/use [nomod] Shadow Dance
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
/run for i=1,40 do if UnitAura("player", i) == "Shadow Dance" then CancelUnitBuff("player", i) end end
/cancelaura [mod:shift] Shadow Dance
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
/use [nomod] Shadowstrike
/use [mod:shift, @focus] Shadowstrike
/use [mod:alt] Eviscerate
/use [mod:ctrl, @focus] Eviscerate
]],

	["r"] = [[
/use [nomod] Backstab
/use [mod:shift, @focus] Backstab
/use [mod:alt] Nightblade
/use [mod:ctrl, @focus] Nightblade
]],

	["t"] = [[
/use [nomod] Shiv
/use [mod:shift, @focus] Shiv
/use [mod:alt] Secret Technique
/use [mod:ctrl, @focus] Secret Technique
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
/use [mod:alt] Cold Blood
/use [mod:ctrl] Feint
]],

	["h"] = [[
/use [nomod] Blind
/use [mod:shift, @focus] Blind
/use [mod:alt] Shadowy Duel
/use [mod:ctrl, @focus] Shadowy Duel
]],

	["v"] = [[
/use [nomod] Shuriken Toss
/use [mod:shift, @focus] Shuriken Toss
/use [mod:alt] Shuriken Storm
/use [mod:ctrl] Shuriken Tornado
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
