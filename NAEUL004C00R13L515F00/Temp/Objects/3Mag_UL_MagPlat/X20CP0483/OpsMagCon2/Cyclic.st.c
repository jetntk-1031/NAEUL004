#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsMagCon2/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.st"
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

__AS__Action__Act_RstErr();
__AS__Action__Act_LinkEn();
__AS__Action__Act_Link();
__AS__Action__Act_Background();
__AS__Action__Act_Alarm();
__AS__Action__Act_AlarmInfo1();

}

}imp15_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkDIMagPresentSen1=p_DIMagPresentSen1);
(p_bLinkMagConv2Clp1MtrIn=p_MagConv2Clp1MtrSigOnOrLToR);
(p_bLinkMagConv2Clp1MtrOut=p_MagConv2Clp1MtrDirOrRToL);
(p_bLinkDIMagPresentSen2=p_DIMagPresentSen2);
(p_bLinkMagConv2Clp2MtrIn=p_MagConv2Clp2MtrSigOnOrLToR);
(p_bLinkMagConv2Clp2MtrOut=p_MagConv2Clp2MtrDirOrRToL);
(p_bLinkDIMagPresentSen3=p_DIMagPresentSen3);
(p_bLinkMagConv2Clp3MtrIn=p_MagConv2Clp3MtrSigOnOrLToR);
(p_bLinkMagConv2Clp3MtrOut=p_MagConv2Clp3MtrDirOrRToL);

(p_bLinkFixedMagClampRS1=p_DIMag1FixedClampRS);
(p_bLinkRmtMagClampRS1=p_DIMag1RemoteClampRS);

(p_bLinkFixedMagClampRS2=p_DIMag2FixedClampRS);
(p_bLinkRmtMagClampRS2=p_DIMag2RemoteClampRS);

(p_bLinkFixedMagClampRS3=p_DIMag3FixedClampRS);
(p_bLinkRmtMagClampRS3=p_DIMag3RemoteClampRS);

(p_bLinkDIMagEntrySen=p_DIMagConvEntSen3);
(p_bLinkMcParamMagAutoDetTm=p_McParamMagAutoDetTm);
(p_bLinkNtParamMagModelAutoVerify=p_NtParamProjMagAutoVerifyPrep);
(p_bLinkMagRcpCurrRcpMagModel=p_MagRcpCurrRcpMagModel);

(p_bLinkNewMagVerified1=p_OpsMagConvUL1NewMagVerified);
(p_bLinkNewMagVerified2=p_OpsMagConvUL2NewMagVerified);
(p_bLinkNewMagVerified3=p_OpsMagConvUL3NewMagVerified);

(p_eLinkMcParamMagExMode=p_McParamMagExMode);

(p_bMag3OrientationChkSen1=p_DIMag3OrientChkSen1);


(p_bMagHeightDetSen3=p_DIHighMagDetSen3);
(p_bMagHeightDetEn=p_MagRcpCurrRcpMagHeightChkEn);
(p_bMagHeightDetPrep=p_NtParamProjMagHeightChkPrep);

(p_bProjLifTravMnlLoad=p_NtParamProjLifTravMnlLoad);


(p_udiRstErr=p_RstErrReset);
(p_bEn=p_NtParamProjMag3ConvPrep);
(p_bRun=p_OpsRun);
(p_bStop=p_OpsStop);
(p_bStep=p_OpsStep);

(p_sProgNm=p_NtParamOpsMagConvUL3ProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(pa_bMagDis=p_OpsTravLifULMagDis);
(pa_bMagRej=p_OpsTravLifULMagRej);



(p_bNewMag=p_UINewMag3);
(p_bRlsMag=p_UIRlsMag3);

(p_bConvInitDone=p_OpsTravLifULInitDone);
(p_bConvHvBrd=p_PshrConvHvBrd);
(p_bConvGdBrd=p_PshrConvGdBrd);

(p_tyBufferStat1=p_Buffer1BffrStat);
(p_tyBufferStat2=p_Buffer2BffrStat);
(p_tyBufferStat3=p_Buffer3BffrStat);

(p_bMagEntrySen=p_DIMagConvEntSen3);
(p_bMagEntrySen1=p_DIMagConvEntSen1);
(p_bMagEntrySen2=p_DIMagConvEntSen2);
(p_bMagEntrySen3=p_DIMagConvEntSen3);

(p_bMagPresentSen=p_DIMagPresentSen3);
(p_bMagPresentSen1=p_DIMagPresentSen1);
(p_bMagPresentSen2=p_DIMagPresentSen2);
(p_bMagPresentSen3=p_DIMagPresentSen3);

(p_bBufferMagPresent1=p_Buffer1MagPresent);
(p_bBufferMagPresent2=p_Buffer2MagPresent);
(p_bBufferMagPresent3=p_Buffer3MagPresent);

(p_dtBufferMagPresentTm1=p_Buffer1MagPresentTm);
(p_dtBufferMagPresentTm2=p_Buffer2MagPresentTm);
(p_dtBufferMagPresentTm3=p_Buffer3MagPresentTm);

(p_eBufferStat=p_Buffer3Stat);
(p_eBufferStatus=p_Buffer3Status);

(p_bBufferMagRemoved=p_Buffer3MagRemoved);

(p_eMagConv2ClpStat=p_MagConv2Clp3Stat);
(p_eMagConv2ClpStatus=p_MagConv2Clp3Status);
(p_bMagConv2ClpHvMag=p_MagConv2Clp3HvMag);

(p_eUSSMEMAStat=p_USSMEMA3Stat);
(p_eUSSMEMAStatus=p_USSMEMA3Status);
(p_bUSSMEMATransporting=p_USSMEMA3Transporting);
(p_bUSSMEMAConvStart=p_USSMEMA3ConvStart);
(p_bUSSMEMAConvStop=p_USSMEMA3ConvStop);

(p_eAGVMagStat=p_AGVMag3Stat);
(p_eAGVMagStatus=p_AGVMag3Status);
(p_bAGVMagMcRunRdy=p_AGVMag3McRunRdy);
(p_tyAGVToDTMag=p_AGVTagAGVToDTMag);

(p_eSelClampCtrlStat=p_PneuNoSenSelClamp3Stat);
(p_eSelClampCtrlStatus=p_PneuNoSenSelClamp3Status);




(p_bDIMagConvHeightSen=p_DIMagConvHeightSen3);
(p_bDIMagConvSelUnclampRS=p_DIMag3SelUnclampRS);
(p_bDIMagConvCAB717Sen=p_DIMagConvCAB717MagSen3);
(p_bDIMagConvSmallSen=p_DIMagConvSmallMagSen3);
(p_bDIMagConvLargeSen=p_DIMagConvLargeMagSen3);
(p_bDIOutShutterClosedRS=p_DIOutShutterCloseRS);
(p_bDIOutShutterClosedRS3=p_DIOutShutterCloseRS3);
(p_bNtParamProjOutletShut3Prep=p_NtParamProjOutletShut3Prep);

(p_eNtParamProjMagBuffferActLoad=p_NtParamProjMagBuffferActLoad);

(p_eSafetyBarStat=p_Pneu2SMag3SafetyBarStat);
(p_eSafetyBarStatus=p_Pneu2SMag3SafetyBarStatus);
(p_bSafetyBarExtended=p_Pneu2SMag3SafetyBarExtended);
(p_bSafetyBarRetracted=p_Pneu2SMag3SafetyBarRetracted);

(p_eMagAWEngageStat=p_Pneu2SMag3AWEngageStat);
(p_eMagAWEngageStatus=p_Pneu2SMag3AWEngageStatus);

(p_eMagAWStat=p_MagAWOpen3Stat);
(p_eMagAWStatus=p_MagAWOpen3Status);
(p_bMagAWEngaging=p_MagAWOpen3Engaging);
(p_bMagAWErr=p_MagAWOpen3AxisErr);
(p_bMagAWOpenLimit=p_MagAWOpen3OpenSen);
(p_bMagAWCloseLimit=p_MagAWOpen3CloseSen);


(p_eUSSOTStat=p_USSOT3Stat);
(p_eUSSOTStatus=p_USSOT3Status);
(p_bUSSOTTransporting=p_USSOT3Transporting);
(p_bUSSOTConvStart=p_USSOT3ConvStart);
(p_bUSSOTConvStop=p_USSOT3ConvStop);
(p_bUSSOTUSRdy=p_USSOT3USRdy);
(p_bUSSOTUSLargeMagRdy=p_USSOT3USLargeMagRdy);


(p_eDSSOTStat=p_DSSOT3Stat);
(p_eDSSOTStatus=p_DSSOT3Status);
(p_bDSSOTConvStart=p_DSSOT3ConvStart);
(p_bDSSOTConvStop=p_DSSOT3ConvStop);

(p_bOpsTravLifExitBrd=p_OpsTravLifULExitBrd);
(p_bOpsTravLifMov=p_OpsTravLifULTravLifMov);

(p_bSelfTest=p_OpsTravLifULSelfTest);

(p_bMcParamMagAWDis=p_McParamMagAWDis);
(p_bDISOTRcv=p_DISOT3Receive);
(p_bDISOTAGVReady=p_DISOT3Ready);

(p_eConvStat=p_PshrConvStat);
(p_eConvStatus=p_PshrConvStatus);

(p_sProdRcpCurrRcp1Name=p_ProdRcpCurrRcp1Nm);
(p_sProdRcpCurrRcp2Name=p_ProdRcpCurrRcp2Nm);

(p_bOpsTravLifErrCmdUnclmp=p_OpsTravLifWChkErrCmdUnclmp3);

(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_bMcParamAutoRcpDis=p_McParamAutoRcpDisable);

(pa_bMagChangeOverBlk=p_AutoRcpbMagChangeOverBlk);
(p_bMagPropDiffBlk=p_AutoRcpbMag3PropDiffBlk);
(p_bChgMagWidth=p_AutoRcpbMag3WidthChg);
(p_bChgMagSlot=p_AutoRcpbMag3SlotChg);

(p_bMagOrientChkSenPrep=p_NtParamProjMagOrientChkSenPrep);
(p_bDIMagFixedClampSen=p_DIMag3FixedClampSen);

(p_eCustomerReq=p_NtParamCustomerReq);

(p_tyResponseFromMES=p_TagFromMesMagConv3);
(p_bOpsTravLifAllwExitMag=p_OpsTravLifAllwExitMag3);
(p_diMcParamMESResponseTO=p_McParamMESResponseTO);
(p_bMcParamMESEn=p_McParamMESEn);
(p_bAutoRcpForceExitMag=p_AutoRcpForceExitMag);
(p_dtCurrDT=p_TimeCurrDT);
(p_dtOpsMagConvUL1AcptTm=p_OpsMagConvUL1AcptTm);
(p_dtOpsMagConvUL2AcptTm=p_OpsMagConvUL2AcptTm);
(p_iOpsMagConvUL1MESAcptCond=p_OpsMagConvUL1MESAcptCond);
(p_iOpsMagConvUL2MESAcptCond=p_OpsMagConvUL2MESAcptCond);
(p_bOpsMagConvUL1MagExitedWait=p_OpsMagConvUL1MagExitedWait);
(p_bOpsMagConvUL2MagExitedWait=p_OpsMagConvUL2MagExitedWait);



(p_usiUIHcomModchanged=p_UIHcomModchanged);

}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{

(bAutoRcpEn=(((*(p_bNtParamAutoRcpPrep)))&(((*(p_bMcParamAutoRcpDis))^1))));
}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_Link.st"
static void __AS__Action__Act_Link(void){
{

((*(p_bMagClampRS1))=((((*(p_bLinkFixedMagClampRS1)))&((*(p_bLinkRmtMagClampRS1))))|((*(p_bLinkNewMagVerified1)))));
((*(p_bMagClampRS2))=((((*(p_bLinkFixedMagClampRS2)))&((*(p_bLinkRmtMagClampRS2))))|((*(p_bLinkNewMagVerified2)))));
((*(p_bMagClampRS3))=((((*(p_bLinkFixedMagClampRS3)))&((*(p_bLinkRmtMagClampRS3))))|bNewMagVerified));


switch(((*(p_eLinkMcParamMagExMode)))){
case 0:{
(bMagManEx=1);
(bMagAutoEx=1);

}break;case 1:{
(bMagManEx=0);
(bMagAutoEx=1);

}break;case 2:{
(bMagManEx=1);
(bMagAutoEx=0);

}break;}


(fbMagAutoDetTm.IN=(((*(p_bLinkDIMagEntrySen)))|((*(p_bLinkDIMagPresentSen3)))));;(fbMagAutoDetTm.PT=(plctime)((*(p_bLinkMcParamMagAutoDetTm))));;TON(&fbMagAutoDetTm);
if((fbMagAutoDetTm.Q&bMagManEx)){
(bNewMagAutoDetected=1);
}else{
(bNewMagAutoDetected=0);
}

if(((*(p_bLinkNtParamMagModelAutoVerify)))){






if(((((unsigned long)(unsigned char)((*(p_bLinkMagRcpCurrRcpMagModel)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bDIMagConvHeightSen)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDIMagConvSelUnclampRS)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bDIMagConvCAB717Sen)))==(unsigned long)(unsigned char)0))&((*(p_bDIMagConvSmallSen)))&(((((*(p_bMagAWCloseLimit))^1))&(((*(p_bMagAWOpenLimit))^1)))|(((unsigned long)(unsigned char)((*(p_tyBufferStat3)).bBffrMty)==(unsigned long)(unsigned char)0))))){
(bNewMagVerified=1);

}





