#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Alarm/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

if((((unsigned long)(unsigned char)bInitDone==(unsigned long)(unsigned char)0))){
(bInitDone=1);

__AS__Action__Act_InitLocal();
__AS__Action__Act_InitGlobal();

}else if((((unsigned long)(unsigned char)bInitialDone==(unsigned long)(unsigned char)0))){
if((((unsigned long)(unsigned char)((*(p_bNtSettingsLoadDone)))==(unsigned long)(unsigned char)1))){
(bInitialDone=1);

__AS__Action__Act_Initial();
}

}else{

__AS__Action__Act_Background();
__AS__Action__Act_RstErr();
__AS__Action__Act_LinkAction();
__AS__Action__Act_Action();
__AS__Action__Act_Link();
__AS__Action__Act_Main();
__AS__Action__Act_Alarm();

}

}imp11_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_tyLinkUsrFolderAlmData=p_UsrFolderAlmData);
(p_tyLinkLibVerAlmData=p_LibVerAlmData);
(p_tyLinkTimeAlmData=p_TimeAlmData);
(p_tyLinkTimeAlmData1=p_TimeAlmData1);
(p_tyLinkHWInfoAlmData=p_HWInfoAlmData);
(p_tyLinkProdRcpAlmData=p_ProdRcpAlmData);
(p_tyLinkMpProdRcpAlmData=p_MpProdRcpAlmData);
(p_tyLinkMagRcpAlmData=p_MagRcpAlmData);
(p_tyLinkMcParamAlmData=p_McParamAlmData);
(p_tyLinkNtParamAlmData=p_NtParamAlmData);
(p_tyLinkUsrMgmtAlmData=p_UsrMgmtAlmData);
(p_tyLinkBuffer1AlmData=p_Buffer1AlmData);
(p_tyLinkBuffer2AlmData=p_Buffer2AlmData);
(p_tyLinkBuffer3AlmData=p_Buffer3AlmData);
(p_tyLinkUSSMEMAAAlmData=p_USSMEMAAAlmData);
(p_tyLinkUSSMEMABAlmData=p_USSMEMABAlmData);
(p_tyLinkUSSMEMA1AlmData=p_USSMEMA1AlmData);
(p_tyLinkUSSMEMA2AlmData=p_USSMEMA2AlmData);
(p_tyLinkUSSMEMA3AlmData=p_USSMEMA3AlmData);
(p_tyLinkDSSMEMA1AlmData=p_DSSMEMA1AlmData);
(p_tyLinkDSSMEMA2AlmData=p_DSSMEMA2AlmData);
(p_tyLinkDSSMEMA3AlmData=p_DSSMEMA3AlmData);
(p_tyLinkInShutterAlmData=p_Pneu2SenInShutterAlmData);
(p_tyLinkOutShutterAlmData=p_Pneu2SenOutShutterAlmData);
(p_tyLinkOutShutterAlmData2=p_Pneu2SenOutShutterAlmData2);
(p_tyLinkOutShutterAlmData3=p_Pneu2SenOutShutterAlmData3);
(p_tyLinkStopperAAlmData=p_PneuNoSenStopperAAlmData);
(p_tyLinkStopperBAlmData=p_PneuNoSenStopperBAlmData);
(p_tyLinkPshrConvAlmData=p_PshrConvAlmData);
(p_tyLinkMagConv1AlmData=p_MagConv2Clp1AlmData);
(p_tyLinkMagConv2AlmData=p_MagConv2Clp2AlmData);
(p_tyLinkMagConv3AlmData=p_MagConv2Clp3AlmData);
(p_tyLinkAWOpenAlmData=p_AWOpenAlmData);
(p_tyLinkAWOpenAlmData1=p_AWOpenAlmData1);
(p_tyLinkAWOpenAlmData2=p_AWOpenAlmData2);
(p_tyLinkAWOpenAlmData3=p_AWOpenAlmData3);
(p_tyLinkTravAlmData=p_TravAlmData);
(p_tyLinkTravAlmData1=p_TravAlmData1);
(p_tyLinkTravAlmData2=p_TravAlmData2);
(p_tyLinkTravAlmData3=p_TravAlmData3);
(p_tyLinkLifterBtmAlmData=p_LifterBtmAlmData);
(p_tyLinkLifterBtmAlmData1=p_LifterBtmAlmData1);
(p_tyLinkLifterBtmAlmData2=p_LifterBtmAlmData2);
(p_tyLinkLifterBtmAlmData3=p_LifterBtmAlmData3);
(p_tyLinkDIAlmData1=p_DIAlmData1);
(p_tyLinkDIAlmData2=p_DIAlmData2);
(p_tyLinkDIAlmData3=p_DIAlmData3);
(p_tyLinkDIAlmData4=p_DIAlmData4);
(p_tyLinkDIAlmData5=p_DIAlmData5);
(p_tyLinkDIAlmData6=p_DIAlmData6);
(p_tyLinkAGVMag1AlmData=p_AGVMag1AlmData);
(p_tyLinkAGVMag2AlmData=p_AGVMag2AlmData);
(p_tyLinkAGVMag3AlmData=p_AGVMag3AlmData);
(p_tyLinkHermesAlmData=p_HermesAlmData);
(p_tyLinkUSHermesAAlmData=p_USHermesAAlmData);
(p_tyLinkUSHermesAAlmData1=p_USHermesAAlmData1);
(p_tyLinkUSHermesAAlmData2=p_USHermesAAlmData2);
(p_tyLinkUSHermesAAlmData3=p_USHermesAAlmData3);
(p_tyLinkUSHermesAAlmData4=p_USHermesAAlmData4);
(p_tyLinkUSHermesAAlmData5=p_USHermesAAlmData5);
(p_tyLinkUSHermesAInfoData=p_USHermesAInfoData);
(p_tyLinkUSHermesBAlmData=p_USHermesBAlmData);
(p_tyLinkUSHermesBAlmData1=p_USHermesBAlmData1);
(p_tyLinkUSHermesBAlmData2=p_USHermesBAlmData2);
(p_tyLinkUSHermesBAlmData3=p_USHermesBAlmData3);
(p_tyLinkUSHermesBAlmData4=p_USHermesBAlmData4);
(p_tyLinkUSHermesBAlmData5=p_USHermesBAlmData5);
(p_tyLinkUSHermesBInfoData=p_USHermesBInfoData);
(p_tyLinkRmtHermesAlmData=p_RmtHermesAlmData);
(p_tyLinkRmtHermesAlmData1=p_RmtHermesAlmData1);
(p_tyLinkRmtHermesAlmData2=p_RmtHermesAlmData2);
(p_tyLinkRmtHermesAlmData3=p_RmtHermesAlmData3);

(p_tyLinkSvyHermesAlmData=p_SvyHermesAlmData);
(p_tyLinkSvyHermesAlmData1=p_SvyHermesAlmData1);
(p_tyLinkSvyHermesAlmData2=p_SvyHermesAlmData2);
(p_tyLinkSvyHermesAlmData3=p_SvyHermesAlmData3);
(p_tyLinkSvyHermesAlmData4=p_SvyHermesAlmData4);
(p_tyLinkSvyHermesInfoData=p_SvyHermesInfoData);
(p_tyLinkSvyHermesInfoData1=p_SvyHermesInfoData1);
(p_tyLinkSvyHermesInfoData2=p_SvyHermesInfoData2);
(p_tyLinkSvyHermesInfoData3=p_SvyHermesInfoData3);
(p_tyLinkSvyHermesInfoData4=p_SvyHermesInfoData4);


