local _, ns = ...

ns.fragments.targeting = {
	[21] = [[
/targetenemy [__MOD_0__]
/targetenemy [__MOD_1__] true
/targetfriend [__MOD_2__]
/targetfriend [__MOD_3__] true
/focus [__MOD_4__, @mouseover, exists][__MOD_4__]
]],
	[43] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] arena1
/clearfocus [__MOD_1__]
/focus [__MOD_1__] arena1
/cleartarget [__MOD_2__]
/tar [__MOD_2__] arenapet1
/clearfocus [__MOD_3__]
/focus [__MOD_3__] arenapet1
]],
	[44] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] arena2
/clearfocus [__MOD_1__]
/focus [__MOD_1__] arena2
/cleartarget [__MOD_2__]
/tar [__MOD_2__] arenapet2
/clearfocus [__MOD_3__]
/focus [__MOD_3__] arenapet2
]],
	[45] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] arena3
/clearfocus [__MOD_1__]
/focus [__MOD_1__] arena3
/cleartarget [__MOD_2__]
/tar [__MOD_2__] arenapet3
/clearfocus [__MOD_3__]
/focus [__MOD_3__] arenapet3
]],
	[53] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] party1
/clearfocus [__MOD_1__]
/focus [__MOD_1__] party1
/cleartarget [__MOD_2__]
/tar [__MOD_2__] party1-pet
/clearfocus [__MOD_3__]
/focus [__MOD_3__] party1-pet
]],
	[54] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] party2
/clearfocus [__MOD_1__]
/focus [__MOD_1__] party2
/cleartarget [__MOD_2__]
/tar [__MOD_2__] party2-pet
/clearfocus [__MOD_3__]
/focus [__MOD_3__] party2-pet
]],
	[55] = [[
/cleartarget [__MOD_0__]
/tar [__MOD_0__] player
/clearfocus [__MOD_1__]
/focus [__MOD_1__] player
/cleartarget [__MOD_2__]
/tar [__MOD_2__] pet
/clearfocus [__MOD_3__]
/focus [__MOD_3__] pet
]],
}