else if(((((unsigned long)(unsigned char)((*(p_bLinkMagRcpCurrRcpMagModel)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDIMagConvHeightSen)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bDIMagConvSelUnclampRS)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bDIMagConvCAB717Sen)))==(unsigned long)(unsigned char)0))&((*(p_bDIMagConvSmallSen)))&(((((*(p_bMagAWCloseLimit))^1))&(((*(p_bMagAWOpenLimit))^1)))|(((unsigned long)(unsigned char)((*(p_tyBufferStat3)).bBffrMty)==(unsigned long)(unsigned char)0))))){
(bNewMagVerified=1);

}





else if(((((unsigned long)(unsigned char)((*(p_bLinkMagRcpCurrRcpMagModel)))==(unsigned long)(unsigned char)2))&(((unsigned long)(unsigned char)((*(p_bDIMagConvHeightSen)))==(unsigned long)(unsigned char)0))&((*(p_bDIMagConvSelUnclampRS)))&((*(p_bDIMagConvCAB717Sen)))&((*(p_bDIMagConvLargeSen)))&(((((*(p_bMagAWCloseLimit))^1))&(((*(p_bMagAWOpenLimit))^1)))|(((unsigned long)(unsigned char)((*(p_tyBufferStat3)).bBffrMty)==(unsigned long)(unsigned char)0))))){
(bNewMagVerified=1);
}else{
(bNewMagVerified=0);
}
}else{
(bNewMagVerified=1);
}

(bAIVInPos=(((*(p_tyAGVToDTMag)).bVEHInPos3)|((*(p_bDISOTRcv)))));

if(((*(p_bBufferMagRemoved)))){
(bManualUnloadMag=0);
}

if(bAutoRcpEn){
((*(p_bUSAllow))=(((*(p_bMagPropDiffBlk))^1)));
((*(p_bAllwChgWidth))=((*(p_bChgMagWidth))));
((*(p_bAllwChgSlot))=((*(p_bChgMagSlot))));

}else{
((*(p_bUSAllow))=((__AS__STRING_CMP(((*(p_sProdRcpCurrRcp1Name))),((*(p_sProdRcpCurrRcp2Name))))==0)));
}



}imp7_end5_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp14_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(p_bRun=((unsigned long)(&bRun)));
(p_bStop=((unsigned long)(&bStop)));
(p_bStep=((unsigned long)(&bStep)));