(p_tyLinkLFLeaderAlmData=p_LFLeaderAlmData);
(p_tyLinkLFFollowerAlmData=p_LFFollowerAlmData);
(p_tyLinkLFFollowerInfoData=p_LFFollowerInfoData);
(p_tyLinkLFFollowerInfoData1=p_LFFollowerInfoData1);
(p_tyLinkFollower1AlmData=p_Follower1AlmData);
(p_tyLinkFollower1InfoData=p_Follower1InfoData);
(p_tyLinkFollower1InfoData1=p_Follower1InfoData1);
(p_tyLinkFollower2AlmData=p_Follower2AlmData);
(p_tyLinkFollower2InfoData=p_Follower2InfoData);
(p_tyLinkFollower2InfoData1=p_Follower2InfoData1);
(p_tyLinkLCSMngRcpAlmData=p_LCSMngRcpAlmData);
(p_tyLinkLCSLFAlmData=p_LCSLFAlmData);
(p_tyLinkLCSLFInfoData=p_LCSLFInfoData);
(p_tyLinkOpsTravLifULAlmData=p_OpsTravLifULAlmData);






(p_tyLinkOpsLifMagULAlmData=p_OpsLifMagULAlmData);
(p_tyLinkOpsLifMagULAlmData1=p_OpsLifMagULAlmData1);
(p_tyLinkOpsLifMagULAlmData2=p_OpsLifMagULAlmData2);

(p_tyLinkOpsMagConvUL1AlmData=p_OpsMagConvUL1AlmData);
(p_tyLinkOpsMagConvUL1AlmData1=p_OpsMagConvUL1AlmData1);
(p_tyLinkOpsMagConvUL2AlmData=p_OpsMagConvUL2AlmData);
(p_tyLinkOpsMagConvUL2AlmData1=p_OpsMagConvUL2AlmData1);
(p_tyLinkOpsMagConvUL3AlmData=p_OpsMagConvUL3AlmData);
(p_tyLinkOpsMagConvUL3AlmData1=p_OpsMagConvUL3AlmData1);
(p_tyLinkMag1SafetyBarAlmData=p_Pneu2SMag1SafetyBarAlmData);
(p_tyLinkMag2SafetyBarAlmData=p_Pneu2SMag2SafetyBarAlmData);
(p_tyLinkMag3SafetyBarAlmData=p_Pneu2SMag3SafetyBarAlmData);
(p_tyLinkMag1AWEngageAlmData=p_Pneu2SMag1AWEngageAlmData);
(p_tyLinkMag2AWEngageAlmData=p_Pneu2SMag2AWEngageAlmData);
(p_tyLinkMag3AWEngageAlmData=p_Pneu2SMag3AWEngageAlmData);
(p_tyLinkMagAWOpen1AlmData=p_MagAWOpen1AlmData);
(p_tyLinkMagAWOpen1AlmData1=p_MagAWOpen1AlmData1);
(p_tyLinkMagAWOpen1AlmData2=p_MagAWOpen1AlmData2);
(p_tyLinkMagAWOpen1AlmData3=p_MagAWOpen1AlmData3);
(p_tyLinkMagAWOpen2AlmData=p_MagAWOpen2AlmData);
(p_tyLinkMagAWOpen2AlmData1=p_MagAWOpen2AlmData1);
(p_tyLinkMagAWOpen2AlmData2=p_MagAWOpen2AlmData2);
(p_tyLinkMagAWOpen2AlmData3=p_MagAWOpen2AlmData3);
(p_tyLinkMagAWOpen3AlmData=p_MagAWOpen3AlmData);
(p_tyLinkMagAWOpen3AlmData1=p_MagAWOpen3AlmData1);
(p_tyLinkMagAWOpen3AlmData2=p_MagAWOpen3AlmData2);
(p_tyLinkMagAWOpen3AlmData3=p_MagAWOpen3AlmData3);
(p_tyLinkMcAlarmData=p_McAlmData);
(p_tyLinkUSSOT1AlmData=p_USSOT1AlmData);
(p_tyLinkUSSOT2AlmData=p_USSOT2AlmData);
(p_tyLinkUSSOT3AlmData=p_USSOT3AlmData);
(p_tyLinkDSSOT1AlmData=p_DSSOT1AlmData);
(p_tyLinkDSSOT2AlmData=p_DSSOT2AlmData);
(p_tyLinkDSSOT3AlmData=p_DSSOT3AlmData);
(p_tyLinkMag1SelClampAlmData=p_PneuNoSenSelClamp1AlmData);
(p_tyLinkMag2SelClampAlmData=p_PneuNoSenSelClamp2AlmData);
(p_tyLinkMag3SelClampAlmData=p_PneuNoSenSelClamp3AlmData);
(p_tyLinkAGVAlmData1=p_AGVAlmData1);
(p_tyLinkAWPushOrPullerAlmData=p_AWPushOrPullerAlmData);
(p_tyLinkAWPushOrPullerAlmData1=p_AWPushOrPullerAlmData1);
(p_tyLinkAWPushOrPullerAlmData2=p_AWPushOrPullerAlmData2);
(p_tyLinkAWPushOrPullerAlmData3=p_AWPushOrPullerAlmData3);
(p_tyLinkMtrPshrAlmData=p_MtrPshrAlmData);


(p_tyLinkTopEntStprAlmData=p_PneuNoSenTopEntStprAlmData);
(p_tyLinkTopMidStprAlmData=p_PneuNoSenTopMidStprAlmData);
(p_tyLinkTopExtStprAlmData=p_PneuNoSenTopExtStprAlmData);
(p_tyLinkBtmMidStprAlmData=p_PneuNoSenBtmMidStprAlmData);
(p_tyLinkBtmExtStprAlmData=p_PneuNoSenBtmExtStprAlmData);
(p_tyLinkTopEntStpr2AlmData=p_PneuNoSenTopEntStpr2AlmData);
(p_tyLinkTopMidStpr2AlmData=p_PneuNoSenTopMidStpr2AlmData);
(p_tyLinkTopExtStpr2AlmData=p_PneuNoSenTopExtStpr2AlmData);
(p_tyLinkBtmMidStpr2AlmData=p_PneuNoSenBtmMidStpr2AlmData);
(p_tyLinkBtmExtStpr2AlmData=p_PneuNoSenBtmExtStpr2AlmData);

(p_tyLinkInMagConvAlmData=p_InMagConvAlmData);
(p_tyLinkOutMagConvAlmData=p_OutMagConvAlmData);
(p_tyLinkInMagConv2AlmData=p_InMagConv2AlmData);
(p_tyLinkOutMagConv2AlmData=p_OutMagConv2AlmData);
(p_tyLinkLifterMagConvAlmData=p_LifterMagConvAlmData);
(p_tyLinkLifterMagConv2AlmData=p_LifterMagConv2AlmData);

(p_bNtParamProjMagConvLane1Prep=p_NtParamProjMagConvLane1Prep);
(p_bNtParamProjMagConvLane2Prep=p_NtParamProjMagConvLane2Prep);
(p_tyLinkOpsInMagConvAlmData=p_OpsInMagConvAlmData);
(p_tyLinkOpsOutMagConvAlmData=p_OpsOutMagConvAlmData);

(p_bNtParamProjLifter2Prep=p_NtParamProjLifter2Prep);
(p_tyLinkLifter2AlmData=p_Lifter2AlmData);
(p_tyLinkLifter2AlmData1=p_Lifter2AlmData1);
(p_tyLinkLifter2AlmData2=p_Lifter2AlmData2);
(p_tyLinkLifter2AlmData3=p_Lifter2AlmData3);

