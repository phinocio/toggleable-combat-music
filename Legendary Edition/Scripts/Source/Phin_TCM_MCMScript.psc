Scriptname Phin_TCM_MCMScript extends SKI_ConfigBase

; Set defaults as reported initially in the Creation Kit
float groupThreatRatioMaxDefault       = 2.000000;
float groupThreadRatioMinDefault       = 0.500000;
float groupThreaRatioTimerDefault      = 1.000000;
float nearCombatInnerRadiusDefault     = 2500.000000;
float nearCombatOuterRadiusDefault     = 3500.000000;
float playerCombatStrengthCapDefault   = 35000.000000;
float playerNearStrengthMultDefault    = 1.000000;
float playerTargetedThreatRatioDefault = 2.000000;
float stopTimeDefault                  = 5.000000;
float updateTimeDefault                = 1.000000;

; States
bool bMusicOn = False;

; Option IDs
int iMusicToggle;

Event OnConfigInit()
	
	Pages = new string[1];
	Pages[0] = "Settings";

EndEvent

Event OnPageReset(string page)

	If(page == Pages[0])
		SetCursorFillMode(TOP_TO_BOTTOM);
		AddHeaderOption("Toggle Combat Music");
		iMusicToggle = AddToggleOption("Combat Music", bMusicOn);

	EndIf

EndEvent

Event OnOptionSelect(int option)
	If(option == iMusicToggle)
		; Switch the state of Music being on or off
		bMusicOn = !bMusicOn;
		SetToggleOptionValue(iMusicToggle, bMusicOn);

		If(bMusicOn == True)
			Debug.Notification("Music turned on");
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioMax", groupThreatRatioMaxDefault);
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioMin", groupThreadRatioMinDefault);
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioTimer", groupThreaRatioTimerDefault);
			Game.SetGameSettingFloat("fCombatMusicNearCombatInnerRadius", nearCombatInnerRadiusDefault);
			Game.SetGameSettingFloat("fCombatMusicNearCombatOuterRadius", nearCombatOuterRadiusDefault);
			Game.SetGameSettingFloat("fCombatMusicPlayerCombatStrengthCap", playerCombatStrengthCapDefault);
			Game.SetGameSettingFloat("fCombatMusicPlayerNearStrengthMult", playerNearStrengthMultDefault);
			Game.SetGameSettingFloat("fCombatMusicPlayerTargetedThreatRatio", playerTargetedThreatRatioDefault);
			Game.SetGameSettingFloat("fCombatMusicStopTime", stopTimeDefault);
			Game.SetGameSettingFloat("fCombatMusicUpdateTime", updateTimeDefault);
		Else
			Debug.Notification("Music turned off");
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioMax", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioMin", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicGroupThreatRatioTimer", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicNearCombatInnerRadius", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicNearCombatOuterRadius", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicPlayerCombatStrengthCap", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicPlayerNearStrengthMult", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicPlayerTargetedThreatRatio", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicStopTime", 0.000000);
			Game.SetGameSettingFloat("fCombatMusicUpdateTime", 0.000000);
		EndIf

	EndIf
EndEvent