(** 2019-03-25 **)
ACTION Act_Main:
	
	//Main
	CASE eStat OF
		
		UIActIdle:
			IF eStatus <> Idle THEN	//Reset Data
				//Private
		
				sStatTxt	:= a_sStatText[eStat];
				
				eUIInit	:= UIInitialC0005;
		
			END_IF
		
			eStatus	:= Idle;
		
		UIActInitial:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
				
				sStatTxt	:= a_sStatText[eStat];
				
				CASE eUIInit OF
					UIInitialC0005:
						Act_Main_C0005;
						eUIInit	:= UIInitialC0007;
						
					UIInitialC0007:
						Act_Main_C0007;
						eUIInit	:= UIInitialP0000;
						
					UIInitialP0000:
						Act_Main_P0000;
						eUIInit	:= UIInitialP0002;
						
					UIInitialP0002:
						Act_Main_P0002;
						eUIInit	:= UIInitialP0003;
					
					UIInitialP0003:
						Act_Main_P0003;
						eUIInit	:= UIInitialP0200;
						
					UIInitialP0200:
						Act_Main_P0200;
						eUIInit	:= UIInitialP0201;
						
					UIInitialP0201:
						Act_Main_P0201;
						eUIInit	:= UIInitialP0202;
						
					UIInitialP0202:
						Act_Main_P0202;
						eUIInit	:= UIInitialP0203;
						
					UIInitialP0203:
						Act_Main_P0203;
						eUIInit	:= UIInitialP0204;
						
					UIInitialP0204:
						Act_Main_P0204;
						eUIInit	:= UIInitialP0205;
					
					UIInitialP0205:
						Act_Main_P0205;
						eUIInit	:= UIInitialP0206;
										
					UIInitialP0206:
						Act_Main_P0206;
						eUIInit	:= UIInitialP0207;
					
					UIInitialP0207:
						Act_Main_P0207;
						eUIInit	:= UIInitialP0300;
	
					UIInitialP0300:
						Act_Main_P0300;
						eUIInit	:= UIInitialP0400;
						
					UIInitialP0400:
						Act_Main_P0400;
						eUIInit	:= UIInitialP0410;
						
					UIInitialP0410:
						Act_Main_P0410;
						eUIInit	:= UIInitialP0800;
						
					UIInitialP0800:
						Act_Main_P0800;
						eUIInit	:= UIInitialP0850;
						
					UIInitialP0850:
						Act_Main_P0850;
						eUIInit	:= UIInitialP0900;
						
					UIInitialP0900:
						Act_Main_P0900;
						eUIInit	:= UIInitialP0910;
						
					UIInitialP0910:
						Act_Main_P0910;
						eUIInit	:= UIInitialP0920;
						
					UIInitialP0920:
						Act_Main_P0920;
						eUIInit	:= UIInitialP0921;
						
					UIInitialP0921:
						Act_Main_P0921;
						eUIInit	:= UIInitialP0922;
						
					UIInitialP0922:
						Act_Main_P0922;
						eUIInit	:= UIInitialP0923;
					
					UIInitialP0923:
						Act_Main_P0923;
						eUIInit	:= UIInitialP0928;
						
					UIInitialP0928:
						Act_Main_P0928;
						eUIInit	:= UIInitialP0929;
						
					UIInitialP0929:
						Act_Main_P0929;
						eUIInit	:= UIInitialP0930;
						
					UIInitialP0930:
						Act_Main_P0930;
						eUIInit	:= UIInitialP0931;
						
					UIInitialP0931:
						Act_Main_P0931;
						eUIInit	:= UIInitialP0932;
						
					UIInitialP0932:
						Act_Main_P0932;
						eUIInit	:= UIInitialP0933;
					
					UIInitialP0933:
						Act_Main_P0933;
						eUIInit	:= UIInitialP0934;
						
					UIInitialP0934:
						Act_Main_P0934;
						eUIInit	:= UIInitialP0935;
						
					UIInitialP0935:
						Act_Main_P0935;
						eUIInit	:= UIInitialP0936;
						
					UIInitialP0936:
						Act_Main_P0936;
						eUIInit	:= UIInitialP0937;
					
					UIInitialP0937:
						Act_Main_P0937;
						eUIInit	:= UIInitialP0938;
						
					UIInitialP0938:
						Act_Main_P0938;
						eUIInit	:= UIInitialP0939;
						
					UIInitialP0939:
						Act_Main_P0939;
						eUIInit	:= UIInitialP0940;

					UIInitialP0940:
						Act_Main_P0940;
						eUIInit	:= UIInitialP0950;
					
					UIInitialP0950:
						Act_Main_P0950;
						eUIInit	:= UIInitialP1000;
						
					UIInitialP1000:
						Act_Main_P1000;
						eUIInit	:= UIInitialP1020;
						
					UIInitialP1020:
						Act_Main_P1020;
						eUIInit	:= UIInitialP1021;
						
					UIInitialP1021:
						Act_Main_P1021;
						eUIInit	:= UIInitialP1022;
						
					UIInitialP1022:
						Act_Main_P1022;
						eUIInit	:= UIInitialP1023;
						
					UIInitialP1023:
						Act_Main_P1023;
						eUIInit	:= UIInitialP1024;
						
					UIInitialP1024:
						Act_Main_P1024;
						eUIInit	:= UIInitialP1026;
						
					UIInitialP1026:
						Act_Main_P1026;
						eUIInit	:= UIInitialP1027;
						
					UIInitialP1027:
						Act_Main_P1027;
						eUIInit	:= UIInitialP1030;
						
					UIInitialP1030:
						Act_Main_P1030;
						eUIInit	:= UIInitialP1031;
						
					UIInitialP1031:
						Act_Main_P1031;
						eUIInit	:= UIInitialP1040;
						
					UIInitialP1040:
						Act_Main_P1040;
						eUIInit	:= UIInitialP1050;
						
					UIInitialP1050:
						Act_Main_P1050;
						eUIInit	:= UIInitialP1080;
						
					UIInitialP1080:
						Act_Main_P1080;
						eUIInit	:= UIInitialP1081;
						
					UIInitialP1081:
						Act_Main_P1081;
						eUIInit	:= UIInitialDone;
						
					UIInitialDone:
						tyMcParamWr					:= p_tyMcParamCurr;
						
						tyProdRcpCurrRcpWr			:= p_tyProdRcpCurrRcp0;
						
						tyMagRcpCurrRcpWr			:= p_tyMagRcpCurrRcp;
						
						tyUsrMgmtAccessRightLvl1Wr	:= p_tyUsrMgmtFullData.tyAccessRightLvl1;
						tyUsrMgmtAccessRightLvl2Wr	:= p_tyUsrMgmtFullData.tyAccessRightLvl2;
						tyUsrMgmtAccessRightLvl3Wr	:= p_tyUsrMgmtFullData.tyAccessRightLvl3;
						
						a_tyHermesUSParamWr			:= p_tyHermesConfiguration.a_tyUSParam;
						
						eStatus	:= Done;
					
				END_CASE
				
			END_IF
		
	END_CASE
	
END_ACTION
