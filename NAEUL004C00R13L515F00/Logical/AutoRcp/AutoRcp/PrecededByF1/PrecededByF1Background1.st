
ACTION PrecededByF1Background1: 
	//Requesting
	IF NOT(p_bNtParamF1ArbitraryType) THEN //F1 Rcp compare
		tyCurrReqMagRcp.diMaxSlt := p_tyInternalReqProdRcp.diMaxSltValue;
		tyCurrReqMagRcp.diMinSlt := p_tyInternalReqProdRcp.diMinSltValue;
		tyCurrReqMagRcp.diPitch  := p_tyInternalReqProdRcp.diPitch;
		tyCurrReqMagRcp.diWidth  := p_tyInternalReqProdRcp.diWidthInUM;
		tyCurrReqMagRcp.sRcpNm   := p_tyInternalReqProdRcp.sRcpNm;
	ELSE 
		//artibitrary type 
		IF memcmp(ADR(tyCurrZ1Rcp) , ADR(tyCurrReqRcp) , SIZEOF(tyCurrZ1Rcp)) <> 0 AND (tyCurrReqRcp.rWidth <> 0 OR p_bNtParamF1ArbitraryType) THEN
			IF p_bZ1AccNewRcpCondition THEN
				tyCurrZ1Rcp := tyCurrReqRcp;
				bOverWriteTravLifProperties := TRUE;
				usiChg2 := usiChg2 +1;
			END_IF 
		END_IF
		tyCurrReqMagRcp.sTrailingBarcode := RIGHT(tyCurrZ1Rcp.sBottomBarcode,10);//length of comparision
	END_IF
	
	//Follower 2
	FOR ii:= 1 TO SIZEOF(a_bBufferMagPresent)/SIZEOF(a_bBufferMagPresent[1]) DO
		IF p_bZ2AccNewRcpCondition THEN	 //in Ops
			IF a_bBufferMagPresent[ii] = FALSE THEN //all time , at the start time
				memset((ADR(a_tyMagProps[1])+(ii-1)*SIZEOF(a_tyMagProps[1])),0,SIZEOF(a_tyMagProps[1])) ; 
				a_bMagChangOverBlk[ii] := FALSE;
			ELSE //if present
				p_tyMagCmpRcp ACCESS (ADR(a_tyMagProps[1])+(ii-1)*SIZEOF(a_tyMagProps[1])) ;
				a_bCheckDifferent[ii] := (memcmp(ADR(p_tyMagCmpRcp),ADR(tyCurrReqMagRcp),SIZEOF(p_tyMagCmpRcp)) <> 0) AND (tyCurrReqMagRcp.diWidth <> 0 OR p_bNtParamF1ArbitraryType);
				IF a_bCheckDifferent[ii] THEN
					a_bAllwChangeWidth[ii] := FALSE;
					IF a_tyBffrStat[ii].bBffrMty THEN //udiAllwGo and WidthDiff and empty then change rcp
						p_tyMagCmpRcp := tyCurrReqMagRcp;
						usiChg := usiChg + 1;
						a_bMagChangOverBlk[ii] := FALSE; 
						bOverWriteMagProperties := TRUE;
						a_bAllwChangeSlot[ii]  := TRUE;
					ELSE // WidthDiff and not empty then blk
						a_bMagChangOverBlk[ii] := TRUE;
					END_IF	
				ELSE //if rcp same mean changewidth allow change until width is same
					a_bMagChangOverBlk[ii] := FALSE;
					a_bAllwChangeWidth[ii] := (a_bMagAWWidthDiff[ii] OR a_bForceChgWidthIfSameRcp[ii]) AND a_tyBffrStat[ii].bBffrMty AND p_bNtParamProjMagAWPrep;
				END_IF
	
			END_IF
		END_IF
	END_FOR

	
END_ACTION
