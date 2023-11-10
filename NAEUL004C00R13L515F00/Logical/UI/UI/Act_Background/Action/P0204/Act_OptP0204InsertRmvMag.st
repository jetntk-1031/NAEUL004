
ACTION Act_OptP0204InsertRmvMag: 
	
	//Insert & Removed Magazine Manually Without Button Control
//	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = FALSE THEN
//		
//		IF p_bOpsStatusRun AND p_bOpsMagConvUL3InitDone THEN
//			
//			fbMag3EntrySenOnTm(IN := p_tyDI.bMagConvEntSen3);
//			
//			IF bNewMag3 = FALSE AND bRlsMag3 = FALSE THEN
//				IF p_bOpsMagConvUL3NewMagAllw AND fbMag3EntrySenOnTm.Q AND NOT p_bOpsMagConvUL3MagExitedWait THEN
//					bNewMag3	:= TRUE;
//				END_IF
//				
//				IF p_bOpsMagConvUL3RlsMagAllw AND p_tyDI.bMagPresentSen3 AND p_tyDI.bOutShutterCloseRS AND p_tyBuffer3BffrStat.bBffrFull THEN
//					bRlsMag3	:= TRUE;
//				END_IF
//			END_IF
//			
//			IF bNewMag3 = TRUE THEN
//					
//				IF p_tyDI.bMag3FixedClampRS = TRUE AND p_tyDI.bMag3RemoteClampRS = TRUE THEN
//					bNewMag3	:= FALSE;
//				END_IF
//					
//			ELSIF bRlsMag3 = TRUE THEN
//					
//				IF p_tyDI.bMag3FixedUnclampRS = TRUE AND p_tyDI.bMag3RemoteUnclampRS = TRUE AND p_tyDI.bMagConvEntSen3 = TRUE THEN
//					bRlsMag3	:= FALSE;
//				END_IF
//				
//			END_IF
//			
//		ELSE
//			
//			bNewMag3	:= FALSE;
//			bRlsMag3	:= FALSE;
//			
//			fbMag3EntrySenOnTm(IN := FALSE);
//			
//		END_IF
//		
//	END_IF
	
END_ACTION
