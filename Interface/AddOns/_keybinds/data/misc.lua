local _, ns = ...

ns.fragments.misc = {
	[11] = [[
/stopcasting [__MOD_0__]
/stopattack [__MOD_0__]
/cancelaura [__MOD_2__] Hand of Sacrifice
/cancelaura [__MOD_2__] Hand of Protection
]],
	[42] = [[
/petpassive
/petattack [__MOD_0__]
/petattack [__MOD_1__, @focus]
/petmoveto [__MOD_2__]
/petfollow [__MOD_3__]
-- petdismiss does not accept options
/stopmacro __NOMOD_4__
/petdismiss
]],
}