(p_tyLinkPPAlmData=p_PPAlmData);
(p_tyLinkPPAlmData1=p_PPAlmData1);
(p_tyLinkPPAlmData2=p_PPAlmData2);
(p_tyLinkPPAlmData3=p_PPAlmData3);

(p_bNTParamTCPAGVSigPrep=p_NtParamProjTCPAGVSigPrep);
(p_tyLinkTCPAlmData=p_TCPAlmData);
(p_tyLinkTCPAlmData=p_TCPAlmData);
(p_tyLinkTCPAlmData1=p_TCPAlmData1);
(p_tyLinkTCPAlmData2=p_TCPAlmData2);
(p_tyLinkTCPAlmData3=p_TCPAlmData3);

(p_bNtParamTCPScannerPrep=p_NtParamProjScanPrep);
(p_tyLinkTCPTopAlmData=p_TCPTopAlmData);
(p_tyLinkTCPBtmAlmData=p_TCPBtmAlmData);


(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_tyLinkAutoRcpAlmData=p_AutoRcpAlmData);




(p_udiRstErr=p_RstErrReset);
(p_eAct=p_StartupAlarmAct);
(p_dtCurrDT=p_TimeCurrDT);
(p_udiFileKeepDay=p_NtParamAlmFileKeepDay);
(p_sProgNm=p_NtParamAlmProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);
(p_bStartupUISettingsLoadDone=p_StartupUISettingsLoadDone);




}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{


(fbDlyTmr.IN=1);;TON(&fbDlyTmr);
if(fbDlyTmr.Q){
(fbDeleteLogTmr.IN=1);;TON(&fbDeleteLogTmr);
if((fbDeleteLogTmr.Q&(((signed long)eStatus!=(signed long)2)))){
((*(p_eAct))=2);
if(((((signed long)eStat==(signed long)2))&(((signed long)eStatus==(signed long)1)))){
((*(p_eAct))=0);
(fbDlyTmr.IN=0);;TON(&fbDlyTmr);
(fbDeleteLogTmr.IN=0);;TON(&fbDeleteLogTmr);
}
}
}

}imp8_else2_0:imp8_end2_0:imp8_else1_0:imp8_end1_0:imp8_else0_0:imp8_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
































((*(pa_tyAlmData))[2-1]=*(struct tyAlmDat*)&((*(p_tyLinkUsrFolderAlmData))));
((*(pa_tyAlmData))[3-1]=*(struct tyAlmDat*)&((*(p_tyLinkLibVerAlmData))));
((*(pa_tyAlmData))[4-1]=*(struct tyAlmDat*)&((*(p_tyLinkTimeAlmData))));
((*(pa_tyAlmData))[5-1]=*(struct tyAlmDat*)&((*(p_tyLinkTimeAlmData1))));
((*(pa_tyAlmData))[6-1]=*(struct tyAlmDat*)&((*(p_tyLinkHWInfoAlmData))));
((*(pa_tyAlmData))[7-1]=*(struct tyAlmDat*)&((*(p_tyLinkProdRcpAlmData))));
((*(pa_tyAlmData))[8-1]=*(struct tyAlmDat*)&((*(p_tyLinkMpProdRcpAlmData))));
((*(pa_tyAlmData))[9-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagRcpAlmData))));
((*(pa_tyAlmData))[10-1]=*(struct tyAlmDat*)&((*(p_tyLinkMcParamAlmData))));
((*(pa_tyAlmData))[11-1]=*(struct tyAlmDat*)&((*(p_tyLinkNtParamAlmData))));
((*(pa_tyAlmData))[12-1]=*(struct tyAlmDat*)&((*(p_tyLinkUsrMgmtAlmData))));
((*(pa_tyAlmData))[13-1]=*(struct tyAlmDat*)&((*(p_tyLinkBuffer1AlmData))));
((*(pa_tyAlmData))[14-1]=*(struct tyAlmDat*)&((*(p_tyLinkBuffer2AlmData))));
((*(pa_tyAlmData))[15-1]=*(struct tyAlmDat*)&((*(p_tyLinkBuffer3AlmData))));
((*(pa_tyAlmData))[16-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSMEMAAAlmData))));
((*(pa_tyAlmData))[17-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSMEMABAlmData))));
((*(pa_tyAlmData))[18-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSMEMA1AlmData))));
((*(pa_tyAlmData))[19-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSMEMA2AlmData))));
((*(pa_tyAlmData))[20-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSMEMA3AlmData))));
((*(pa_tyAlmData))[21-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSMEMA1AlmData))));
((*(pa_tyAlmData))[22-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSMEMA2AlmData))));
((*(pa_tyAlmData))[23-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSMEMA3AlmData))));
((*(pa_tyAlmData))[24-1]=*(struct tyAlmDat*)&((*(p_tyLinkInShutterAlmData))));
((*(pa_tyAlmData))[25-1]=*(struct tyAlmDat*)&((*(p_tyLinkOutShutterAlmData))));
((*(pa_tyAlmData))[26-1]=*(struct tyAlmDat*)&((*(p_tyLinkStopperAAlmData))));
((*(pa_tyAlmData))[27-1]=*(struct tyAlmDat*)&((*(p_tyLinkStopperBAlmData))));
((*(pa_tyAlmData))[28-1]=*(struct tyAlmDat*)&((*(p_tyLinkPshrConvAlmData))));
((*(pa_tyAlmData))[29-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagConv1AlmData))));
((*(pa_tyAlmData))[30-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagConv2AlmData))));
((*(pa_tyAlmData))[31-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagConv3AlmData))));
((*(pa_tyAlmData))[32-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWOpenAlmData))));
((*(pa_tyAlmData))[33-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWOpenAlmData1))));
((*(pa_tyAlmData))[34-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWOpenAlmData2))));
((*(pa_tyAlmData))[35-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWOpenAlmData3))));
((*(pa_tyAlmData))[36-1]=*(struct tyAlmDat*)&((*(p_tyLinkTravAlmData))));
((*(pa_tyAlmData))[37-1]=*(struct tyAlmDat*)&((*(p_tyLinkTravAlmData1))));
((*(pa_tyAlmData))[38-1]=*(struct tyAlmDat*)&((*(p_tyLinkTravAlmData2))));
((*(pa_tyAlmData))[39-1]=*(struct tyAlmDat*)&((*(p_tyLinkTravAlmData3))));
((*(pa_tyAlmData))[40-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterBtmAlmData))));
((*(pa_tyAlmData))[41-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterBtmAlmData1))));
((*(pa_tyAlmData))[42-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterBtmAlmData2))));
((*(pa_tyAlmData))[43-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterBtmAlmData3))));
((*(pa_tyAlmData))[44-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData1))));
((*(pa_tyAlmData))[45-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData2))));
((*(pa_tyAlmData))[46-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData3))));
((*(pa_tyAlmData))[47-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData4))));
((*(pa_tyAlmData))[48-1]=*(struct tyAlmDat*)&((*(p_tyLinkAGVMag1AlmData))));
((*(pa_tyAlmData))[49-1]=*(struct tyAlmDat*)&((*(p_tyLinkAGVMag2AlmData))));
((*(pa_tyAlmData))[50-1]=*(struct tyAlmDat*)&((*(p_tyLinkAGVMag3AlmData))));
((*(pa_tyAlmData))[51-1]=*(struct tyAlmDat*)&((*(p_tyLinkHermesAlmData))));
((*(pa_tyAlmData))[52-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData))));
((*(pa_tyAlmData))[53-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData1))));
((*(pa_tyAlmData))[54-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData2))));
((*(pa_tyAlmData))[55-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData3))));
((*(pa_tyAlmData))[56-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData4))));
((*(pa_tyAlmData))[57-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAInfoData))));
((*(pa_tyAlmData))[58-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData))));
((*(pa_tyAlmData))[59-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData1))));
((*(pa_tyAlmData))[60-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData2))));
((*(pa_tyAlmData))[61-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData3))));
((*(pa_tyAlmData))[62-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData4))));
((*(pa_tyAlmData))[63-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBInfoData))));
((*(pa_tyAlmData))[64-1]=*(struct tyAlmDat*)&((*(p_tyLinkRmtHermesAlmData))));
((*(pa_tyAlmData))[65-1]=*(struct tyAlmDat*)&((*(p_tyLinkRmtHermesAlmData1))));
((*(pa_tyAlmData))[66-1]=*(struct tyAlmDat*)&((*(p_tyLinkRmtHermesAlmData2))));
((*(pa_tyAlmData))[67-1]=*(struct tyAlmDat*)&((*(p_tyLinkRmtHermesAlmData3))));
((*(pa_tyAlmData))[68-1]=*(struct tyAlmDat*)&((*(p_tyLinkLFLeaderAlmData))));
((*(pa_tyAlmData))[69-1]=*(struct tyAlmDat*)&((*(p_tyLinkLFFollowerAlmData))));
((*(pa_tyAlmData))[70-1]=*(struct tyAlmDat*)&((*(p_tyLinkLFFollowerInfoData))));
((*(pa_tyAlmData))[71-1]=*(struct tyAlmDat*)&((*(p_tyLinkLFFollowerInfoData1))));
((*(pa_tyAlmData))[72-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower1AlmData))));
((*(pa_tyAlmData))[73-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower1InfoData))));
((*(pa_tyAlmData))[74-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower1InfoData1))));
((*(pa_tyAlmData))[75-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower2AlmData))));
((*(pa_tyAlmData))[76-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower2InfoData))));
((*(pa_tyAlmData))[77-1]=*(struct tyAlmDat*)&((*(p_tyLinkFollower2InfoData1))));
((*(pa_tyAlmData))[78-1]=*(struct tyAlmDat*)&((*(p_tyLinkLCSMngRcpAlmData))));
((*(pa_tyAlmData))[79-1]=*(struct tyAlmDat*)&((*(p_tyLinkLCSLFAlmData))));
((*(pa_tyAlmData))[80-1]=*(struct tyAlmDat*)&((*(p_tyLinkLCSLFInfoData))));
((*(pa_tyAlmData))[81-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsTravLifULAlmData))));






