(** 2019-06-17 **)
ACTION Act_Main:
	
	IF eStatOld <> eStat THEN
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
			
			bCW			:= FALSE;
			bCCW		:= FALSE;
			bSpdBinBit0	:= FALSE;
			bSpdBinBit1	:= FALSE;
			bSpdBinBit2	:= FALSE;
			bSigOn		:= FALSE;
			bBrake		:= FALSE;
			bAlmRst		:= FALSE;
			
		END_IF
		
		sStatTxt	:= a_sStatText[eStat];
		
		eStatOld	:= eStat;
		
		eStatus		:= Busy;
	END_IF
	
	//Main
	CASE eStat OF
		
		MtrPshrActIdle:
			IF EDGENEG(p_bManual) THEN
				bCW			:= FALSE;
				bCCW		:= FALSE;
				bSpdBinBit0	:= FALSE;
				bSpdBinBit1	:= FALSE;
				bSpdBinBit2	:= FALSE;
				bSigOn		:= FALSE;
				bBrake		:= FALSE;
				bAlmRst		:= FALSE;
			END_IF
			
			eStatus	:= Idle;
			
		MtrPshrActExt:
			IF eStatus = Idle OR eStatus = Busy THEN
				eStatus	:= Busy;
				
				//Motor Torque
				IF (p_bRetSen OR p_bRetSlowSen) THEN// OR  NOT(bMtrSpdSlw) THEN
					iAnalogTorque	:= ((DINT_TO_INT(p_diStartTorque) * 16383) / 100); //5V at 16383 for maximum Torque
				ELSE //IF bMtrSpdSlw THEN
					iAnalogTorque	:= ((DINT_TO_INT(p_diExtTorque) * 16383) / 100);
				END_IF
				
				IF iAnalogTorque < 1500 THEN
					iAnalogTorque	:= 1500;
				END_IF
				
				//Motor Speed
				IF p_bExtSlowSen = TRUE OR p_bTorqueSig = TRUE THEN
					bMtrSpdSlw	:= TRUE;
				END_IF
				
				IF bMtrSpdSlw = TRUE THEN
					diMtrSpd	:= p_diExtSlowSpd;
				ELSE
					diMtrSpd	:= p_diExtNomSpd;
				END_IF
				
				CASE diMtrSpd OF
					1:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
					2:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
					3:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= FALSE;
					4:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= FALSE;
					5:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= TRUE;
					6:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= TRUE;
					7:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= TRUE;
					8:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= TRUE;
				END_CASE
				
				//Motor On
				bSigOn	:= FALSE;
				bBrake	:= TRUE;
				
				IF p_bDir = TRUE THEN
					bCW		:= TRUE;
				ELSE
					bCCW	:= TRUE;
				END_IF
				
				//Checking Extend
				fbMtrPshrExtChk.bExtSen		:= p_bExtSen;
				fbMtrPshrExtChk.bRetSen		:= p_bRetSen;
				fbMtrPshrExtChk.bExtSafety	:= p_bExtSafetySen;
				
				fbMtrPshrExtChk(bEn := TRUE);
				
				IF fbMtrPshrExtChk.udiStatus = 0 THEN
					
					bSigOn	:= TRUE;
					bBrake	:= FALSE;
					bCW		:= FALSE;
					bCCW	:= FALSE;
					
					fbMtrBrkOffDlyTm(IN := TRUE);
					
					IF fbMtrBrkOffDlyTm.Q = TRUE THEN
						fbMtrBrkOffDlyTm(IN := FALSE);
						
						bCW			:= FALSE;
						bCCW		:= FALSE;
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
						bSigOn		:= FALSE;
						bBrake		:= FALSE;
						
						bExtended	:= TRUE;
						eStatus		:= Done;
					END_IF
					
				ELSIF fbMtrPshrExtChk.udiStatus < 65534 THEN
					
					bCW			:= FALSE;
					bCCW		:= FALSE;
					bSpdBinBit0	:= FALSE;
					bSpdBinBit1	:= FALSE;
					bSpdBinBit2	:= FALSE;
					bSigOn		:= TRUE;
					bBrake		:= FALSE;
					
					bExtended	:= FALSE;
					eStatus		:= Error;
					
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
			IF eStatus = Idle OR eStatus = Busy THEN
				eStatus	:= Busy;
				
				//Motor Torque
				IF (p_bExtSen OR p_bExtSlowSen) THEN //OR NOT(bMtrSpdSlw) THEN
					iAnalogTorque	:= ((DINT_TO_INT(p_diStartTorque) * 16383) / 100); //32767 ==10V ,10000 == 3v
				ELSE // bMtrSpdSlw THEN
					iAnalogTorque	:= ((DINT_TO_INT(p_diRetTorque) * 16383) / 100);
				END_IF
				
				IF iAnalogTorque < 1500 THEN
					iAnalogTorque	:= 1500;
				END_IF
				
				//Motor Speed
				IF p_bRetSlowSen = TRUE THEN
					bMtrSpdSlw	:= TRUE;
				END_IF
				
				IF bMtrSpdSlw = TRUE THEN
					diMtrSpd	:= p_diRetSlowSpd;
				ELSE
					diMtrSpd	:= p_diRetNomSpd;
				END_IF
				
				CASE diMtrSpd OF
					1:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
					2:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
					3:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= FALSE;
					4:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= FALSE;
					5:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= TRUE;
					6:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= TRUE;
					7:
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= TRUE;
					8:
						bSpdBinBit0	:= TRUE;
						bSpdBinBit1	:= TRUE;
						bSpdBinBit2	:= TRUE;
				END_CASE
				
				//Motor On
				bSigOn	:= FALSE;
				bBrake	:= TRUE;
				
				IF p_bDir = TRUE THEN
					bCCW	:= TRUE;
				ELSE
					bCW		:= TRUE;
				END_IF
				
				//Checking Retract
				fbMtrPshrRetChk.bExtSen		:= p_bExtSen;
				fbMtrPshrRetChk.bRetSen		:= p_bRetSen;
				fbMtrPshrRetChk.bRetSafety	:= p_bRetSafetySen;
				
				fbMtrPshrRetChk(bEn := TRUE);
				
				IF fbMtrPshrRetChk.udiStatus = 0 THEN
					
					bSigOn	:= TRUE;
					bBrake	:= FALSE;
					bCW		:= FALSE;
					bCCW	:= FALSE;
					
					fbMtrBrkOffDlyTm(IN := TRUE);
					
					IF fbMtrBrkOffDlyTm.Q = TRUE THEN
						fbMtrBrkOffDlyTm(IN := FALSE);
						
						bCW			:= FALSE;
						bCCW		:= FALSE;
						bSpdBinBit0	:= FALSE;
						bSpdBinBit1	:= FALSE;
						bSpdBinBit2	:= FALSE;
						bSigOn		:= FALSE;
						bBrake		:= FALSE;
						
						bRetracted	:= TRUE;
						eStatus		:= Done;
					END_IF
					
				ELSIF fbMtrPshrRetChk.udiStatus < 65534 THEN
					
					bCW			:= FALSE;
					bCCW		:= FALSE;
					bSpdBinBit0	:= FALSE;
					bSpdBinBit1	:= FALSE;
					bSpdBinBit2	:= FALSE;
					bSigOn		:= TRUE;
					bBrake		:= FALSE;
					
					bRetracted	:= FALSE;
					eStatus		:= Error;
					
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
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bCW			:= FALSE;
				bCCW		:= FALSE;
				bSpdBinBit0	:= FALSE;
				bSpdBinBit1	:= FALSE;
				bSpdBinBit2	:= FALSE;
				bSigOn		:= TRUE;
				bBrake		:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetExt:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				IF p_bDir = TRUE THEN
					bCW		:= TRUE;
				ELSE
					bCCW	:= TRUE;
				END_IF
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstExt:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				IF p_bDir = TRUE THEN
					bCW		:= FALSE;
				ELSE
					bCCW	:= FALSE;
				END_IF
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetRet:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				IF p_bDir = TRUE THEN
					bCCW	:= TRUE;
				ELSE
					bCW		:= TRUE;
				END_IF
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstRet:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				IF p_bDir = TRUE THEN
					bCCW	:= FALSE;
				ELSE
					bCW		:= FALSE;
				END_IF
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit0:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit0	:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit0:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit0	:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit1:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit1	:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit1:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit1	:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSpdBit2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit2	:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSpdBit2:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSpdBinBit2	:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetSigOn:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSigOn		:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstSigOn:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bSigOn		:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetBrake:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bBrake		:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstBrake:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bBrake		:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetAlmRst:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bAlmRst		:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstAlmRst:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bAlmRst		:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActSetAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bCW			:= TRUE;
				bCCW		:= TRUE;
				bSpdBinBit0	:= TRUE;
				bSpdBinBit1	:= TRUE;
				bSpdBinBit2	:= TRUE;
				bSigOn		:= TRUE;
				bBrake		:= TRUE;
				bAlmRst		:= TRUE;
				
				eStatus		:= Done;
				
			END_IF
			
		MtrPshrActRstAll:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				bCW			:= FALSE;
				bCCW		:= FALSE;
				bSpdBinBit0	:= FALSE;
				bSpdBinBit1	:= FALSE;
				bSpdBinBit2	:= FALSE;
				bSigOn		:= FALSE;
				bBrake		:= FALSE;
				bAlmRst		:= FALSE;
				
				eStatus		:= Done;
				
			END_IF
		
	END_CASE
	
END_ACTION
