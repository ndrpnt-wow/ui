local eventFrame = CreateFrame("Frame")
local events = {}
local currentRealmName = GetRealmName()
local currentRealm = string.upper(string.gsub(currentRealmName, "%s+", ""))
local currentName = UnitName("player")

local formatName = function(name, class)

	local colors = RAID_CLASS_COLORS[class]

	return string.format("|cff%02x%02x%02x%s|r", colors.r * 255, colors.g * 255, colors.b * 255, name)
end

local printRealmMoney = function(arg)

	local realm
	local total = 0

	if type(Golds[arg]) ~= "table" then
		realm = currentRealm
	else
		realm = arg
	end

	print("/*")

	for name, _ in pairs(Golds[realm]) do

		local class = Golds[realm][name]["class"]
		local money = Golds[realm][name]["money"]

		total = total + money

		print(formatName(name, class) .. ": " .. GetCoinTextureString(money))
	end

	print("> "..RealmNames[realm]..": " .. GetCoinTextureString(total))
	print("*/")
end

local printTotalmMoney = function()

	local total = 0
	local realmTotal

	print("/*")

	for realm, _ in pairs(Golds) do

		realmTotal = 0

		for name, _ in pairs(Golds[realm]) do

			local money = Golds[realm][name]["money"]

			total = total + money
			realmTotal = realmTotal + money
		end

		print(RealmNames[realm]..": ".. GetCoinTextureString(realmTotal))
	end

	print("> Total: ".. GetCoinTextureString(total))
	print("*/")
end

events["PLAYER_LOGIN"] = function(self, ...)

	if type(Golds) ~= "table" then
		Golds = {}
	end

	if type(Golds[currentRealm]) ~= "table" then
		Golds[currentRealm] = {}
		RealmNames[currentRealm] = currentRealmName
	end

	Golds[currentRealm][currentName] = {
		money = GetMoney(),
		class = select(2, UnitClass("player"))
	}
end

events["PLAYER_MONEY"] = function(self, ...)
	Golds[currentRealm][currentName]["money"] = GetMoney()
end

eventFrame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...)
end)

for k, _ in pairs(events) do
	eventFrame:RegisterEvent(k)
end

SLASH_NDRPNTGOLDS1 = "/golds"
SLASH_NDRPNTGOLDS2 = "/gold"
SlashCmdList.NDRPNTGOLDS = function(msg, editbox)

	local arg = string.upper(string.gsub(msg, "%s+", ""))

	if arg == "TOTAL" or arg == "ALL" then
		printTotalmMoney()
	else
		printRealmMoney(arg)
	end
end
