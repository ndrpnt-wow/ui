local f = CreateFrame("Frame")
f:SetScript(
	"OnEvent",
	function(self, event)
		total = 0
		for bag = 0, 4 do
			for slot = 1, GetContainerNumSlots(bag) do
				_, count, _, quality, _, _, link = GetContainerItemInfo(bag, slot)
				if link then
					_, _, _, _, _, _, _, _, _, _, price = GetItemInfo(link)
					if quality == 0 and price ~= 0 then
						total = total + (price * count)
						UseContainerItem(bag, slot)
					end
				end
			end
		end
		if total ~= 0 then
			DEFAULT_CHAT_FRAME:AddMessage("Grey items sold for " .. GetCoinTextureString(total), 255, 255, 255)
		end
	end
)
f:RegisterEvent("MERCHANT_SHOW")
