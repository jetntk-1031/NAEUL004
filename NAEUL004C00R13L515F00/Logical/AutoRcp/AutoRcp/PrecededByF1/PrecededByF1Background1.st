
ACTION PrecededByF1Background1: 
	//Requesting
	tyCurrReqMagRcp.diMaxSlt := p_tyInternalReqProdRcp.diMaxSltValue;
	tyCurrReqMagRcp.diMinSlt := p_tyInternalReqProdRcp.diMinSltValue;
	tyCurrReqMagRcp.diPitch  := p_tyInternalReqProdRcp.diPitch;
	tyCurrReqMagRcp.diWidth  := p_tyInternalReqProdRcp.diWidthInUM;
	tyCurrReqMagRcp.sRcpNm   := p_tyInternalReqProdRcp.sRcpNm;
	
	
	//Follower 2
	FOR ii:= 1 TO SIZEOF(a_bBufferMagPresent)/SIZEOF(a_bBufferMagPresent[1]) DO
		IF p_bZ2AccNewRcpCondition THEN	 //in Ops
			IF a_bBufferMagPresent[ii] = FALSE THEN //all time , at the start time
				memset((ADR(a_tyMagProps[1])+(ii-1)*SIZEOF(a_tyMagProps[1])),0,SIZEOF(a_tyMagProps[1])) ; 
				a_bMagChangOverBlk[ii] := FALSE;
			ELSE //if present
				p_tyMagCmpRcp ACCESS (ADR(a_tyMagProps[1])+(ii-1)*SIZEOF(a_tyMagProps[1])) ;
				a_bCheckDifferent[ii] := (memcmp(ADR(p_tyMagCmpRcp),ADR(tyCurrReqMagRcp),SIZEOF(p_tyMagCmpRcp)) <> 0) AND tyCurrReqMagRcp.diWidth <> 0 ;
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
					a_bAllwChangeWidth[ii] := (a_bMagAWWidthDiff[ii] OR a_bForceChgWidthIfSameRcp[ii]) AND a_tyBffrStat[ii].bBffrMty;
					
				END_IF
	
			END_IF
		END_IF
	END_FOR

	
END_ACTION
