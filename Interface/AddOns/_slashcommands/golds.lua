local eventFrame = CreateFrame("Frame")
local events = {}
local realmName = GetRealmName()
local formatedRealmName = string.upper(string.gsub(realmName, "%s+", ""))
local playerName = UnitName("player")

local colorString = function(str, color)
    return format("|cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, str)
end

local displayTotalmMoney = function()
	local totalMoney = 0
	for realm, _ in pairs(goldsDB) do
		local realmMoney = 0
		for name, _ in pairs(goldsDB[realm]["characters"]) do
			realmMoney = realmMoney + goldsDB[realm]["characters"][name]["money"]
		end
        totalMoney = totalMoney + realmMoney
		DEFAULT_CHAT_FRAME:AddMessage(goldsDB[realm]["name"]..": ".. GetCoinTextureString(realmMoney))
	end
	DEFAULT_CHAT_FRAME:AddMessage("> Total: ".. GetCoinTextureString(totalMoney))
end

local displaysRealmMoney = function(realm)
	local realmMoney = 0
	for name, _ in pairs(goldsDB[realm]["characters"]) do
		local class = goldsDB[realm]["characters"][name]["class"]
		local money = goldsDB[realm]["characters"][name]["money"]
		realmMoney = realmMoney + money
		DEFAULT_CHAT_FRAME:AddMessage(colorString(name, RAID_CLASS_COLORS[class]) .. ": " .. GetCoinTextureString(money))
	end
	DEFAULT_CHAT_FRAME:AddMessage("> "..goldsDB[realm]["name"]..": " .. GetCoinTextureString(realmMoney))
end

events["PLAYER_LOGIN"] = function()
	if type(goldsDB) ~= "table" then goldsDB = {} end

	if type(goldsDB[formatedRealmName]) ~= "table" then
		goldsDB[formatedRealmName] = {
            name = realmName,
            characters = {}
        }
	end

	goldsDB[formatedRealmName]["characters"][playerName] = {
		money = GetMoney(),
		class = select(2, UnitClass("player"))
	}
end

events["PLAYER_MONEY"] = function()
	goldsDB[formatedRealmName]["characters"][playerName]["money"] = GetMoney()
end

eventFrame:SetScript("OnEvent", function(self, event, ...)
	events[event](self, ...)
end)

for k, _ in pairs(events) do
	eventFrame:RegisterEvent(k)
end

SlashCmdList["GOLDS"] = function(arg)
	arg = string.upper(string.gsub(arg, "%s+", ""))
	if arg == "TOTAL" or arg == "ALL" then
		displayTotalmMoney()
    else
        displaysRealmMoney(type(goldsDB[arg]) == "table" and arg or formatedRealmName)
	end
end
SLASH_GOLDS1 = "/golds"
