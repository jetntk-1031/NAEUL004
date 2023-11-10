(** 2020-03-16 **)
ACTION Act_Main:
	
IF bModuleNotOK = FALSE THEN		
		CASE eStat OF
			
			TravActIdle:
				IF eStatus <> Idle THEN	//Reset Data
					//Private
					fbStop(bEn := FALSE);
					fbRstAxisErr(bEn := FALSE);
					fbJog(bEn := FALSE);
					fbMovRel(bEn := FALSE);
					fbMovAbs(bEn := FALSE);
					fbHoming(bEn := FALSE);
					fbPwrOff(bEn := FALSE);
					fbPwrOn(bEn := FALSE);
					fbFullHm(bEn := FALSE);
					fbFullMovAbs(bEn := FALSE);
					fbSDOWrite(bEn := FALSE);
					fbTm(IN := FALSE);
					usiStep	:= 0;
					usiCount			:= 0;
					bNotInterruptible	:= FALSE;
		
					sStatTxt	:= a_sStatText[eStat];
		
				END_IF
				
				eStatus	:= Idle;
			
				IF EDGENEG(p_bManual) THEN
					fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
				END_IF
			
			TravActGoAPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diAPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10002;	//Power On Time Out While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10003;	//Homing Time Out While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10004;	//Move Absolute Time Out While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10005;	//Stop Motion Time Out While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10006;	//Axis Error Reset Failed While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10007;	//Axis Error Occur In Move Absolute While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10008;	//Axis Error Occur In Homing While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10009;	//Homing Done But Home Flag Is Not Activated While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10010;	//Forward Limit Activated In Homing While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10011;	//Reverse Limit Activated In Homing While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10012;	//Forward Limit Activated In Move Absolute While Going A Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10013;	//Reverse Limit Activated In Move Absolute While Going A Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActGoBPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diBPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10029;	//Power On Time Out While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10030;	//Homing Time Out While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10031;	//Move Absolute Time Out While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10032;	//Stop Motion Time Out While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10033;	//Axis Error Reset Failed While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10034;	//Axis Error Occur In Move Absolute While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10035;	//Axis Error Occur In Homing While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10036;	//Homing Done But Home Flag Is Not Activated While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10037;	//Forward Limit Activated In Homing While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10038;	//Reverse Limit Activated In Homing While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10039;	//Forward Limit Activated In Move Absolute While Going B Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10040;	//Reverse Limit Activated In Move Absolute While Going B Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActGoCPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diCPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10078;	//Power On Time Out While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10079;	//Homing Time Out While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10080;	//Move Absolute Time Out While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10081;	//Stop Motion Time Out While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10082;	//Axis Error Reset Failed While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10083;	//Axis Error Occur In Move Absolute While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10084;	//Axis Error Occur In Homing While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10085;	//Homing Done But Home Flag Is Not Activated While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10086;	//Forward Limit Activated In Homing While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10087;	//Reverse Limit Activated In Homing While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10088;	//Forward Limit Activated In Move Absolute While Going C Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10089;	//Reverse Limit Activated In Move Absolute While Going C Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
		
			TravActGoDPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diDPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10090;	//Power On Time Out While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10091;	//Homing Time Out While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10092;	//Move Absolute Time Out While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10093;	//Stop Motion Time Out While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10094;	//Axis Error Reset Failed While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10095;	//Axis Error Occur In Move Absolute While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10096;	//Axis Error Occur In Homing While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10097;	//Homing Done But Home Flag Is Not Activated While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10098;	//Forward Limit Activated In Homing While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10099;	//Reverse Limit Activated In Homing While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10100;	//Forward Limit Activated In Move Absolute While Going D Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10101;	//Reverse Limit Activated In Move Absolute While Going D Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			

			TravActGoEPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diEPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10102;	//Power On Time Out While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10103;	//Homing Time Out While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10104;	//Move Absolute Time Out While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10105;	//Stop Motion Time Out While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10106;	//Axis Error Reset Failed While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10107;	//Axis Error Occur In Move Absolute While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10108;	//Axis Error Occur In Homing While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10109;	//Homing Done But Home Flag Is Not Activated While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10110;	//Forward Limit Activated In Homing While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10111;	//Reverse Limit Activated In Homing While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10112;	//Forward Limit Activated In Move Absolute While Going E Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10113;	//Reverse Limit Activated In Move Absolute While Going E Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActGoFPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diFPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10114;	//Power On Time Out While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10115;	//Homing Time Out While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10116;	//Move Absolute Time Out While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10117;	//Stop Motion Time Out While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10118;	//Axis Error Reset Failed While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10119;	//Axis Error Occur In Move Absolute While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10120;	//Axis Error Occur In Homing While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10121;	//Homing Done But Home Flag Is Not Activated While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10122;	//Forward Limit Activated In Homing While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10123;	//Reverse Limit Activated In Homing While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10124;	//Forward Limit Activated In Move Absolute While Going F Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10125;	//Reverse Limit Activated In Move Absolute While Going F Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActGoGPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diGPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10126;	//Power On Time Out While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10127;	//Homing Time Out While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10128;	//Move Absolute Time Out While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10129;	//Stop Motion Time Out While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10130;	//Axis Error Reset Failed While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10131;	//Axis Error Occur In Move Absolute While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10132;	//Axis Error Occur In Homing While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10133;	//Homing Done But Home Flag Is Not Activated While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10134;	//Forward Limit Activated In Homing While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10135;	//Reverse Limit Activated In Homing While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10136;	//Forward Limit Activated In Move Absolute While Going G Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10137;	//Reverse Limit Activated In Move Absolute While Going G Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActGoHPos:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					CASE usiStep OF
						0:	//Wait For Motion Parameter Update
							p_diMovePosInUM	:= p_diHPos;
							usiStep	:= 1;
						
						1:	//Check Position Difference
							IF tyParamOut.bPosDiff = TRUE THEN
								usiStep	:= 2;
							ELSE
								eStatus	:= Done;
							END_IF
						
						2:	//Move
							fbFullMovAbs.tyParamInDriver					:= tyParamInDriver;
							fbFullMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
							fbFullMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
							fbFullMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
							fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
							fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
							fbFullMovAbs.tyParamOut							:= tyParamOut;
							fbFullMovAbs(bEn := TRUE);
							
							IF fbFullMovAbs.udiStatus = 0 THEN
								eStatus	:= Done;
							ELSIF fbFullMovAbs.udiStatus < 65534 THEN
								eStatus		:= Error;
								
								IF fbFullMovAbs.udiStatus = 1401 THEN
									udiStatus	:= 10138;	//Power On Time Out While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1402 THEN
									udiStatus	:= 10139;	//Homing Time Out While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1403 THEN
									udiStatus	:= 10140;	//Move Absolute Time Out While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1405 THEN
									udiStatus	:= 10141;	//Stop Motion Time Out While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1408 THEN
									udiStatus	:= 10142;	//Axis Error Reset Failed While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1409 THEN
									udiStatus	:= 10143;	//Axis Error Occur In Move Absolute While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1411 THEN
									udiStatus	:= 10144;	//Axis Error Occur In Homing While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1412 THEN
									udiStatus	:= 10145;	//Homing Done But Home Flag Is Not Activated While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1413 THEN
									udiStatus	:= 10146;	//Forward Limit Activated In Homing While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1414 THEN
									udiStatus	:= 10147;	//Reverse Limit Activated In Homing While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1415 THEN
									udiStatus	:= 10148;	//Forward Limit Activated In Move Absolute While Going H Position
								ELSIF fbFullMovAbs.udiStatus = 1416 THEN
									udiStatus	:= 10149;	//Reverse Limit Activated In Move Absolute While Going H Position
								ELSE
									udiStatus	:= fbFullMovAbs.udiStatus;
								END_IF
							END_IF
						
					END_CASE
					
				END_IF
			
			TravActFullHm:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					fbFullHm.tyParamInDriver	:= tyParamInDriver;
					fbFullHm.tyParamOut			:= tyParamOut;
					fbFullHm(bEn := TRUE);
					
					IF fbFullHm.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbFullHm.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbFullHm.udiStatus = 1401 THEN
							udiStatus	:= 10014;	//Power On Time Out While Full Homing
						ELSIF fbFullHm.udiStatus = 1402 THEN
							udiStatus	:= 10015;	//Homing Time Out While Full Homing
						ELSIF fbFullHm.udiStatus = 1405 THEN
							udiStatus	:= 10016;	//Stop Motion Time Out While Full Homing
						ELSIF fbFullHm.udiStatus = 1408 THEN
							udiStatus	:= 10017;	//Axis Error Reset Failed While Full Homing
						ELSIF fbFullHm.udiStatus = 1411 THEN
							udiStatus	:= 10018;	//Axis Error Occur In Homing While Full Homing
						ELSIF fbFullHm.udiStatus = 1412 THEN
							udiStatus	:= 10019;	//Homing Done But Home Flag Is Not Activated While Full Homing
						ELSIF fbFullHm.udiStatus = 1413 THEN
							udiStatus	:= 10020;	//Forward Limit Activated In Homing While Full Homing
						ELSIF fbFullHm.udiStatus = 1414 THEN
							udiStatus	:= 10021;	//Reverse Limit Activated In Homing While Full Homing
						ELSE
							udiStatus	:= fbFullHm.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActPwrOn:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					fbPwrOn.tyParamInDriver	:= tyParamInDriver;
					fbPwrOn(bEn := TRUE);
					
					IF fbPwrOn.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbPwrOn.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbPwrOn.udiStatus = 1401 THEN
							udiStatus	:= 10022;	//Power On Time Out
						ELSE
							udiStatus	:= fbPwrOn.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActPwrOff:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					fbPwrOff.tyParamInDriver	:= tyParamInDriver;
					fbPwrOff(bEn := TRUE);
					
					IF fbPwrOff.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbPwrOff.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbPwrOff.udiStatus = 1400 THEN
							udiStatus	:= 10023;	//Power Off Time Out
						ELSE
							udiStatus	:= fbPwrOff.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActHoming:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
					
					bNotInterruptible	:= TRUE;
					
					fbHoming.tyParamInDriver	:= tyParamInDriver;
					fbHoming.tyParamOut			:= tyParamOut;
					fbHoming(bEn := TRUE);
					
					IF fbHoming.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbHoming.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbHoming.udiStatus = 1402 THEN
							udiStatus	:= 10024;	//Homing Time Out
						ELSIF fbHoming.udiStatus = 1411 THEN
							udiStatus	:= 10018;	//Axis Error Occur In Homing While Full Homing

						ELSIF fbHoming.udiStatus = 1413 THEN
							udiStatus	:= 10020;	//Forward Limit Activated In Homing While Full Homing
						ELSIF fbHoming.udiStatus = 1414 THEN
							udiStatus	:= 10021;	//Reverse Limit Activated In Homing While Full Homing
						ELSE
							udiStatus	:= fbHoming.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActMovAbs:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					fbMovAbs.tyParamInDriver					:= tyParamInDriver;
					fbMovAbs.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
					fbMovAbs.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
					fbMovAbs.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
					fbFullMovAbs.tyParamInMove.diAcc				:= p_diMoveAcc;
					fbFullMovAbs.tyParamInMove.diDec				:= p_diMoveDec;
					fbMovAbs(bEn := TRUE);
					
					IF fbMovAbs.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbMovAbs.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbMovAbs.udiStatus = 1403 THEN
							udiStatus	:= 10025;	//Move Absolute Time Out
						ELSE
							udiStatus	:= fbMovAbs.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActMovRel:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					fbMovRel.tyParamInDriver					:= tyParamInDriver;
					fbMovRel.tyParamInMove.diPosInUM			:= p_diMovePosInUM;
					fbMovRel.tyParamInMove.diDistInUM			:= p_diMoveDistInUM;
					fbMovRel.tyParamInMove.diVelInUMPS			:= p_diMoveVelInUMPS;
					fbMovRel.tyParamInMove.diAcc				:= p_diMoveAcc;
					fbMovRel.tyParamInMove.diDec				:= p_diMoveDec;
					fbMovRel(bEn := TRUE);
					
					IF fbMovRel.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbMovRel.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbMovRel.udiStatus = 1404 THEN
							udiStatus	:= 10026;	//Move Relative Time Out
						ELSE
							udiStatus	:= fbMovRel.udiStatus;
						END_IF
					END_IF
					
				END_IF
			
			TravActJogFront:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					fbJog.tyParamInDriver	:= tyParamInDriver;
					fbJog.tyParamInMove.diAcc		:= p_diMoveAcc;
					fbJog.tyParamInMove.diDec		:= p_diMoveDec;
				
					IF p_bDir = TRUE THEN
						fbJog.tyParamInJog.diVelInUMPS	:= p_diJogVelInUMPS;
					ELSE
						fbJog.tyParamInJog.diVelInUMPS	:= p_diJogVelInUMPS * -1;
					END_IF
					
					fbJog(bEn := TRUE);
					
					IF fbJog.udiStatus = 0 THEN
						bJogging	:= TRUE;
						eStatus		:= Done;
					ELSIF fbJog.udiStatus < 65534 THEN
						udiStatus	:= fbJog.udiStatus;
						eStatus		:= Error;
					END_IF
					
				END_IF
		
			TravActJogRear:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					bNotInterruptible	:= TRUE;
					
					fbJog.tyParamInDriver	:= tyParamInDriver;
					fbJog.tyParamInMove.diAcc		:= p_diMoveAcc;
					fbJog.tyParamInMove.diDec		:= p_diMoveDec;
				
					IF p_bDir = TRUE THEN
						fbJog.tyParamInJog.diVelInUMPS	:= p_diJogVelInUMPS * -1;
					ELSE
						fbJog.tyParamInJog.diVelInUMPS	:= p_diJogVelInUMPS;
					END_IF
					
					fbJog(bEn := TRUE);
					
					IF fbJog.udiStatus = 0 THEN
						bJogging	:= TRUE;
						eStatus		:= Done;
					ELSIF fbJog.udiStatus < 65534 THEN
						udiStatus	:= fbJog.udiStatus;
						eStatus		:= Error;
					END_IF
					
				END_IF
			
			TravActJogStop:
				IF (eStatus = Idle OR eStatus = Busy) THEN
		
					sStatTxt	:= a_sStatText[eStat];
		
					fMotionCANJogStop(ADR(tyParamOutDriver));
					bJogging	:= FALSE;
					
					eStatus	:= Done;
					
				END_IF
			
			TravActRstAxisErr:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					fbRstAxisErr(bEn := TRUE);
					
					IF fbRstAxisErr.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbRstAxisErr.udiStatus < 65534 THEN
						udiStatus	:= fbRstAxisErr.udiStatus;
						eStatus		:= Error;
					END_IF
					
				END_IF
			
			TravActStop:
				IF (eStatus = Idle OR eStatus = Busy) THEN

					eStatus	:= Busy;
					
					sStatTxt	:= a_sStatText[eStat];
		
					fbStop.tyParamInDriver	:= tyParamInDriver;
					fbStop(bEn := TRUE);
					
					IF fbStop.udiStatus = 0 THEN
						bJogging	:= FALSE;
						eStatus		:= Done;
					ELSIF fbStop.udiStatus < 65534 THEN
						eStatus		:= Error;
								
						IF fbStop.udiStatus = 1405 THEN
							udiStatus	:= 10027;	//Stop Motion Time Out
						ELSE
							udiStatus	:= fbStop.udiStatus;
						END_IF
					END_IF
					
				END_IF
		END_CASE