((*(pa_tyAlmData))[82-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsLifMagULAlmData))));
((*(pa_tyAlmData))[83-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsLifMagULAlmData1))));
((*(pa_tyAlmData))[84-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsLifMagULAlmData2))));

((*(pa_tyAlmData))[88-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL1AlmData))));
((*(pa_tyAlmData))[89-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL1AlmData1))));
((*(pa_tyAlmData))[90-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL2AlmData))));
((*(pa_tyAlmData))[91-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL2AlmData1))));
((*(pa_tyAlmData))[92-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL3AlmData))));
((*(pa_tyAlmData))[93-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsMagConvUL3AlmData1))));
((*(pa_tyAlmData))[94-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesAAlmData5))));
((*(pa_tyAlmData))[95-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSHermesBAlmData5))));
((*(pa_tyAlmData))[96-1]=*(struct tyAlmDat*)&((*(p_tyLinkMcAlarmData))));
((*(pa_tyAlmData))[97-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag1SafetyBarAlmData))));
((*(pa_tyAlmData))[98-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag2SafetyBarAlmData))));
((*(pa_tyAlmData))[99-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag3SafetyBarAlmData))));
((*(pa_tyAlmData))[100-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag1AWEngageAlmData))));
((*(pa_tyAlmData))[101-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag2AWEngageAlmData))));
((*(pa_tyAlmData))[102-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag3AWEngageAlmData))));
((*(pa_tyAlmData))[103-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag1SafetyBarAlmData))));
((*(pa_tyAlmData))[104-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag2SafetyBarAlmData))));
((*(pa_tyAlmData))[105-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag3SafetyBarAlmData))));
((*(pa_tyAlmData))[106-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag1AWEngageAlmData))));
((*(pa_tyAlmData))[107-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag2AWEngageAlmData))));
((*(pa_tyAlmData))[108-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag3AWEngageAlmData))));
((*(pa_tyAlmData))[109-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen1AlmData))));
((*(pa_tyAlmData))[110-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen1AlmData1))));
((*(pa_tyAlmData))[111-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen1AlmData2))));
((*(pa_tyAlmData))[112-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen1AlmData3))));
((*(pa_tyAlmData))[113-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen2AlmData))));
((*(pa_tyAlmData))[114-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen2AlmData1))));
((*(pa_tyAlmData))[115-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen2AlmData2))));
((*(pa_tyAlmData))[116-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen2AlmData3))));
((*(pa_tyAlmData))[117-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen3AlmData))));
((*(pa_tyAlmData))[118-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen3AlmData1))));
((*(pa_tyAlmData))[119-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen3AlmData2))));
((*(pa_tyAlmData))[120-1]=*(struct tyAlmDat*)&((*(p_tyLinkMagAWOpen3AlmData3))));
((*(pa_tyAlmData))[121-1]=*(struct tyAlmDat*)&((*(p_tyLinkMcAlarmData))));
((*(pa_tyAlmData))[122-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSOT1AlmData))));
((*(pa_tyAlmData))[123-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSOT2AlmData))));
((*(pa_tyAlmData))[124-1]=*(struct tyAlmDat*)&((*(p_tyLinkUSSOT3AlmData))));
((*(pa_tyAlmData))[125-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSOT1AlmData))));
((*(pa_tyAlmData))[126-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSOT2AlmData))));
((*(pa_tyAlmData))[127-1]=*(struct tyAlmDat*)&((*(p_tyLinkDSSOT3AlmData))));
((*(pa_tyAlmData))[128-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag1SelClampAlmData))));
((*(pa_tyAlmData))[129-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag2SelClampAlmData))));
((*(pa_tyAlmData))[130-1]=*(struct tyAlmDat*)&((*(p_tyLinkMag3SelClampAlmData))));
((*(pa_tyAlmData))[131-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWPushOrPullerAlmData))));
((*(pa_tyAlmData))[132-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWPushOrPullerAlmData1))));
((*(pa_tyAlmData))[133-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWPushOrPullerAlmData2))));
((*(pa_tyAlmData))[134-1]=*(struct tyAlmDat*)&((*(p_tyLinkAWPushOrPullerAlmData3))));
((*(pa_tyAlmData))[135-1]=*(struct tyAlmDat*)&((*(p_tyLinkMtrPshrAlmData))));
((*(pa_tyAlmData))[136-1]=*(struct tyAlmDat*)&((*(p_tyLinkAGVAlmData1))));
((*(pa_tyAlmData))[150-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData5))));



