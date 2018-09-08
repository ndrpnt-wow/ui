local _, class = UnitClass("player")
if class ~= "ROGUE" then
	return
end

local _, ns = ...

ns.macros[259] = {}
