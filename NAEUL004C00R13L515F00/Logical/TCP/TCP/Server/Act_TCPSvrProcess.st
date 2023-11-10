
ACTION Act_TCPSvrProcess: 
	
	CASE eSvrStat OF
		SvrActIdle:
			
		SvrActRead:
			//"Mag1Status","Mag2Status","Mag3Status","Mag4Status" >> 10:NA , 11:Error , 12:Ready, 13:Available ; 20:NA , 21:Error , 22:Ready, 23:Available
			
			eMagAGVStatus[0] := STRING_TO_USINT (LEFT(sSvrMsgRcv,FIND(sSvrMsgRcv, ',')-1));
			iSeparator 		:= FIND(sSvrMsgRcv, '$r$n');
			sData[0] := LEFT(sSvrMsgRcv, iSeparator-1);
			FOR i := 0 TO p_usiProjMag +(3 + 2*p_usiProjMag) DO 		//0:Dual ; 1:Triple; 2:Quar
				iSeparator := FIND(sData[i],',');
				IF iSeparator = 0 THEN
					;
				ELSE
					sData[i+1] := DELETE(sData[i],iSeparator+1,0);
				END_IF
			END_FOR
			
			IF bSingleMagLine THEN //single line magazine
				eMagAGVStatus[1] := STRING_TO_USINT (sData[1]);
			ELSE
				eMagAGVStatus[1] := STRING_TO_USINT (LEFT(sData[1],FIND(sData[1], ',')-1));
			END_IF	
		
				eMagAGVStatus[2] := STRING_TO_USINT (LEFT(sData[2],FIND(sData[2], ',')-1));
			IF p_usiProjMag = 0 THEN//Dual mag
				eMagAGVStatus[3] := STRING_TO_USINT (sData[3]);
			ELSE //triple / quardrupal
				eMagAGVStatus[3] := STRING_TO_USINT (LEFT(sData[3],FIND(sData[3], ',')-1));
				eMagAGVStatus[4] := STRING_TO_USINT (LEFT(sData[4],FIND(sData[4], ',')-1));
				eMagAGVStatus[5] := STRING_TO_USINT (LEFT(sData[5],FIND(sData[5], ',')-1));
				eMagAGVStatus[6] := STRING_TO_USINT (LEFT(sData[6],FIND(sData[6], ',')-1));
				eMagAGVStatus[7] := STRING_TO_USINT (sData[7]);
			END_IF
			
			IF p_usiProjMag = 1 THEN//Triple mag
				eMagAGVStatus[5] := STRING_TO_USINT (sData[5]);
			ELSE
				eMagAGVStatus[5] := STRING_TO_USINT (LEFT(sData[5],FIND(sData[5], ',')-1));
				eMagAGVStatus[6] := STRING_TO_USINT (LEFT(sData[6],FIND(sData[6], ',')-1));
				eMagAGVStatus[7] := STRING_TO_USINT (sData[7]);
			END_IF
			
			IF eMagAGVStatus[0] >13 OR eMagAGVStatus[1] >12 OR eMagAGVStatus[2] >23 OR eMagAGVStatus[3] >22 OR 
				eMagAGVStatus[4] >33 OR eMagAGVStatus[5] >32 OR eMagAGVStatus[6] >43 OR eMagAGVStatus[7] >42 OR
				
				eMagAGVStatus[0] <10 OR eMagAGVStatus[1] <10 OR eMagAGVStatus[2] <20 OR eMagAGVStatus[3] <20 OR 
				eMagAGVStatus[4] <30 OR eMagAGVStatus[5] <30 OR eMagAGVStatus[6] <40 OR eMagAGVStatus[7] <40 THEN
				eSvrStatus := Error;
			END_IF
			
		SvrActRead1:
			//Structure: MagazineX, AGVStatus, AGVReq
			
			iSeparator 		:= FIND(sSvrMsgRcv, '$r$n');
			sData[0]		:= LEFT(sSvrMsgRcv, iSeparator-1); 		//magazine1 sData[0,1,2]
			sData[3] 		:= DELETE(sSvrMsgRcv,iSeparator+2,0);	//magazine2 sData[3,4,5]
	
			FOR i := 0 TO 5 DO
				iSeparator := FIND(sData[i],',');
				IF iSeparator = 0 THEN
					;
				ELSE
					sData[i+1] := DELETE(sData[i],iSeparator+1,0);
				END_IF
			END_FOR
			
			//check if endcode exist
			iSeparator := FIND(sData[i-1],'$r$n'); //where i = 6 
			IF iSeparator = 0 THEN
				;
			ELSE
				sData[i-1] := DELETE(sData[i-1],iSeparator+1,iSeparator);
			END_IF
			
			
			tyAGVCurr[1].sAGVMag				:= LEFT(sData[0],FIND(sData[0], ',')-1);
			tyAGVCurr[1].eAGVStatus				:= STRING_TO_USINT (LEFT(sData[1],FIND(sData[1], ',')-1));
			tyAGVCurr[1].usiAGVReq				:= STRING_TO_USINT (sData[2]);
			tyAGVCurr[2].sAGVMag				:= LEFT(sData[3],FIND(sData[3], ',')-1);
			tyAGVCurr[2].eAGVStatus				:= STRING_TO_USINT (LEFT(sData[4],FIND(sData[4], ',')-1));
			tyAGVCurr[2].usiAGVReq				:= STRING_TO_USINT (sData[5]);

		SvrActWrite:
			//"Mag1Status","Mag2Status","Mag3Status","Mag4Status" >> 0:NA , 1:Error , 2:Ready, 3:Available
			//array [0][1]US1DS1 ,[2][3]US2DS2 ,[4][5]US3DS3, [6][7]US4DS4
			IF tyDTMagToAGV.bCI1Rdy  THEN
				a_sMagMcStatus[0] := '12'; //Ready, USB
			ELSE
				a_sMagMcStatus[0] := '10'; //NA
			END_IF
			IF tyDTMagToAGV.bCI1MagazineFull THEN
				a_sMagMcStatus[1] := '13'; //Available, DBA
			ELSE
				a_sMagMcStatus[1] := '10'; //NA
			END_IF; 

			IF tyDTMagToAGV.bCI2Rdy  THEN
				a_sMagMcStatus[2] := '22';
			ELSE
				a_sMagMcStatus[2] := '20';
			END_IF; 	
			IF tyDTMagToAGV.bCI2MagazineFull THEN
				a_sMagMcStatus[3] := '23';
			ELSE
				a_sMagMcStatus[3] := '20';
			END_IF; 

			IF tyDTMagToAGV.bCI3Rdy  THEN
				a_sMagMcStatus[4] := '32';
			ELSE
				a_sMagMcStatus[4] := '30';
			END_IF; 
			IF tyDTMagToAGV.bCI3MagazineFull THEN
				a_sMagMcStatus[5] := '33';
			ELSE
				a_sMagMcStatus[5] := '30';
			END_IF; 

			IF tyDTMagToAGV.bCI4Rdy  THEN
				a_sMagMcStatus[6] := '42';
			ELSE
				a_sMagMcStatus[6] := '40';
			END_IF; 
			IF tyDTMagToAGV.bCI4MagazineFull THEN
				a_sMagMcStatus[7] := '43';
			ELSE
				a_sMagMcStatus[7] := '40';
			END_IF; 
			//	sMsgSnd := USINT_TO_STRING (a_sMagMcStatus[3]);
			IF p_usiProjMag = 0 AND bSingleMagLine = FALSE THEN
				sMsgSnd := CONCAT(CONCAT(CONCAT(CONCAT(a_sMagMcStatus[0],','),CONCAT(a_sMagMcStatus[1],',')),CONCAT(a_sMagMcStatus[2],',')),CONCAT(a_sMagMcStatus[3],'$r$n'));
				bMsgSnd := TRUE;
			ELSIF bSingleMagLine THEN
				sMsgSnd := CONCAT(CONCAT(a_sMagMcStatus[0],','),CONCAT(a_sMagMcStatus[1],'$r$n'));
				bMsgSnd := TRUE;
			ELSE
				sMsgSnd := CONCAT(CONCAT(CONCAT(CONCAT(a_sMagMcStatus[0],','),CONCAT(a_sMagMcStatus[1],',')),CONCAT(a_sMagMcStatus[2],',')),a_sMagMcStatus[3]);
				sMsgSnd := CONCAT(CONCAT(CONCAT(CONCAT(CONCAT(sMsgSnd,','),CONCAT(a_sMagMcStatus[4],',')),CONCAT(a_sMagMcStatus[5],',')),CONCAT(a_sMagMcStatus[6],',')),CONCAT(a_sMagMcStatus[7],'$r$n'));
				bMsgSnd := TRUE;
			END_IF
		
	END_CASE;	
	
	//Parse
	//Input (AGV to TCP(machine))
	bUBA 	:= eMagAGVStatus[0] = 13;
	bUBA2 	:= eMagAGVStatus[2] = 23;
	bDSB	:= eMagAGVStatus[1] = 12;
	bDSB2	:= eMagAGVStatus[3] = 22;
	
	//Output (Machine Sig(SOT) to TCP(AGV))
	tyDTMagToAGV.bCI1Rdy 			:= p_bUSB;
	tyDTMagToAGV.bCI1MagazineFull 	:= p_bDBA;
	tyDTMagToAGV.bCI2Rdy 			:= p_bUSB2;
	tyDTMagToAGV.bCI2MagazineFull 	:= p_bDBA2;
	
	fbTrig(CLK := p_bUSB);
	fbTrig1(CLK := p_bDBA);
	fbTrig2(CLK := p_bUSB2);
	fbTrig3(CLK := p_bDBA2);
	//	IF EDGEPOS(p_bUSB) OR EDGEPOS(p_bDBA) OR EDGEPOS(p_bUSB2) OR EDGEPOS(p_bDBA2)THEN
	IF fbTrig.Q OR fbTrig1.Q OR fbTrig2.Q OR fbTrig3.Q THEN
		eSvrStat := SvrActWrite;
	END_IF
	
END_ACTION