(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

(p_usiMagConv=((unsigned long)(&usiMagConv)));
(p_bInfoEn=((unsigned long)(&bInfoEn)));

(pa_bMagDis=((unsigned long)(&a_bMagDis)));
(pa_bMagRej=((unsigned long)(&a_bMagRej)));
(p_bUSAllow=((unsigned long)(&bUSAllow)));

(p_bAllwChgWidth=((unsigned long)(&bAllwChgWidth)));
(p_bAllwChgSlot=((unsigned long)(&bAllwChgSlot)));

(p_bNewMag=((unsigned long)(&bNewMag)));
(p_bRlsMag=((unsigned long)(&bRlsMag)));

(p_bConvInitDone=((unsigned long)(&bConvInitDone)));
(p_bConvHvBrd=((unsigned long)(&bConvHvBrd)));
(p_bConvGdBrd=((unsigned long)(&bConvGdBrd)));

(p_tyBufferStat1=((unsigned long)(&tyBufferStat1)));
(p_tyBufferStat2=((unsigned long)(&tyBufferStat2)));
(p_tyBufferStat3=((unsigned long)(&tyBufferStat3)));

(p_bMagClampRS1=((unsigned long)(&bMagClampRS1)));
(p_bMagClampRS2=((unsigned long)(&bMagClampRS2)));
(p_bMagClampRS3=((unsigned long)(&bMagClampRS3)));

(p_bMagEntrySen1=((unsigned long)(&bMagEntrySen1)));
(p_bMagEntrySen2=((unsigned long)(&bMagEntrySen2)));
(p_bMagEntrySen3=((unsigned long)(&bMagEntrySen3)));

(p_bMagPresentSen1=((unsigned long)(&bMagPresentSen1)));
(p_bMagPresentSen2=((unsigned long)(&bMagPresentSen2)));
(p_bMagPresentSen3=((unsigned long)(&bMagPresentSen3)));

(p_bBufferMagPresent1=((unsigned long)(&bBufferMagPresent1)));
(p_bBufferMagPresent2=((unsigned long)(&bBufferMagPresent2)));
(p_bBufferMagPresent3=((unsigned long)(&bBufferMagPresent3)));

(p_dtBufferMagPresentTm1=((unsigned long)(&dtBufferMagPresentTm1)));
(p_dtBufferMagPresentTm2=((unsigned long)(&dtBufferMagPresentTm2)));
(p_dtBufferMagPresentTm3=((unsigned long)(&dtBufferMagPresentTm3)));

(p_eBufferStat=((unsigned long)(&eBufferStat)));
(p_eBufferStatus=((unsigned long)(&eBufferStatus)));

(p_eMagConv2ClpStat=((unsigned long)(&eMagConv2ClpStat)));
(p_eMagConv2ClpStatus=((unsigned long)(&eMagConv2ClpStatus)));
(p_bMagConv2ClpHvMag=((unsigned long)(&bMagConv2ClpHvMag)));

(p_eUSSMEMAStat=((unsigned long)(&eUSSMEMAStat)));
(p_eUSSMEMAStatus=((unsigned long)(&eUSSMEMAStatus)));
(p_bUSSMEMATransporting=((unsigned long)(&bUSSMEMATransporting)));
(p_bUSSMEMAConvStart=((unsigned long)(&bUSSMEMAConvStart)));
(p_bUSSMEMAConvStop=((unsigned long)(&bUSSMEMAConvStop)));

(p_eAGVMagStat=((unsigned long)(&eAGVMagStat)));
(p_eAGVMagStatus=((unsigned long)(&eAGVMagStatus)));
(p_bAGVMagMcRunRdy=((unsigned long)(&bAGVMagMcRunRdy)));
(p_tyAGVToDTMag=((unsigned long)(&tyAGVToDualMag)));

(p_dtOpsMagConvUL3AcptTm=((unsigned long)(&dtMagConvAcptTm)));
(p_iOpsMagConvUL3MESAcptCond=((unsigned long)(&iMagMESAcptCond)));
}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


if(((*(p_bNtParamProjOutletShut3Prep)))){
(p_bOutShutterExtended=p_Pneu2SenOutShutterExtended3);
}else{
(p_bOutShutterExtended=p_Pneu2SenOutShutterExtended);
}

}imp6_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_Background.st"
static void __AS__Action__Act_Background(void){
{

if((~(((*(p_bStop)))|((*(p_bStep))))&Edge0000300000&1?((Edge0000300000=(((*(p_bStop)))|((*(p_bStep))))&1),1):((Edge0000300000=(((*(p_bStop)))|((*(p_bStep))))&1),0))){
(bPaused=0);
}

if(((((signed long)eStatus!=(signed long)3))&(((unsigned long)(unsigned char)((*(p_bRun)))==(unsigned long)(unsigned char)1)))){
if(((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)0)))){
__AS__Action__Act_OpsRun();
}else{
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

if((((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&~Edge0000300001&1?((Edge0000300001=((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&1),1):((Edge0000300001=((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&1),0))){
__AS__Action__Act_OpsRst();
}

}else if((((signed long)eStatus!=(signed long)3))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stop"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Error"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}


if(((~((*(p_bRun)))&Edge0000300002&1?((Edge0000300002=((*(p_bRun)))&1),1):((Edge0000300002=((*(p_bRun)))&1),0))|((((signed long)eStatus==(signed long)3))&~Edge0000300003&1?((Edge0000300003=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000300003=(((signed long)eStatus==(signed long)3))&1),0)))){
__AS__Action__Act_OpsInitial();
__AS__Action__Act_OpsRst();
}


if(((((signed long)eStatus==(signed long)3))&bRstErr)){
(eStatus=0);
(udiStatus=0);
}





if(((((unsigned long)(unsigned char)((*(p_bBufferMagPresent3)))==(unsigned long)(unsigned char)0))|((~((*(p_bMcParamMagAWDis)))&Edge0000300004&1?((Edge0000300004=((*(p_bMcParamMagAWDis)))&1),1):((Edge0000300004=((*(p_bMcParamMagAWDis)))&1),0))&((*(p_tyBufferStat3)).bBffrMty)))){
(bMagAWDone=0);

}


if(((~((*(p_bMcParamMagAWDis)))&Edge0000300005&1?((Edge0000300005=((*(p_bMcParamMagAWDis)))&1),1):((Edge0000300005=((*(p_bMcParamMagAWDis)))&1),0))&(((unsigned long)(unsigned char)((*(p_tyBufferStat3)).bBffrMty)==(unsigned long)(unsigned char)0)))){
(bMagExitedWait=1);
(bNewMagVerified=0);
}






if((((unsigned long)(unsigned char)((*(p_usiUIHcomModchanged)))!=(unsigned long)(unsigned char)usiPrevHcomModchanged))){
(ePrevExitStep=33);
(usiPrevHcomModchanged=((*(p_usiUIHcomModchanged))));
}

(fbMagRemovedTm.IN=((((unsigned long)(unsigned char)((*(p_bMagPresentSen)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bMagEntrySen)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bDIMagFixedClampSen)))==(unsigned long)(unsigned char)0))&((*(p_bBufferMagRemoved)))));;TON(&fbMagRemovedTm);
if(fbMagRemovedTm.Q){
(iMagMESAcptCond=0);
(bMagExitedWait=0);
(ePrevExitStep=0);
}


}imp3_else9_0:imp3_end9_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000100000&1?((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sOpsMagConvUL3ProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData.udiCode!=(unsigned long)0)))){

(tyAlmData.udiCode=0);
(tyAlmData.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.bAlm=0);
}

}imp1_else0_1:imp1_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Act_AlarmInfo1.st"
static void __AS__Action__Act_AlarmInfo1(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData1.udiCode=udiStatus1);
(tyAlmData1.eSeverity=3);
(tyAlmData1.udiRunTime=(tyAlmData1.udiRunTime+1));


if(((((unsigned long)tyAlmData1.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData1.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}imp2_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Sequence/Act_OpsInitial.st"
static void __AS__Action__Act_OpsInitial(void){
{
(eOpsStep=0);
(eGotoOpsStep=1);

(bOpsInitDone=0);
(bMagBffrAvl=0);
(bNewMagAllw=0);
(bRlsMagAllw=0);
(bStepMagExitedWait=0);
(bAGVComm3Rdy=0);

}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Sequence/Act_OpsRun.st"
static void __AS__Action__Act_OpsRun(void){
{if(((*(p_bOpsTravLifErrCmdUnclmp)))){
(eMagConv2ClpAct=27);

if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)27)))){

(eMagConv2ClpAct=0);
(bPneuUnclmpDone=1);
}
}

__AS__Action__Act_LogStep();

if((((signed long)eGotoOpsStep!=(signed long)eOpsStep))){

(fbWrongMagTm.IN=0);;TON(&fbWrongMagTm);
(fbReadRFIDTO.IN=0);;TON(&fbReadRFIDTO);
(fbWriteRFIDTO.IN=0);;TON(&fbWriteRFIDTO);
switch(eGotoOpsStep){
case 20:{
if(((((((signed long)((*(p_eCustomerReq)))==(signed long)5))|(((signed long)((*(p_eCustomerReq)))==(signed long)6)))&((*(p_bMcParamMESEn))))&(((signed long)eOpsStep==(signed long)11)))){
if(((((signed long)ePrevStepBeforeMESStdBy==(signed long)33))|(((signed long)ePrevStepBeforeMESStdBy==(signed long)29)))){
(eGotoOpsStep=28);
(eOpsStep=28);
}else if((((signed long)(signed long)(short)iMagMESAcptCond>(signed long)(signed long)(short)0))){
(eGotoOpsStep=20);
(eOpsStep=20);
}else if((((signed long)(signed long)(short)iMagMESAcptCond<(signed long)(signed long)(short)0))){
(eGotoOpsStep=29);
(eOpsStep=29);
}else if((((signed long)(signed long)(short)iMagMESAcptCond==(signed long)(signed long)(short)0))){
(eGotoOpsStep=19);
(eOpsStep=19);
}
}else{
(eOpsStep=eGotoOpsStep);
}
}break;case 29:{


if((((((signed long)((*(p_eCustomerReq)))==(signed long)5))&((*(p_bMcParamMESEn))))&(((signed long)eOpsStep!=(signed long)28))&(((*(p_tyLocalBufferStat)).bBffrFull)|(((unsigned long)(unsigned char)((*(pa_bMagChangeOverBlk))[((*(p_usiMagConv)))-1])==(unsigned long)(unsigned char)1))|((*(p_bDISOTAGVReady))))&((((signed long)(signed long)(short)iMagMESAcptCond<(signed long)(signed long)(short)0))^1))){
(eOpsStep=28);
(eGotoOpsStep=28);
(ePrevStepBeforeMESStdBy=29);
}else{
(eOpsStep=eGotoOpsStep);
(ePrevStepBeforeMESStdBy=0);
}
}break;case 33:{



if((((((signed long)((*(p_eCustomerReq)))==(signed long)5))&((*(p_bMcParamMESEn))))&((((signed long)eOpsStep!=(signed long)28))&(((signed long)eOpsStep!=(signed long)31))&(((signed long)eOpsStep!=(signed long)19))&(((signed long)eOpsStep!=(signed long)11))))){
(eOpsStep=28);
(eGotoOpsStep=28);
(ePrevStepBeforeMESStdBy=33);
}else{


(eOpsStep=eGotoOpsStep);
(ePrevStepBeforeMESStdBy=0);

}
}break;case 10:{
if(((*(p_bMagOrientChkSenPrep)))){
if((((*(p_bMagHeightDetEn)))&((*(p_bMagHeightDetPrep))))){

if((((*(p_bMag3OrientationChkSen1)))&((*(p_bMagHeightDetSen3))))){
(eOpsStep=eGotoOpsStep);
}else{
(eMagConv2ClpAct=27);

if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)27)))){

(eMagConv2ClpAct=0);

(eStatus=3);
(udiStatus=10011);
}
}

}else{

if((((*(p_bMag3OrientationChkSen1)))&(((*(p_bMagHeightDetSen3))^1)))){
(eOpsStep=eGotoOpsStep);
}else{
(eMagConv2ClpAct=27);

if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)27)))){

(eMagConv2ClpAct=0);

(eStatus=3);
(udiStatus=10011);
}
}

}
}else{
(eOpsStep=eGotoOpsStep);
}
}break;default: {
(eOpsStep=eGotoOpsStep);

}break;}

}

