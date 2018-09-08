local _, ns = ...
-- 1=head, 2=neck, 3=shoulder, 4=shirt, 5=chest, 6=belt
-- 7=legs, 8=feet, 9=wrist, 10=gloves, 11=finger 1, 12=finger 2
-- 13=trinket 1, 14=trinket 2, 15=back, 16=main hand, 17=off hand

local utility = {

	["y"] = [[
/use [nomod] 13
/use [mod:shift] 6
/use [mod:ctrl] 15
]],

	["capslock"] = [[
/use [nomod] 14
/use [nomod] Gladiator's Medallion
/use [nomod] Honorable Medallion
]],

	["z"] = [[
/tar [nomod] arena1
/clearfocus [mod:shift]
/focus [mod:shift] arena1
/tar [mod:alt] arenapet1
/clearfocus [mod:ctrl]
/focus [mod:ctrl] arenapet1
]],

	["x"] = [[
/tar [nomod] arena2
/clearfocus [mod:shift]
/focus [mod:shift] arena2
/tar [mod:alt] arenapet2
/clearfocus [mod:ctrl]
/focus [mod:ctrl] arenapet2
]],

	["c"] = [[
/tar [nomod] arena3
/clearfocus [mod:shift]
/focus [mod:shift] arena3
/tar [mod:alt] arenapet3
/clearfocus [mod:ctrl]
/focus [mod:ctrl] arenapet3
]],

	["n"] = [[
/stopcasting [nomod]
/stopattack [nomod]
/use [mod:shift] Healthstone
/use [mod:shift] Crimson Vial
/use [mod:alt] Silkweave Splint
/use [mod:ctrl, @focus] Silkweave Splint
]],

	["mouse4"] = [[
/petpassive [nomod:ctrl]
/petfollow [nomod:ctrl]
/petattack [nomod]
/petattack [mod:shift, @focus]
/petmoveto [mod:ctrl]
/stopmacro [nomod:ctrl] [nomod:alt] [nomod:shift]
/PetDismiss
]],
--/script if (IsAltKeyDown() and IsShiftKeyDown()) or (IsControlKeyDown() and IsShiftKeyDown()) then PetDismiss() end

	["mouse5"] = [[
/focus [nomod]
/focus [mod:shift, @mouseover]
/tar [mod:alt, @focus]
/cancelaura [mod:ctrl] Hand of Sacrifice
/cancelaura [mod:ctrl] Hand of Protection
/cancelaura [mod:ctrl] Ice Block
/cancelaura [mod:ctrl] Spirit of Redemption
]],

	["mouseup"] = [[
/tar [nomod] party1
/clearfocus [mod:shift]
/focus [mod:shift] party1
/tar [mod:alt] party1-pet
/clearfocus [mod:ctrl]
/focus [mod:ctrl] party1-pet
]],

	["mousemiddle"] = [[
/tar [nomod] player
/clearfocus [mod:shift]
/focus [mod:shift] player
/tar [mod:alt] pet
/clearfocus [mod:ctrl]
/focus [mod:ctrl] pet
]],

	["mousedown"] = [[
/tar [nomod] party2
/clearfocus [mod:shift]
/focus [mod:shift] party2
/tar [mod:alt] party2-pet
/clearfocus [mod:ctrl]
/focus [mod:ctrl] party2-pet
]],

}

local vehicule = {

	["1"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton1
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["2"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton2
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["3"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton3
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["4"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton4
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["5"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton5
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["q"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton1
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["w"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton2
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["e"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton3
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["r"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton4
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

	["t"] = [[
/click [overridebar][vehicleui][possessbar,@vehicle,exists] OverrideActionBarButton5
/stopmacro [overridebar][vehicleui][possessbar,@vehicle,exists]
]],

}

ns.macros.common = {
	utility = utility,
	vehicule = vehicule,
}
