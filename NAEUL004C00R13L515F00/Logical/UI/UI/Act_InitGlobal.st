(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_StartupUIAct;
	
	p_bOpsRun ACCESS p_OpsRun;
	
	p_bStartupRun ACCESS p_StartupRun;
	p_eStartupStat ACCESS p_StartupStat;
	p_eStartupStatus ACCESS p_StartupStatus;
	p_sStartupStatTxt ACCESS p_StartupStatTxt;
	p_eStartupStep ACCESS p_StartupStep;
	p_sStartupStepTxt ACCESS p_StartupStepTxt;
	p_bStartupGetConfigDone ACCESS p_StartupGetConfigDone;
	p_bStartupMismatchSetConfigDone ACCESS p_StartupMismatchSetConfigDone;
	p_bStartupUISettingsLoadDone ACCESS p_StartupUISettingsLoadDone;
	
	p_eHWInfoStat ACCESS p_HWInfoStat;
	p_eHWInfoStatus ACCESS p_HWInfoStatus;
	p_sHWInfoStatTxt ACCESS p_HWInfoStatTxt;
	p_sHWInfoIPAddr ACCESS p_HWInfoIPAddr;
	p_sHWInfoSubnetMask ACCESS p_HWInfoSubnetMask;
	p_udiHWInfoEthMode ACCESS p_HWInfoEthMode;
	
	p_eTLBuzStat ACCESS p_TLBuzStat;
	p_eTLBuzStatus ACCESS p_TLBuzStatus;
	p_sTLBuzStatTxt ACCESS p_TLBuzStatTxt;
	
	p_tyAlarmCurrList ACCESS p_AlarmCurrList;
	p_tyAlarmRcyList ACCESS p_AlarmRecoveryList;
	p_tyAlarmHistoryList ACCESS p_AlarmHistoryList;
	p_bAlarmWarning ACCESS p_AlarmWarning;
	p_bAlarmErr ACCESS p_AlarmErr;
	p_bAlarmInfo ACCESS p_AlarmInfo;
	p_sAlarmInfoMsg ACCESS p_AlarmInfoMsg;
	p_bAlarmInfoLF ACCESS p_AlarmInfoLF;
	
	p_eRstErrStat ACCESS p_RstErrStat;
	p_eRstErrStatus ACCESS p_RstErrStatus;
	p_sRstErrStatTxt ACCESS p_RstErrStatTxt;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat;
	p_eProdRcpStatus ACCESS p_ProdRcpStatus;
	p_sProdRcpStatTxt ACCESS p_ProdRcpStatTxt;
	p_tyProdRcpFilterList ACCESS p_ProdRcpFilterList;
	p_tyProdRcpSortedList ACCESS p_ProdRcpSortedList;
	p_tyProdRcpCurrList	ACCESS p_ProdRcpCurrList;
	p_tyProdRcpCurrRcp0 ACCESS p_ProdRcpCurrRcp0;
	p_tyProdRcpCurrRcp1 ACCESS p_ProdRcpCurrRcp1;
	p_tyProdRcpCurrRcp2 ACCESS p_ProdRcpCurrRcp2;
	p_tyProdRcpInfoOut ACCESS p_ProdRcpInfoOut;
	p_bProdRcpNmEmpty ACCESS p_ProdRcpNmEmpty;
	p_bProdRcpListFull ACCESS p_ProdRcpListFull;
	p_bProdRcpNmNotExist ACCESS p_ProdRcpNmNotExist;
	
	p_eMpProdRcpStat ACCESS p_MpProdRcpStat;
	p_eMpProdRcpStatus ACCESS p_MpProdRcpStatus;
	
	p_eMagRcpStat ACCESS p_MagRcpStat;
	p_eMagRcpStatus ACCESS p_MagRcpStatus;
	p_sMagRcpStatTxt ACCESS p_MagRcpStatTxt;
	p_tyMagRcpFilterList ACCESS p_MagRcpFilterList;
	p_tyMagRcpSortedList ACCESS p_MagRcpSortedList;
	p_tyMagRcpCurrList ACCESS p_MagRcpCurrList;
	p_tyMagRcpInfoOut ACCESS p_MagRcpInfoOut;
	p_tyMagRcpCurrRcp ACCESS p_MagRcpCurrRcp;
	p_bMagRcpNmEmpty ACCESS p_MagRcpNmEmpty;
	p_bMagRcpListFull ACCESS p_MagRcpListFull;
	p_bMagRcpNmNotExist ACCESS p_MagRcpNmNotExist;
	
	p_eMcParamStat ACCESS p_McParamStat;
	p_eMcParamStatus ACCESS p_McParamStatus;
	p_sMcParamStatTxt ACCESS p_McParamStatTxt;
	p_tyMcParamCurr	ACCESS p_McParamCurr;
	
	p_bSiemensMcModeChgPrep ACCESS p_McParamSiemensPrep;
	
	p_tyNtParamCurr ACCESS p_NtParamCurr;
	
	p_eUsrMgmtStat ACCESS p_UsrMgmtStat;
	p_eUsrMgmtStatus ACCESS p_UsrMgmtStatus;
	p_sUsrMgmtStatTxt ACCESS p_UsrMgmtStatTxt;
	p_tyUsrMgmtCurrUsr ACCESS p_UsrMgmtCurrUsr;
	p_tyUsrMgmtCurrAccessRgt ACCESS p_UsrMgmtCurrAccessRight;
	p_tyUsrMgmtAllList ACCESS p_UsrMgmtAllList;
	p_tyUsrMgmtLv2List ACCESS p_UsrMgmtLvl2List;
	p_tyUsrMgmtLv3List ACCESS p_UsrMgmtLvl3List;
	p_tyUsrMgmtAdminList ACCESS p_UsrMgmtAdminList;
	p_bUsrMgmtNmEmpty ACCESS p_UsrMgmtNmEmpty;
	p_bUsrMgmtListFull ACCESS p_UsrMgmtListFull;
	p_bUsrMgmtNmExist ACCESS p_UsrMgmtNmExist;
	p_bUsrMgmtNmNotExist ACCESS p_UsrMgmtNmNotExist;
	p_bUsrMgmtLastAdmin ACCESS p_UsrMgmtLastAdmin;
	p_bUsrMgmtLoginSuccess ACCESS p_UsrMgmtLoginSuccess;
	p_bUsrMgmtPwMismatch ACCESS p_UsrMgmtPwMismatch;
	p_bUsrMgmtUnableDelete ACCESS p_UsrMgmtUnableDelete;
	p_tyUsrMgmtFullData ACCESS p_UsrMgmtFullData;
	
	p_eOvenInfoAStat ACCESS p_OvenInfoAStat;
	p_eOvenInfoAStatus ACCESS p_OvenInfoAStatus;
	p_sOvenInfoAStatTxt ACCESS p_OvenInfoAStatTxt;
	p_diOvenInfoABrdInOven ACCESS p_OvenInfoABrdInOven;
	
	p_eOvenInfoBStat ACCESS p_OvenInfoBStat;
	p_eOvenInfoBStatus ACCESS p_OvenInfoBStatus;
	p_sOvenInfoBStatTxt ACCESS p_OvenInfoBStatTxt;
	p_diOvenInfoBBrdInOven ACCESS p_OvenInfoBBrdInOven;
	
	p_eBuffer1Stat ACCESS p_Buffer1Stat;
	p_eBuffer1Status ACCESS p_Buffer1Status;
	p_sBuffer1StatTxt ACCESS p_Buffer1StatTxt;
	p_tyBuffer1DispBffr ACCESS p_Buffer1DispBffr;
	p_tyBuffer1BffrStat ACCESS p_Buffer1BffrStat;
	p_bBuffer1MagPresent ACCESS p_Buffer1MagPresent;
	p_bBufferMagRemoved1 ACCESS p_Buffer1MagRemoved;
	
	p_eBuffer2Stat ACCESS p_Buffer2Stat;
	p_eBuffer2Status ACCESS p_Buffer2Status;
	p_sBuffer2StatTxt ACCESS p_Buffer2StatTxt;
	p_tyBuffer2DispBffr ACCESS p_Buffer2DispBffr;
	p_tyBuffer2BffrStat ACCESS p_Buffer2BffrStat;
	p_bBuffer2MagPresent ACCESS p_Buffer2MagPresent;
	p_bBufferMagRemoved2 ACCESS p_Buffer2MagRemoved;
	
	p_eBuffer3Stat ACCESS p_Buffer3Stat;
	p_eBuffer3Status ACCESS p_Buffer3Status;
	p_sBuffer3StatTxt ACCESS p_Buffer3StatTxt;
	p_tyBuffer3DispBffr ACCESS p_Buffer3DispBffr;
	p_tyBuffer3BffrStat ACCESS p_Buffer3BffrStat;
	p_bBuffer3MagPresent ACCESS p_Buffer3MagPresent;
	p_bBufferMagRemoved3 ACCESS p_Buffer3MagRemoved;
	
	p_diBufferMagABffrMtySlt ACCESS p_BufferMagABffrMtySlt;
	p_diBufferMagBBffrMtySlt ACCESS p_BufferMagBBffrMtySlt;
	
	p_eUSSMEMAAStat ACCESS p_USSMEMAAStat;
	p_eUSSMEMAAStatus ACCESS p_USSMEMAAStatus;
	p_sUSSMEMAAStatTxt ACCESS p_USSMEMAAStatTxt;
	p_bUSSMEMAAUSRdy ACCESS p_USSMEMAAUSRdy;
	p_bUSSMEMAAUSGdBrdRdy ACCESS p_USSMEMAAUSGdBrdRdy;
	p_bUSSMEMAADSRdy ACCESS p_USSMEMAADSRdy;
	
	p_eUSSMEMABStat ACCESS p_USSMEMABStat;
	p_eUSSMEMABStatus ACCESS p_USSMEMABStatus;
	p_sUSSMEMABStatTxt ACCESS p_USSMEMABStatTxt;
	p_bUSSMEMABUSRdy ACCESS p_USSMEMABUSRdy;
	p_bUSSMEMABUSGdBrdRdy ACCESS p_USSMEMABUSGdBrdRdy;
	p_bUSSMEMABDSRdy ACCESS p_USSMEMABDSRdy;
	
	p_eInShutterStat ACCESS p_Pneu2SenInShutterStat;
	p_eInShutterStatus ACCESS p_Pneu2SenInShutterStatus;
	p_sInShutterStatTxt ACCESS p_Pneu2SenInShutterStatTxt;
	p_bInShutterExtCtrl ACCESS p_Pneu2SenInShutterExtCtrl;
	p_bInShutterRetCtrl ACCESS p_Pneu2SenInShutterRetCtrl;
	p_bInShutterTwoCtrlOut ACCESS p_Pneu2SenInShutterTwoCtrlOut;
	p_bInShutterExtended ACCESS p_Pneu2SenInShutterExtended;
	p_bInShutterRetracted ACCESS p_Pneu2SenInShutterRetracted;
	
	p_eOutShutterStat ACCESS p_Pneu2SenOutShutterStat;
	p_eOutShutterStatus ACCESS p_Pneu2SenOutShutterStatus;
	p_sOutShutterStatTxt ACCESS p_Pneu2SenOutShutterStatTxt;
	p_bOutShutterExtCtrl ACCESS p_Pneu2SenOutShutterExtCtrl;
	p_bOutShutterRetCtrl ACCESS p_Pneu2SenOutShutterRetCtrl;
	p_bOutShutterTwoCtrlOut ACCESS p_Pneu2SenOutShutterTwoCtrlOut;
	p_bOutShutterExtended ACCESS p_Pneu2SenOutShutterExtended;
	p_bOutShutterRetracted ACCESS p_Pneu2SenOutShutterRetracted;
	
	p_eOutShutterStat2 ACCESS p_Pneu2SenOutShutterStat2;
	p_eOutShutterStatus2 ACCESS p_Pneu2SenOutShutterStatus2;
	p_sOutShutterStatTxt2 ACCESS p_Pneu2SenOutShutterStatTxt2;
	p_bOutShutterExtCtrl2 ACCESS p_Pneu2SenOutShutterExtCtrl2;
	p_bOutShutterRetCtrl2 ACCESS p_Pneu2SenOutShutterRetCtrl2;
	p_bOutShutterTwoCtrlOut2 ACCESS p_Pneu2SenOutShutterTwoCtrlOut2;
	p_bOutShutterExtended2 ACCESS p_Pneu2SenOutShutterExtended2;
	p_bOutShutterRetracted2 ACCESS p_Pneu2SenOutShutterRetracted2;
	
	p_eOutShutterStat3 ACCESS p_Pneu2SenOutShutterStat3;
	p_eOutShutterStatus3 ACCESS p_Pneu2SenOutShutterStatus3;
	p_sOutShutterStatTxt3 ACCESS p_Pneu2SenOutShutterStatTxt3;
	p_bOutShutterExtCtrl3 ACCESS p_Pneu2SenOutShutterExtCtrl3;
	p_bOutShutterRetCtrl3 ACCESS p_Pneu2SenOutShutterRetCtrl3;
	p_bOutShutterTwoCtrlOut3 ACCESS p_Pneu2SenOutShutterTwoCtrlOut3;
	p_bOutShutterExtended3 ACCESS p_Pneu2SenOutShutterExtended3;
	p_bOutShutterRetracted3 ACCESS p_Pneu2SenOutShutterRetracted3;
	
	p_eSelClamp1Stat ACCESS p_PneuNoSenSelClamp1Stat;
	p_eSelClamp1Status ACCESS p_PneuNoSenSelClamp1Status;
	p_sSelClamp1StatTxt ACCESS p_PneuNoSenSelClamp1StatTxt;
	p_bSelClamp1ExtCtrl ACCESS p_PneuNoSenSelClamp1ExtCtrl;
	p_bSelClamp1RetCtrl ACCESS p_PneuNoSenSelClamp1RetCtrl;
	p_bSelClamp1TwoCtrlOut ACCESS p_PneuNoSenSelClamp1TwoCtrlOut;
	p_bSelClamp1Extended ACCESS p_PneuNoSenSelClamp1Extended;
	p_bSelClamp1Retracted ACCESS p_PneuNoSenSelClamp1Retracted;
	
	p_eSelClamp2Stat ACCESS p_PneuNoSenSelClamp2Stat;
	p_eSelClamp2Status ACCESS p_PneuNoSenSelClamp2Status;
	p_sSelClamp2StatTxt ACCESS p_PneuNoSenSelClamp2StatTxt;
	p_bSelClamp2ExtCtrl ACCESS p_PneuNoSenSelClamp2ExtCtrl;
	p_bSelClamp2RetCtrl ACCESS p_PneuNoSenSelClamp2RetCtrl;
	p_bSelClamp2TwoCtrlOut ACCESS p_PneuNoSenSelClamp2TwoCtrlOut;
	p_bSelClamp2Extended ACCESS p_PneuNoSenSelClamp2Extended;
	p_bSelClamp2Retracted ACCESS p_PneuNoSenSelClamp2Retracted;

	p_eSelClamp3Stat ACCESS p_PneuNoSenSelClamp3Stat;
	p_eSelClamp3Status ACCESS p_PneuNoSenSelClamp3Status;
	p_sSelClamp3StatTxt ACCESS p_PneuNoSenSelClamp3StatTxt;
	p_bSelClamp3ExtCtrl ACCESS p_PneuNoSenSelClamp3ExtCtrl;
	p_bSelClamp3RetCtrl ACCESS p_PneuNoSenSelClamp3RetCtrl;
	p_bSelClamp3TwoCtrlOut ACCESS p_PneuNoSenSelClamp3TwoCtrlOut;
	p_bSelClamp3Extended ACCESS p_PneuNoSenSelClamp3Extended;
	p_bSelClamp3Retracted ACCESS p_PneuNoSenSelClamp3Retracted;
	
	p_eStopperAStat ACCESS p_PneuNoSenStopperAStat;
	p_eStopperAStatus ACCESS p_PneuNoSenStopperAStatus;
	p_sStopperAStatTxt ACCESS p_PneuNoSenStopperAStatTxt;
	p_bStopperAExtCtrl ACCESS p_PneuNoSenStopperAExtCtrl;
	p_bStopperARetCtrl ACCESS p_PneuNoSenStopperARetCtrl;
	p_bStopperATwoCtrlOut ACCESS p_PneuNoSenStopperATwoCtrlOut;
	p_bStopperAExtended ACCESS p_PneuNoSenStopperAExtended;
	p_bStopperARetracted ACCESS p_PneuNoSenStopperARetracted;
	
	p_eStopperBStat ACCESS p_PneuNoSenStopperBStat;
	p_eStopperBStatus ACCESS p_PneuNoSenStopperBStatus;
	p_sStopperBStatTxt ACCESS p_PneuNoSenStopperBStatTxt;
	p_bStopperBExtCtrl ACCESS p_PneuNoSenStopperBExtCtrl;
	p_bStopperBRetCtrl ACCESS p_PneuNoSenStopperBRetCtrl;
	p_bStopperBTwoCtrlOut ACCESS p_PneuNoSenStopperBTwoCtrlOut;
	p_bStopperBExtended ACCESS p_PneuNoSenStopperBExtended;
	p_bStopperBRetracted ACCESS p_PneuNoSenStopperBRetracted;
	
	p_eInStopperStat ACCESS p_InletStopperStat;
	p_eInStopperStatus ACCESS p_InletStopperStatus;
	p_sInStopperStatTxt ACCESS p_InletStopperStatTxt;
	p_bInStopperExtCtrl ACCESS p_InletStopperExtCtrl;
	p_bInStopperRetCtrl ACCESS p_InletStopperRetCtrl;
	p_bInStopperTwoCtrlOut ACCESS p_InletStopperTwoCtrlOut;
	p_bInStopperExtended ACCESS p_InletStopperExtended;
	p_bInStopperRetracted ACCESS p_InletStopperRetracted;
	
	p_ePshrConvStat ACCESS p_PshrConvStat;
	p_ePshrConvStatus ACCESS p_PshrConvStatus;
	p_sPshrConvStatTxt ACCESS p_PshrConvStatTxt;
	p_bPshrConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bPshrConvRejHvBrd ACCESS p_PshrConvRejHvBrd;
	p_bPshrConvInspHvBrd ACCESS p_PshrConvInspHvBrd;
	p_bPshrConvGdBrd ACCESS p_PshrConvGdBrd;
	p_bPshrConvLmtSenActivated ACCESS p_PshrConvLmtSenActivated;
	p_bPshrConvMtrSigOnOrLToR ACCESS p_PshrConvMtrSigOnOrLToR;
	p_bPshrConvMtrDirOrRToL ACCESS p_PshrConvMtrDirOrRToL;
	p_bPshrConvPshrExtCtrl ACCESS p_PshrConvPshrExtCtrl;
	p_bPshrConvPshrTwoOutputCtrl ACCESS p_PshrConvPshrTwoOutputControl;
	p_bPshrConvPullerExtCtrl ACCESS p_PshrConvPullerExtCtrl;
	p_bPshrConvPullerRetCtrl ACCESS p_PshrConvPullerRetCtrl;
	p_bPshrConvPullerTwoOutputCtrl ACCESS p_PshrConvPullerTwoOutputControl;
	p_bPshrConvRotRemoteCtrl ACCESS p_PshrConvRotRemoteCtrl;
	p_bPshrConvRotTwoOutputCtrl ACCESS p_PshrConvRotTwoOutputControl;
	p_bPshrConvRejectUpCtrl ACCESS p_PshrConvRejectUpCtrl;
	p_bPshrConvRejectDownCtrl ACCESS p_PshrConvRejectDownCtrl;
	p_bPshrConvRejectTwoOutputCtrl ACCESS p_PshrConvRejectTwoOutputControl;
	
	p_eMagConv2Clp1Stat ACCESS p_MagConv2Clp1Stat;
	p_eMagConv2Clp1Status ACCESS p_MagConv2Clp1Status;
	p_sMagConv2Clp1StatTxt ACCESS p_MagConv2Clp1StatTxt;
	p_bMagConv2Clp1HvMag ACCESS p_MagConv2Clp1HvMag;
	p_bMagConv2Clp1MtrSigOnOrLToR ACCESS p_MagConv2Clp1MtrSigOnOrLToR;
	p_bMagConv2Clp1MtrDirOrRToL ACCESS p_MagConv2Clp1MtrDirOrRToL;
	p_bMagConv2Clp1ClprFixClampCtrl ACCESS p_MagConv2Clp1FixClprClampCtrl;
	p_bMagConv2Clp1ClprRmtClampCtrl ACCESS p_MagConv2Clp1RmtClprClampCtrl;
	p_bMagConv2Clp1ClprTwoOutputCtrl ACCESS p_MagConv2Clp1ClprTwoOutputCtrl;
	
	p_eMagConv2Clp2Stat ACCESS p_MagConv2Clp2Stat;
	p_eMagConv2Clp2Status ACCESS p_MagConv2Clp2Status;
	p_sMagConv2Clp2StatTxt ACCESS p_MagConv2Clp2StatTxt;
	p_bMagConv2Clp2HvMag ACCESS p_MagConv2Clp2HvMag;
	p_bMagConv2Clp2MtrSigOnOrLToR ACCESS p_MagConv2Clp2MtrSigOnOrLToR;
	p_bMagConv2Clp2MtrDirOrRToL ACCESS p_MagConv2Clp2MtrDirOrRToL;
	p_bMagConv2Clp2ClprFixClampCtrl ACCESS p_MagConv2Clp2FixClprClampCtrl;
	p_bMagConv2Clp2ClprRmtClampCtrl ACCESS p_MagConv2Clp2RmtClprClampCtrl;
	p_bMagConv2Clp2ClprTwoOutputCtrl ACCESS p_MagConv2Clp2ClprTwoOutputCtrl;
	
	p_eMagConv2Clp3Stat ACCESS p_MagConv2Clp3Stat;
	p_eMagConv2Clp3Status ACCESS p_MagConv2Clp3Status;
	p_sMagConv2Clp3StatTxt ACCESS p_MagConv2Clp3StatTxt;
	p_bMagConv2Clp3HvMag ACCESS p_MagConv2Clp3HvMag;
	p_bMagConv2Clp3MtrSigOnOrLToR ACCESS p_MagConv2Clp3MtrSigOnOrLToR;
	p_bMagConv2Clp3MtrDirOrRToL ACCESS p_MagConv2Clp3MtrDirOrRToL;
	p_bMagConv2Clp3ClprFixClampCtrl ACCESS p_MagConv2Clp3FixClprClampCtrl;
	p_bMagConv2Clp3ClprRmtClampCtrl ACCESS p_MagConv2Clp3RmtClprClampCtrl;
	p_bMagConv2Clp3ClprTwoOutputCtrl ACCESS p_MagConv2Clp3ClprTwoOutputCtrl;
	
	p_eMag1SafetyBarStat ACCESS p_Pneu2SMag1SafetyBarStat;
	p_eMag1SafetyBarStatus ACCESS p_Pneu2SMag1SafetyBarStatus;
	p_sMag1SafetyBarStatTxt ACCESS p_Pneu2SMag1SafetyBarStatTxt;
	p_bMag1SafetyBarExtCtrl ACCESS p_Pneu2SMag1SafetyBarExtCtrl;
	p_bMag1SafetyBarRetCtrl ACCESS p_Pneu2SMag1SafetyBarRetCtrl;
	p_bMag1SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag1SafetyBarTwoCtrlOut;
	p_bMag1SafetyBarExtended ACCESS p_Pneu2SMag1SafetyBarExtended;
	p_bMag1SafetyBarRetracted ACCESS p_Pneu2SMag1SafetyBarRetracted;
	
	p_eMag2SafetyBarStat ACCESS p_Pneu2SMag2SafetyBarStat;
	p_eMag2SafetyBarStatus ACCESS p_Pneu2SMag2SafetyBarStatus;
	p_sMag2SafetyBarStatTxt ACCESS p_Pneu2SMag2SafetyBarStatTxt;
	p_bMag2SafetyBarExtCtrl ACCESS p_Pneu2SMag2SafetyBarExtCtrl;
	p_bMag2SafetyBarRetCtrl ACCESS p_Pneu2SMag2SafetyBarRetCtrl;
	p_bMag2SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag2SafetyBarTwoCtrlOut;
	p_bMag2SafetyBarExtended ACCESS p_Pneu2SMag2SafetyBarExtended;
	p_bMag2SafetyBarRetracted ACCESS p_Pneu2SMag2SafetyBarRetracted;
	
	p_eMag3SafetyBarStat ACCESS p_Pneu2SMag3SafetyBarStat;
	p_eMag3SafetyBarStatus ACCESS p_Pneu2SMag3SafetyBarStatus;
	p_sMag3SafetyBarStatTxt ACCESS p_Pneu2SMag3SafetyBarStatTxt;
	p_bMag3SafetyBarExtCtrl ACCESS p_Pneu2SMag3SafetyBarExtCtrl;
	p_bMag3SafetyBarRetCtrl ACCESS p_Pneu2SMag3SafetyBarRetCtrl;
	p_bMag3SafetyBarTwoCtrlOut ACCESS p_Pneu2SMag3SafetyBarTwoCtrlOut;
	p_bMag3SafetyBarExtended ACCESS p_Pneu2SMag3SafetyBarExtended;
	p_bMag3SafetyBarRetracted ACCESS p_Pneu2SMag3SafetyBarRetracted;
	
	p_eMag1AWEngageStat ACCESS p_Pneu2SMag1AWEngageStat;
	p_eMag1AWEngageStatus ACCESS p_Pneu2SMag1AWEngageStatus;
	p_sMag1AWEngageStatTxt ACCESS p_Pneu2SMag1AWEngageStatTxt;
	p_bMag1AWEngageExtCtrl ACCESS p_Pneu2SMag1AWEngageExtCtrl;
	p_bMag1AWEngageRetCtrl ACCESS p_Pneu2SMag1AWEngageRetCtrl;
	p_bMag1AWEngageTwoCtrlOut ACCESS p_Pneu2SMag1AWEngageTwoCtrlOut;
	p_bMag1AWEngageExtended ACCESS p_Pneu2SMag1AWEngageExtended;
	p_bMag1AWEngageRetracted ACCESS p_Pneu2SMag1AWEngageRetracted;
	
	p_eMag2AWEngageStat ACCESS p_Pneu2SMag2AWEngageStat;
	p_eMag2AWEngageStatus ACCESS p_Pneu2SMag2AWEngageStatus;
	p_sMag2AWEngageStatTxt ACCESS p_Pneu2SMag2AWEngageStatTxt;
	p_bMag2AWEngageExtCtrl ACCESS p_Pneu2SMag2AWEngageExtCtrl;
	p_bMag2AWEngageRetCtrl ACCESS p_Pneu2SMag2AWEngageRetCtrl;
	p_bMag2AWEngageTwoCtrlOut ACCESS p_Pneu2SMag2AWEngageTwoCtrlOut;
	p_bMag2AWEngageExtended ACCESS p_Pneu2SMag2AWEngageExtended;
	p_bMag2AWEngageRetracted ACCESS p_Pneu2SMag2AWEngageRetracted;
	
	p_eMag3AWEngageStat ACCESS p_Pneu2SMag3AWEngageStat;
	p_eMag3AWEngageStatus ACCESS p_Pneu2SMag3AWEngageStatus;
	p_sMag3AWEngageStatTxt ACCESS p_Pneu2SMag3AWEngageStatTxt;
	p_bMag3AWEngageExtCtrl ACCESS p_Pneu2SMag3AWEngageExtCtrl;
	p_bMag3AWEngageRetCtrl ACCESS p_Pneu2SMag3AWEngageRetCtrl;
	p_bMag3AWEngageTwoCtrlOut ACCESS p_Pneu2SMag3AWEngageTwoCtrlOut;
	p_bMag3AWEngageExtended ACCESS p_Pneu2SMag3AWEngageExtended;
	p_bMag3AWEngageRetracted ACCESS p_Pneu2SMag3AWEngageRetracted;
			
	p_bAWPushOrPullerPrep ACCESS p_NtParamAWPushPulPrep;
	p_eAWPushOrPullerStat ACCESS p_AWPushOrPullerStat;
	p_eAWPushOrPullerStatus ACCESS p_AWPushOrPullerStatus;
	p_sAWPushOrPullerStatTxt ACCESS p_AWPushOrPullerStatTxt;
	p_udiAWPushOrPullerAxisErrID ACCESS p_AWPushOrPullerAxisErrID;
	p_bAWPushOrPullerAxisErr ACCESS p_AWPushOrPullerAxisErr;
	p_bAWPushOrPullerPwrOn ACCESS p_AWPushOrPullerPwrOn;
	p_bAWPushOrPullerIsHomed ACCESS p_AWPushOrPullerIsHomed;
	p_diAWPushOrPullerActualPos ACCESS p_AWPushOrPullerActualPos;
	p_bAWPushOrPullerFwdLmtSen ACCESS p_AWPushOrPullerFwdLmtSen;
	p_bAWPushOrPullerRevLmtSen ACCESS p_AWPushOrPullerRevLmtSen;
	p_sAWPushOrPullerAxisErrTxt ACCESS p_AWPushOrPullerAxisErrTxt;
	p_bAWPushOrPullerJogging ACCESS p_AWPushOrPullerJogging;
	p_bAWPushOrPullerOpenSen ACCESS p_AWPushOrPullerOpenSen;
	p_bAWPushOrPullerCloseSen ACCESS p_AWPushOrPullerCloseSen;
	
	p_eAWOpenStat ACCESS p_AWOpenStat;
	p_eAWOpenStatus ACCESS p_AWOpenStatus;
	p_sAWOpenStatTxt ACCESS p_AWOpenStatTxt;
	p_udiAWOpenAxisErrID ACCESS p_AWOpenAxisErrID;
	p_bAWOpenAxisErr ACCESS p_AWOpenAxisErr;
	p_bAWOpenPwrOn ACCESS p_AWOpenPwrOn;
	p_bAWOpenIsHomed ACCESS p_AWOpenIsHomed;
	p_diAWOpenActualPos ACCESS p_AWOpenActualPos;
	p_bAWOpenFwdLmtSen ACCESS p_AWOpenFwdLmtSen;
	p_bAWOpenRevLmtSen ACCESS p_AWOpenRevLmtSen;
	p_sAWOpenAxisErrTxt ACCESS p_AWOpenAxisErrTxt;
	p_bAWOpenJogging ACCESS p_AWOpenJogging;
	p_bAWOpenOpenSen ACCESS p_AWOpenOpenSen;
	p_bAWOpenCloseSen ACCESS p_AWOpenCloseSen;
	
	p_eLifterBtmStat ACCESS p_LifterBtmStat;
	p_eLifterBtmStatus ACCESS p_LifterBtmStatus;
	p_sLifterBtmStatTxt ACCESS p_LifterBtmStatTxt;
	p_bLifterBtmPwrOn ACCESS p_LifterBtmPwrOn;
	p_bLifterBtmIsHomed ACCESS p_LifterBtmIsHomed;
	p_bLifterBtmPosDiff ACCESS p_LifterBtmPosDiff;
	p_bLifterBtmAxisErr ACCESS p_LifterBtmAxisErr;
	p_udiLifterBtmAxisErrID ACCESS p_LifterBtmAxisErrID;
	p_sLifterBtmAxisErrTxt ACCESS p_LifterBtmAxisErrTxt;
	p_bLifterBtmFwdLmtSen ACCESS p_LifterBtmFwdLmtSen;
	p_bLifterBtmRevLmtSen ACCESS p_LifterBtmRevLmtSen;
	p_diLifterBtmActualPos ACCESS p_LifterBtmActualPos;
	p_bLifterBtmJogging ACCESS p_LifterBtmJogging;
	p_diLifterBtmCurrSltA ACCESS p_LifterBtmCurrSltA;
	p_diLifterBtmCurrSltB ACCESS p_LifterBtmCurrSltB;
	p_diLifterBtmCurrSltC ACCESS p_LifterBtmCurrSltC;
	p_bLifterBtmUpSen ACCESS p_LifterBtmUpSen;
	p_bLifterBtmDownSen ACCESS p_LifterBtmDownSen;
	p_bLifterBtmSltAPosDiff ACCESS p_LifterBtmSltAPosDiff;
		
	p_eLifter2Stat ACCESS p_Lifter2Stat;
	p_eLifter2Status ACCESS p_Lifter2Status;
	p_sLifter2StatTxt ACCESS p_Lifter2StatTxt;
	p_bLifter2PwrOn ACCESS p_Lifter2PwrOn;
	p_bLifter2IsHomed ACCESS p_Lifter2IsHomed;
	p_bLifter2PosDiff ACCESS p_Lifter2PosDiff;
	p_bLifter2AxisErr ACCESS p_Lifter2AxisErr;
	p_udiLifter2AxisErrID ACCESS p_Lifter2AxisErrID;
	p_sLifter2AxisErrTxt ACCESS p_Lifter2AxisErrTxt;
	p_bLifter2FwdLmtSen ACCESS p_Lifter2FwdLmtSen;
	p_bLifter2RevLmtSen ACCESS p_Lifter2RevLmtSen;
	p_diLifter2ActualPos ACCESS p_Lifter2ActualPos;
	p_bLifter2Jogging ACCESS p_Lifter2Jogging;
	p_diLifter2CurrSltA ACCESS p_Lifter2CurrSltA;
	p_diLifter2CurrSltB ACCESS p_Lifter2CurrSltB;
	p_diLifter2CurrSltC ACCESS p_Lifter2CurrSltC;
	p_bLifter2UpSen ACCESS p_Lifter2UpSen;
	p_bLifter2DownSen ACCESS p_Lifter2DownSen;
	p_bLifter2SltAPosDiff ACCESS p_Lifter2SltAPosDiff;

	p_eTravStat ACCESS p_TravStat;
	p_eTravStatus ACCESS p_TravStatus;
	p_sTravStatTxt	ACCESS p_TravStatTxt;
	p_bTravPwrOn ACCESS p_TravPwrOn;
	p_bTravIsHomed ACCESS p_TravIsHomed;
	p_bTravPosDiff ACCESS p_TravPosDiff;
	p_bTravAxisErr ACCESS p_TravAxisErr;
	p_udiTravAxisErrID ACCESS p_TravAxisErrID;
	p_sTravAxisErrTxt ACCESS p_TravAxisErrTxt;
	p_bTravFwdLmtSen ACCESS p_TravFwdLmtSen;
	p_bTravRevLmtSen ACCESS p_TravRevLmtSen;
	p_diTravActualPos ACCESS p_TravActualPos;
	p_bTravJogging ACCESS p_TravJogging;
	p_bTravFrontSen ACCESS p_TravFrontSen;
	p_bTravRearSen ACCESS p_TravRearSen;
	p_bTravAPosDiff ACCESS p_TravAPosDiff;
	p_bTravBPosDiff ACCESS p_TravBPosDiff;
	p_bTravCPosDiff ACCESS p_TravCPosDiff;
	p_bTravDPosDiff ACCESS p_TravDPosDiff;
	p_bTravEPosDiff ACCESS p_TravEPosDiff;
	p_bTravFPosDiff ACCESS p_TravFPosDiff;
	p_bTravGPosDiff ACCESS p_TravGPosDiff;
	p_bTravHPosDiff ACCESS p_TravHPosDiff;
	
	p_eMagAWOpen1Stat ACCESS p_MagAWOpen1Stat;
	p_eMagAWOpen1Status ACCESS p_MagAWOpen1Status;
	p_sMagAWOpen1StatTxt ACCESS p_MagAWOpen1StatTxt;
	p_udiMagAWOpen1AxisErrID ACCESS p_MagAWOpen1AxisErrID;
	p_bMagAWOpen1AxisErr ACCESS p_MagAWOpen1AxisErr;
	p_bMagAWOpen1PwrOn ACCESS p_MagAWOpen1PwrOn;
	p_bMagAWOpen1IsHomed ACCESS p_MagAWOpen1IsHomed;
	p_diMagAWOpen1ActualPos ACCESS p_MagAWOpen1ActualPos;
	p_bMagAWOpen1FwdLmtSen ACCESS p_MagAWOpen1FwdLmtSen;
	p_bMagAWOpen1RevLmtSen ACCESS p_MagAWOpen1RevLmtSen;
	p_sMagAWOpen1AxisErrTxt ACCESS p_MagAWOpen1AxisErrTxt;
	p_bMagAWOpen1Jogging ACCESS p_MagAWOpen1Jogging;
	p_bMagAWOpen1Engaging ACCESS p_MagAWOpen1Engaging;
	p_bMagAWOpen1OpenSen ACCESS p_MagAWOpen1OpenSen;
	p_bMagAWOpen1CloseSen ACCESS p_MagAWOpen1CloseSen;
	
	p_eMagAWOpen2Stat ACCESS p_MagAWOpen2Stat;
	p_eMagAWOpen2Status ACCESS p_MagAWOpen2Status;
	p_sMagAWOpen2StatTxt ACCESS p_MagAWOpen2StatTxt;
	p_udiMagAWOpen2AxisErrID ACCESS p_MagAWOpen2AxisErrID;
	p_bMagAWOpen2AxisErr ACCESS p_MagAWOpen2AxisErr;
	p_bMagAWOpen2PwrOn ACCESS p_MagAWOpen2PwrOn;
	p_bMagAWOpen2IsHomed ACCESS p_MagAWOpen2IsHomed;
	p_diMagAWOpen2ActualPos ACCESS p_MagAWOpen2ActualPos;
	p_bMagAWOpen2FwdLmtSen ACCESS p_MagAWOpen2FwdLmtSen;
	p_bMagAWOpen2RevLmtSen ACCESS p_MagAWOpen2RevLmtSen;
	p_sMagAWOpen2AxisErrTxt ACCESS p_MagAWOpen2AxisErrTxt;
	p_bMagAWOpen2Jogging ACCESS p_MagAWOpen2Jogging;
	p_bMagAWOpen2Engaging ACCESS p_MagAWOpen2Engaging;
	p_bMagAWOpen2OpenSen ACCESS p_MagAWOpen2OpenSen;
	p_bMagAWOpen2CloseSen ACCESS p_MagAWOpen2CloseSen;
	
	p_eMagAWOpen3Stat ACCESS p_MagAWOpen3Stat;
	p_eMagAWOpen3Status ACCESS p_MagAWOpen3Status;
	p_sMagAWOpen3StatTxt ACCESS p_MagAWOpen3StatTxt;
	p_udiMagAWOpen3AxisErrID ACCESS p_MagAWOpen3AxisErrID;
	p_bMagAWOpen3AxisErr ACCESS p_MagAWOpen3AxisErr;
	p_bMagAWOpen3PwrOn ACCESS p_MagAWOpen3PwrOn;
	p_bMagAWOpen3IsHomed ACCESS p_MagAWOpen3IsHomed;
	p_diMagAWOpen3ActualPos ACCESS p_MagAWOpen3ActualPos;
	p_bMagAWOpen3FwdLmtSen ACCESS p_MagAWOpen3FwdLmtSen;
	p_bMagAWOpen3RevLmtSen ACCESS p_MagAWOpen3RevLmtSen;
	p_sMagAWOpen3AxisErrTxt ACCESS p_MagAWOpen3AxisErrTxt;
	p_bMagAWOpen3Jogging ACCESS p_MagAWOpen3Jogging;
	p_bMagAWOpen3Engaging ACCESS p_MagAWOpen3Engaging;
	p_bMagAWOpen3OpenSen ACCESS p_MagAWOpen3OpenSen;
	p_bMagAWOpen3CloseSen ACCESS p_MagAWOpen3CloseSen;
	
	p_bLCSLFAccDataMnl ACCESS p_LCSLFAccDataMnl;
	
	p_tyDI ACCESS p_DI;
	
	p_eDOStat ACCESS p_DOStat;
	p_eDOStatus ACCESS p_DOStatus;
	p_sDOStatTxt ACCESS p_DOStatTxt;
	p_tyDO ACCESS p_DO;
	
	p_eHermesStat ACCESS p_HermesStat;
	p_eHermesStatus ACCESS p_HermesStatus;
	p_tyHermesConfiguration ACCESS p_HermesConfiguration;
	
	p_eUSHermesAStat ACCESS p_USHermesAStat;
	p_eUSHermesAStatus ACCESS p_USHermesAStatus;
	p_sUSHermesAStatTxt ACCESS p_USHermesAStatTxt;
	p_bUSHermesAUSRdy ACCESS p_USHermesAUSRdy;
	p_bUSHermesADSRdy ACCESS p_USHermesADSRdy;
	p_bUSHermesAUSGdRdy ACCESS p_USHermesAUSGdRdy;
	p_bUSHermesADSGdRdy ACCESS p_USHermesADSGdRdy;
	p_bUSHermesAConnected ACCESS p_USHermesAConnected;
	p_bUSHermesAAccDataMnl ACCESS p_USHermesAAccDataMnl;
	
	p_eUSHermesBStat ACCESS p_USHermesBStat;
	p_eUSHermesBStatus ACCESS p_USHermesBStatus;
	p_sUSHermesBStatTxt ACCESS p_USHermesBStatTxt;
	p_bUSHermesBUSRdy ACCESS p_USHermesBUSRdy;
	p_bUSHermesBDSRdy ACCESS p_USHermesBDSRdy;
	p_bUSHermesBUSGdRdy ACCESS p_USHermesBUSGdRdy;
	p_bUSHermesBDSGdRdy ACCESS p_USHermesBDSGdRdy;
	p_bUSHermesBConnected ACCESS p_USHermesBConnected;
	p_bUSHermesBAccDataMnl ACCESS p_USHermesBAccDataMnl;
	
	p_eLFLeaderStat ACCESS p_LFLeaderStat;
	p_eLFLeaderStatus ACCESS p_LFLeaderStatus;
	p_tyLFLeaderFollowerInfo ACCESS p_LFLeaderFollowerInfo;
	p_tyLFLeaderFollowerToLeaderTag ACCESS p_LFLeaderFollowerToLeaderTag;
	
	p_bLFFollowerProdAccDataMnl ACCESS p_LFFollowerProdAccDataMnl;
	
	p_bLCSLFAccDataMnl ACCESS p_LCSLFAccDataMnl;
	
	p_eOpsStat ACCESS p_OpsStat;
	p_eOpsStatus ACCESS p_OpsStatus;
	p_sOpsStatTxt ACCESS p_OpsStatTxt;
	p_eOpsOpsStatus ACCESS p_OpsOpsStatus;
	p_bOpsStatusRun ACCESS p_OpsStatusRun;
	p_bOpsStatusStop ACCESS p_OpsStatusStop;
	p_bOpsStatusCycleStop ACCESS p_OpsStatusCycleStop;
	p_bOpsStatusStep ACCESS p_OpsStatusStep;
	
	p_bOpsTravLifMov ACCESS p_OpsTravLifULTravLifMov;
	p_sOpsTravLifULStepTxt ACCESS p_OpsTravLifULStepTxt;
//	p_sOpsMagUL1StepTxt ACCESS p_OpsMagUL1StepTxt;
//	p_sOpsMagUL2StepTxt ACCESS p_OpsMagUL2StepTxt;
//	p_sOpsMagUL3StepTxt ACCESS p_OpsMagUL3StepTxt;
	p_sOpsMagConvUL1StepTxt ACCESS p_OpsMagConvUL1StepTxt;
	p_sOpsMagConvUL2StepTxt ACCESS p_OpsMagConvUL2StepTxt;
	p_sOpsMagConvUL3StepTxt ACCESS p_OpsMagConvUL3StepTxt;
	
	p_bOpsTravLifULInitConv ACCESS p_OpsTravLifULInitConv;
	p_bOpsMagConvUL1InitDone ACCESS p_OpsMagConvUL1InitDone;
	p_bOpsMagConvUL2InitDone ACCESS p_OpsMagConvUL2InitDone;
	p_bOpsMagConvUL3InitDone ACCESS p_OpsMagConvUL3InitDone;
	p_bOpsMagConvUL1MagExitedWait ACCESS p_OpsMagConvUL1StepMagExitedWait;
	p_bOpsMagConvUL2MagExitedWait ACCESS p_OpsMagConvUL2StepMagExitedWait;
	p_bOpsMagConvUL3MagExitedWait ACCESS p_OpsMagConvUL3StepMagExitedWait;
	p_bOpsMagConvUL1NewMagAllw ACCESS p_OpsMagConvUL1NewMagAllw;
	p_bOpsMagConvUL2NewMagAllw ACCESS p_OpsMagConvUL2NewMagAllw;
	p_bOpsMagConvUL3NewMagAllw ACCESS p_OpsMagConvUL3NewMagAllw;
	p_bOpsMagConvUL1RlsMagAllw ACCESS p_OpsMagConvUL1RlsMagAllw;
	p_bOpsMagConvUL2RlsMagAllw ACCESS p_OpsMagConvUL2RlsMagAllw;
	p_bOpsMagConvUL3RlsMagAllw ACCESS p_OpsMagConvUL3RlsMagAllw;
	p_bOpsMagConvUL1EjectMESStep ACCESS	p_OpsMagConvUL1EjectMESStep;
	p_bOpsMagConvUL2EjectMESStep ACCESS	p_OpsMagConvUL2EjectMESStep;
	p_bOpsMagConvUL3EjectMESStep ACCESS	p_OpsMagConvUL3EjectMESStep;
	p_bOpsMagConvUL1EjectMagNotAllw ACCESS p_OpsMagConvUL1EjectMagNotAllw;
	p_bOpsMagConvUL2EjectMagNotAllw ACCESS p_OpsMagConvUL2EjectMagNotAllw;
	p_bOpsMagConvUL3EjectMagNotAllw ACCESS p_OpsMagConvUL3EjectMagNotAllw;
	
	p_sOpsLifMagULStepTxt ACCESS p_OpsLifMagULStepTxt;
	p_sOpsLifMagULStepTxt1 ACCESS p_OpsLifMagULStepTxt1;
	p_bOpsLifMagULUnloading ACCESS p_OpsLifMagULUnloading;
	p_bOpsLifMagULStepIdle2 ACCESS p_OpsLifMagULStepIdle2;
	
	p_sOpsInMagConvStepTxt ACCESS p_OpsInMagConvStepTxt;
	p_sOpsInMagConvStepTxt1 ACCESS p_OpsInMagConvStepTxt1;
	p_sOpsOutMagConvStepTxt ACCESS p_OpsOutMagConvStepTxt;
	p_sOpsOutMagConvStepTxt1 ACCESS p_OpsOutMagConvStepTxt1;
	
	p_tyDTMagToAGV1 ACCESS p_AGVMag1DTMagToAGV;
	p_tyDTMagToAGV2 ACCESS p_AGVMag2DTMagToAGV;
	p_tyDTMagToAGV3 ACCESS p_AGVMag3DTMagToAGV;
	
	p_tyAGVToDTMag ACCESS p_AGVTagAGVToDTMag;
	p_bAGVOnline ACCESS p_AGVOnline;
	p_bMachineOnline ACCESS p_MachineOnline;
	p_tyDTMagToAGV ACCESS p_DTMagToAGV;
	p_bAGVSimulationOn ACCESS p_AGVSimulationOn;
	p_tyTagToMes ACCESS p_TagToMes;
	p_tyTagFromMes ACCESS p_TagFromMes;

	//Simulation
	p_eSimuStat ACCESS p_SimuStat;
	p_eSimuStatus ACCESS p_SimuStatus;
	
	p_eSimuSimuStatus ACCESS p_SimuSimuStatus;
	p_bSimuStatusRun ACCESS p_SimuStatusRun;
	p_bSimuStatusStop ACCESS p_SimuStatusStop;
	p_bSimuStatusCycleStop ACCESS p_SimuStatusCycleStop;
	p_bSimuStatusStep ACCESS p_SimuStatusStep;
	p_sNtParamJobNo ACCESS p_NtParamJobNo;
	p_usiNtParamNtAddr ACCESS p_NtParamNtAddr;
	p_eNtParamStat ACCESS p_NtParamStat;
	p_eNtParamStatus ACCESS p_NtParamStatus;
	p_diNtParamLifterAutoSpd ACCESS p_NtParamLifterAutoSpd;
	p_diNtParamTravAutoSpd ACCESS p_NtParamTravAutoSpd;
	
	p_eMtrPshrStat ACCESS p_MtrPshrStat;
	p_eMtrPshrStatus ACCESS p_MtrPshrStatus;
	p_sMtrPshrStatTxt ACCESS p_MtrPshrStatTxt;
	
	//MagConv
	p_eInMagConvStat ACCESS p_InMagConvStat;  
	p_eInMagConvStatus ACCESS p_InMagConvStatus;
	p_sInMagConvStatTxt ACCESS p_InMagConvStatTxt;
	p_eOutMagConvStat ACCESS p_OutMagConvStat;  
	p_eOutMagConvStatus ACCESS p_OutMagConvStatus;
	p_sOutMagConvStatTxt ACCESS p_OutMagConvStatTxt;
	p_bOpsOutMagConvStepInitDone ACCESS p_OpsOutMagConvStepInitDone;
	
	p_eInMagConv2Stat ACCESS p_InMagConv2Stat;  
	p_eInMagConv2Status ACCESS p_InMagConv2Status;
	p_sInMagConv2StatTxt ACCESS p_InMagConv2StatTxt;
	p_eOutMagConv2Stat ACCESS p_OutMagConv2Stat;  
	p_eOutMagConv2Status ACCESS p_OutMagConv2Status;
	p_sOutMagConv2StatTxt ACCESS p_OutMagConv2StatTxt;
	p_bOpsOutMagConv2StepInitDone ACCESS p_OpsOutMagConv2StepInitDone;
	
	// Lifter Magazine Conveyor
	p_eLifterMagConvStat ACCESS p_LifterMagConvStat;
	p_eLifterMagConvStatus ACCESS p_LifterMagConvStatus;
	p_sLifterMagConvStatTxt ACCESS p_LifterMagConvStatTxt;
	p_bLifterMagConvHvMag ACCESS p_LifterMagConvHvMag;
	p_bLifterMagConvMtrSigOnOrLToR ACCESS p_LifterMagConvMtrSigOnOrLToR;
	p_bLifterMagConvMtrDirOrRToL ACCESS p_LifterMagConvMtrDirOrRToL;
	p_bLifterMagConvClprClampCtrl ACCESS p_LifterMagConvClprClampCtrl;
	p_bLifterMagConvClprTwoCtrlOut ACCESS p_LifterMagConvClprTwoOutputCtrl;
	
	// Lifter Magazine Conveyor2
	p_eLifterMagConv2Stat ACCESS p_LifterMagConv2Stat;
	p_eLifterMagConv2Status ACCESS p_LifterMagConv2Status;
	p_sLifterMagConv2StatTxt ACCESS p_LifterMagConv2StatTxt;
	p_bLifterMagConv2HvMag ACCESS p_LifterMagConv2HvMag;
	p_bLifterMagConv2MtrSigOnOrLToR ACCESS p_LifterMagConv2MtrSigOnOrLToR;
	p_bLifterMagConv2MtrDirOrRToL ACCESS p_LifterMagConv2MtrDirOrRToL;
	p_bLifterMagConv2ClprClampCtrl ACCESS p_LifterMagConv2ClprClampCtrl;
	p_bLifterMagConv2ClprTwoCtrlOut ACCESS p_LifterMagConv2ClprTwoOutCtrl;

	//MagConv stopper
	p_eStopper1Stat ACCESS p_PneuNoSenTopEntStprStat;
	p_eStopper1Status ACCESS p_PneuNoSenTopEntStprStatus;
	p_sStopper1StatTxt ACCESS p_PneuNoSenTopEntStprStatTxt;
	p_bStopper1RetCtrl ACCESS p_PneuNoSenTopEntStprRetCtrl;
	p_bStopper1TwoCtrlOut ACCESS p_PneuNoSenTopEntStprTwoCtrlOut;
	p_eStopper2Stat ACCESS p_PneuNoSenTopMidStprStat;
	p_eStopper2Status ACCESS p_PneuNoSenTopMidStprStatus;
	p_sStopper2StatTxt ACCESS p_PneuNoSenTopMidStprStatTxt;
	p_bStopper2RetCtrl ACCESS p_PneuNoSenTopMidStprRetCtrl;
	p_bStopper2TwoCtrlOut ACCESS p_PneuNoSenTopMidStprTwoCtrlOut;
	p_eStopper3Stat ACCESS p_PneuNoSenTopExtStprStat;
	p_eStopper3Status ACCESS p_PneuNoSenTopExtStprStatus;
	p_sStopper3StatTxt ACCESS p_PneuNoSenTopExtStprStatTxt;
	p_bStopper3RetCtrl ACCESS p_PneuNoSenTopExtStprRetCtrl;
	p_bStopper3TwoCtrlOut ACCESS p_PneuNoSenTopExtStprTwoCtrlOut;
	p_eStopper4Stat ACCESS p_PneuNoSenBtmMidStprStat;
	p_eStopper4Status ACCESS p_PneuNoSenBtmMidStprStatus;
	p_sStopper4StatTxt ACCESS p_PneuNoSenBtmMidStprStatTxt;
	p_bStopper4RetCtrl ACCESS p_PneuNoSenBtmMidStprRetCtrl;
	p_bStopper4TwoCtrlOut ACCESS p_PneuNoSenBtmMidStprTwoCtrlOut;
	p_eStopper5Stat ACCESS p_PneuNoSenBtmExtStprStat;
	p_eStopper5Status ACCESS p_PneuNoSenBtmExtStprStatus;
	p_sStopper5StatTxt ACCESS p_PneuNoSenBtmExtStprStatTxt;
	p_bStopper5RetCtrl ACCESS p_PneuNoSenBtmExtStprRetCtrl;
	p_bStopper5TwoCtrlOut ACCESS p_PneuNoSenBtmExtStprTwoCtrlOut;

	p_eStopper1Stat2 ACCESS p_PneuNoSenTopEntStpr2Stat;
	p_eStopper1Status2 ACCESS p_PneuNoSenTopEntStpr2Status;
	p_sStopper1StatTxt2 ACCESS p_PneuNoSenTopEntStpr2StatTxt;
	p_bStopper1RetCtrl2 ACCESS p_PneuNoSenTopEntStpr2RetCtrl;
	p_bStopper1TwoCtrlOut2 ACCESS p_PneuNoSenTopEntStpr2TwoCtrlOut;
	p_eStopper2Stat2 ACCESS p_PneuNoSenTopMidStpr2Stat;
	p_eStopper2Status2 ACCESS p_PneuNoSenTopMidStpr2Status;
	p_sStopper2StatTxt2 ACCESS p_PneuNoSenTopMidStpr2StatTxt;
	p_bStopper2RetCtrl2 ACCESS p_PneuNoSenTopMidStpr2RetCtrl;
	p_bStopper2TwoCtrlOut2 ACCESS p_PneuNoSenTopMidStpr2TwoCtrlOut;
	p_eStopper3Stat2 ACCESS p_PneuNoSenTopExtStpr2Stat;
	p_eStopper3Status2 ACCESS p_PneuNoSenTopExtStpr2Status;
	p_sStopper3StatTxt2 ACCESS p_PneuNoSenTopExtStpr2StatTxt;
	p_bStopper3RetCtrl2 ACCESS p_PneuNoSenTopExtStpr2RetCtrl;
	p_bStopper3TwoCtrlOut2 ACCESS p_PneuNoSenTopExtStpr2TwoCtrlOut;
	p_eStopper4Stat2 ACCESS p_PneuNoSenBtmMidStpr2Stat;
	p_eStopper4Status2 ACCESS p_PneuNoSenBtmMidStpr2Status;
	p_sStopper4StatTxt2 ACCESS p_PneuNoSenBtmMidStpr2StatTxt;
	p_bStopper4RetCtrl2 ACCESS p_PneuNoSenBtmMidStpr2RetCtrl;
	p_bStopper4TwoCtrlOut2 ACCESS p_PneuNoSenBtmMidStpr2TwoCtrlOut;
	p_eStopper5Stat2 ACCESS p_PneuNoSenBtmExtStpr2Stat;
	p_eStopper5Status2 ACCESS p_PneuNoSenBtmExtStpr2Status;
	p_sStopper5StatTxt2 ACCESS p_PneuNoSenBtmExtStpr2StatTxt;
	p_bStopper5RetCtrl2 ACCESS p_PneuNoSenBtmExtStpr2RetCtrl;//
	p_bStopper5TwoCtrlOut2 ACCESS p_PneuNoSenBtmExtStpr2TwoCtrlOut;
	
	//Tcp
	p_bTCPConnected ACCESS p_TCPConnected;
	p_bTCPSvrUBA ACCESS p_TCPSvrUBA;
	p_bTCPSvrUBA2 ACCESS p_TCPSvrUBA2;
	p_bTCPSvrDSB ACCESS p_TCPSvrDSB;
	p_bTCPSvrDSB2 ACCESS p_TCPSvrDSB2;
	
	
	//new for Hermes 1.3
	p_bRmtUpdateUIData ACCESS p_RmtHermesUpdateUIData;//new for Hermes 1.3
	p_bSvyUpdateUIData ACCESS p_SvyHermesUpdateUIData;//new for Hermes 1.3
	p_bRcvBoardInfoOk ACCESS p_USHermesARcvBoardInfoOk;//new for Hermes 1.3
	p_bRcvBoardInfoIncompl ACCESS p_USHermesARcvbBoardInfoIncompl;//new for Hermes 1.3
	//p_bTransportFinished ACCESS p_DSHermesTransportFinishedSnd;//new for Hermes 1.3
	p_sWorkOrderId ACCESS p_SvyHermesWorkOrderId; //Work Order Id from SupervisoryHermes
	//p_bWaitDecision ACCESS p_StartupWaitDecision;//new for Hermes 1.3
	
	p_tySendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData;
	p_tySvyHermesSendWorkOrderData ACCESS p_SvyHermesSendWorkOrderData;
	p_tySvyHermesBypassSendWOData ACCESS p_SvyHermesBypassSendWOData;
	//p_bOpsConvWaitForTopUpBrd ACCESS p_OpsConvWaitForTopUpBrd;  
	//p_bAllZonesEmpty ACCESS p_DSHermesAllZonesEmpty;
	p_diReqLoaderWidthInUM ACCESS p_ReqLoaderWidthInUM;
	p_bQueryBypassWorkOrder ACCESS p_QueryBypassWorkOrder;
	p_bReplyBypassWorkOrderInfo ACCESS p_ReplyBypassWorkOrderInfo;
	p_bRcvWorkOrderInfo1 ACCESS p_RcvWorkOrderInfo1;
	//Pusher
	p_tyNtParamPPTorqParam  ACCESS p_NtParamPPTorqParam;
	
	pa_tyMagProps ACCESS p_diAutoRcpAllMagProps;
	pa_tyAutoRcpBrdProps ACCESS p_diAutoRcpBrdProps;
	p_bMcParamAutoRcpDisable ACCESS p_McParamAutoRcpDisable;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	
	
	p_iOpsMagConvUL1MESAcptCond ACCESS p_OpsMagConvUL1MESAcptCond;
	p_iOpsMagConvUL2MESAcptCond ACCESS p_OpsMagConvUL2MESAcptCond;
	p_iOpsMagConvUL3MESAcptCond ACCESS p_OpsMagConvUL3MESAcptCond;
	
	//DMCRFID
	p_bDIPCBScanComplSig	ACCESS p_DIPCBScanComplSig;
	
//	p_tySimu2DispCyclTmBffr1 ACCESS p_Simu2DispCyclTmBffr1;				
//	p_tySimu2DispCyclTmBffr2 ACCESS p_Simu2DispCyclTmBffr2;				
//	p_tySimu2DispCyclTmBffr3 ACCESS p_Simu2DispCyclTmBffr3;
END_ACTION
