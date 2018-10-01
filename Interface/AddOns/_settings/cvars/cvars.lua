local f = CreateFrame("frame")
f:SetScript("OnEvent", function()


	-------------------
	-- MISCELLANEOUS --
	-------------------
	SetCVar("scriptErrors", 1)
	SetCVar("worldPreloadNonCritical", 0)
	SetCVar("worldPreloadHighResTextures", 0)
	SetCVar("gameTip", 0)
	SetCVar("statusTextDisplay", "BOTH")
	SetCVar("statusText", 0)
	SetCVar("SpellQueueWindow", 150)
	SetCVar("WorldTextScale", 0.8)
	SetCVar("lossOfControl", 1)					-- Enables loss of control spell banner; default: 1
	SetCVar("lossOfControlFull", 2)				-- Setting for Loss of Control - Full Loss. 0=Off, 1=Alert, 2=Full Duration; default: 2
	SetCVar("lossOfControlInterrupt", 2)			-- Setting for Loss of Control - Interrupt. 0=Off, 1=Alert, 2=Full Duration; default: 2
	SetCVar("lossOfControlSilence", 2)				-- Setting for Loss of Control - Silence. 0=Off, 1=Alert, 2=Full Duration; default: 2
	SetCVar("lossOfControlDisarm", 2)				-- Setting for Loss of Control - Disarm. 0=Off, 1=Alert, 2=Full Duration; default: 2
	SetCVar("lossOfControlRoot", 2)				-- Setting for Loss of Control - Root. 0=Off, 1=Alert, 2=Full Duration; default: 2
	SetCVar("threatWarning", 1)					-- Whether or not to show threat warning UI. 0 = off, 1 = in dungeons, 2 = in party/raid, 3 = always
	SetCVar("weatherdensity", 0)					-- Level of weather effects. 0 to 3.
	SetCVar("RAIDweatherDensity", 0)				-- Level of weather effects in raids?. 0 to 3.
	SetCVar("mapFade", 0)						-- Whether to fade out the world map when moving; default: 1

	------------------
	-- COMBO POINTS --
	------------------
	SetCVar("comboPointLocation", 2)		-- 	Location of combo points in UI. 1=target, 2=self

	-----------
	-- ARENA --
	-----------
	SetCVar("showArenaEnemyCastbar", 1)
	SetCVar("showArenaEnemyFrames", 1)
	SetCVar("showArenaEnemyPets", 0)

	----------------
	-- NAMEPLATES --
	----------------
	SetCVar("nameplateMaxDistance", 70)			-- The max distance to show nameplates; default: 45
	SetCVar("nameplateTargetBehindMaxDistance", -1)	-- The max distance to show the target nameplate when the target is behind the camera; default: 15
	SetCVar("nameplateOtherBottomInset", -1)		-- The inset from the bottom (in screen percent) that the non-self nameplates are clamped to; default: .1
	SetCVar("nameplateOtherTopInset", -1)			-- The inset from the top (in screen percent) that the non-self nameplates are clamped to; default: .065
	SetCVar("nameplateLargeBottomInset", -1)		-- The inset from the bottom (in screen percent) that large nameplates are clamped to; default: .15
	SetCVar("nameplateLargeTopInset", -1)			-- The inset from the top (in screen percent) that large nameplates are clamped to; default: .1
	SetCVar("nameplateResourceOnTarget", 0)			-- Nameplate class resource overlay mode. 0=self, 1=target; default: 0
	SetCVar("nameplateClassResourceTopInset", -1)	-- The inset from the top (in screen percent) that nameplates are clamped to when class resources are being displayed on them; default: .03
	SetCVar("nameplateMotion", 0)					-- Defines the movement/collision model for nameplates. 0=overlaping, 1=stacking; default: 0
	SetCVar("nameplateMotionSpeed", 0.1)			-- Controls the rate at which nameplate animates into their target locations [0.0-1.0]; default: 0.025
	SetCVar("nameplateOverlapH", .8)				-- Percentage amount for horizontal overlap of nameplates; default: 0.8
	SetCVar("nameplateOverlapV", .25)				-- Percentage amount for vertical overlap of nameplates; default: 1.1
	SetCVar("nameplateGlobalScale", 1)			-- Applies global scaling to non-self nameplates, this is applied AFTER selected, min, and max scale; default: 1.0
	SetCVar("nameplateMinScale", 1)				-- The minimum scale of nameplates; default: 0.8
	SetCVar("nameplateMinScaleDistance", 0)			-- The distance from the max distance that nameplates will reach their minimum scale; default: 10
	SetCVar("nameplateMaxScale", 1)				-- The max scale of nameplates; default: 1.0
	SetCVar("nameplateMaxScaleDistance", 0)			-- The distance from the camera that nameplates will reach their maximum scale; default: 10
	SetCVar("nameplateLargerScale", 1)				-- An additional scale modifier for important monsters; default: 1.2
	SetCVar("nameplateSelectedScale", 1)			-- The scale of the selected nameplate; default: 1.0
	SetCVar("NamePlateHorizontalScale", 1.1)		-- Applied to horizontal size of all nameplates; default: 1.0
	SetCVar("NamePlateVerticalScale", 1.2)		-- Applied to vertical size of all nameplates; default: 1.0
	-- Don't uncomment the two CVars above, change the values in "_nameplates\core.lua"
	SetCVar("nameplateMinAlpha", 1)					-- The minimum alpha of nameplates; default: .5
	SetCVar("nameplateMinAlphaDistance", 0)			-- The distance from the max distance that nameplates will reach their minimum alpha; default: 10
	SetCVar("nameplateMaxAlpha", 1)					-- The max alpha of nameplates; default: 0.9
	SetCVar("nameplateMaxAlphaDistance", 0)			-- The distance from the camera that nameplates will reach their maximum alpha; default: 10
	SetCVar("nameplateSelectedAlpha", 1)			-- The alpha of the selected nameplate; default: 1.0
	SetCVar("nameplateShowSelf", 0)					-- ???; default: 1
	SetCVar("nameplateSelfBottomInset", .3)			-- The inset from the bottom (in screen percent) that the self nameplate is clamped to; default: .2
	SetCVar("nameplateSelfTopInset", .7)			-- The inset from the top (in screen percent) that the self nameplate is clamped to; default: .5
	SetCVar("nameplateSelfScale", 1)				-- The scale of the self nameplate; default: 1.0
	SetCVar("nameplateSelfAlpha", 1)				-- The alpha of the self nameplate; default: 0.75
	SetCVar("nameplateOtherAtBase", 0)				-- Position other nameplates at the base (2), rather than overhead; default: 0
	SetCVar("ShowClassColorInNameplate", 1)			-- use this to display the class color in the nameplate health bar; default: 1
	SetCVar("ShowNamePlateLoseAggroFlash", 0) 		-- When enabled, if you are a tank role and lose aggro, the nameplate with briefly flash; default: 1
	SetCVar("NameplatePersonalHideDelayAlpha", .45) -- ???; default: .45
	SetCVar("NameplatePersonalHideDelaySeconds", 3) -- ???; default: 3
	SetCVar("NameplatePersonalShowAlways", 0) 		-- ???; default: 0
	SetCVar("NameplatePersonalShowInCombat", 1) 	-- ???; default: 1
	SetCVar("NameplatePersonalShowWithTarget", 0) 	-- ???; default: 0
	SetCVar("nameplateShowAll", 1)					-- ???; default: 0
	SetCVar("nameplateShowEnemies", 1)				-- ???; default: 1
	SetCVar("nameplateShowEnemyMinions", 0)			-- ???; default: 0
	SetCVar("nameplateShowEnemyPets", 1)			-- ???; default: 0
	SetCVar("nameplateShowEnemyGuardians", 0)		-- ???; default: 0
	SetCVar("nameplateShowEnemyTotems", 1)			-- ???; default: 0
	SetCVar("nameplateShowEnemyMinus", 1)			-- ???; default: 1
	SetCVar("nameplateShowFriends", 0)				-- ???; default: 0
	SetCVar("nameplateShowFriendlyMinions", 0)		-- ???; default: 0
	SetCVar("nameplateShowFriendlyPets", 1)			-- ???; default: 0
	SetCVar("nameplateShowFriendlyGuardians", 0)	-- ???; default: 0
	SetCVar("nameplateShowFriendlyTotems", 0)		-- ???; default: 0
	SetCVar("nameplateShowFriendlyNPCs", 1)			-- ???; default: 0


	------------
	-- CAMERA --
	------------
	SetCVar("cameraBobbing", 0)					-- Disable camera bobbing in first person mode
	SetCVar("cameraDistanceMaxZoomFactor", 2.6)	-- Set max camera distance
	SetCVar("cameraPivot", 0)					-- Doesn't let you free look when the camera is on the ground
	SetCVar("camerasmooth", 0)					-- Enables smooth camera movement
	SetCVar("cameraSmoothStyle", 0)				-- Never adjust camera
	SetCVar("cameraWaterCollision", 0)			-- Disable water collision
	SetCVar("cameraYawMoveSpeed", 100)			-- Mouse look speed
	SetCVar("cameraSmoothYaw", 0)				-- Disable camera locking on the target while channeling
	SetCVar("cameraViewBlendStyle", 2)			-- How the camera should move between saved positions (1: smooth, 2: instant)
	SetCVar("test_cameraDynamicPitch", 1)
	SetCVar("test_cameraDynamicPitchBaseFovPad", 0.65)
	SetCVar("test_cameraDynamicPitchBaseFovPadFlying", 0.65)
	SetCVar("test_cameraDynamicPitchBaseFovPadDownScale", 1)

	--------------------------
	-- FLOATING COMBAT TEXT --
	--------------------------
	SetCVar("floatingCombatTextCombatDamage", 1)					--Display damage numbers over hostile creatures when damaged",
	SetCVar("floatingCombatTextCombatDamageAllAutos", 0)			--Show all auto-attack numbers, rather than hiding non-event numbers",
	SetCVar("floatingCombatTextCombatDamageDirectionalOffset", 0)	--Amount to offset directional damage numbers when they start",
	SetCVar("floatingCombatTextCombatDamageDirectionalScale", 0)	--Directional damage numbers movement scale (0 = no directional numbers)",
	SetCVar("floatingCombatTextCombatLogPeriodicSpells", 1)			--Display damage caused by periodic effects",
	SetCVar("floatingCombatTextPetMeleeDamage", 1)					--Display pet melee damage in the world",
	SetCVar("floatingCombatTextPetSpellDamage", 1)					--Display pet spell damage in the world",
	SetCVar("floatingCombatTextCombatHealing", 1)					--Display amount of healing you did to the target",
	SetCVar("floatingCombatTextCombatHealingAbsorbTarget", 1)		--Display amount of shield added to the target.",
	SetCVar("floatingCombatTextCombatHealingAbsorbSelf", 0) 		--Shows a message when you gain a shield.",
	SetCVar("enableFloatingCombatText", 0) 							--Whether to show floating combat text",
	SetCVar("floatingCombatTextFloatMode", 1) 						--The combat text float mode",
	SetCVar("enablePetBattleFloatingCombatText", 1) 				--Whether to show floating combat text for pet battles",
	SetCVar("floatingCombatTextCombatState", 0)
	SetCVar("floatingCombatTextDodgeParryMiss", 0)
	SetCVar("floatingCombatTextDamageReduction", 0)
	SetCVar("floatingCombatTextRepChanges", 0)
	SetCVar("floatingCombatTextReactives", 0)
	SetCVar("floatingCombatTextFriendlyHealers", 0)
	SetCVar("floatingCombatTextComboPoints", 0)
	SetCVar("floatingCombatTextLowManaHealth", 0)
	SetCVar("floatingCombatTextEnergyGains", 0)
	SetCVar("floatingCombatTextPeriodicEnergyGains", 0)
	SetCVar("floatingCombatTextHonorGains", 0)
	SetCVar("floatingCombatTextAuras", 0)
	SetCVar("floatingCombatTextAllSpellMechanics", 0)
	SetCVar("floatingCombatTextSpellMechanics", 0)
	SetCVar("floatingCombatTextSpellMechanicsOther", 0)

	-----------------
	-- SCREENSHOTS --
	-----------------
	SetCVar("screenshotFormat", "jpg")
	SetCVar("screenshotQuality", 10)

	f:UnregisterEvent("VARIABLES_LOADED")
end)
f:RegisterEvent("VARIABLES_LOADED")
