for i = 1, NUM_CHAT_WINDOWS do
	-- _G["ChatFrame"..i]:SetMinResize(200, 30)
	-- _G["ChatFrame"..i]:SetMaxResize(1300, 700)
	_G["ChatFrame"..i]:SetClampRectInsets(-35, 35, 30, -35)
end
