
ACTION Act_OptP0202InsertRmvMag: 
	
	//Insert & Removed Magazine Manually Without Button Control
//	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = FALSE THEN
//		
//		IF p_bOpsStatusRun AND p_bOpsMagConvUL1InitDone THEN
//			
//			fbMag1EntrySenOnTm(IN := p_tyDI.bMagPresentSen1 OR p_tyDI.bMagConvEntSen1);
//			
//			IF bNewMag1 = FALSE AND bRlsMag1 = FALSE THEN
//				IF p_bOpsMagConvUL1NewMagAllw AND fbMag1EntrySenOnTm.Q AND NOT p_bOpsMagConvUL1MagExitedWait THEN
//					bNewMag1	:= TRUE;
//				END_IF
//				
//				IF p_bOpsMagConvUL1RlsMagAllw AND p_tyDI.bMagPresentSen1 AND p_tyDI.bOutShutterCloseRS AND p_tyBuffer1BffrStat.bBffrFull THEN
//					bRlsMag1	:= TRUE;
//				END_IF
//			END_IF
//			
//			IF bNewMag1 = TRUE THEN
//					
//				IF p_tyDI.bMag1FixedClampRS = TRUE AND p_tyDI.bMag1RemoteClampRS = TRUE THEN
//					bNewMag1	:= FALSE;
//				END_IF
//					
//			ELSIF bRlsMag1 = TRUE THEN
//					
//				IF p_tyDI.bMag1FixedUnclampRS = TRUE AND p_tyDI.bMag1RemoteUnclampRS = TRUE AND p_tyDI.bMagConvEntSen1 = TRUE THEN
//					bRlsMag1	:= FALSE;
//				END_IF
//				
//			END_IF
//			
//		ELSE
//			
//			bNewMag1	:= FALSE;
//			bRlsMag1	:= FALSE;
//			
//			fbMag1EntrySenOnTm(IN := FALSE);
//			
//		END_IF
//		
//	END_IF
	
END_ACTION
