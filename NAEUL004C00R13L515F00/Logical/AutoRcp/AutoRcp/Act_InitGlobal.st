(** 2019-06-12 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_eLinkNtParamProjMag ACCESS p_NtParamProjMag;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	//p_tyInternalReqProdRcp ACCESS p_Follower1UpdtProdRcp;	//Follower 2 Assign With Follower 1 Recipe
	p_sProgNm ACCESS p_NtParamAutoRcpProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;

	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	//Zone 1
	p_bLinkPshrConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bLinkOpsTravLifULInitDone ACCESS p_OpsTravLifULInitDone;
	
	//Zone 2
	p_bLinkOpsMagConvUL1InitDone ACCESS p_OpsMagConvUL1InitDone;
	p_bLinkOpsMagConvUL2InitDone ACCESS p_OpsMagConvUL2InitDone;
	p_bLinkOpsMagConvUL3InitDone ACCESS p_OpsMagConvUL3InitDone;
	p_udiOpsMagConvUL1MagAllwGo ACCESS p_OpsMagConvUL1MagAllwGo;
	p_udiOpsMagConvUL2MagAllwGo ACCESS p_OpsMagConvUL2MagAllwGo;
	p_udiOpsMagConvUL3MagAllwGo ACCESS p_OpsMagConvUL3MagAllwGo;
	
	
	p_bBuffer1MagPresent ACCESS p_Buffer1MagPresent;
	p_bBuffer2MagPresent ACCESS p_Buffer2MagPresent;
	p_bBuffer3MagPresent ACCESS p_Buffer3MagPresent;
	
	p_bBuffer1MagRemoved ACCESS p_Buffer1MagPresent;
	p_bBuffer2MagRemoved ACCESS p_Buffer2MagPresent;
	p_bBuffer3MagRemoved ACCESS p_Buffer3MagPresent;
	
	p_tyBuffer1BffrStat ACCESS p_Buffer1BffrStat ;
	p_tyBuffer2BffrStat ACCESS p_Buffer2BffrStat ;
	p_tyBuffer3BffrStat ACCESS p_Buffer3BffrStat ;
	
	p_bMagAW1WidthDiff ACCESS p_MagAWOpen1WidthPosDiff; 
	p_bMagAW2WidthDiff ACCESS p_MagAWOpen2WidthPosDiff;
	p_bMagAW3WidthDiff ACCESS p_MagAWOpen3WidthPosDiff;
	
	
	//Hermes A accepted the BA 
	p_bHermesABAAccepted ACCESS p_USHermesABAAccepted;
	p_bHermesABFAccepted ACCESS p_USHermesABFAccepted;
	
	//Hermes B accepeted the BA
	p_bHermesBBAAccepted ACCESS p_USHermesBBAAccepted;
	p_bHermesBBFAccepted ACCESS p_USHermesBBFAccepted;
	
	p_diMagRcpCurrRcpTtlSlt ACCESS p_MagRcpCurrRcpTtlSlt;
	p_diMagRcpCurrRcpSltToSlt ACCESS p_MagRcpCurrRcpSltToSlt;
	
	
	//p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;
	p_bProdRcp0ToptoBtm ACCESS p_ProdRcpCurrRcp0TopToBtm;
	//for Board Retain
	p_bHermesBrdAvlDataNewBrdAvl1stZ ACCESS p_HermesBrdAvlDataNewBrdAvl1stZ;
	pa_tyLinkXMLTableDataBrdAvl1 ACCESS p_HermesBrdAvlDataTable1stZ; //lane 1 B.A
	p_iLinkXMLTableDataBrdAvlTtlIdx1 ACCESS p_HermesBrdAvlDataTtlIdx1stZ; //lane 1 B.A
	
	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;
	pa_bMagRej ACCESS p_OpsTravLifULMagRej;
	
	p_bOpsMagConvUL1AWDone ACCESS p_OpsMagConvUL1AWDone; //to froce AW
	p_bOpsMagConvUL2AWDone ACCESS p_OpsMagConvUL2AWDone;
	p_bOpsMagConvUL3AWDone ACCESS p_OpsMagConvUL3AWDone;
	
	p_bOpsMagConvUL1SlotUpdtDone ACCESS p_OpsMagConvUL1SlotUpdtDone; //to update pitch
	p_bOpsMagConvUL2SlotUpdtDone ACCESS  p_OpsMagConvUL2SlotUpdtDone;
	p_bOpsMagConvUL3SlotUpdtDone ACCESS p_OpsMagConvUL3SlotUpdtDone;
	p_bMcParamAutoRcpBatchIDChgCmp	ACCESS p_McParamAutoRcpBatchIDChgCmp;
	p_bMcParamAutoRcpIgnoreBtmClr ACCESS p_McParamAutoRcpIgnoreBtmClr;
	p_bMcParamAutoRcpIgnoreTopClr ACCESS p_McParamAutoRcpIgnoreTopClr;
	p_bMcParamAutoRcpIgnoreThickns ACCESS p_McParamAutoRcpIgnoreThickns;
	
	//Error Handling Parameter
	p_eNtParamAutoRcpParamLmt ACCESS p_NtParamAutoRcpParamLmt;
	p_diNtParamProdRcpMinWidth ACCESS p_NtParamProdRcpMinWidth;
	p_diNtParamProdRcpMaxWidth ACCESS p_NtParamProdRcpMaxWidth;

	

	//We Fab

	p_tyInternalReqProdRcp ACCESS p_Follower1UpdtProdRcp;	//Follower 2 Assign With Follower 1 Recipe
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	
END_ACTION