if((((*(p_bNtParamProjMagConvLane1Prep)))&((*(p_bNtParamProjMagConvLane2Prep))))){
((*(pa_tyAlmData))[167-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsInMagConvAlmData))));
((*(pa_tyAlmData))[168-1]=*(struct tyAlmDat*)&((*(p_tyLinkOpsOutMagConvAlmData))));
}
if(((*(p_bNtParamProjMagConvLane1Prep)))){
((*(pa_tyAlmData))[151-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopEntStprAlmData))));
((*(pa_tyAlmData))[152-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopMidStprAlmData))));
((*(pa_tyAlmData))[153-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopExtStprAlmData))));
((*(pa_tyAlmData))[154-1]=*(struct tyAlmDat*)&((*(p_tyLinkBtmMidStprAlmData))));
((*(pa_tyAlmData))[155-1]=*(struct tyAlmDat*)&((*(p_tyLinkBtmExtStprAlmData))));
((*(pa_tyAlmData))[161-1]=*(struct tyAlmDat*)&((*(p_tyLinkInMagConvAlmData))));
((*(pa_tyAlmData))[162-1]=*(struct tyAlmDat*)&((*(p_tyLinkOutMagConvAlmData))));
((*(pa_tyAlmData))[165-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterMagConvAlmData))));
}
if(((*(p_bNtParamProjMagConvLane2Prep)))){
((*(pa_tyAlmData))[156-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopEntStpr2AlmData))));
((*(pa_tyAlmData))[157-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopMidStpr2AlmData))));
((*(pa_tyAlmData))[158-1]=*(struct tyAlmDat*)&((*(p_tyLinkTopExtStpr2AlmData))));
((*(pa_tyAlmData))[159-1]=*(struct tyAlmDat*)&((*(p_tyLinkBtmMidStpr2AlmData))));
((*(pa_tyAlmData))[160-1]=*(struct tyAlmDat*)&((*(p_tyLinkBtmExtStpr2AlmData))));
((*(pa_tyAlmData))[163-1]=*(struct tyAlmDat*)&((*(p_tyLinkInMagConv2AlmData))));
((*(pa_tyAlmData))[164-1]=*(struct tyAlmDat*)&((*(p_tyLinkOutMagConv2AlmData))));
((*(pa_tyAlmData))[166-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifterMagConv2AlmData))));
}
if(((*(p_bNtParamProjLifter2Prep)))){
((*(pa_tyAlmData))[169-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifter2AlmData))));
((*(pa_tyAlmData))[170-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifter2AlmData1))));
((*(pa_tyAlmData))[171-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifter2AlmData2))));
((*(pa_tyAlmData))[172-1]=*(struct tyAlmDat*)&((*(p_tyLinkLifter2AlmData3))));
}
((*(pa_tyAlmData))[173-1]=*(struct tyAlmDat*)&((*(p_tyLinkPPAlmData))));
((*(pa_tyAlmData))[174-1]=*(struct tyAlmDat*)&((*(p_tyLinkPPAlmData1))));
((*(pa_tyAlmData))[175-1]=*(struct tyAlmDat*)&((*(p_tyLinkPPAlmData2))));
((*(pa_tyAlmData))[176-1]=*(struct tyAlmDat*)&((*(p_tyLinkPPAlmData3))));
((*(pa_tyAlmData))[177-1]=*(struct tyAlmDat*)&((*(p_tyLinkDIAlmData6))));
((*(pa_tyAlmData))[178-1]=*(struct tyAlmDat*)&((*(p_tyLinkOutShutterAlmData2))));
((*(pa_tyAlmData))[179-1]=*(struct tyAlmDat*)&((*(p_tyLinkOutShutterAlmData3))));
if(((*(p_bNTParamTCPAGVSigPrep)))){
((*(pa_tyAlmData))[180-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPAlmData))));
((*(pa_tyAlmData))[181-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPAlmData1))));
((*(pa_tyAlmData))[182-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPAlmData2))));
((*(pa_tyAlmData))[183-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPAlmData3))));
}
if(((*(p_bNtParamTCPScannerPrep)))){
((*(pa_tyAlmData))[184-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPTopAlmData))));
((*(pa_tyAlmData))[185-1]=*(struct tyAlmDat*)&((*(p_tyLinkTCPBtmAlmData))));
}

((*(pa_tyAlmData))[186-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesAlmData))));
((*(pa_tyAlmData))[187-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesAlmData1))));
((*(pa_tyAlmData))[188-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesAlmData2))));
((*(pa_tyAlmData))[189-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesAlmData3))));
((*(pa_tyAlmData))[190-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesAlmData4))));
((*(pa_tyAlmData))[191-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesInfoData))));
((*(pa_tyAlmData))[192-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesInfoData1))));
((*(pa_tyAlmData))[193-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesInfoData2))));
((*(pa_tyAlmData))[194-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesInfoData3))));
((*(pa_tyAlmData))[195-1]=*(struct tyAlmDat*)&((*(p_tyLinkSvyHermesInfoData4))));

if(((*(p_bNtParamAutoRcpPrep)))){
((*(pa_tyAlmData))[195-1]=*(struct tyAlmDat*)&((*(p_tyLinkAutoRcpAlmData))));
}
}imp7_else6_0:imp7_end6_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}


if((((__AS__STRING_CMP(a_tyWarningCurrList[1-1].sMsg,"")!=0))&(((unsigned long)((*(p_tyLinkLibVerAlmData)).udiCode)==(unsigned long)0)))){

for((udi2=1);udi2<=(udiWarningMax-1);udi2+=1){
(udiRecorded1=udiRecorded[udi2-1]);
if(((((signed long)((*(pa_tyAlmData))[udiRecorded1-1].eSeverity)==(signed long)0))&(((unsigned long)udiRecorded1!=(unsigned long)0)))){
(bRstWarning=1);
goto imp10_endfor2_0;
}else{
(bRstWarning=0);
}

}imp10_endfor2_0:;
}else{
(bRstWarning=0);
}


}imp10_end1_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiCurrMax=((unsigned long)(&c_udiAlarmCurrMax)));
(p_udiHistoryMax=((unsigned long)(&c_udiAlarmHistoryMax)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_dtCurrDT=((unsigned long)(&dtCurrDT)));
(pa_tyAlmData=((unsigned long)(&a_tyAlmData)));
(p_udiFileKeepDay=((unsigned long)(&udiFileKeepDay)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDevice; plcstring* zzRValue=(plcstring*)"F"; for(zzIndex=0; zzIndex<1l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDirName; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDirName; plcstring* zzRValue=(plcstring*)"Alarm"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sDevice; plcstring* zzRValue=(plcstring*)"Alarm"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sDevice; plcstring* zzRValue=(plcstring*)"Alarm"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sPath; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sKeyword; plcstring* zzRValue=(plcstring*)"ALARM_"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileOldDel1.bEn=0);;fbFileOldDel(&fbFileOldDel1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sDevice; plcstring* zzRValue=(plcstring*)"Alarm"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sFile; plcstring* zzRValue=(plcstring*)"History.dat"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead1.udiOffset=0);
(fbFileRead1.p_Dest=((unsigned long)(&a_tyHistoryList)));
(fbFileRead1.udiLen=32400);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sDevice; plcstring* zzRValue=(plcstring*)"Alarm"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sFile; plcstring* zzRValue=(plcstring*)"History.dat"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite1.udiOffset=0);
(fbFileWrite1.p_Src=((unsigned long)(&a_tyHistoryList)));
(fbFileWrite1.udiLen=32400);
(fbFileWrite1.udiOption=0);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);

}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Action.st"
static void __AS__Action__Act_Action(void){
{

if(((((signed long)eStatus==(signed long)3))&bRstErr)){
((*(p_eAct))=0);
(eStat=0);
}


if(((((signed long)eStatus==(signed long)1))&(((signed long)((*(p_eAct)))==(signed long)0)))){
(eStat=0);
}


if((((signed long)eStatus==(signed long)0))){
(eStat=((*(p_eAct))));
}

}imp1_else2_0:imp1_end2_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Main.st"
static void __AS__Action__Act_Main(void){
{

switch(eStat){

case 0:{
if((((signed long)eStatus!=(signed long)0))){

(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);
(fbFileOldDel1.bEn=0);;fbFileOldDel(&fbFileOldDel1);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);
(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);
(usiStep=0);

(bHistoryFileNotFound=0);
(udiWriteLogCntr=1);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(usiStep){
case 0:{
(fbDirCreate1.bEn=1);;fbDirCreate(&fbDirCreate1);
if((((unsigned long)fbDirCreate1.udiStatus==(unsigned long)0))){
(usiStep=1);
}else if((((unsigned long)fbDirCreate1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbDirCreate1.udiStatus==(unsigned long)1908))){
(udiStatus=10000);
}else{
(udiStatus=fbDirCreate1.udiStatus);
}
}

}break;case 1:{
(fbDirCreate2.bEn=1);;fbDirCreate(&fbDirCreate2);
if((((unsigned long)fbDirCreate2.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbDirCreate2.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbDirCreate2.udiStatus==(unsigned long)1908))){
(udiStatus=10001);
}else{
(udiStatus=fbDirCreate2.udiStatus);
}
}

}break;}

}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbFileOldDel1.dtDTNow=((*(p_dtCurrDT))));
(fbFileOldDel1.udiFileKeepDay=((*(p_udiFileKeepDay))));
(fbFileOldDel1.bEn=1);;fbFileOldDel(&fbFileOldDel1);
if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileOldDel1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1910))){
(udiStatus=10002);
}else if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1911))){
(udiStatus=10003);
}else if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1912))){
(udiStatus=10004);
}else{
(udiStatus=fbFileOldDel1.udiStatus);
}
}

}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbFileRead1.bEn=1);;fbFileFullRead(&fbFileRead1);
if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileRead1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1900))){
(udiStatus=10005);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1902))){
(udiStatus=10006);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1904))){
(udiStatus=10007);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bHistoryFileNotFound=1);
}else{
(udiStatus=fbFileRead1.udiStatus);
}
}

}

}break;case 4:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);
if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10008);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10009);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10010);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10011);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10012);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}

}break;case 5:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(dtCurrDTTemp=((*(p_dtCurrDT))));
dt2str(dtCurrDTTemp,fbFileAppend1.sFile,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)MID(fbFileAppend1.sFile,10,4); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)CONCAT("ALARM_",fbFileAppend1.sFile); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)CONCAT(fbFileAppend1.sFile,".dat"); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbFileAppend1.p_Src=((unsigned long)(&a_sLogList[udiWriteLogCntr-1])));
(fbFileAppend1.udiLen=LEN(a_sLogList[udiWriteLogCntr-1]));

