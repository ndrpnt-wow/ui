if select(2, UnitClass("player")) ~= "ROGUE" then
	return
end

local _, ns = ...

ns.fragments.level = {}

if UnitLevel("player") <= 10 then
	ns.fragments.level[24] = [[
/use [__MOD_0__] Sinister Strike
]]
end