if((((signed long)eOpsStep==(signed long)eGotoOpsStep))){

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

switch(eOpsStep){

case 1:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Magazine"; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
((*(p_usiMagConv))=3);
switch(((*(p_usiMagConv)))){
case 1:{
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat1))))));
(p_bLocalMagEntrySen=((unsigned long)(&((*(p_bMagEntrySen1))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent1))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm1))))));
}break;case 2:{
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat2))))));
(p_bLocalMagEntrySen=((unsigned long)(&((*(p_bMagEntrySen2))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent2))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm2))))));
}break;case 3:{
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat3))))));
(p_bLocalMagEntrySen=((unsigned long)(&((*(p_bMagEntrySen3))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent3))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm3))))));
}break;}







if((((unsigned long)(unsigned char)((*(p_bProjLifTravMnlLoad)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=4);
}else{
(eGotoOpsStep=3);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


}break;case 4:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Pneumatic"; for(zzIndex=0; zzIndex<22l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eSafetyBarAct=5);
(eMagAWEngageAct=6);

if((((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)5)))&((((signed long)((*(p_eMagAWEngageStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWEngageStat)))==(signed long)6))))){
(eSafetyBarAct=0);
(eMagAWEngageAct=0);
if((bMagExitedWait&(((signed long)ePrevExitStep==(signed long)33)))){

(eGotoOpsStep=35);
}else if((((signed long)ePrevExitStep==(signed long)33))){
(eGotoOpsStep=5);


}else{
(eGotoOpsStep=7);
}
}

}break;case 5:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Magazine Conveyor"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eMagConv2ClpAct=1);
if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)1)))){
(eMagConv2ClpAct=0);
if((((unsigned long)(unsigned char)((*(p_bMagConv2ClpHvMag)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=3);
(ePrevExitStep=0);
(iMagMESAcptCond=0);
}else{
(eGotoOpsStep=6);
}
}

}break;case 6:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Fixed Clamp"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eMagConv2ClpAct=18);
if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)18)))){
(eMagConv2ClpAct=0);
if(bMagAutoEx){
(eDSSOTAct=1);
}else{
(eDSSOTAct=0);
}

if(((*(p_bDIMagConvCAB717Sen)))){
(bMagSizeLarge=1);
}else{
(bMagSizeLarge=0);
}
(eGotoOpsStep=10);
}


}break;case 7:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Magazine Conveyor"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eMagConv2ClpAct=2);
(eSelClampCtrl=5);



if((((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)2)))&((((signed long)((*(p_eSelClampCtrlStat)))==(signed long)5))&(((signed long)((*(p_eSelClampCtrlStatus)))==(signed long)1))))){
(eSelClampCtrl=0);
(eMagConv2ClpAct=0);

if((((unsigned long)(unsigned char)((*(p_bMagConv2ClpHvMag)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=3);
(ePrevExitStep=0);
(iMagMESAcptCond=0);
}else{

(eGotoOpsStep=10);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}



}break;case 3:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating AIV And Ready For Transport In Magazine"; for(zzIndex=0; zzIndex<53l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eAGVMagAct=1);
if(bMagAutoEx){
(eUSSOTAct=1);
}else{
(eUSSOTAct=0);
}

(eDSSOTAct=0);
(bMagSizeLarge=0);
(bMagExitedWait=0);

if((((unsigned long)(unsigned char)((*(p_bSafetyBarExtended)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=13);
}else if(((((unsigned long)(unsigned char)((*(p_bAGVMagMcRunRdy)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bUSSOTTransporting)))==(unsigned long)(unsigned char)1)))){
(eGotoOpsStep=8);

}else if(((((unsigned long)(unsigned char)((*(p_bNewMag)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)bNewMagAutoDetected==(unsigned long)(unsigned char)1)))){
(eAGVMagAct=0);
(eGotoOpsStep=9);

}else{
(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
(eAGVMagAct=0);
(eUSSOTAct=0);
}

}


}break;case 8:{

if(((*(p_bUSSOTConvStart)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Conveyor Entering Magazine To End"; for(zzIndex=0; zzIndex<33l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eMagConv2ClpAct=5);

}else if((((unsigned long)(unsigned char)bNewMagAutoDetected==(unsigned long)(unsigned char)1))){
(eAGVMagAct=0);
(eGotoOpsStep=9);

}else if(((*(p_bUSSOTConvStop)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Conveyor Stopping"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eMagConv2ClpAct=27);
if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)27)))){
(eMagConv2ClpAct=0);

}
}



if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)5)))){
(eAGVMagAct=0);
(eMagConv2ClpAct=0);
(eUSSOTAct=0);
(eGotoOpsStep=10);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{


}

}break;case 9:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Conveyor Entering Magazine Manually"; for(zzIndex=0; zzIndex<44l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((unsigned long)(unsigned char)((*(p_bProjLifTravMnlLoad)))==(unsigned long)(unsigned char)0))){
(eMagConv2ClpAct=5);
}else{
(eGotoOpsStep=10);
}

if(((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)5)))){
(eMagConv2ClpAct=0);

(eGotoOpsStep=10);
(eUSSOTAct=0);
(eAGVMagAct=0);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


}break;case 10:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Selection Control"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bNewMagVerifyStarted=1);

switch(((*(p_bLinkMagRcpCurrRcpMagModel)))){
case 0:{
if((((unsigned long)(unsigned char)((*(p_bDIMagConvCAB717Sen)))==(unsigned long)(unsigned char)0))){
(eSelClampCtrl=6);
}

(eGotoOpsStep=11);


}break;case 1:{
if((((unsigned long)(unsigned char)((*(p_bDIMagConvCAB717Sen)))==(unsigned long)(unsigned char)0))){
(eSelClampCtrl=6);
}

(eGotoOpsStep=11);


}break;case 2:{
(eSelClampCtrl=5);

(eGotoOpsStep=11);

}break;}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 11:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Model Verification"; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(bNewMagVerifyStarted=1);
(fbWrongMagTm.IN=(((unsigned long)(unsigned char)bNewMagVerified==(unsigned long)(unsigned char)0)));;TON(&fbWrongMagTm);
if((fbWrongMagTm.Q&(bMagExitedWait^1))){
(fbWrongMagTm.IN=0);;TON(&fbWrongMagTm);
(eGotoOpsStep=33);
}else if((((signed long)ePrevExitStep==(signed long)33))){
(eGotoOpsStep=33);
}else if((((signed long)ePrevExitStep==(signed long)29))){
(eGotoOpsStep=29);
}else if(bNewMagVerified){
(eSelClampCtrl=0);

(eGotoOpsStep=20);

}