ELSE
			
	CASE eStat OF			
			TravActSDOWrite:
			IF (eStatus = Idle OR eStatus = Busy) THEN

				eStatus	:= Busy;
					
				sStatTxt	:= a_sStatText[eStat];
					
				fbTm(IN := TRUE);
					
				IF fbTm.Q THEN
		
					fbSDOWrite.tyParamOut	:= tyParamOut;
					fbSDOWrite.tyTuning		:= p_tyTuning;
					fbSDOWrite(bEn := TRUE);
					
					IF fbSDOWrite.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbSDOWrite.udiStatus < 65534 THEN
						fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
							
						IF usiCount < 5 THEN
							fbTm(IN := FALSE);
							fbSDOWrite(bEn := FALSE);
								
							usiCount	:= usiCount + 1;
						ELSE
							eStatus		:= Error;
								
							IF fbSDOWrite.udiStatus = 1406 THEN
								udiStatus	:= 10028;	//SDO Write Error
							ELSE
								udiStatus	:= fbSDOWrite.udiStatus;
							END_IF
						END_IF
							
					END_IF
						
				END_IF
					
			END_IF
			
			TravActBGStartModOKChk:
				IF (eStatus = Idle OR eStatus = Busy) THEN
		
					sStatTxt	:= a_sStatText[eStat];
		
					bModuleOKChk	:= TRUE;
					eStatus			:= Done;
					
				END_IF
			
			TravActBGStopModOKChk:
				IF (eStatus = Idle OR eStatus = Busy) THEN
		
					sStatTxt	:= a_sStatText[eStat];
		
					bModuleOKChk	:= FALSE;
					eStatus			:= Done;
					
				END_IF
			
			TravActIdle:
				IF eStatus <> Idle THEN	//Reset Data
					//Private
					fbStop(bEn := FALSE);
					fbRstAxisErr(bEn := FALSE);
					fbJog(bEn := FALSE);
					fbMovRel(bEn := FALSE);
					fbMovAbs(bEn := FALSE);
					fbHoming(bEn := FALSE);
					fbPwrOff(bEn := FALSE);
					fbPwrOn(bEn := FALSE);
					fbFullHm(bEn := FALSE);
					fbFullMovAbs(bEn := FALSE);
					fbSDOWrite(bEn := FALSE);
					fbTm(IN := FALSE);
					usiStep				:= 0;
					usiCount			:= 0;
					bNotInterruptible	:= FALSE;
			
					sStatTxt	:= a_sStatText[eStat];
			
				END_IF
					
				eStatus	:= Idle;
					
				IF EDGENEG(p_bManual) THEN
					fMotionCANRstCtrlWord(ADR(tyParamOutDriver));
				END_IF
			
			TravActRstNode:
				IF (eStatus = Idle OR eStatus = Busy) THEN
						
					eStatus	:= Busy;
						
					sStatTxt	:= a_sStatText[eStat];
					IF bRstErr THEN
						fbModuleOK(bEn := FALSE, bModuleOK := bModuleOK);
					END_IF
					fbModuleOK(bEn := TRUE);
					IF fbModuleOK.udiStatus = 0 THEN
						fbModuleOK(bEn := FALSE);
						eStatus			:= Done;
					ELSIF fbModuleOK.udiStatus < 65534 THEN
						eStatus		:= Error;
						
						IF fbModuleOK.udiStatus = 1407 THEN
							udiStatus	:= 10001;	//CANOpen Communication Error, ModuleOK Not TRUE
							fbModuleOK(bEn := FALSE);
						ELSE
							udiStatus	:= fbModuleOK.udiStatus;
						END_IF
					END_IF
				END_IF
			
			TravActRstAxisErr:
				IF (eStatus = Idle OR eStatus = Busy) THEN
	
					eStatus	:= Busy;
						
					sStatTxt	:= a_sStatText[eStat];
					
					
					fbRstAxisErr(bEn := TRUE);
						
					IF fbRstAxisErr.udiStatus = 0 THEN
						eStatus	:= Done;
					ELSIF fbRstAxisErr.udiStatus < 65534 THEN
						udiStatus	:= fbRstAxisErr.udiStatus;
						eStatus		:= Error;
					END_IF
						
				END_IF
			
		
	END_CASE
END_IF
	
END_ACTION
