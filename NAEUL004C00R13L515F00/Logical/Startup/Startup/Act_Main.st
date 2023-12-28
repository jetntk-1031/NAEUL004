(** 2019-03-28 **)
ACTION Act_Main:
		//Reset Done
	IF tylocalStartup.Out.eStatus = Done AND tylocalStartup.In.eAct = StartupActIdle THEN
		tylocalStartup.Out.eStat	:= StartupActIdle;
	END_IF
	
	//Set p_eAct
	IF tylocalStartup.Out.eStatus = Idle THEN
		tylocalStartup.Out.eStat	:= tylocalStartup.In.eAct;
	END_IF
	//Main
	CASE tylocalStartup.Out.eStat OF
		
		StartupActIdle:
			IF tylocalStartup.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				tylocalStartup.Out.eStartupStep1	:= StartupStepUsrFolder;
				tylocalStartup.Out.bRun			:= FALSE;
				usiStep			:= 0;
		
				tylocalStartup.Out.sStatTxt	:= a_sStatText[tylocalStartup.Out.eStat];
		
			END_IF
			
			tylocalStartup.Out.eStatus	:= Idle;
		
		StartupActRun:
			IF tylocalStartup.Out.eStatus = Idle OR tylocalStartup.Out.eStatus = Busy THEN
				
				tylocalStartup.Out.eStatus	:= Busy;
		
				tylocalStartup.Out.sStatTxt	:= a_sStatText[tylocalStartup.Out.eStat];
		
				tylocalStartup.Out.bRun	:= TRUE;
				
				CASE tylocalStartup.Out.eStartupStep1 OF
					
					StartupStepUsrFolder:
						Act_Main_UsrFolder;
					
					StartupStepParameter:
						Act_Main_Parameter;
					
					StartupStepGetHWInfo:
						Act_Main_GetHWInfo;
					
					StartupStepLibVer:
						Act_Main_LibVer;
					
					StartupStepRecipe:
						Act_Main_Recipe;
						
					StartupStepAutoRcp:	
						IF g_tyNtParamCurr.bAutoRcpPrep AND NOT(g_tyMcParamCurr.bAutoRcpDisable) THEN
							Act_Main_AutoRcp;
							
						ELSE
							tylocalStartup.Out.eStartupStep1:= StartupStepUsrMgmt;
						END_IF	
					StartupStepUsrMgmt:
						Act_Main_UsrMgmt;
					
					StartupStepBffr:
						Act_Main_Bffr;
					
					StartupStepAlarm:
						Act_Main_Alarm;
					
					StartupStepHermes:
						Act_Main_Hermes;
					
					StartupStepSDOWrite:
						IF DiagCpuIsSimulated() = FALSE THEN
							Act_Main_SDOWrite;
						ELSE
							tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;
						END_IF
						
					StartupStepSetupUI:
						Act_Main_SetupUI;
					
					StartupStepDone:
						Act_Main_Done;
					
				END_CASE
				
				tylocalStartup.Out.sStepTxt	:= a_sStepText[tylocalStartup.Out.eStartupStep1];
				
			END_IF
		
	END_CASE
	
END_ACTION
