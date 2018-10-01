local _, class = UnitClass("player")
if class ~= "DRUID" then
	return
end

local _, ns = ...

ns.macros[103] = {

	["1"] = [[
/use [nomod] Wild Growth
/use [mod:shift, @focus] Wild Growth
/use [mod:alt] Revive
/use [mod:ctrl] Rebirth
]],

	["2"] = [[
/use [nomod] Tiger's Fury
/use [mod:shift] Berserk
/use [mod:alt] Rip and Tear
/use [mod:ctrl, @focus] Rip and Tear
]],

	["3"] = [[
/use [nomod] Dash
/use [mod:shift] Stampeding Roar
/use [mod:alt] Feral Frenzy
/use [mod:ctrl, @focus] Feral Frenzy
]],

	["4"] = [[
/use [nomod] Thorns
/use [mod:shift, @focus] Thorns
/use [mod:alt] Hibernate
/use [mod:ctrl, @focus] Hibernate
]],

	["5"] = [[
/use [nomod] Survival Instincts
/use [mod:shift] Renewal
/use [mod:alt] Soothe
/use [mod:ctrl, @focus] Soothe
]],

	["q"] = [[
/stopattack [nomod]
/use [nomod] !Prowl
/cancelaura [mod:shift] Prowl
/use [mod:alt] Growl
/use [mod:ctrl, @focus] Growl
]],

	["w"] = [[
/use [nomod, form:1] Mangle
/use [nomod, form:2] Rake
/use [mod:shift, @focus, form:1] Mangle
/use [mod:shift, @focus, form:2] Rake
/use [mod:alt] Maim
/use [mod:ctrl, @focus] Maim
]],

	["e"] = [[
/use [nomod, form:1] Enraged Maul
/use [nomod, form:2] Shred
/use [mod:shift, @focus, form:1] Enraged Maul
/use [mod:shift, @focus, form:2] Shred
/use [mod:alt] Ferocious Bite
/use [mod:ctrl, @focus] Ferocious Bite
]],

	["r"] = [[
/use [nomod] Regrowth
/use [mod:shift, @focus] Regrowth
/use [mod:alt] Rip
/use [mod:ctrl, @focus] Rip
]],

	["t"] = [[
/use [nomod] Swiftmend
/use [mod:shift, @focus] Swiftmend
/use [mod:alt] Rejuvenation
/use [mod:ctrl, @focus] Rejuvenation
]],

	["a"] = [[
/use [nomod] Wild Charge
/use [mod:shift, @focus] Wild Charge
/cancelform [mod:alt]
/use [mod:ctrl] !Travel Form
]],

	["g"] = [[
/use [nomod] Skull Bash
/use [mod:shift, @focus] Skull Bash
/use [mod:alt] Remove Corruption
/use [mod:ctrl, @focus] Remove Corruption
]],

	["h"] = [[
/use [nomod] Entangling Roots
/use [mod:shift, @focus] Entangling Roots
/use [mod:alt] Mighty Bash
/use [mod:alt] Mass Entanglement
/use [mod:alt] Typhoon
/use [mod:ctrl, @focus] Mighty Bash
/use [mod:ctrl, @focus] Mass Entanglement
/use [mod:ctrl] Typhoon
]],

	["v"] = [[
/use [nomod] Moonfire
/use [mod:shift, @focus] Moonfire
/use [mod:alt] Swipe
/use [mod:ctrl] Thrash
]],

	["b"] = [[
/use [nomod] !Cat Form
/use [mod:shift] !Bear Form
/use [mod:alt] !Moonkin Form
/use [mod:ctrl] Savage Roar
]],

	["capslock"] = [[
/stopattack [mod:alt]
/use [mod:alt, combat] Shadowmeld
/use [mod:alt] !Prowl
]],

}
