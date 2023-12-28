(** 2019-05-09 **)
ACTION Act_Main:

	//Reset Done. Done Only Exist One Cycle.
	IF tylocalUsrFolder.Out.eStatus = Done AND tylocalUsrFolder.In.eAct = UsrFolderActIdle THEN
		tylocalUsrFolder.Out.eStat	:= UsrFolderActIdle;
	END_IF
	
	//Set tylocalUsrFolder.In.eAct
	IF tylocalUsrFolder.Out.eStatus = Idle THEN
		tylocalUsrFolder.Out.eStat	:= tylocalUsrFolder.In.eAct;
	END_IF
	//Main
	CASE tylocalUsrFolder.Out.eStat OF
		
		UsrFolderActIdle:
			IF tylocalUsrFolder.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbDirCreate1(bEn := FALSE);
				fbDirCreate2(bEn := FALSE);
				fbDirCreate3(bEn := FALSE);
				fbDirCreate4(bEn := FALSE);
						
				tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
			END_IF
			
			tylocalUsrFolder.Out.eStatus	:= Idle;
		
		UsrFolderActCreateUsrDir:
			IF tylocalUsrFolder.Out.eStatus = Idle OR tylocalUsrFolder.Out.eStatus = Busy THEN
				
				tylocalUsrFolder.Out.eStatus	:= Busy;
						
				tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
				fbDirCreate1(bEn := TRUE);
				IF fbDirCreate1.udiStatus = 0 THEN
					tylocalUsrFolder.Out.eStatus		:= Done;
				ELSIF fbDirCreate1.udiStatus < 65534 THEN
					tylocalUsrFolder.Out.eStatus		:= Error;
					
					IF fbDirCreate1.udiStatus = 1908 THEN
						udiStatus	:= 10000;	//Creating User Directory Error
					ELSE
						udiStatus	:= fbDirCreate1.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		UsrFolderActCreatePrivateDir:
			IF tylocalUsrFolder.Out.eStatus = Idle OR tylocalUsrFolder.Out.eStatus = Busy THEN
				
				tylocalUsrFolder.Out.eStatus	:= Busy;
						
				tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
				fbDirCreate2(bEn := TRUE);
				IF fbDirCreate2.udiStatus = 0 THEN
					tylocalUsrFolder.Out.eStatus		:= Done;
				ELSIF fbDirCreate2.udiStatus < 65534 THEN
					tylocalUsrFolder.Out.eStatus		:= Error;
					
					IF fbDirCreate2.udiStatus = 1908 THEN
						udiStatus	:= 10001;	//Creating Private Directory Error
					ELSE
						udiStatus	:= fbDirCreate2.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		UsrFolderActCreateLogDir:
			IF tylocalUsrFolder.Out.eStatus = Idle OR tylocalUsrFolder.Out.eStatus = Busy THEN
				
				tylocalUsrFolder.Out.eStatus	:= Busy;
						
				tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
				fbDirCreate3(bEn := TRUE);
				IF fbDirCreate3.udiStatus = 0 THEN
					tylocalUsrFolder.Out.eStatus		:= Done;
				ELSIF fbDirCreate3.udiStatus < 65534 THEN
					tylocalUsrFolder.Out.eStatus		:= Error;
					
					IF fbDirCreate3.udiStatus = 1908 THEN
						udiStatus	:= 10002;	//Creating Log Directory Error
					ELSE
						udiStatus	:= fbDirCreate3.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
		UsrFolderActCreateLCSDir:
			IF tylocalUsrFolder.Out.eStatus = Idle OR tylocalUsrFolder.Out.eStatus = Busy THEN
				
				tylocalUsrFolder.Out.eStatus	:= Busy;
						
				tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
				fbDirCreate4(bEn := TRUE);
				IF fbDirCreate4.udiStatus = 0 THEN
					tylocalUsrFolder.Out.eStatus		:= Done;
				ELSIF fbDirCreate4.udiStatus < 65534 THEN
					tylocalUsrFolder.Out.eStatus		:= Error;
					
					IF fbDirCreate4.udiStatus = 1908 THEN
						udiStatus	:= 10003;	//Creating LCS Directory Error
					ELSE
						udiStatus	:= fbDirCreate4.udiStatus;
					END_IF
				END_IF
				
			END_IF
		
	END_CASE
	
END_ACTION
