
ACTION Act_OptP0203InsertRmvMag: 
	
	//Insert & Removed Magazine Manually Without Button Control
//	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = FALSE THEN
//		
//		IF p_bOpsStatusRun AND p_bOpsMagConvUL2InitDone THEN
//			
//			fbMag2EntrySenOnTm(IN := p_tyDI.bMagConvEntSen2);
//			
//			IF bNewMag2 = FALSE AND bRlsMag2 = FALSE THEN
//				IF p_bOpsMagConvUL2NewMagAllw AND fbMag2EntrySenOnTm.Q AND NOT p_bOpsMagConvUL2MagExitedWait THEN
//					bNewMag2	:= TRUE;
//				END_IF
//				
//				IF p_bOpsMagConvUL2RlsMagAllw AND p_tyDI.bMagPresentSen2 AND p_tyDI.bOutShutterCloseRS AND p_tyBuffer2BffrStat.bBffrFull THEN
//					bRlsMag2	:= TRUE;
//				END_IF
//			END_IF
//			
//			IF bNewMag2 = TRUE THEN
//					
//				IF p_tyDI.bMag2FixedClampRS = TRUE AND p_tyDI.bMag2RemoteClampRS = TRUE THEN
//					bNewMag2	:= FALSE;
//				END_IF
//					
//			ELSIF bRlsMag2 = TRUE THEN
//					
//				IF p_tyDI.bMag2FixedUnclampRS = TRUE AND p_tyDI.bMag2RemoteUnclampRS = TRUE AND p_tyDI.bMagConvEntSen2 = TRUE THEN
//					bRlsMag2	:= FALSE;
//				END_IF
//				
//			END_IF
//			
//		ELSE
//			
//			bNewMag2	:= FALSE;
//			bRlsMag2	:= FALSE;
//			
//			fbMag2EntrySenOnTm(IN := FALSE);
//			
//		END_IF
//		
//	END_IF
	
END_ACTION