(fbFileAppend1.bEn=1);;fbFileFullAppend(&fbFileAppend1);
if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)0))){
if((((unsigned long)udiWriteLogCntr>=(unsigned long)udiLogCntr))){
(eStatus=1);
}else{
(udiWriteLogCntr=(udiWriteLogCntr+1));
(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
}

}else if((((unsigned long)fbFileAppend1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1900))){
(udiStatus=10013);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1901))){
(udiStatus=10014);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1913))){
(udiStatus=10015);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1903))){
(udiStatus=10016);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1904))){
(udiStatus=10017);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1914))){
(udiStatus=10018);
}else{
(udiStatus=fbFileAppend1.udiStatus);
}
}

}

}break;case 6:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
switch(usiStep){
case 0:{
(dtCurrDTTemp=((*(p_dtCurrDT))));
dt2str(dtCurrDTTemp,fbFileAppend1.sFile,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)MID(fbFileAppend1.sFile,10,4); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)CONCAT("ALARM_",fbFileAppend1.sFile); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sFile; plcstring* zzRValue=(plcstring*)CONCAT(fbFileAppend1.sFile,".dat"); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sLogString; plcstring* zzRValue=(plcstring*)a_sLogList[udiWriteLogCntr-1]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbFileAppend1.p_Src=((unsigned long)(&sLogString)));
(fbFileAppend1.udiLen=LEN(sLogString));
(usiStep=1);

}break;case 1:{
(fbFileAppend1.bEn=1);;fbFileFullAppend(&fbFileAppend1);
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);
}break;}
if(((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)0))&(((unsigned long)udiWriteLogCntr>=(unsigned long)udiLogCntr))&(((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0)))){
(eStatus=1);

}else if(((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)0))&(((unsigned long)udiWriteLogCntr<(unsigned long)udiLogCntr)))){
(udiWriteLogCntr=(udiWriteLogCntr+1));
(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
(usiStep=0);
}else if(((((unsigned long)fbFileWrite1.udiStatus>(unsigned long)0))&(((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534)))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10019);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10020);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10021);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10022);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10023);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}

}else if(((((unsigned long)fbFileAppend1.udiStatus>(unsigned long)0))&(((unsigned long)fbFileAppend1.udiStatus<(unsigned long)65534)))){
(eStatus=3);

if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1900))){
(udiStatus=10024);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1901))){
(udiStatus=10025);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1913))){
(udiStatus=10026);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1903))){
(udiStatus=10027);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1904))){
(udiStatus=10028);
}else if((((unsigned long)fbFileAppend1.udiStatus==(unsigned long)1914))){
(udiStatus=10029);
}else{
(udiStatus=fbFileAppend1.udiStatus);
}
}

}

}break;case 7:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

__AS__MEMSET(((unsigned long)(&a_tyHistoryList)),0,32400);

(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);
if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10030);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10031);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10032);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10033);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10034);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}

}break;case 8:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(bAlarmLog=1);
(eStatus=1);

}

}break;case 9:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(bAlarmLog=0);
(eStatus=1);

}

}break;}

}imp9_case0_9:imp9_endcase0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
((*(pa_tyAlmData))[1-1]=*(struct tyAlmDat*)&tyAlmData);

if((((unsigned long)(unsigned char)bRstErr==(unsigned long)(unsigned char)1))){

(bErr=0);
(bWarning=0);


__AS__MEMSET(((unsigned long)(&a_tyWarningCurrList)),0,83200);
(udiWarningMax=1);

__AS__MEMSET(((unsigned long)(&a_tyCurrList)),0,83200);
__AS__MEMSET(((unsigned long)(&a_sRecoveryList)),0,40200);
__AS__MEMSET(((unsigned long)(&a_udiRecoveryList)),0,800);


(udiAlmCntr=0);

(bAlmUpdt=0);

}

if((((unsigned long)(unsigned char)bRstWarning==(unsigned long)(unsigned char)1))){

if(((((unsigned long)(unsigned char)bErr==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bWarning==(unsigned long)(unsigned char)1)))){

__AS__MEMSET(((unsigned long)(&a_tyWarningCurrList)),0,83200);
(udiWarningMax=1);

__AS__MEMSET(((unsigned long)(&a_tyCurrList)),0,83200);
__AS__MEMSET(((unsigned long)(&a_sRecoveryList)),0,40200);
__AS__MEMSET(((unsigned long)(&a_udiRecoveryList)),0,800);
(udiAlmCntr=0);
(bWarning=0);
}

(bAlmUpdt=0);

}