if(((*(p_bDIMagConvCAB717Sen)))){
(bMagSizeLarge=1);
}else{
(bMagSizeLarge=0);
}

if(((*(p_bSelfTest)))){
(eGotoOpsStep=21);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 19:{
if((((signed long)((*(p_eCustomerReq)))==(signed long)5))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Read RFID Chk step"; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Wait for MES feedback"; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
(bReadRFID=1);
(fbReadRFIDTO.IN=bReadRFID);;(fbReadRFIDTO.PT=(plctime)((*(p_diMcParamMESResponseTO))));;TON(&fbReadRFIDTO);
(iMagMESAcptCond=((*(p_tyResponseFromMES)).iAcceptCondition));
if((((signed long)(signed long)(short)((*(p_tyResponseFromMES)).iAcceptCondition)>(signed long)(signed long)(short)0))){
(eGotoOpsStep=20);
(dtMagConvAcptTm=((*(p_dtCurrDT))));
}else if((((signed long)(signed long)(short)((*(p_tyResponseFromMES)).iAcceptCondition)<(signed long)(signed long)(short)0))){
(eGotoOpsStep=29);
}else if((fbReadRFIDTO.Q&((*(p_bRlsMag))))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Wait for Read RFID"; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eGotoOpsStep=33);
}
if((((signed long)eGotoOpsStep!=(signed long)19))){
(bReadRFID=0);
(fbReadRFIDTO.IN=bReadRFID);;TON(&fbReadRFIDTO);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 20:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Checking Buffer Status"; for(zzIndex=0; zzIndex<22l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((signed long)((*(p_eBufferStatus)))==(signed long)0))){



if((((unsigned long)(unsigned char)((*(p_tyLocalBufferStat)).bBffrFull)==(unsigned long)(unsigned char)1))){

(eGotoOpsStep=29);
}else{

(eGotoOpsStep=14);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}



}break;case 12:{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Checking Magazine Status"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};




if((((unsigned long)(unsigned char)((*(p_bMagPresentSen)))==(unsigned long)(unsigned char)1))){
if((((unsigned long)(unsigned char)((*(p_tyLocalBufferStat)).bBffrMty)==(unsigned long)(unsigned char)1))){

if(bAutoRcpEn){
(eGotoOpsStep=21);
}else if((((unsigned long)(unsigned char)bMagAWDone==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=15);


}else{
(eGotoOpsStep=21);
}

}

else if((((unsigned long)(unsigned char)((*(p_tyLocalBufferStat)).bBffrFull)==(unsigned long)(unsigned char)1))){


if((((unsigned long)(unsigned char)((*(p_bSafetyBarExtended)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=13);
}else{
(eGotoOpsStep=29);
}

}else{




(eGotoOpsStep=21);


}

}else{




(eGotoOpsStep=3);


}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


}break;case 13:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Extending Safety Bar"; for(zzIndex=0; zzIndex<20l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eSafetyBarAct=5);

if(((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)5)))){
(eSafetyBarAct=0);
(eGotoOpsStep=12);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 14:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Retracting Safety Bar"; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eSafetyBarAct=6);

if(((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)6)))){
(eSafetyBarAct=0);

(eGotoOpsStep=12);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 15:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Engaging Magazine Auto Width"; for(zzIndex=0; zzIndex<28l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eMagAWAct=17);

if((((unsigned long)(unsigned char)((*(p_bMagAWEngaging)))==(unsigned long)(unsigned char)1))){
(eMagAWEngageAct=5);
}

if((((((signed long)((*(p_eMagAWStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWStat)))==(signed long)17)))&((((signed long)((*(p_eMagAWEngageStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWEngageStat)))==(signed long)5))))){
(eMagAWAct=0);
(eMagAWEngageAct=0);
(eGotoOpsStep=17);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}



}break;case 17:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Homing Magazine Auto Width"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


(eMagAWAct=5);

if(((((signed long)((*(p_eMagAWStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWStat)))==(signed long)5)))){
(eMagAWAct=0);
(eGotoOpsStep=18);


}else if(((*(p_bMagAWErr)))){

(eStatus=3);
(udiStatus=10009);
}

}break;case 18:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Moving Magazine Auto Width"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


(eMagAWAct=16);


if(((((signed long)((*(p_eMagAWStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWStat)))==(signed long)16)))){
(bMagAWDone=1);
(eMagAWAct=0);
(eGotoOpsStep=16);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((*(p_bMagAWErr)))){

(eStatus=3);
(udiStatus=10009);
}

}break;case 16:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Disengaging Magazine Auto Width"; for(zzIndex=0; zzIndex<31l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eMagAWEngageAct=6);

if(((((signed long)((*(p_eMagAWEngageStatus)))==(signed long)1))&(((signed long)((*(p_eMagAWEngageStat)))==(signed long)6)))){
(eMagAWEngageAct=0);

(eGotoOpsStep=14);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 21:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Comparing Magazine"; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(a_tyMagAllwBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat1))));
(a_tyMagAllwBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat2))));
(a_tyMagAllwBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat3))));

(a_bMagAllwMagClamped[1-1]=((*(p_bMagClampRS1))));
(a_bMagAllwMagClamped[2-1]=((*(p_bMagClampRS2))));
(a_bMagAllwMagClamped[3-1]=((*(p_bMagClampRS3))));

(a_bMagAllwMagPresent[1-1]=(((*(p_bBufferMagPresent1)))&(((*(p_bOpsMagConvUL1MagExitedWait))^1))));
(a_bMagAllwMagPresent[2-1]=(((*(p_bBufferMagPresent2)))&(((*(p_bOpsMagConvUL2MagExitedWait))^1))));
(a_bMagAllwMagPresent[3-1]=(((*(p_bBufferMagPresent3)))&(bMagExitedWait^1)));

if(((bAutoRcpEn&((*(p_bMcParamMESEn))))^1)){
(a_udiMagAllwMagPresentTm[1-1]=(unsigned long)((*(p_dtBufferMagPresentTm1))));
(a_udiMagAllwMagPresentTm[2-1]=(unsigned long)((*(p_dtBufferMagPresentTm2))));
(a_udiMagAllwMagPresentTm[3-1]=(unsigned long)((*(p_dtBufferMagPresentTm3))));
}else{
(a_udiMagAllwMagPresentTm[1-1]=(unsigned long)((*(p_dtOpsMagConvUL1AcptTm))));
(a_udiMagAllwMagPresentTm[2-1]=(unsigned long)((*(p_dtOpsMagConvUL2AcptTm))));
(a_udiMagAllwMagPresentTm[3-1]=(unsigned long)((*(p_dtOpsMagConvUL3AcptTm))));

(a_iMagMESAcptCond[1-1]=((*(p_iOpsMagConvUL1MESAcptCond))));
(a_iMagMESAcptCond[2-1]=((*(p_iOpsMagConvUL2MESAcptCond))));
(a_iMagMESAcptCond[3-1]=((*(p_iOpsMagConvUL3MESAcptCond))));
}


__AS__MEMSET(((unsigned long)(&a_udiMagAllwPriority)),0,12);

for((udi=1);udi<=3;udi+=1){
(udiCount=3);
(udiCmpTm=a_udiMagAllwMagPresentTm[udi-1]);

for((udi1=1);udi1<=3;udi1+=1){
if((((unsigned long)a_udiMagAllwMagPresentTm[udi1-1]<(unsigned long)udiCmpTm))){
(udiCount=(udiCount-1));
}
}imp13_endfor60_0:;

(a_udiMagAllwPriority[udi-1]=udiCount);
}imp13_endfor59_0:;










__AS__MEMSET(((unsigned long)(&a_udiMagAllwSum)),0,12);

for((udi=1);udi<=3;udi+=1){

(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+a_udiMagAllwPriority[udi-1]));

if((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+1000));
}

if((((unsigned long)(unsigned char)a_bMagAllwMagClamped[udi-1]==(unsigned long)(unsigned char)1))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+1000));
}

if((((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi-1]==(unsigned long)(unsigned char)1))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+1000));
}

if((((unsigned long)(unsigned char)a_tyMagAllwBffrStat[udi-1].bBffrMty==(unsigned long)(unsigned char)1))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+2500));
}

