(** 2019-05-04 **)
ACTION Act_Link:
	
	//If not two lane operating at same time no need Lane 
	p_udiRetainDataAddr1	:= ADR(a_tyHermesBrdAvlData);		
	p_udiRetainDataLen1  	:= SIZEOF(a_tyHermesBrdAvlData);	
	
	IF p_bLinkStartupRun = FALSE THEN
		
		//Passing Board Available Memory
		//Init Board
		IF EDGEPOS(p_bLinkOpsTravLifULInitDone = TRUE) THEN
			
			IF p_bLinkConvHvBrd = FALSE THEN
				a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
				
				bHermesWriteRetainLane1	:= TRUE;
			END_IF
			
		END_IF
		
		//Enter Board - US1
		IF p_eLinkTravLifULPosGo = TravLifULPosUS1 AND p_bLinkOpsTravLifULEntBrd = TRUE AND EDGEPOS(p_bLinkConvHvBrd = TRUE) THEN
			
			IF p_eLinkMcParamUSACommMod = McSetCommModHermes THEN
				
				a_tyHermesBrdAvlData[1].a_tyXMLTableDataBrdAvl		:= pa_tyLinkXMLTableDataBrdAvl1;
				a_tyHermesBrdAvlData[1].iXMLTableDataBrdAvlTtlIdx	:= p_iLinkXMLTableDataBrdAvlTtlIdx1;
				a_tyHermesBrdAvlData[1].bNewBrdAvl					:= FALSE;
				
				bHermesWriteRetainLane1	:= TRUE;
				
			ELSE
				
				a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
				
				bHermesWriteRetainLane1	:= TRUE;
				
			END_IF
			
		END_IF
		
		//Enter Board - US2
		IF p_eLinkTravLifULPosGo = TravLifULPosUS2 AND p_bLinkOpsTravLifULEntBrd = TRUE AND EDGEPOS(p_bLinkConvHvBrd = TRUE) THEN
			
			IF p_eLinkMcParamUSBCommMod = McSetCommModHermes THEN
				
				a_tyHermesBrdAvlData[1].a_tyXMLTableDataBrdAvl		:= pa_tyLinkXMLTableDataBrdAvl2;
				a_tyHermesBrdAvlData[1].iXMLTableDataBrdAvlTtlIdx	:= p_iLinkXMLTableDataBrdAvlTtlIdx2;
				a_tyHermesBrdAvlData[1].bNewBrdAvl					:= FALSE;
				
				bHermesWriteRetain	:= TRUE;
				
			ELSE
				
				a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;
				
				bHermesWriteRetain	:= TRUE;
				
			END_IF
			
		END_IF
		
		//Exit Board
		IF p_bLinkOpsTravLifULExitBrd = TRUE AND EDGEPOS(p_bLinkConvHvBrd = FALSE  AND EDGENEG(p_bLinkDIRightSen OR p_bLinkDIClrSen )) THEN
			a_tyHermesBrdAvlData[1].bNewBrdAvl	:= TRUE;		
			bHermesWriteRetainLane1	:= TRUE;
		END_IF
		
		//Write Hermes Retain Data
		IF bHermesWriteRetainLane1 = TRUE THEN
			p_eAct	:= HermesActWriteRetainLane1;
				
			IF (eStat = HermesActWriteRetainLane1) AND (eStatus = Done) THEN
				p_eAct				:= HermesActIdle;
				bHermesWriteRetainLane1	:= FALSE;
			END_IF
		END_IF
	
	END_IF
	
END_ACTION