if(((((unsigned long)(unsigned char)bAlarmLog==(unsigned long)(unsigned char)1))&((*(p_bStartupUISettingsLoadDone))))){

if(((((unsigned long)(unsigned char)bAlmUpdt==(unsigned long)(unsigned char)0))|(((signed long)eStatus==(signed long)3)))){


(bInfo=0);
(bInfoLF=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sInfoMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(iInfoCntr=0);

for((udi=1);udi<=((*(p_udiCurrMax)));udi+=1){


if(((((unsigned long)((*(pa_tyAlmData))[udi-1].udiRunTime)!=(unsigned long)a_udiRunTimeOld[udi-1]))&(((unsigned long)((*(pa_tyAlmData))[udi-1].udiCode)!=(unsigned long)0))&(((signed long)((*(pa_tyAlmData))[udi-1].eSeverity)==(signed long)1)))){


(a_udiRunTimeOld[udi-1]=((*(pa_tyAlmData))[udi-1].udiRunTime));

(bAlmUpdt=1);

(udiAlmCntr=(udiAlmCntr+1));
if((((unsigned long)udiAlmCntr>(unsigned long)((*(p_udiCurrMax)))))){
(udiAlmCntr=((*(p_udiCurrMax))));
}

(udiLogCntr=(udiLogCntr+1));
if((((unsigned long)udiLogCntr>(unsigned long)((*(p_udiCurrMax)))))){
(udiLogCntr=((*(p_udiCurrMax))));
}

fLogDTConvert(((unsigned long)(&sDT)),((*(p_dtCurrDT))));
(udiErrorCode=((((*(pa_tyAlmData))[udi-1].udiCode)-10000)+((*(pa_tyAlmData))[udi-1].udiModuleNum)));



(a_tyCurrList[udiAlmCntr-1].eSeverity=((*(pa_tyAlmData))[udi-1].eSeverity));
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyCurrList[udiAlmCntr-1].sProgNm; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sProgNm); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyCurrList[udiAlmCntr-1].sDT; plcstring* zzRValue=(plcstring*)sDT; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


(a_tyCurrList[udiAlmCntr-1].udiErrorCode=udiErrorCode);
(a_tyCurrList[udiAlmCntr-1].bAlm=((*(pa_tyAlmData))[udi-1].bAlm));


{int zzIndex; plcstring* zzLValue=(plcstring*)a_sRecoveryList[udiAlmCntr-1]; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sRcyMsg); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(a_udiRecoveryList[udiAlmCntr-1]=udiErrorCode);


memmove(((unsigned long)(&a_tyHistoryList[2-1])),((unsigned long)(&a_tyHistoryList[1-1])),(108*(((*(p_udiHistoryMax)))-1)));

{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[1-1].sProgNm; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sProgNm); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[1-1].sDT; plcstring* zzRValue=(plcstring*)sDT; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(a_tyHistoryList[1-1].udiModErrCode=((*(pa_tyAlmData))[udi-1].udiCode));
(a_tyHistoryList[1-1].udiErrorCode=udiErrorCode);



fLogAlmDispMsg(((unsigned long)(&sAlmMsg)),((*(p_dtCurrDT))),((*(pa_tyAlmData))[udi-1].sProgNm),((*(pa_tyAlmData))[udi-1].udiCode),((*(pa_tyAlmData))[udi-1].sAlmMsg));
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sLogList[udiLogCntr-1]; plcstring* zzRValue=(plcstring*)sAlmMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sLogList[udiLogCntr-1]; plcstring* zzRValue=(plcstring*)CONCAT(a_sLogList[udiLogCntr-1],"\r\n"); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if((((signed long)((*(pa_tyAlmData))[udi-1].eSeverity)==(signed long)1))){
(bErr=1);
}



}else if(((((signed long)((*(pa_tyAlmData))[udi-1].eSeverity)==(signed long)2))&(((unsigned long)((*(pa_tyAlmData))[udi-1].udiCode)!=(unsigned long)0)))){



__AS__MEMSET(((unsigned long)(&sWarningCompareMsg)),0,301);

{int zzIndex; plcstring* zzLValue=(plcstring*)sWarningCompareMsg; plcstring* zzRValue=(plcstring*)CONCAT(sWarningCompareMsg,((*(pa_tyAlmData))[udi-1].sProgNm)); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sWarningCompareMsg; plcstring* zzRValue=(plcstring*)CONCAT(sWarningCompareMsg," | "); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
udint2str(((*(pa_tyAlmData))[udi-1].udiCode),sWarningID,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)sWarningCompareMsg; plcstring* zzRValue=(plcstring*)CONCAT(sWarningCompareMsg,sWarningID); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sWarningCompareMsg; plcstring* zzRValue=(plcstring*)CONCAT(sWarningCompareMsg," | "); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sWarningCompareMsg; plcstring* zzRValue=(plcstring*)CONCAT(sWarningCompareMsg,((*(pa_tyAlmData))[udi-1].sAlmMsg)); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


for((udi1=0);udi1<=udiWarningMax;udi1+=1){
(WarningListOccur=(((signed long)memcmp(((unsigned long)(&sWarningCompareMsg)),((unsigned long)(&a_tyWarningCurrList[udi1-1].sMsg)),301)==(signed long)0)));

if(WarningListOccur){
goto imp3_endfor10_0;
}

}imp3_endfor10_0:;


if((((unsigned long)(unsigned char)WarningListOccur==(unsigned long)(unsigned char)0))){

(bAlmUpdt=1);
(udiWarningMax=(udiWarningMax+1));

(udiAlmCntr=(udiAlmCntr+1));

if((((unsigned long)udiAlmCntr>(unsigned long)((*(p_udiCurrMax)))))){
(udiAlmCntr=((*(p_udiCurrMax))));
}

(udiRecorded[(udiWarningMax-1)-1]=udi);

(udiLogCntr=(udiLogCntr+1));

if((((unsigned long)udiLogCntr>(unsigned long)((*(p_udiCurrMax)))))){
(udiLogCntr=((*(p_udiCurrMax))));
}


{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyWarningCurrList[(udiWarningMax-1)-1].sMsg; plcstring* zzRValue=(plcstring*)sWarningCompareMsg; for(zzIndex=0; zzIndex<300l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


fLogDTConvert(((unsigned long)(&sDT)),((*(p_dtCurrDT))));
(udiErrorCode=((((*(pa_tyAlmData))[udi-1].udiCode)-10000)+((*(pa_tyAlmData))[udi-1].udiModuleNum)));


(a_tyCurrList[udiAlmCntr-1].eSeverity=((*(pa_tyAlmData))[udi-1].eSeverity));
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyCurrList[udiAlmCntr-1].sProgNm; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sProgNm); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyCurrList[udiAlmCntr-1].sDT; plcstring* zzRValue=(plcstring*)sDT; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(a_tyCurrList[udiAlmCntr-1].udiModErrCode=((*(pa_tyAlmData))[udi-1].udiCode));


(a_tyCurrList[udiAlmCntr-1].udiErrorCode=udiErrorCode);
(a_tyCurrList[udiAlmCntr-1].bWarning=((*(pa_tyAlmData))[udi-1].bWarning));


{int zzIndex; plcstring* zzLValue=(plcstring*)a_sRecoveryList[udiAlmCntr-1]; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sRcyMsg); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(a_udiRecoveryList[udiAlmCntr-1]=udiErrorCode);


memmove(((unsigned long)(&a_tyHistoryList[2-1])),((unsigned long)(&a_tyHistoryList[1-1])),(108*(((*(p_udiHistoryMax)))-1)));

{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[1-1].sProgNm; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sProgNm); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[1-1].sDT; plcstring* zzRValue=(plcstring*)sDT; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(a_tyHistoryList[1-1].udiModErrCode=((*(pa_tyAlmData))[udi-1].udiCode));
(a_tyHistoryList[1-1].udiErrorCode=udiErrorCode);



fLogAlmDispMsg(((unsigned long)(&sWarningMsg)),((*(p_dtCurrDT))),((*(pa_tyAlmData))[udi-1].sProgNm),((*(pa_tyAlmData))[udi-1].udiCode),((*(pa_tyAlmData))[udi-1].sAlmMsg));

{int zzIndex; plcstring* zzLValue=(plcstring*)a_sLogList[udiLogCntr-1]; plcstring* zzRValue=(plcstring*)sWarningMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sLogList[udiLogCntr-1]; plcstring* zzRValue=(plcstring*)CONCAT(a_sLogList[udiLogCntr-1],"\r\n"); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(bWarning=1);

}



}else if(((((unsigned long)((*(pa_tyAlmData))[udi-1].udiCode)!=(unsigned long)0))&(((signed long)((*(pa_tyAlmData))[udi-1].eSeverity)==(signed long)3)))){

(iInfoCntr=(iInfoCntr+1));

if((((signed long)(signed long)(short)iInfoCntr==(signed long)(signed long)(short)1))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sInfoMsg; plcstring* zzRValue=(plcstring*)((*(pa_tyAlmData))[udi-1].sAlmMsg); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((__AS__STRING_CMP(((*(pa_tyAlmData))[udi-1].sProgNm),"Follower")==0))&((__AS__STRING_CMP(((*(pa_tyAlmData))[udi-1].sAlmMsg),"")!=0)))){

(bInfoLF=1);
(bInfo=1);

}else{
(bInfoLF=0);
(bInfo=1);
}


}else if((((signed long)(signed long)(short)iInfoCntr==(signed long)(signed long)(short)2))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sInfoMsg; plcstring* zzRValue=(plcstring*)CONCAT(sInfoMsg,"\r\n\r\n"); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sInfoMsg; plcstring* zzRValue=(plcstring*)CONCAT(sInfoMsg,((*(pa_tyAlmData))[udi-1].sAlmMsg)); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}

}imp3_endfor5_0:;

}else{

((*(p_eAct))=6);
if(((((signed long)eStatus==(signed long)1))&(((signed long)eStat==(signed long)6)))){
((*(p_eAct))=0);
(bAlmUpdt=0);
(udiLogCntr=0);
}

}

}

}imp3_else17_0:imp3_end17_0:imp3_end4_0:imp3_else3_0:imp3_end3_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sAlarmProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)tyAlmData.sAlmMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((bRstErr&(((unsigned long)tyAlmData.udiCode!=(unsigned long)0)))){

(tyAlmData.udiCode=0);
(tyAlmData.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.bAlm=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp2_else0_1:imp2_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.nodebug"

void __AS__ImplInitCyclic_st(void){}

signed long __AS__STRING_CMP(char* pstr1, char* pstr2)
{while (*pstr1 != 0 && *pstr1 == *pstr2){ pstr1++;pstr2++; } return (*pstr1 == 0 && *pstr2 != 0) ? -1 : (*pstr1 != 0 && *pstr2 == 0) ? 1 : *pstr1 - *pstr2;}

unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length)
{memset((char*)pDest, value, length); return pDest + length;}

__asm__(".section \".plc\"");
__asm__(".ascii \"iecfile \\\"Logical/UI/UI.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/General/General.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/UsrFolder/UsrFolder.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LibVer/LibVer.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Time/Time.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/HWInfo/HWInfo.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TLBuz/TLBuz.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/RstErr/RstErr.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/ProdRcp/ProdRcp.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MpProdRcp/MpProdRcp.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagRcp/MagRcp.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/McParam/McParam.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtParam/NtParam.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/UsrMgmt/UsrMgmt.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/OvenInfo/OvenInfo.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/SMEMA.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/MagConv.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Conv/Conv.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/CANOpenServo.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/AW/AW.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Trav/Trav.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Lifter/Lifter.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/MagAW/MagAW.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/PullerPusher/PullerPusher.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LF/LF.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCS.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/Operations.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsInMagConv.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsOutMagConv.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simulation.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu1.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu2.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/SOT.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/OpCon/OpCon.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpComError.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipe.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipeAlarm.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipeError.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Acp10man/Acp10man.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLogFile/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMem/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMessage/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRS232/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSMEMA/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTLBuz/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMotion/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRecipe/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtGeneral/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtUI/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOPCUA/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/NtBuffer.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/NtConv.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLogFile/NtLogFile.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMem/NtMem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMessage/NtMessage.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOvenInfo/NtOvenInfo.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRS232/NtRS232.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSMEMA/NtSMEMA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/NtTCP.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTLBuz/NtTLBuz.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/NtVersion.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/NtSOT.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/NtLF.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMotion/NtMotion.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRecipe/NtRecipe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtGeneral/NtGeneral.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtUI/NtUI.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/NtHermes.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/NtOpConXML.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOPCUA/NtOPCUA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SoftwareVersion.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/UI/UI.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/General/General.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/UsrFolder/UsrFolder.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LibVer/LibVer.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Time/Time.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/HWInfo/HWInfo.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TLBuz/TLBuz.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/RstErr/RstErr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/ProdRcp/ProdRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MpProdRcp/MpProdRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagRcp/MagRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/McParam/McParam.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtParam/NtParam.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/UsrMgmt/UsrMgmt.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/OvenInfo/OvenInfoA.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/OvenInfo/OvenInfoB.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/BufferMagA.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/BufferMagB.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/USSMEMAA.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/USSMEMAB.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/USSMEMA1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/USSMEMA2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/USSMEMA3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/DSSMEMA1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/DSSMEMA2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/DSSMEMA3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenInShutter.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenOutShutter.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/PneuNoSenStopperA.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/PneuNoSenStopperB.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/PneuNoSenStopperC.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenSelClamp1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenSelClamp2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenSelClamp3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag1SafetyBar.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag2SafetyBar.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag3SafetyBar.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag1AWEngage.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag2AWEngage.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenMag3AWEngage.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopEntStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopMidStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopExtStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenBtmMidStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenBtmExtStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopEntStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopMidStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenTopExtStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenBtmMidStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/MagConv_Stopper/PneuNoSenBtmExtStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenOutShutter2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/Pneu2SenOutShutter3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Pneu/PneuNoSenInletStopper.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/InMagConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/OutMagConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/LifterMagConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/InMagConv2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/OutMagConv2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/LifterMagConv2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Conv/PshrConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/AW/AWOpen.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/AW/AWPushOrPuller.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Trav/Trav.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Lifter/LifterBtm.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Lifter/Lifter2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/MagAW/MagAWOpen1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/MagAW/MagAWOpen2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/MagAW/MagAWOpen3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/PullerPusher/PullerPusher.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/USHermesA.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/USHermesB.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/RmtHermes.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/SvyHermes.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LF/LFLeader.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LF/LFFollower.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LF/Follower1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LF/Follower2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCS.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCSMngRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCSLF.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/Ops.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsPosAllwGo.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsInMagConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsOutMagConv.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Machine/Machine.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/USSOT1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/DSSOT1.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/USSOT2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/DSSOT2.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/USSOT3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/SOT/DSSOT3.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPTop.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPBtm.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/OpCon/OpCon.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Includes/AS_TempDecl/3Mag_UL_SOT_MPuller3/GlobalComponents/MpComponents.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Acp10par/Acp10par.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/Constant.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Alarm/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Alarm/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Alarm/Alarm/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Alarm/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'a_tyCurrList'\\n\"");
__asm__(".ascii \"plcdata_const 'a_sRecoveryList'\\n\"");
__asm__(".ascii \"plcdata_const 'a_udiRecoveryList'\\n\"");
__asm__(".ascii \"plcdata_const 'sWarningCompareMsg'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyWarningCurrList'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyHistoryList'\\n\"");
__asm__(".ascii \"plcdata_const 'c_udiAlarmCurrMax'\\n\"");
__asm__(".ascii \"plcdata_const 'c_udiAlarmHistoryMax'\\n\"");
__asm__(".previous");
