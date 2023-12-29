(** 2019-06-17 **)
ACTION Act_Main:
	
	
	fbAlmRstTm.PT				:= tylocalMtrPshr.In.tAlmRstTm;
	fbAlmTrigTm.PT				:= tylocalMtrPshr.In.tAlmTrigTm;
	fbMtrBrkOffDlyTm.PT			:= tylocalMtrPshr.In.tMtrBrkOffDlyTm;
	fbMtrPshrExtChk.tTimeOut	:= tylocalMtrPshr.In.tExtTO;
	fbMtrPshrRetChk.tTimeOut	:= tylocalMtrPshr.In.tRetTO;
	//Set tylocalMtrPshr.In.eAct
	IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy OR tylocalMtrPshr.Out.eStatus = Done THEN
		tylocalMtrPshr.Out.eStat	:= tylocalMtrPshr.In.eAct;
	END_IF
	
	IF eStatOld <> tylocalMtrPshr.Out.eStat THEN
		bMtrSpdSlw	:= FALSE;
		
		fbMtrBrkOffDlyTm(IN := FALSE);
		fbMtrPshrExtChk(bEn := FALSE);
		fbMtrPshrRetChk(bEn := FALSE);
		
		IF eStatOld <> MtrPshrActIdle
			AND eStatOld <> MtrPshrActSetExt
			AND eStatOld <> MtrPshrActRstExt
			AND eStatOld <> MtrPshrActSetRet
			AND eStatOld <> MtrPshrActRstRet
			AND eStatOld <> MtrPshrActSetSpdBit0
			AND eStatOld <> MtrPshrActRstSpdBit0
			AND eStatOld <> MtrPshrActSetSpdBit1
			AND eStatOld <> MtrPshrActRstSpdBit1
			AND eStatOld <> MtrPshrActSetSpdBit2
			AND eStatOld <> MtrPshrActRstSpdBit2
			AND eStatOld <> MtrPshrActSetSigOn
			AND eStatOld <> MtrPshrActRstSigOn
			AND eStatOld <> MtrPshrActSetBrake
			AND eStatOld <> MtrPshrActRstBrake
			AND eStatOld <> MtrPshrActSetAlmRst
			AND eStatOld <> MtrPshrActRstAlmRst
			AND eStatOld <> MtrPshrActSetAll
			AND eStatOld <> MtrPshrActRstAll THEN
			
			tylocalMtrPshr.Out.bCW			:= FALSE;
			tylocalMtrPshr.Out.bCCW		:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
			tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
			tylocalMtrPshr.Out.bSigOn		:= FALSE;
			tylocalMtrPshr.Out.bBrake		:= FALSE;
			tylocalMtrPshr.Out.bAlmRst		:= FALSE;
			
		END_IF
		
		sStatTxt	:= a_sStatText[tylocalMtrPshr.Out.eStat];
		
		eStatOld	:= tylocalMtrPshr.Out.eStat;
		
		tylocalMtrPshr.Out.eStatus		:= Busy;
	END_IF
	
	//Main
	CASE tylocalMtrPshr.Out.eStat OF
		
		MtrPshrActIdle:
			IF EDGENEG(tylocalMtrPshr.In.bManual) THEN
				tylocalMtrPshr.Out.bCW			:= FALSE;
				tylocalMtrPshr.Out.bCCW		:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
				tylocalMtrPshr.Out.bSigOn		:= FALSE;
				tylocalMtrPshr.Out.bBrake		:= FALSE;
				tylocalMtrPshr.Out.bAlmRst		:= FALSE;
			END_IF
			
			tylocalMtrPshr.Out.eStatus	:= Idle;
			
		MtrPshrActExt:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				tylocalMtrPshr.Out.eStatus	:= Busy;
				
				//Motor Torque
				IF (tylocalMtrPshr.In.bRetSen OR tylocalMtrPshr.In.bRetSlowSen) THEN// OR  NOT(bMtrSpdSlw) THEN
					iAnalogTorque	:= ((DINT_TO_INT(tylocalMtrPshr.In.diStartTorque) * 16383) / 100); //5V at 16383 for maximum Torque
				ELSE //IF bMtrSpdSlw THEN
					iAnalogTorque	:= ((DINT_TO_INT(tylocalMtrPshr.In.diExtTorque) * 16383) / 100);
				END_IF
				
				IF iAnalogTorque < 1500 THEN
					iAnalogTorque	:= 1500;
				END_IF
				
				//Motor Speed
				IF tylocalMtrPshr.In.bExtSlowSen = TRUE OR tylocalMtrPshr.In.bTorqueSig = TRUE THEN
					bMtrSpdSlw	:= TRUE;
				END_IF
				
				IF bMtrSpdSlw = TRUE THEN
					diMtrSpd	:= tylocalMtrPshr.In.diExtSlowSpd;
				ELSE
					diMtrSpd	:= tylocalMtrPshr.In.diExtNomSpd;
				END_IF
				
				CASE diMtrSpd OF
					1:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					2:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					3:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					4:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					5:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					6:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					7:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					8:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
				END_CASE
				
				//Motor On
				tylocalMtrPshr.Out.bSigOn	:= FALSE;
				tylocalMtrPshr.Out.bBrake	:= TRUE;
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCW		:= TRUE;
				ELSE
					tylocalMtrPshr.Out.bCCW	:= TRUE;
				END_IF
				
				//Checking Extend
				fbMtrPshrExtChk.bExtSen		:= tylocalMtrPshr.In.bExtSen;
				fbMtrPshrExtChk.bRetSen		:= tylocalMtrPshr.In.bRetSen;
				fbMtrPshrExtChk.bExtSafety	:= tylocalMtrPshr.In.bExtSafetySen;
				
				fbMtrPshrExtChk(bEn := TRUE);
				
				IF fbMtrPshrExtChk.udiStatus = 0 THEN
					
					tylocalMtrPshr.Out.bSigOn	:= TRUE;
					tylocalMtrPshr.Out.bBrake	:= FALSE;
					tylocalMtrPshr.Out.bCW		:= FALSE;
					tylocalMtrPshr.Out.bCCW	:= FALSE;
					
					fbMtrBrkOffDlyTm(IN := TRUE);
					
					IF fbMtrBrkOffDlyTm.Q = TRUE THEN
						fbMtrBrkOffDlyTm(IN := FALSE);
						
						tylocalMtrPshr.Out.bCW			:= FALSE;
						tylocalMtrPshr.Out.bCCW		:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
						tylocalMtrPshr.Out.bSigOn		:= FALSE;
						tylocalMtrPshr.Out.bBrake		:= FALSE;
						
						tylocalMtrPshr.Out.bExtended	:= TRUE;
						tylocalMtrPshr.Out.eStatus		:= Done;
					END_IF
					
				ELSIF fbMtrPshrExtChk.udiStatus < 65534 THEN
					
					tylocalMtrPshr.Out.bCW			:= FALSE;
					tylocalMtrPshr.Out.bCCW		:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					tylocalMtrPshr.Out.bSigOn		:= TRUE;
					tylocalMtrPshr.Out.bBrake		:= FALSE;
					
					tylocalMtrPshr.Out.bExtended	:= FALSE;
					tylocalMtrPshr.Out.eStatus		:= Error;
					
					IF fbMtrPshrExtChk.udiStatus = 1506 THEN
						udiStatus	:= 10000;	//Pusher Retract Sensor Off Time Out In Extend Check While Pusher Extend
					ELSIF fbMtrPshrExtChk.udiStatus = 1503 THEN
						udiStatus	:= 10001;	//Pusher Extend Sensor On Time Out In Extend Check While Pusher Extend
					ELSIF fbMtrPshrExtChk.udiStatus = 1507 THEN
						udiStatus	:= 10002;	//Pusher Extend Safety Sensor Error In Extend Check While Pusher Extend
					ELSE
						udiStatus	:= fbMtrPshrExtChk.udiStatus;
					END_IF
					
				END_IF
				
			END_IF
			
		MtrPshrActRet:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				tylocalMtrPshr.Out.eStatus	:= Busy;
				
				//Motor Torque
				IF (tylocalMtrPshr.In.bExtSen OR tylocalMtrPshr.In.bExtSlowSen) THEN //OR NOT(bMtrSpdSlw) THEN
					iAnalogTorque	:= ((DINT_TO_INT(tylocalMtrPshr.In.diStartTorque) * 16383) / 100); //32767 ==10V ,10000 == 3v
				ELSE // bMtrSpdSlw THEN
					iAnalogTorque	:= ((DINT_TO_INT(tylocalMtrPshr.In.diRetTorque) * 16383) / 100);
				END_IF
				
				IF iAnalogTorque < 1500 THEN
					iAnalogTorque	:= 1500;
				END_IF
				
				//Motor Speed
				IF tylocalMtrPshr.In.bRetSlowSen = TRUE THEN
					bMtrSpdSlw	:= TRUE;
				END_IF
				
				IF bMtrSpdSlw = TRUE THEN
					diMtrSpd	:= tylocalMtrPshr.In.diRetSlowSpd;
				ELSE
					diMtrSpd	:= tylocalMtrPshr.In.diRetNomSpd;
				END_IF
				
				CASE diMtrSpd OF
					1:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					2:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					3:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					4:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					5:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					6:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					7:
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
					8:
						tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
				END_CASE
				
				//Motor On
				tylocalMtrPshr.Out.bSigOn	:= FALSE;
				tylocalMtrPshr.Out.bBrake	:= TRUE;
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCCW	:= TRUE;
				ELSE
					tylocalMtrPshr.Out.bCW		:= TRUE;
				END_IF
				
				//Checking Retract
				fbMtrPshrRetChk.bExtSen		:= tylocalMtrPshr.In.bExtSen;
				fbMtrPshrRetChk.bRetSen		:= tylocalMtrPshr.In.bRetSen;
				fbMtrPshrRetChk.bRetSafety	:= tylocalMtrPshr.In.bRetSafetySen;
				
				fbMtrPshrRetChk(bEn := TRUE);
				
				IF fbMtrPshrRetChk.udiStatus = 0 THEN
					
					tylocalMtrPshr.Out.bSigOn	:= TRUE;
					tylocalMtrPshr.Out.bBrake	:= FALSE;
					tylocalMtrPshr.Out.bCW		:= FALSE;
					tylocalMtrPshr.Out.bCCW	:= FALSE;
					
					fbMtrBrkOffDlyTm(IN := TRUE);
					
					IF fbMtrBrkOffDlyTm.Q = TRUE THEN
						fbMtrBrkOffDlyTm(IN := FALSE);
						
						tylocalMtrPshr.Out.bCW			:= FALSE;
						tylocalMtrPshr.Out.bCCW		:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
						tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
						tylocalMtrPshr.Out.bSigOn		:= FALSE;
						tylocalMtrPshr.Out.bBrake		:= FALSE;
						
						tylocalMtrPshr.Out.bRetracted	:= TRUE;
						tylocalMtrPshr.Out.eStatus		:= Done;
					END_IF
					
				ELSIF fbMtrPshrRetChk.udiStatus < 65534 THEN
					
					tylocalMtrPshr.Out.bCW			:= FALSE;
					tylocalMtrPshr.Out.bCCW		:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
					tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
					tylocalMtrPshr.Out.bSigOn		:= TRUE;
					tylocalMtrPshr.Out.bBrake		:= FALSE;
					
					tylocalMtrPshr.Out.bRetracted	:= FALSE;
					tylocalMtrPshr.Out.eStatus		:= Error;
					
					IF fbMtrPshrRetChk.udiStatus = 1504 THEN
						udiStatus	:= 10003;	//Pusher Extend Sensor Off Time Out In Retract Check While Pusher Retract
					ELSIF fbMtrPshrRetChk.udiStatus = 1505 THEN
						udiStatus	:= 10004;	//Pusher Retract Sensor On Time Out In Retract Check While Pusher Retract
					ELSIF fbMtrPshrRetChk.udiStatus = 1508 THEN
						udiStatus	:= 10005;	//Pusher Retract Safety Sensor Error In Retract Check While Pusher Retract
					ELSE
						udiStatus	:= fbMtrPshrRetChk.udiStatus;
					END_IF
					
				END_IF
				
			END_IF
			
		MtrPshrActStop:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bCW			:= FALSE;
				tylocalMtrPshr.Out.bCCW		:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
				tylocalMtrPshr.Out.bSigOn		:= TRUE;
				tylocalMtrPshr.Out.bBrake		:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetExt:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCW		:= TRUE;
				ELSE
					tylocalMtrPshr.Out.bCCW	:= TRUE;
				END_IF
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstExt:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCW		:= FALSE;
				ELSE
					tylocalMtrPshr.Out.bCCW	:= FALSE;
				END_IF
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetRet:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCCW	:= TRUE;
				ELSE
					tylocalMtrPshr.Out.bCW		:= TRUE;
				END_IF
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstRet:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				IF tylocalMtrPshr.In.bDir = TRUE THEN
					tylocalMtrPshr.Out.bCCW	:= FALSE;
				ELSE
					tylocalMtrPshr.Out.bCW		:= FALSE;
				END_IF
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit0:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit0:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit1:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit1:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit2:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit2:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSigOn:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSigOn		:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSigOn:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bSigOn		:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetBrake:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bBrake		:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstBrake:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bBrake		:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetAlmRst:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bAlmRst		:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstAlmRst:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bAlmRst		:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetAll:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bCW			:= TRUE;
				tylocalMtrPshr.Out.bCCW		:= TRUE;
				tylocalMtrPshr.Out.bSpdBinBit0	:= TRUE;
				tylocalMtrPshr.Out.bSpdBinBit1	:= TRUE;
				tylocalMtrPshr.Out.bSpdBinBit2	:= TRUE;
				tylocalMtrPshr.Out.bSigOn		:= TRUE;
				tylocalMtrPshr.Out.bBrake		:= TRUE;
				tylocalMtrPshr.Out.bAlmRst		:= TRUE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstAll:
			IF tylocalMtrPshr.Out.eStatus = Idle OR tylocalMtrPshr.Out.eStatus = Busy THEN
				
				tylocalMtrPshr.Out.bCW			:= FALSE;
				tylocalMtrPshr.Out.bCCW		:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit0	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit1	:= FALSE;
				tylocalMtrPshr.Out.bSpdBinBit2	:= FALSE;
				tylocalMtrPshr.Out.bSigOn		:= FALSE;
				tylocalMtrPshr.Out.bBrake		:= FALSE;
				tylocalMtrPshr.Out.bAlmRst		:= FALSE;
				
				tylocalMtrPshr.Out.eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
	

END_ACTION
