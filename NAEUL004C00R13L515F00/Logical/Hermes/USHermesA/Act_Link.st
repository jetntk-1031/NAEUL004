(** 2019-06-04 **)
ACTION Act_Link:
	
	//Receive Alive Time
	p_tyParam.tRcvAlive	:= p_tyParam.tSndAlive * 2;
	
	//Transfer Complete
	p_bRcvCompl	:= EDGENEG(p_bLinkDILeftSen);
	
	//Ready Receive
	p_bRdyRcv	:= p_bLinkOpsTravLifULUSComm AND p_eLinkTravLifULPosGo = TravLifULPosUS1;
	
	//Ready Transport
//	p_bRdyTransport	:= TRUE;
	
	//Accept Data Ready
	IF bUSRdy AND p_eLinkTravLifULPosGo = TravLifULPosUS1 THEN
		p_bAccDataRdy	:= TRUE;
	ELSIF bUSRdy = FALSE THEN
		p_bAccDataRdy	:= FALSE;
	END_IF
	
	//Accept New Recipe Condition
	p_bAccNewRcpCond	:= p_bOpsRun = TRUE AND p_bOpsGConv1HvBrd = FALSE;
	
	//Info Message
	p_sInfoMsg		:= 'Upstream Hermes Request New Recipe';
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Name : ');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , p_sRecipeNm);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Old Recipe Width : ');
	sWidthInUMTemp	:= DINT_TO_STRING(p_diWidthInUM / 1000);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Name : ');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , sReqRecipeNm);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'New Recipe Width : ');
	sWidthInUMTemp	:= DINT_TO_STRING(diReqWidthInUM / 1000);
	p_sInfoMsg		:= CONCAT(p_sInfoMsg , sWidthInUMTemp);
	
	//Info Message 1 for "SendBoardInfo"
	p_sInfoMsg1     := 'Board Info Received From Upstream';
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , '$r$n');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , 'PCB Transfer to Last Zone is Blocked');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , '$r$n');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , 'Please Insert PCB to Last Zone Outlet');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , '$r$n');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , 'and PCB Data Will Be Overwritten');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , '$r$n');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , 'To Cancel,unpress the Query Board Info Button');
	
	//Info Message 2 for "SendBoardInfo"
	p_sInfoMsg2     := 'Board Info Not Found From Upstream';
	
	//Block Upstream                                                  //ADD
	//Changed
	bBlkUS :=  bBABlkUS OR bBFBlkUS OR bManuallInsertLastZone; // OR (p_eLinkMcParamUSCommMod = McSetCommModHermes AND (p_bQueryBypassWorkOrder OR p_bNewIncomingBoard)) ; //Remove bManuallInsertLastZone if this is a multiple zones, use bManuallInsertLastZone to block respective zones board transfer
	
	
	//bManuallInsertLastZone Waiting Board Transport to DS
	p_bTransportFinished :=  EDGENEG(p_bOpsGConv1HvBrd); // added DSSMEMA if necessary 
	
	//Changed
//	IF p_bNewIncomingBoard = FALSE THEN
//		fbUSBlkTm(IN := TRUE);
//	ELSIF p_bNewIncomingBoard THEN
//		fbUSBlkTm(IN := FALSE);
//	END_IF
	
	//IF AutoRcp Prep, Link 
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN
		p_sRecipeNm	ACCESS p_AutoRcpCurrRcpProdID;
		p_diWidthInUM ACCESS p_AutoRcpCurrRcpWidth;		
	ELSE
		p_sRecipeNm	ACCESS p_ProdRcpCurrRcp0Nm;
		p_diWidthInUM ACCESS p_ProdRcpCurrRcp0Width;
	END_IF
	
END_ACTION