if(((((unsigned long)(unsigned char)a_tyMagAllwBffrStat[udi-1].bBffrFull==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_tyMagAllwBffrStat[udi-1].bBffrMty==(unsigned long)(unsigned char)0)))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+3000));
}

if((((unsigned long)(unsigned char)((*(pa_bMagRej))[udi-1])==(unsigned long)(unsigned char)1))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+6000));
}

if(bAutoRcpEn){
if((((unsigned long)(unsigned char)((*(pa_bMagChangeOverBlk))[udi-1])==(unsigned long)(unsigned char)1))){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]-1000));
}
if(((*(p_bMcParamMESEn)))){
if(((((signed long)(signed long)(short)a_iMagMESAcptCond[udi-1]==(signed long)(signed long)(short)0))&a_bMagAllwMagPresent[udi-1])){
(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]-1000));
}
}
}
}imp13_endfor62_0:;

(udiMagAllwGo=99);

for((udi=1);udi<=3;udi+=1){

if((((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)6000))&(((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)7000))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[usiMagConv-1])==(unsigned long)(unsigned char)0)))|((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)12000))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[usiMagConv-1])==(unsigned long)(unsigned char)1))))){

if((((unsigned long)udiMagAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiMagAllwSum[udi-1]>(unsigned long)a_udiMagAllwSum[udiMagAllwGo-1]))){
(udiMagAllwGo=udi);
}
}else{
(udiMagAllwGo=udi);
}

}

}imp13_endfor73_0:;

if((((unsigned long)udiMagAllwGo==(unsigned long)99))){

for((udi=1);udi<=3;udi+=1){

if((((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)5500))&(((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)7000))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[usiMagConv-1])==(unsigned long)(unsigned char)0)))|((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)11500))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[usiMagConv-1])==(unsigned long)(unsigned char)1))))){

if((((unsigned long)udiMagAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiMagAllwSum[udi-1]>(unsigned long)a_udiMagAllwSum[udiMagAllwGo-1]))){
(udiMagAllwGo=udi);
}
}else{
(udiMagAllwGo=udi);
}

}

}imp13_endfor78_0:;

}


if((((unsigned long)(unsigned char)((*(p_bRlsMag)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=33);
}

else if(((((*(p_bDISOTAGVReady)))|((*(pa_bMagChangeOverBlk))[((*(p_usiMagConv)))-1]))&((((signed long)((*(p_eCustomerReq)))==(signed long)5))|(((signed long)((*(p_eCustomerReq)))==(signed long)6))))){
(eGotoOpsStep=29);
}else if((((((unsigned long)(unsigned char)((*(p_tyLocalBufferStat)).bBffrFull)==(unsigned long)(unsigned char)1))&((*(p_bOutShutterExtended))))|((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))&(bAutoRcpEn^1)))){

(eGotoOpsStep=29);
}else if(((((*(p_bUSAllow))^1))&bAutoRcpEn&(((unsigned long)udiMagAllwGo==(unsigned long)(unsigned char)((*(p_usiMagConv))))))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Comparing Mag: Waiting available magazine to change width"; for(zzIndex=0; zzIndex<57l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bPaused=((*(p_bStop))));
}else if((((*(p_bAllwChgWidth)))&bAutoRcpEn)){
(eGotoOpsStep=15);
}else if((((*(p_bAllwChgSlot)))&bAutoRcpEn)){
(eGotoOpsStep=22);

}else{

if(((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)1))&(((unsigned long)udiMagAllwGo!=(unsigned long)99)))){

if((((unsigned long)udiMagAllwGo==(unsigned long)(unsigned char)((*(p_usiMagConv)))))){
(bMagBffrAvl=1);

(eGotoOpsStep=23);




(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}

}else{
(bPaused=((*(p_bStop))));
}

}
}break;case 22:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Resetting Buffer Setting"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eBufferAct=4);

if(((((signed long)((*(p_eBufferStatus)))==(signed long)1))&(((signed long)((*(p_eBufferStat)))==(signed long)4)))){
(eBufferAct=0);
(eGotoOpsStep=21);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 23:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Computing Next Load Buffer"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eBufferAct=11);

if(((((signed long)((*(p_eBufferStatus)))==(signed long)1))&(((signed long)((*(p_eBufferStat)))==(signed long)11)))){
(eBufferAct=0);
(eGotoOpsStep=24);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 24:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating Buffer Upstream"; for(zzIndex=0; zzIndex<29l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eUSSMEMAAct=1);

if((((unsigned long)(unsigned char)((*(p_bUSSMEMATransporting)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=25);

if((((signed long)((*(p_eNtParamProjMagBuffferActLoad)))==(signed long)0))){

(eBufferAct=5);
}
}else if(((((unsigned long)(unsigned char)((*(p_bRlsMag)))==(unsigned long)(unsigned char)1))&(((*(p_bOpsTravLifAllwExitMag)))|(((signed long)((*(p_eCustomerReq)))!=(signed long)5))))){
(bMagBffrAvl=0);
(eUSSMEMAAct=0);
(eGotoOpsStep=33);

}else if(((((*(p_bAllwChgWidth)))&(((*(p_bMcParamAutoRcpDis))^1)))|(((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0)))){
(bMagBffrAvl=0);
(eUSSMEMAAct=0);
(eGotoOpsStep=21);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}
else if(((((unsigned long)(unsigned char)((*(p_tyLocalBufferStat)).bBffrFull)==(unsigned long)(unsigned char)1))|(((*(p_bDISOTAGVReady)))&((*(p_bOpsTravLifAllwExitMag)))))){
(bMagBffrAvl=0);
(eUSSMEMAAct=0);

(eGotoOpsStep=29);
}else{

if((((unsigned long)(unsigned char)((*(pa_bMagDis))[usiMagConv-1])==(unsigned long)(unsigned char)1))){
(bMagBffrAvl=0);
(eGotoOpsStep=21);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}

if(((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(pa_bMagDis))[usiMagConv-1])==(unsigned long)(unsigned char)1)))){
(eUSSMEMAAct=0);
}

}

}break;case 25:{
if((((*(p_bUSSMEMATransporting)))&(((*(p_bUSSMEMAConvStart)))&~Edge0001300000&1?((Edge0001300000=((*(p_bUSSMEMAConvStart)))&1),1):((Edge0001300000=((*(p_bUSSMEMAConvStart)))&1),0)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Transferring Board Into Magazine"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((signed long)((*(p_eNtParamProjMagBuffferActLoad)))==(signed long)0))){

(eBufferAct=5);
}

}

if((((*(p_bUSSMEMATransporting)))&(((*(p_bUSSMEMAConvStop)))&~Edge0001300001&1?((Edge0001300001=((*(p_bUSSMEMAConvStop)))&1),1):((Edge0001300001=((*(p_bUSSMEMAConvStop)))&1),0)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stop Transferring"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}








if((((((signed long)((*(p_eUSSMEMAStatus)))==(signed long)1))&(((signed long)((*(p_eUSSMEMAStat)))==(signed long)1)))&((((signed long)((*(p_eConvStat)))==(signed long)19))&(((signed long)((*(p_eConvStatus)))==(signed long)1))))){
(eUSSMEMAAct=0);
(eGotoOpsStep=27);
}

}break;case 27:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Loading Buffer"; for(zzIndex=0; zzIndex<14l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eBufferAct=5);

if(((((signed long)((*(p_eBufferStatus)))==(signed long)1))&(((signed long)((*(p_eBufferStat)))==(signed long)5)))){
(eBufferAct=0);
(bMagBffrAvl=0);
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}break;case 28:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Mag StdBy for MES response Before Exiting"; for(zzIndex=0; zzIndex<41l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bWriteRFID=1);
(fbWriteRFIDTO.IN=bWriteRFID);;(fbWriteRFIDTO.PT=(plctime)((*(p_diMcParamMESResponseTO))));;TON(&fbWriteRFIDTO);
if(((*(p_tyResponseFromMES)).bRFIDWriteComplete)){
if((((signed long)ePrevStepBeforeMESStdBy==(signed long)33))){
(eGotoOpsStep=33);
}else if((((signed long)ePrevStepBeforeMESStdBy==(signed long)29))){
(eGotoOpsStep=29);
}
}else if((fbWriteRFIDTO.Q&((*(p_bRlsMag))))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"MES response to Write RFID Timeout, Press Rls Mag to Manual Exit "; for(zzIndex=0; zzIndex<65l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eGotoOpsStep=33);

}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 29:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Extending Selection Clamp"; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eSelClampCtrl=5);
(eMagAWEngageAct=6);
(ePrevExitStep=29);


if((((((signed long)((*(p_eSelClampCtrlStat)))==(signed long)5))&(((signed long)((*(p_eSelClampCtrlStatus)))==(signed long)1)))|((((signed long)((*(p_eMagAWEngageStat)))==(signed long)6))&(((signed long)((*(p_eMagAWEngageStatus)))==(signed long)1))))){
(eMagAWEngageAct=0);
(eSelClampCtrl=0);
(eGotoOpsStep=30);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


}break;case 30:{
if((((unsigned long)(unsigned char)((*(p_bSafetyBarExtended)))==(unsigned long)(unsigned char)0))){
(eSafetyBarAct=5);

if(((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)5)))){
(eSafetyBarAct=0);
(eGotoOpsStep=31);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}else{
(eGotoOpsStep=31);
}


}break;case 31:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating AGV Machine And Ready Exit"; for(zzIndex=0; zzIndex<40l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eAGVMagAct=2);
if(bMagAutoEx){
(eDSSOTAct=1);
}else{
(eDSSOTAct=0);
}

if((((unsigned long)(unsigned char)((*(p_bAGVMagMcRunRdy)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=32);

}


else if(((((unsigned long)(unsigned char)((*(p_bRlsMag)))==(unsigned long)(unsigned char)1))|(((*(p_tyLocalBufferStat)).bBffrFull)&((*(p_bDIOutShutterClosedRS3))))|((((unsigned long)(unsigned char)((*(pa_bMagChangeOverBlk))[((*(p_usiMagConv)))-1])==(unsigned long)(unsigned char)1))&bAutoRcpEn)|((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))&(bAutoRcpEn^1)))){
(eAGVMagAct=0);
(eGotoOpsStep=33);

}else{
(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
(eAGVMagAct=0);
}

}

}break;case 32:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Conveyor Exiting Magazine"; for(zzIndex=0; zzIndex<34l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eMagConv2ClpAct=12);
(eSelClampCtrl=5);





if(((((((signed long)((*(p_eAGVMagStatus)))==(signed long)1))&(((signed long)((*(p_eAGVMagStat)))==(signed long)2)))|((((signed long)((*(p_eDSSOTStatus)))==(signed long)1))&(((signed long)((*(p_eDSSOTStat)))==(signed long)1))))&((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)12)))&((((signed long)((*(p_eSelClampCtrlStatus)))==(signed long)1))&(((signed long)((*(p_eSelClampCtrlStat)))==(signed long)5))))){
(eDSSOTAct=0);
(eAGVMagAct=0);
(eMagConv2ClpAct=0);
(eSelClampCtrl=0);
(eGotoOpsStep=36);
(bMagSizeLarge=0);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 36:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Exited and wait for AGV Leave"; for(zzIndex=0; zzIndex<38l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)(unsigned char)bAIVInPos==(unsigned long)(unsigned char)0))|((*(p_bBufferMagRemoved))))){
(ePrevExitStep=0);
(iMagMESAcptCond=0);
(eGotoOpsStep=3);
(eDSSOTAct=0);

}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 33:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Conveyor Exiting Magazine Manually"; for(zzIndex=0; zzIndex<43l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((unsigned long)(unsigned char)((*(p_bProjLifTravMnlLoad)))==(unsigned long)(unsigned char)0))){
(eMagConv2ClpAct=8);
(eSelClampCtrl=5);
(eSafetyBarAct=5);
}else{
(eGotoOpsStep=35);
}
(ePrevExitStep=33);



if(((((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)8)))|(~((*(p_bDIMagFixedClampSen)))&Edge0001300002&1?((Edge0001300002=((*(p_bDIMagFixedClampSen)))&1),1):((Edge0001300002=((*(p_bDIMagFixedClampSen)))&1),0)))&((((signed long)((*(p_eSelClampCtrlStatus)))==(signed long)1))&(((signed long)((*(p_eSelClampCtrlStat)))==(signed long)5)))&((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)5))))){
(eSelClampCtrl=0);
(eSafetyBarAct=0);
(eMagConv2ClpAct=0);
(eGotoOpsStep=35);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}break;case 34:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Conveyor HalfWay Exiting Magazine Manually"; for(zzIndex=0; zzIndex<51l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((unsigned long)(unsigned char)((*(p_bProjLifTravMnlLoad)))==(unsigned long)(unsigned char)0))){

