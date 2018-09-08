local level = UnitLevel("player")
if level > 10 then
	return
end

local _, ns = ...

local Rogue = {
	["e"] = [[
/use [nomod] Sinister Strike
]],
}

ns.macros.low = {
	[259] = Rogue,
}
