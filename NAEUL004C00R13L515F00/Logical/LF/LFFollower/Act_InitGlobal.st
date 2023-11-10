(** 2020-09-21 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;

	p_bLinkNtParamProjLaneBPrep ACCESS p_NtParamProjLaneBPrep;
	p_eLinkMcParamUSACommMod ACCESS p_McParamUSCommAMod;
	p_eLinkMcParamUSBCommMod ACCESS p_McParamUSCommBMod;
		
	p_eLinkNtParamProjMag ACCESS p_NtParamProjMag;
	p_bLinkPshrConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bLinkBffr1MagRemoved ACCESS p_Buffer1MagRemoved;
	p_bLinkBffr2MagRemoved ACCESS p_Buffer2MagRemoved;
	p_bLinkBffr3MagRemoved ACCESS p_Buffer3MagRemoved;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamLFPrep;
	p_bEn ACCESS p_McParamLFEn;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	p_sMcNm ACCESS p_McParamMcNm;
	p_bAWPrep ACCESS p_NtParamAWPrep;
	p_bAWDis ACCESS p_McParamAWDis;
	p_bMnlAccData ACCESS p_McParamMnlAccDat;
	p_bSectionLeader ACCESS p_McParamSectionLeader;
	p_diWidthLimit ACCESS p_NtParamLFWidthLimit;
	p_bProdWidthChk ACCESS p_NtParamLFProdWidthChk;
	p_bUIProdAccData ACCESS p_UIProdAccData;
	p_bUIMagAccData ACCESS p_UIMagAccData;
	pa_tyProdRcpList ACCESS p_ProdRcpCurrList;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp0;
	p_tyDispProdRcp ACCESS p_ProdRcpCurrRcp1; 
//	p_sCurrMagRcpNm ACCESS ADR(p_tyCurrMagRcp.sRcpNm);
	p_eTimeStat ACCESS p_TimeStat;
	p_eTimeStatus ACCESS p_TimeStatus;
	//	p_tyToLeaderProdRcp ACCESS p_Follower2UpdtProdRcp;	//Assign With Conveyor Last Zone (To Leader Completion Update)
	p_tyToLeaderProdRcp ACCESS p_Follower1UpdtProdRcp;	//Assign With Conveyor Last Zone (To Leader Completion Update)
	p_sProgNm ACCESS p_NtParamLFFollowerProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_tOnlineChkDlyTm ACCESS p_NtParamLFFllowerOnlineChkDlyTm;
	p_bManual ACCESS p_UIUIMnlMod;
	p_bErr ACCESS p_AlarmErr;
	p_bOps ACCESS p_OpsStatusRun;
	p_bStandby ACCESS p_OpsStatusStop;
	p_bWarning ACCESS p_AlarmWarning;
	p_eAWStat ACCESS p_AWOpenStat;
	p_bWidth2Prep ACCESS p_NtParamLFWidth2Prep;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat; //add
	p_eProdRcpStatus ACCESS p_ProdRcpStatus; //add
	p_eLinkUIProdRcpAct ACCESS p_UIProdRcpAct; //add
	p_tyProdRcpCurrRcpWr ACCESS p_UIProdRcpCurrRcpWr; //add
	p_bDBAOnWOAlign ACCESS p_McParamDBAOnWOAlign;
	(* Always Change If Project Change *)
	
END_ACTION