(eMagConv2ClpAct=9);
(eSelClampCtrl=5);
(eSafetyBarAct=5);
}else{
(eGotoOpsStep=35);
}




if(((((((signed long)((*(p_eMagConv2ClpStatus)))==(signed long)1))&(((signed long)((*(p_eMagConv2ClpStat)))==(signed long)9)))|(~((*(p_bDIMagFixedClampSen)))&Edge0001300003&1?((Edge0001300003=((*(p_bDIMagFixedClampSen)))&1),1):((Edge0001300003=((*(p_bDIMagFixedClampSen)))&1),0)))&((((signed long)((*(p_eSelClampCtrlStatus)))==(signed long)1))&(((signed long)((*(p_eSelClampCtrlStat)))==(signed long)5)))&((((signed long)((*(p_eSafetyBarStatus)))==(signed long)1))&(((signed long)((*(p_eSafetyBarStat)))==(signed long)5))))){
(eSelClampCtrl=0);
(eSafetyBarAct=0);
(eMagConv2ClpAct=0);
(eGotoOpsStep=35);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}break;case 35:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Exited And Waiting For Remove"; for(zzIndex=0; zzIndex<38l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eAGVMagAct=2);
if(bMagAutoEx){
(eDSSOTAct=1);
}else{
(eDSSOTAct=0);
}

(bMagExitedWait=1);

(fbEntSenOff.IN=((((unsigned long)(unsigned char)((*(p_bLocalMagEntrySen)))==(unsigned long)(unsigned char)0))&(((((*(p_bLocalBufferMagPresent)))|((*(p_bMag3OrientationChkSen1))))&((*(p_bProjLifTravMnlLoad))))^1)));;TON(&fbEntSenOff);
if((fbMagRemovedTm.Q|fbEntSenOff.Q)){
(bMagExitedWait=0);
(ePrevExitStep=0);
(iMagMESAcptCond=0);
(eGotoOpsStep=3);
(eDSSOTAct=0);

}else if((((unsigned long)(unsigned char)((*(p_bNewMag)))==(unsigned long)(unsigned char)1))){
(bMagExitedWait=0);
(eAGVMagAct=0);
(ePrevExitStep=0);
(iMagMESAcptCond=0);
(eGotoOpsStep=9);
(eDSSOTAct=0);
}

if((((unsigned long)(unsigned char)((*(p_bAGVMagMcRunRdy)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=32);
}else if((((unsigned long)(unsigned char)((*(p_bDSSOTConvStart)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=32);
}


(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;}

}

}

(bNewMagAllw=(((signed long)eOpsStep==(signed long)3)));







(bRlsMagAllw=((((signed long)eOpsStep==(signed long)21))|(((signed long)eOpsStep==(signed long)24))|(((signed long)eOpsStep==(signed long)31))|(((signed long)eOpsStep==(signed long)25))|((((signed long)eOpsStep==(signed long)19))&fbReadRFIDTO.Q)|((((signed long)eOpsStep==(signed long)28))&fbWriteRFIDTO.Q)));
(bEjectMESStep=(((signed long)eGotoOpsStep==(signed long)33)));





__AS__Action__Act_OpsInfo();


(bOpsInitDone=(((signed long)eOpsStep>(signed long)7)));
(bStepMagExitedWait=(((signed long)eOpsStep==(signed long)35)));
(bStepMagVerification=(((signed long)eOpsStep==(signed long)11)));
(bStepMagFullExit=(((signed long)eOpsStep==(signed long)32)));
(bStepMagUSCom=(((signed long)eOpsStep==(signed long)3)));


(bAGVComm3Rdy=(((((signed long)eOpsStep==(signed long)3))|(((signed long)eOpsStep==(signed long)31))|(((signed long)eOpsStep==(signed long)35))|(((signed long)eOpsStep==(signed long)8))|(((signed long)eOpsStep==(signed long)32)))&((*(p_bAGVMagMcRunRdy)))));
(bStepOpsMagAWDone=((((signed long)eOpsStep==(signed long)18))&(((signed long)eGotoOpsStep==(signed long)16))));
(bStepOpsPitchUpdated=((((signed long)eOpsStep==(signed long)22))&(((signed long)eGotoOpsStep==(signed long)21))));
(bStepPLCGrab=(((*(p_tyLocalBufferStat)).bBffrMty)&(((*(p_bMagPresentSen)))&~Edge0001300004&1?((Edge0001300004=((*(p_bMagPresentSen)))&1),1):((Edge0001300004=((*(p_bMagPresentSen)))&1),0))));
}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Sequence/Act_OpsInfo.st"
static void __AS__Action__Act_OpsInfo(void){
{

(udiStatus1=0);

if((((unsigned long)(unsigned char)((*(p_bInfoEn)))==(unsigned long)(unsigned char)1))){


(a_bMagAllwMagPresent[1-1]=(((*(p_bMagPresentSen1)))|((*(p_bMagEntrySen1)))));
(a_bMagAllwMagPresent[2-1]=(((*(p_bMagPresentSen2)))|((*(p_bMagEntrySen2)))));
(a_bMagAllwMagPresent[3-1]=(((*(p_bMagPresentSen3)))|((*(p_bMagEntrySen3)))));

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi-1]==(unsigned long)(unsigned char)1)))){
goto imp10_endfor1_0;
}
}imp10_endfor1_0:;

