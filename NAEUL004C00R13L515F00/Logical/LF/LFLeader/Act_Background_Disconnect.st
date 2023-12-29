
ACTION Act_Background_Disconnect:
	
	IF (memcmp(ADR(g_tyMcParamCurr.a_sLFIPAddr) , ADR(a_sLFIPAddrOld) , SIZEOF(a_sLFIPAddrOld)) <> 0) AND (bDisconnecting = FALSE) THEN
		FOR di := 1 TO c_diLFClntNum DO
			
			IF g_tyMcParamCurr.a_sLFIPAddr[di] <> a_sLFIPAddrOld[di] THEN
				diDisconnectIdx	:= di;
				bDisconnecting	:= TRUE;
				EXIT;
			END_IF
			
		END_FOR
	END_IF
	
	IF bDisconnecting = TRUE THEN
		
		IF a_dwConnectionHdl[diDisconnectIdx] <> 0 THEN
			fbDisconnect.dwConnectionHdl	:= a_dwConnectionHdl[diDisconnectIdx];
			fbDisconnect(bEn := TRUE);
						
			IF fbDisconnect.udiStatus = 0 THEN
				a_dwConnectionHdl[diDisconnectIdx]	:= 0;
				a_bNodeWr[diDisconnectIdx]			:= FALSE;
				a_bNodeRd[diDisconnectIdx]			:= FALSE;
				memset(ADR(a_tyFollowerToLeaderTag[diDisconnectIdx]) , 0 , SIZEOF(a_tyFollowerToLeaderTag[diDisconnectIdx]));
				fbDisconnect(bEn := FALSE);
							
				a_sLFIPAddrOld[diDisconnectIdx]	:= g_tyMcParamCurr.a_sLFIPAddr[diDisconnectIdx];
				bDisconnecting						:= FALSE;
						
			ELSIF fbDisconnect.udiStatus < 65534 THEN
				a_dwConnectionHdl[diDisconnectIdx]	:= 0;
				a_bNodeWr[diDisconnectIdx]			:= FALSE;
				a_bNodeRd[diDisconnectIdx]			:= FALSE;
				memset(ADR(a_tyFollowerToLeaderTag[diDisconnectIdx]) , 0 , SIZEOF(a_tyFollowerToLeaderTag[diDisconnectIdx]));
				fbDisconnect(bEn := FALSE);
						
				a_sLFIPAddrOld[diDisconnectIdx]	:= g_tyMcParamCurr.a_sLFIPAddr[diDisconnectIdx];
				bDisconnecting						:= FALSE;
							
			END_IF
						
		ELSE
			a_bNodeWr[diDisconnectIdx]	:= FALSE;
			a_bNodeRd[diDisconnectIdx]	:= FALSE;
			memset(ADR(a_tyFollowerToLeaderTag[diDisconnectIdx]) , 0 , SIZEOF(a_tyFollowerToLeaderTag[diDisconnectIdx]));
						
			a_sLFIPAddrOld[diDisconnectIdx]	:= g_tyMcParamCurr.a_sLFIPAddr[diDisconnectIdx];
			bDisconnecting						:= FALSE;
						
		END_IF
		
	END_IF
	
END_ACTION