if((((unsigned long)udi==(unsigned long)4))){
if((((signed long)eOpsStep>(signed long)7))){
(udiStatus1=10000);
}
}


(a_tyMagAllwBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat1))));
(a_tyMagAllwBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat2))));
(a_tyMagAllwBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat3))));

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_tyMagAllwBffrStat[udi-1].bBffrFull==(unsigned long)(unsigned char)1)))){
(udiStatus1=(10001+(udi-1)));
goto imp10_endfor5_0;
}
}imp10_endfor5_0:;


if(((((unsigned long)(unsigned char)((*(p_bConvInitDone)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)1)))){

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi-1])==(unsigned long)(unsigned char)1)))){
goto imp10_endfor8_0;
}
}imp10_endfor8_0:;

if((((unsigned long)udi<(unsigned long)4))){

if((((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)1))){

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi1-1])==(unsigned long)(unsigned char)0)))){
goto imp10_endfor12_0;
}
}imp10_endfor12_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10004);
}

}else{

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi1-1])==(unsigned long)(unsigned char)1)))){
goto imp10_endfor15_0;
}
}imp10_endfor15_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10005);
}

}

}else{

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1)))){
goto imp10_endfor18_0;
}
}imp10_endfor18_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10004);
}

}

}
}



if((fbMagRemovedTm.Q|bNewMagVerified)){
(bNewMagVerifyStarted=0);
}

(fbVerifyWarningDelay.IN=(bNewMagVerifyStarted&(((unsigned long)(unsigned char)bNewMagVerified==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bStepMagVerification==(unsigned long)(unsigned char)0))));;TON(&fbVerifyWarningDelay);

if((fbVerifyWarningDelay.Q&(((unsigned long)(unsigned char)((*(p_tyBufferStat3)).bBffrFull)==(unsigned long)(unsigned char)0)))){
if(((((*(p_bMagAWCloseLimit)))|((*(p_bMagAWOpenLimit))))&((*(p_tyBufferStat3)).bBffrMty))){
(bLimitSenActivated=1);
(udiStatus1=10010);
}else if(bLimitSenActivated){
(udiStatus1=10010);
}else if((((unsigned long)(unsigned char)bManualUnloadMag==(unsigned long)(unsigned char)0))){
switch(((*(p_bLinkMagRcpCurrRcpMagModel)))){
case 0:{
if(bWrongHeight){
(udiStatus1=10007);
}else if((((unsigned long)(unsigned char)((*(p_bDIMagConvHeightSen)))==(unsigned long)(unsigned char)0))){
(bWrongHeight=1);

}else if(bWrongWidth){
(udiStatus1=10006);
}


else if((((*(p_bDIMagConvSelUnclampRS)))|((*(p_bDIMagConvCAB717Sen)))|(((unsigned long)(unsigned char)((*(p_bDIMagConvSmallSen)))==(unsigned long)(unsigned char)0)))){
(bWrongWidth=1);

}

}break;case 1:{
if(bWrongHeight){
(udiStatus1=10007);
}else if((((unsigned long)(unsigned char)((*(p_bDIMagConvHeightSen)))==(unsigned long)(unsigned char)1))){
(bWrongHeight=1);

}else if(bWrongWidth){
(udiStatus1=10006);
}


else if((((*(p_bDIMagConvSelUnclampRS)))|((*(p_bDIMagConvCAB717Sen)))|(((unsigned long)(unsigned char)((*(p_bDIMagConvSmallSen)))==(unsigned long)(unsigned char)0)))){
(bWrongWidth=1);

}

}break;case 2:{
if(bWrongHeight){
(udiStatus1=10007);
}else if(((*(p_bDIMagConvHeightSen)))){
(bWrongHeight=1);

}else if(bWrongWidth){
(udiStatus1=10006);
}


else if(((((unsigned long)(unsigned char)((*(p_bDIMagConvSelUnclampRS)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDIMagConvCAB717Sen)))==(unsigned long)(unsigned char)0))|((*(p_bDIMagConvLargeSen))))){
(bWrongWidth=1);

}

}break;}
}else if(bManualUnloadMag){
(udiStatus1=10008);
}
}




else if(((((unsigned long)udiStatus1!=(unsigned long)10006))&(((unsigned long)udiStatus1!=(unsigned long)10007))&(((unsigned long)(unsigned char)((*(p_tyBufferStat1)).bBffrFull)==(unsigned long)(unsigned char)0))&bStepMagExitedWait&((*(p_bLocalMagEntrySen))))){
(udiStatus1=10008);
(bManualUnloadMag=1);

}else{
(bLimitSenActivated=0);
(bWrongHeight=0);
(bWrongWidth=0);
}



(bIncorrectMagazineModel=((((unsigned long)udiStatus1==(unsigned long)10006))|(((unsigned long)udiStatus1==(unsigned long)10007))));



if((((((unsigned long)udiStatus1==(unsigned long)0))|(((unsigned long)udiStatus1==(unsigned long)10008)))&((((signed long)((*(p_eCustomerReq)))==(signed long)5))|(((signed long)((*(p_eCustomerReq)))==(signed long)6))))){
if((((signed long)eOpsStep==(signed long)19))){
if((fbReadRFIDTO.Q^1)){
(udiStatus1=10012);
}else{
(udiStatus1=10013);
}
}else if((((signed long)eOpsStep==(signed long)28))){
if((fbWriteRFIDTO.Q^1)){
(udiStatus1=10014);
}else{
(udiStatus1=10015);
}
}else if((((((signed long)eOpsStep==(signed long)31))|(((signed long)eOpsStep==(signed long)33))|(((signed long)eOpsStep==(signed long)35)))&(((signed long)(signed long)(short)iMagMESAcptCond<(signed long)(signed long)(short)0)))){
(udiStatus1=10016);
}
}



}imp10_else29_2:imp10_end29_0:imp10_else28_0:imp10_end28_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Sequence/Act_OpsRst.st"
static void __AS__Action__Act_OpsRst(void){
{
(udiStatus1=0);

(eBufferAct=0);
(eMagConv2ClpAct=0);
(eUSSMEMAAct=0);
(eAGVMagAct=0);
(eSelClampCtrl=0);
(eSafetyBarAct=0);
(eMagAWEngageAct=0);
(eMagAWAct=0);
(eDSSOTAct=0);
(eUSSOTAct=0);

(bNewMagVerified=0);
(bNewMagVerifyStarted=0);
(bReadRFID=0);
(bWriteRFID=0);


}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Sequence/Act_LogStep.st"
static void __AS__Action__Act_LogStep(void){
{

if((bClsLog&~Edge0000900000&1?((Edge0000900000=bClsLog&1),1):((Edge0000900000=bClsLog&1),0))){
__AS__MEMSET(((unsigned long)(&logStep)),0,4000);
(logIndexStep=0);
}

(blog=(((signed long)eOpsStep!=(signed long)eGotoOpsStepDummy)));

if(blog){
(logStep[logIndexStep]=eOpsStep);
(logIndexStep=(logIndexStep+1));
if((((signed long)(signed long)(short)logIndexStep>(signed long)999))){
(logIndexStep=0);
}
}

(eGotoOpsStepDummy=eOpsStep);


}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Temp/Includes/AS_TempDecl/3Mag_UL_MagPlat/GlobalComponents/MpComponents.var\\\" scope \\\"global\\\"\\n\"");
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
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsPosAllwGo.typ\\\" scope \\\"restricted\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsMagCon2/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsMagCon2/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL3/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsMagCon2/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'logStep'\\n\"");
__asm__(".ascii \"plcdata_const 'a_udiMagAllwPriority'\\n\"");
__asm__(".ascii \"plcdata_const 'a_udiMagAllwSum'\\n\"");
__asm__(".previous");
