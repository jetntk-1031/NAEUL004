#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsLifMagU/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.st"
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
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkDIInMagConvExtSen=p_DIInMagConvExtSen);
(p_bLinkDIOutMagConvEntSen=p_DIOutMagConvEntSen);
(p_bLinkDIOutMagConvMidSen=p_DIOutMagConvMidSen);

(p_bLinkDIInMagConv2ExtSen=p_DIInMagConv2ExtSen);
(p_bLinkDIOutMagConv2EntSen=p_DIOutMagConv2EntSen);
(p_bLinkDIOutMagConv2MidSen=p_DIOutMagConv2MidSen);

(p_bOpsOutMagConvStepInitDone=p_OpsOutMagConvStepInitDone);
(p_bOpsOutMagConv2StepInitDone=p_OpsOutMagConv2StepInitDone);

(p_bLinkOpsMnlUnloadMag=p_UIOpsMnlUnloadMag);
(p_bLinkOpsOutMagConvStepWaitRmv=p_OpsOutMagConvStepWaitToRmvMag);
(p_bLinkOpsOutMagConv2StepWaitRmv=p_OpsOutMagConv2StepWaitToRmvMag);


(p_udiRstErr=p_RstErrReset);
(p_bRun=p_OpsRun);
(p_bStop=p_OpsStop);
(p_bStep=p_OpsStep);

(p_sProgNm=p_NtParamOpsMagUL1ProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(pa_bMagDis=p_OpsTravLifULMagDis);
(pa_bMagRej=p_OpsTravLifULMagRej);
(p_bUnloadMag=p_UIUnloadMag);
(p_bLinkFollower2USAllow=p_Follower2USAllow);
(p_eNtParamProjMagBuffferActLoad=p_NtParamProjMagBuffferActLoad);

(p_bConvInitDone=p_OpsTravLifULInitDone);
(p_bConvHvBrd=p_PshrConvHvBrd);
(p_bConvGdBrd=p_PshrConvGdBrd);

(p_tyBufferStat1=p_Buffer1BffrStat);
(p_tyBufferStat2=p_Buffer2BffrStat);
(p_tyBufferStat3=p_Buffer3BffrStat);

(p_bMagPresentSen1=p_DIMagPresentSen1);
(p_bMagPresentSen2=p_DIMagPresentSen2);
(p_bMagPresentSen3=p_DIMagPresentSen3);

(p_bBufferMagPresent1=p_Buffer1MagPresent);
(p_bBufferMagPresent2=p_Buffer2MagPresent);
(p_bBufferMagPresent3=p_Buffer3MagPresent);

(p_dtBufferMagPresentTm1=p_Buffer1MagPresentTm);
(p_dtBufferMagPresentTm2=p_Buffer2MagPresentTm);
(p_dtBufferMagPresentTm3=p_Buffer3MagPresentTm);

(p_eLifterStat=p_LifterBtmStat);
(p_eLifterStatus=p_LifterBtmStatus);

(p_eBufferStat1=p_Buffer1Stat);
(p_eBufferStatus1=p_Buffer1Status);

(p_eBufferStat2=p_Buffer2Stat);
(p_eBufferStatus2=p_Buffer2Status);

(p_eBufferStat3=p_Buffer3Stat);
(p_eBufferStatus3=p_Buffer3Status);

(p_eUSSMEMAStat1=p_USSMEMA1Stat);
(p_eUSSMEMAStatus1=p_USSMEMA1Status);
(p_bUSSMEMATransporting1=p_USSMEMA1Transporting);
(p_bUSSMEMAConvStart1=p_USSMEMA1ConvStart);
(p_bUSSMEMAConvStop1=p_USSMEMA1ConvStop);

(p_eUSSMEMAStat2=p_USSMEMA2Stat);
(p_eUSSMEMAStatus2=p_USSMEMA2Status);
(p_bUSSMEMATransporting2=p_USSMEMA2Transporting);
(p_bUSSMEMAConvStart2=p_USSMEMA2ConvStart);
(p_bUSSMEMAConvStop2=p_USSMEMA2ConvStop);

(p_eUSSMEMAStat3=p_USSMEMA3Stat);
(p_eUSSMEMAStatus3=p_USSMEMA3Status);
(p_bUSSMEMATransporting3=p_USSMEMA3Transporting);
(p_bUSSMEMAConvStart3=p_USSMEMA3ConvStart);
(p_bUSSMEMAConvStop3=p_USSMEMA3ConvStop);

(p_bDIInShutterOpenRS=p_DIInShutterOpenRS);
(p_bDIInShutterCloseRS=p_DIInShutterCloseRS);
(p_bDIOutShutterOpenRS=p_DIOutShutterOpenRS);
(p_bDIOutShutterCloseRS=p_DIOutShutterCloseRS);

(p_bDIPusherRetRS=p_DIPusherRetRS);

(p_sProdRcpCurrRcp1Name=p_ProdRcpCurrRcp1Nm);
(p_sProdRcpCurrRcp2Name=p_ProdRcpCurrRcp2Nm);


(p_eLifter2Stat=p_Lifter2Stat);
(p_eLifter2Status=p_Lifter2Status);
(p_eLifterMagConvStat=p_LifterMagConvStat);
(p_eLifterMagConvStatus=p_LifterMagConvStatus);
(p_eLifterMagConv2Stat=p_LifterMagConv2Stat);
(p_eLifterMagConv2Status=p_LifterMagConv2Status);

(p_eInMagConvStat=p_InMagConvStat);
(p_eInMagConvStatus=p_InMagConvStatus);
(p_eOutMagConvStat=p_OutMagConvStat);
(p_eOutMagConvStatus=p_OutMagConvStatus);
(p_eInMagConv2Stat=p_InMagConv2Stat);
(p_eInMagConv2Status=p_InMagConv2Stat);
(p_eOutMagConv2Stat=p_OutMagConv2Stat);
(p_eOutMagConv2Status=p_OutMagConv2Stat);

(p_bMagConvLanePrep=p_NtParamProjMagConvLane1Prep);
(p_bMagConvLane2Prep=p_NtParamProjMagConvLane2Prep);
(p_bNtParamProjLifter2Prep=p_NtParamProjLifter2Prep);
(p_bOutShutterExtended=p_Pneu2SenOutShutterExtended);

(p_bEn=p_NtParamProjLifterMagPlatform);



}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_Link.st"
static void __AS__Action__Act_Link(void){
{


((*(p_bUSAllow))=(((*(p_bLinkFollower2USAllow)))&(((signed long)((*(p_sProdRcpCurrRcp1Name)))==(signed long)((*(p_sProdRcpCurrRcp2Name)))))));



if((((*(p_bMagConvLanePrep)))&((*(p_bMagConvLane2Prep))))){
if(((((signed long)usiMag1Rdy==(signed long)1))&((*(p_bLinkDIInMagConvExtSen))))){
(usiMag1Rdy=2);
}
else if(((((signed long)usiMag1Rdy==(signed long)4))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConvEntSen)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConvMidSen)))==(unsigned long)(unsigned char)0))&((*(p_bOpsOutMagConvStepInitDone)))&(((unsigned long)(unsigned char)((*(p_bLinkOpsOutMagConvStepWaitRmv)))==(unsigned long)(unsigned char)0)))){
(usiMag1Rdy=5);
}


if(((((signed long)((*(p_usiMag2Rdy)))==(signed long)1))&((*(p_bLinkDIInMagConv2ExtSen))))){
((*(p_usiMag2Rdy))=2);
}
else if(((((signed long)((*(p_usiMag2Rdy)))==(signed long)4))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConv2EntSen)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConv2MidSen)))==(unsigned long)(unsigned char)0))&((*(p_bOpsOutMagConv2StepInitDone)))&(((unsigned long)(unsigned char)((*(p_bLinkOpsOutMagConv2StepWaitRmv)))==(unsigned long)(unsigned char)0)))){
((*(p_usiMag2Rdy))=5);
}
}
}imp7_else2_1:imp7_end2_0:imp7_else0_0:imp7_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp14_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_InitLocal.st"
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

(pa_bMagDis=((unsigned long)(&a_bMagDis)));
(pa_bMagRej=((unsigned long)(&a_bMagRej)));
(p_bUnloadMag=((unsigned long)(&bUnloadMag)));
(p_bUSAllow=((unsigned long)(&bUSAllow)));
(p_eNtParamProjMagBuffferActLoad=((unsigned long)(&eMagBuffferActLoad)));

(p_bConvInitDone=((unsigned long)(&bConvInitDone)));
(p_bConvHvBrd=((unsigned long)(&bConvHvBrd)));
(p_bConvGdBrd=((unsigned long)(&bConvGdBrd)));

(p_tyBufferStat1=((unsigned long)(&tyBufferStat1)));
(p_tyBufferStat2=((unsigned long)(&tyBufferStat2)));
(p_tyBufferStat3=((unsigned long)(&tyBufferStat3)));

(p_bMagPresentSen1=((unsigned long)(&bMagPresentSen1)));
(p_bMagPresentSen2=((unsigned long)(&bMagPresentSen2)));
(p_bMagPresentSen3=((unsigned long)(&bMagPresentSen3)));

(p_bBufferMagPresent1=((unsigned long)(&bBufferMagPresent1)));
(p_bBufferMagPresent2=((unsigned long)(&bBufferMagPresent2)));
(p_bBufferMagPresent3=((unsigned long)(&bBufferMagPresent3)));

(p_dtBufferMagPresentTm1=((unsigned long)(&dtBufferMagPresentTm1)));
(p_dtBufferMagPresentTm2=((unsigned long)(&dtBufferMagPresentTm2)));
(p_dtBufferMagPresentTm3=((unsigned long)(&dtBufferMagPresentTm3)));

(p_eLifterStat=((unsigned long)(&eLifterStat)));
(p_eLifterStatus=((unsigned long)(&eLifterStatus)));

(p_eBufferStat1=((unsigned long)(&eBufferStat1)));
(p_eBufferStatus1=((unsigned long)(&eBufferStatus1)));

(p_eBufferStat2=((unsigned long)(&eBufferStat2)));
(p_eBufferStatus2=((unsigned long)(&eBufferStatus2)));

(p_eBufferStat3=((unsigned long)(&eBufferStat3)));
(p_eBufferStatus3=((unsigned long)(&eBufferStatus3)));

(p_eUSSMEMAStat1=((unsigned long)(&eUSSMEMAStat1)));
(p_eUSSMEMAStatus1=((unsigned long)(&eUSSMEMAStatus1)));
(p_bUSSMEMATransporting1=((unsigned long)(&bUSSMEMATransporting1)));
(p_bUSSMEMAConvStart1=((unsigned long)(&bUSSMEMAConvStart1)));
(p_bUSSMEMAConvStop1=((unsigned long)(&bUSSMEMAConvStop1)));

(p_eUSSMEMAStat2=((unsigned long)(&eUSSMEMAStat2)));
(p_eUSSMEMAStatus2=((unsigned long)(&eUSSMEMAStatus2)));
(p_bUSSMEMATransporting2=((unsigned long)(&bUSSMEMATransporting2)));
(p_bUSSMEMAConvStart2=((unsigned long)(&bUSSMEMAConvStart2)));
(p_bUSSMEMAConvStop2=((unsigned long)(&bUSSMEMAConvStop2)));

(p_eUSSMEMAStat3=((unsigned long)(&eUSSMEMAStat3)));
(p_eUSSMEMAStatus3=((unsigned long)(&eUSSMEMAStatus3)));
(p_bUSSMEMATransporting3=((unsigned long)(&bUSSMEMATransporting3)));
(p_bUSSMEMAConvStart3=((unsigned long)(&bUSSMEMAConvStart3)));
(p_bUSSMEMAConvStop3=((unsigned long)(&bUSSMEMAConvStop3)));


(p_eLifter2Stat=((unsigned long)(&eLifter2Stat)));
(p_eLifter2Status=((unsigned long)(&eLifter2Status)));
(p_eLifterMagConvStat=((unsigned long)(&eLifterMagConvStat)));
(p_eLifterMagConvStatus=((unsigned long)(&eLifterMagConvStatus)));
(p_eLifterMagConv2Stat=((unsigned long)(&eLifterMagConv2Stat)));
(p_eLifterMagConv2Status=((unsigned long)(&eLifterMagConv2Status)));

(p_eInMagConvStat=((unsigned long)(&eInMagConvStat)));
(p_eInMagConvStatus=((unsigned long)(&eInMagConvStatus)));
(p_eOutMagConvStat=((unsigned long)(&eOutMagConvStat)));
(p_eOutMagConvStatus=((unsigned long)(&eOutMagConvStatus)));
(p_eInMagConv2Stat=((unsigned long)(&eInMagConv2Stat)));
(p_eInMagConv2Status=((unsigned long)(&eInMagConv2Status)));
(p_eOutMagConv2Stat=((unsigned long)(&eOutMagConv2Stat)));
(p_eOutMagConv2Status=((unsigned long)(&eOutMagConv2Status)));


(p_usiMag1Rdy=((unsigned long)(&usiMag1Rdy)));
(p_usiMag2Rdy=((unsigned long)(&usiMag2Rdy)));
(p_bPresentMag1=((unsigned long)(&bPresentMag1)));
(p_bPresentMag2=((unsigned long)(&bPresentMag2)));

(p_bMagConvLanePrep=((unsigned long)(&bMagConvLanePrep)));
}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_Background.st"
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

}imp3_else5_0:imp3_end5_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000100000&1?((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sOpsLifMagULProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


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
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Act_AlarmInfo1.st"
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
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Sequence/Act_OpsInitial.st"
static void __AS__Action__Act_OpsInitial(void){
{
(eOpsStep=0);
(eGotoOpsStep=3);
(eOpsStep1=0);
(eGotoOpsStep1=13);
(eOpsStep2=0);
(eGotoOpsStep2=13);

}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Sequence/Act_OpsRun.st"
static void __AS__Action__Act_OpsRun(void){
{



























if((((signed long)eGotoOpsStep!=(signed long)eOpsStep))){

switch(eGotoOpsStep){
case 3:{

if(((((*(p_bMagConvLanePrep))^1))|(((*(p_bMagConvLanePrep)))&(((signed long)eOpsStep1>(signed long)13))))){
(eOpsStep=eGotoOpsStep);
}
}break;default: {
(eOpsStep=eGotoOpsStep);

}break;}

}

if((((signed long)eOpsStep==(signed long)eGotoOpsStep))){

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

switch(eOpsStep){

case 3:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Lifter"; for(zzIndex=0; zzIndex<19l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((unsigned long)(unsigned char)((*(p_bDIOutShutterCloseRS)))==(unsigned long)(unsigned char)1))){
(eLifterAct=21);
}

if(((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)21)))){
(eLifterAct=0);
(eGotoOpsStep=4);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 4:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Comparing Magazine"; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(a_tyMagAllwBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat1))));
(a_tyMagAllwBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat2))));
(a_tyMagAllwBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat3))));

(a_bMagAllwMagPresent[1-1]=((*(p_bBufferMagPresent1))));
(a_bMagAllwMagPresent[2-1]=((*(p_bBufferMagPresent2))));
(a_bMagAllwMagPresent[3-1]=((*(p_bBufferMagPresent3))));

(a_udiMagAllwMagPresentTm[1-1]=(unsigned long)((*(p_dtBufferMagPresentTm1))));
(a_udiMagAllwMagPresentTm[2-1]=(unsigned long)((*(p_dtBufferMagPresentTm2))));
(a_udiMagAllwMagPresentTm[3-1]=(unsigned long)((*(p_dtBufferMagPresentTm3))));


__AS__MEMSET(((unsigned long)(&a_udiMagAllwPriority)),0,12);

for((udi=1);udi<=3;udi+=1){
(udiCount=3);
(udiCmpTm=a_udiMagAllwMagPresentTm[udi-1]);

for((udi1=1);udi1<=3;udi1+=1){
if((((unsigned long)a_udiMagAllwMagPresentTm[udi1-1]>(unsigned long)udiCmpTm))){
(udiCount=(udiCount-1));
}
}imp12_endfor9_0:;

(a_udiMagAllwPriority[udi-1]=udiCount);
}imp12_endfor8_0:;

for((udi=3);udi>=1;udi+=-1){
for((udi1=3);udi1>=1;udi1+=-1){
if(((((unsigned long)udi!=(unsigned long)udi1))&(((unsigned long)a_udiMagAllwPriority[udi-1]==(unsigned long)a_udiMagAllwPriority[udi1-1])))){
(a_udiMagAllwPriority[udi1-1]=(a_udiMagAllwPriority[udi1-1]-1));
}
}imp12_endfor12_0:;
}imp12_endfor11_0:;


__AS__MEMSET(((unsigned long)(&a_udiMagAllwSum)),0,12);

for((udi=1);udi<=3;udi+=1){

(a_udiMagAllwSum[udi-1]=(a_udiMagAllwSum[udi-1]+a_udiMagAllwPriority[udi-1]));

if((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))){
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

}imp12_endfor14_0:;




if(((((unsigned long)(unsigned char)((*(pa_bMagRej))[1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[2-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[3-1])==(unsigned long)(unsigned char)0)))){
(bConvHvBrdAllwGo=((*(p_bConvHvBrd))));
}else{
(bConvHvBrdAllwGo=0);
}

(udiMagAllwGo=99);

for((udi=1);udi<=3;udi+=1){


if((((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)5000))&(((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)6000))&((((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)1))|bConvHvBrdAllwGo))|((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)11000))&(((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)0))))){

if((((unsigned long)udiMagAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)a_udiMagAllwSum[udiMagAllwGo-1]))){
(udiMagAllwGo=udi);
}
}else{
(udiMagAllwGo=udi);
}

}

}imp12_endfor21_0:;

if((((unsigned long)udiMagAllwGo==(unsigned long)99))){

for((udi=1);udi<=3;udi+=1){


if((((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)4500))&(((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)6000))&(((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)10500))&(((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)0))))){

if((((unsigned long)udiMagAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)a_udiMagAllwSum[udiMagAllwGo-1]))){
(udiMagAllwGo=udi);
}
}else{
(udiMagAllwGo=udi);
}

}

}imp12_endfor26_0:;

}

if((((unsigned long)udiMagAllwGo==(unsigned long)99))){

for((udi=1);udi<=3;udi+=1){


if((((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)4500))&(((unsigned long)a_udiMagAllwSum[udi-1]<(unsigned long)6000)))|(((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)10500)))){

if((((unsigned long)udiMagAllwGo!=(unsigned long)99))){
(udiMagAllwGo=99);
goto imp12_endfor31_0;
}else{
(udiMagAllwGo=udi);
}

}

}imp12_endfor31_0:;

}

if(((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)1))&(((unsigned long)udiMagAllwGo!=(unsigned long)99)))){

(bMagNxtUnloadGd=(((*(pa_bMagRej))[udiMagAllwGo-1])^1));
(eMagNxtLoad=udiMagAllwGo);
(eGotoOpsStep=5);

if((((signed long)eMagNxtLoad==(signed long)1))){
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat1))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent1))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm1))))));

(p_eLocalBufferAct=((unsigned long)(&eBufferAct1)));
(p_eLocalBufferStat=((unsigned long)(&((*(p_eBufferStat1))))));
(p_eLocalBufferStatus=((unsigned long)(&((*(p_eBufferStatus1))))));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct1)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat1))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus1))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting1))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart1))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop1))))));

}else if((((signed long)eMagNxtLoad==(signed long)2))){
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat2))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent2))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm2))))));

(p_eLocalBufferAct=((unsigned long)(&eBufferAct2)));
(p_eLocalBufferStat=((unsigned long)(&((*(p_eBufferStat2))))));
(p_eLocalBufferStatus=((unsigned long)(&((*(p_eBufferStatus2))))));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct2)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat2))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus2))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting2))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart2))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop2))))));

}else if((((signed long)eMagNxtLoad==(signed long)3))){
(p_tyLocalBufferStat=((unsigned long)(&((*(p_tyBufferStat3))))));
(p_bLocalBufferMagPresent=((unsigned long)(&((*(p_bBufferMagPresent3))))));
(p_dtLocalBufferMagPresentTm=((unsigned long)(&((*(p_dtBufferMagPresentTm3))))));

(p_eLocalBufferAct=((unsigned long)(&eBufferAct3)));
(p_eLocalBufferStat=((unsigned long)(&((*(p_eBufferStat3))))));
(p_eLocalBufferStatus=((unsigned long)(&((*(p_eBufferStatus3))))));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct3)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat3))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus3))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting3))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart3))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop3))))));

}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{
(eMagNxtLoad=0);
(bPaused=((*(p_bStop))));
}


if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);
}

}break;case 5:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Computing Next Load Buffer"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

((*(p_eLocalBufferAct))=11);

if(((((signed long)((*(p_eLocalBufferStatus)))==(signed long)1))&(((signed long)((*(p_eLocalBufferStat)))==(signed long)11)))){
((*(p_eLocalBufferAct))=0);
(eGotoOpsStep=6);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);
}

}

}break;case 6:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Moving Lifter To Next Load Position"; for(zzIndex=0; zzIndex<35l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((unsigned long)(unsigned char)((*(p_bDIOutShutterCloseRS)))==(unsigned long)(unsigned char)0))){
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

if((((unsigned long)(unsigned char)((*(p_bDIOutShutterCloseRS)))==(unsigned long)(unsigned char)1))){


if((((signed long)eMagNxtLoad==(signed long)1))){
(eLifterAct=9);

}else if((((signed long)eMagNxtLoad==(signed long)2))){
if((((unsigned long)(unsigned char)((*(p_bMagConvLanePrep)))==(unsigned long)(unsigned char)0))){
(eLifterAct=12);
}else if(((*(p_bMagPresentSen2)))){
(eLifter2Act=12);
(bLift2Move=1);
}

}else if((((signed long)eMagNxtLoad==(signed long)3))){
(eLifterAct=15);

}else if((((signed long)eMagNxtLoad==(signed long)0))){
if((((unsigned long)(unsigned char)((*(p_bNtParamProjLifter2Prep)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=4);
}else{
(eGotoOpsStep=12);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


}else if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);
}

}



if((((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)9)))|((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)12)))|((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)15))))){

(eLifterAct=0);

(eGotoOpsStep=7);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);
}
}
if(((*(p_bNtParamProjLifter2Prep)))){
if(((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)12)))){
(eLifter2Act=0);
(bLift2Move=0);
(eGotoOpsStep=7);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);
}
}
}
}break;case 12:{

if(((((signed long)eOpsStep1==(signed long)16))&((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)9))))){
(eLifterAct=0);
}else if(((((signed long)eOpsStep2==(signed long)16))&((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)12))))){
(bLift2Move=0);
(eLifter2Act=0);
}else if(((((signed long)((*(p_eLifterStatus)))==(signed long)0))|(((signed long)((*(p_eLifter2Status)))==(signed long)0)))){
(eGotoOpsStep=4);
}


}break;case 7:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating Buffer Upstream"; for(zzIndex=0; zzIndex<29l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

((*(p_eLocalUSSMEMAAct))=1);

if((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=8);

}else if((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))){
((*(p_eLocalUSSMEMAAct))=0);
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{

if(((((unsigned long)(unsigned char)((*(p_bLocalBufferMagPresent)))==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))){
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if((((*(p_tyLocalBufferStat)).bBffrMty)&~Edge0001200000&1?((Edge0001200000=((*(p_tyLocalBufferStat)).bBffrMty)&1),1):((Edge0001200000=((*(p_tyLocalBufferStat)).bBffrMty)&1),0))){
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if((((unsigned long)(unsigned char)((*(pa_bMagDis))[udiMagAllwGo-1])==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}


if((((unsigned long)(unsigned char)bMagNxtUnloadGd!=(unsigned long)(unsigned char)((*(p_bConvGdBrd)))))){
for((udi=1);udi<=3;udi+=1){
if((((unsigned long)a_udiMagAllwSum[udi-1]>=(unsigned long)6000))){
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
goto imp12_endfor53_0;
}
}imp12_endfor53_0:;
}


if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1))){
(eMagNxtLoad=0);
(eGotoOpsStep=10);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

if(((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))|(((signed long)eGotoOpsStep==(signed long)4))|(((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)1)))){
((*(p_eLocalUSSMEMAAct))=0);
}

}

}break;case 8:{
if((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)0))){
((*(p_eLocalUSSMEMAAct))=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{

if(((*(p_bLocalUSSMEMAConvStart)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Transferring Board Into Magazine"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((signed long)((*(p_eNtParamProjMagBuffferActLoad)))==(signed long)0))){

((*(p_eLocalBufferAct))=5);
}


}

if(((*(p_bLocalUSSMEMAConvStop)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stop Transferring"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


}

if(((((signed long)((*(p_eLocalUSSMEMAStatus)))==(signed long)1))&(((signed long)((*(p_eLocalUSSMEMAStat)))==(signed long)1)))){
((*(p_eLocalUSSMEMAAct))=0);
(eGotoOpsStep=9);
}

}

}break;case 9:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Loading Buffer"; for(zzIndex=0; zzIndex<14l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((signed long)((*(p_eNtParamProjMagBuffferActLoad)))==(signed long)1))){
((*(p_eLocalBufferAct))=5);
}


if(((((signed long)((*(p_eLocalBufferStatus)))==(signed long)1))&(((signed long)((*(p_eLocalBufferStat)))==(signed long)5)))){
((*(p_eLocalBufferAct))=0);
(eMagNxtLoad=0);
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 10:{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Moving Lifter To Unload Position"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eLifterAct=1);

if(((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)1)))){
(eLifterAct=0);

(eGotoOpsStep=11);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 11:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Unloading Magazine"; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((unsigned long)(unsigned char)((*(p_bUnloadMag)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=4);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}

}break;}

}

}

__AS__Action__Act_OpsInfo();


(bUnloading=(((signed long)eOpsStep==(signed long)11)));
(bLifterMoving=(((signed long)eOpsStep==(signed long)6)));


if((((*(p_bNtParamProjLifter2Prep)))&((*(p_bMagConvLanePrep))))){
if((((signed long)eGotoOpsStep1!=(signed long)eOpsStep1))){
switch(eGotoOpsStep1){

case 16:{
if(((((signed long)eOpsStep==(signed long)12))|(((signed long)eOpsStep==(signed long)4)))){
(eOpsStep1=eGotoOpsStep1);
}

}break;case 14:{
if((((signed long)eOpsStep1==(signed long)15))){
(usiMag1Rdy=1);
(eOpsStep1=eGotoOpsStep1);
}else if((((signed long)eOpsStep1==(signed long)18))){
(usiMag1Rdy=0);
(eOpsStep1=eGotoOpsStep1);
}else if((((signed long)eOpsStep1==(signed long)17))){
(usiMag1Rdy=3);
(eOpsStep1=eGotoOpsStep1);
}else{
(eOpsStep1=eGotoOpsStep1);
}

}break;case 18:{
if((((signed long)eOpsStep1==(signed long)16))){
(usiMag1Rdy=4);
(eOpsStep1=eGotoOpsStep1);
}

}break;default: {
(eOpsStep1=eGotoOpsStep1);
}break;}
}

if((((signed long)eOpsStep1==(signed long)eGotoOpsStep1))){
if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

switch(eOpsStep1){
case 13:{
if((bMagSetFullExit&((*(p_bLinkDIOutMagConvEntSen))))){
(eLifterConvAct=11);
}else{
(eLifterConvAct=3);
}

if((((((signed long)((*(p_eLifterMagConvStat)))==(signed long)3))|(((signed long)((*(p_eLifterMagConvStat)))==(signed long)11)))&(((signed long)((*(p_eLifterMagConvStatus)))==(signed long)1)))){
(eLifterConvAct=0);
(eGotoOpsStep1=14);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 14:{
(bMagSetFullExit=0);
if(((*(p_bMagConvLanePrep)))){
if(((*(p_bMagPresentSen1)))){

}else if(((((signed long)usiMag1Rdy==(signed long)2))&(((unsigned long)(unsigned char)((*(p_bMagPresentSen1)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep1=17);
}




else if(((((signed long)usiMag1Rdy==(signed long)0))&(((unsigned long)(unsigned char)((*(p_bMagPresentSen1)))==(unsigned long)(unsigned char)0))&(((signed long)eOpsStep!=(signed long)3))&((*(p_bOutShutterExtended)))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConvEntSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep1=15);
}







if((((*(p_bMagConvLanePrep)))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_tyMagAllwBffrStat[1-1].bBffrFull==(unsigned long)(unsigned char)1))&((*(p_bOutShutterExtended))))){
(eMagNxtLoad=0);
(eGotoOpsStep1=16);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 17:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Lifter Conveyor Entering"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eLifterConvAct=6);

if(((((signed long)((*(p_eLifterMagConvStat)))==(signed long)6))&(((signed long)((*(p_eLifterMagConvStatus)))==(signed long)1)))){
(eLifterConvAct=0);
(bLocalMag1InPos=1);
(eGotoOpsStep1=14);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 18:{
if((((signed long)usiMag1Rdy==(signed long)5))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Lifter Conveyor Exiting"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eLifterConvAct=11);
(bMagSetFullExit=1);
}

if(((((signed long)((*(p_eLifterMagConvStat)))==(signed long)11))&(((signed long)((*(p_eLifterMagConvStatus)))==(signed long)1)))){
(eLifterConvAct=0);
(eGotoOpsStep1=14);
(bMagSetFullExit=0);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 15:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Move To Loading Position"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if(((((signed long)eOpsStep!=(signed long)3))&(((signed long)eOpsStep!=(signed long)6)))){
(eLifterAct=4);
}

if(((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)4)))){
(eLifterAct=0);
(eGotoOpsStep1=14);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 16:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Move To Unload Position"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((signed long)eOpsStep!=(signed long)3))&(((signed long)eOpsStep!=(signed long)6))&(((signed long)((*(p_eLifterStat)))!=(signed long)9)))){
(eMagNxtLoad=0);
(eLifterAct=5);
}

if(((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)5)))){
(eLifterAct=0);
(eGotoOpsStep1=18);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;}
}
}
}
if((((*(p_bNtParamProjLifter2Prep)))&((*(p_bMagConvLane2Prep))))){
__AS__Action__Act_OpsRun2();
}
(bStepInitDone1=((((signed long)eOpsStep>(signed long)3))&(((signed long)eOpsStep1>(signed long)13))));


(bStepEntMag1=(((signed long)eOpsStep1==(signed long)17)));
(bStepExtMag1=(((signed long)eOpsStep1==(signed long)18)));

(bStepInitDone2=(((signed long)eOpsStep2>(signed long)3)));
(bStepLiftMagIdle2=(((signed long)eOpsStep2==(signed long)14)));
(bStepEntMag2=(((signed long)eOpsStep2==(signed long)17)));
(bStepExtMag2=(((signed long)eOpsStep2==(signed long)18)));


}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Sequence/Act_OpsRun2.st"
static void __AS__Action__Act_OpsRun2(void){
{




























if((((signed long)eGotoOpsStep2!=(signed long)eOpsStep2))){
switch(eGotoOpsStep2){

case 16:{
if(((((signed long)eOpsStep==(signed long)12))|(((signed long)eOpsStep==(signed long)4)))){
(eOpsStep2=eGotoOpsStep2);
}

}break;case 14:{
if((((signed long)eOpsStep2==(signed long)15))){
(usiMag2Rdy=1);
(eOpsStep2=eGotoOpsStep2);
}else if((((signed long)eOpsStep2==(signed long)18))){
(usiMag2Rdy=0);
(eOpsStep2=eGotoOpsStep2);
}else if((((signed long)eOpsStep2==(signed long)17))){
(usiMag2Rdy=3);
(eOpsStep2=eGotoOpsStep2);
}else{
(eOpsStep2=eGotoOpsStep2);
}

}break;case 18:{
if((((signed long)eOpsStep2==(signed long)16))){
(usiMag2Rdy=4);
(eOpsStep2=eGotoOpsStep2);
}

}break;default: {
(eOpsStep2=eGotoOpsStep2);
}break;}
}

if((((signed long)eOpsStep2==(signed long)eGotoOpsStep2))){
if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

switch(eOpsStep2){
case 13:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Lifter Conveyor 2 Initialization"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((bMagSetFullExit2&((*(p_bLinkDIOutMagConv2EntSen))))){
(eLifterConv2Act=11);
}else{
(eLifterConv2Act=3);
}

if((((((signed long)((*(p_eLifterMagConv2Stat)))==(signed long)3))|(((signed long)((*(p_eLifterMagConv2Stat)))==(signed long)11)))&(((signed long)((*(p_eLifterMagConvStatus)))==(signed long)1)))){
(eLifterConv2Act=0);
(eGotoOpsStep2=3);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 3:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Lifter 2 Initialization"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((unsigned long)(unsigned char)((*(p_bDIOutShutterCloseRS)))==(unsigned long)(unsigned char)1))){
(eLifter2Act=21);
}

if(((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)21)))){
(eLifter2Act=0);

(eGotoOpsStep2=14);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 14:{
(bMagSetFullExit2=0);
if(((*(p_bMagConvLanePrep)))){
if(((*(p_bMagPresentSen2)))){

}else if(((((signed long)usiMag2Rdy==(signed long)2))&(((unsigned long)(unsigned char)((*(p_bMagPresentSen2)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep2=17);
}




else if(((((signed long)usiMag2Rdy==(signed long)0))&(((unsigned long)(unsigned char)((*(p_bMagPresentSen2)))==(unsigned long)(unsigned char)0))&(((signed long)eOpsStep2!=(signed long)3))&((*(p_bOutShutterExtended)))&(((unsigned long)(unsigned char)((*(p_bLinkDIOutMagConv2EntSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep2=15);
}







if((((*(p_bMagConvLanePrep)))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[2-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[2-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_tyMagAllwBffrStat[2-1].bBffrFull==(unsigned long)(unsigned char)1))&((*(p_bOutShutterExtended))))){
(eMagNxtLoad=0);
(eGotoOpsStep2=16);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 17:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Lifter 2 Conveyor Entering"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eLifterConv2Act=6);

if(((((signed long)((*(p_eLifterMagConv2Stat)))==(signed long)6))&(((signed long)((*(p_eLifterMagConv2Status)))==(signed long)1)))){
(eLifterConv2Act=0);
(bLocalMag2InPos=1);
(eGotoOpsStep2=14);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 18:{
if((((signed long)usiMag2Rdy==(signed long)5))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Lifter 2 Conveyor Exiting"; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eLifterConv2Act=11);
(bMagSetFullExit2=1);
}

if(((((signed long)((*(p_eLifterMagConv2Stat)))==(signed long)11))&(((signed long)((*(p_eLifterMagConv2Status)))==(signed long)1)))){
(eLifterConv2Act=0);
(eGotoOpsStep2=14);
(bMagSetFullExit2=0);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 15:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Move To Loading Position"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if(((((signed long)eOpsStep2!=(signed long)3))&(((unsigned long)(unsigned char)bLift2Move==(unsigned long)(unsigned char)0)))){
(eLifter2Act=7);
}

if(((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)7)))){
(eLifter2Act=0);
(eGotoOpsStep2=14);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 16:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt1; plcstring* zzRValue=(plcstring*)"Move To Unload Position"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((signed long)eOpsStep2!=(signed long)3))&(((unsigned long)(unsigned char)bLift2Move==(unsigned long)(unsigned char)0))&(((signed long)((*(p_eLifter2Stat)))!=(signed long)12)))){
(eMagNxtLoad=0);
(eLifter2Act=8);
}

if(((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)8)))){
(eLifter2Act=0);
(eGotoOpsStep2=18);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 12:{

}break;}
}
}
}imp13_case7_7:imp13_endcase7_0:imp13_else6_0:imp13_end6_0:imp13_else5_0:imp13_end5_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Sequence/Act_OpsInfo.st"
static void __AS__Action__Act_OpsInfo(void){
{


(udiStatus1=0);
(udiStatus2=0);

(a_bMagAllwMagPresent[1-1]=((*(p_bMagPresentSen1))));
(a_bMagAllwMagPresent[2-1]=((*(p_bMagPresentSen2))));
(a_bMagAllwMagPresent[3-1]=((*(p_bMagPresentSen3))));

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi-1]==(unsigned long)(unsigned char)1)))){
goto imp9_endfor0_0;
}
}imp9_endfor0_0:;

if((((unsigned long)udi==(unsigned long)4))){
if((((signed long)eOpsStep>(signed long)3))){
(udiStatus1=10000);
}
}


(a_tyMagAllwBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat1))));
(a_tyMagAllwBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat2))));
(a_tyMagAllwBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat3))));




if(((((unsigned long)(unsigned char)((*(p_bConvInitDone)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)1)))){

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi-1])==(unsigned long)(unsigned char)1)))){
goto imp9_endfor5_0;
}
}imp9_endfor5_0:;

if((((unsigned long)udi<(unsigned long)4))){

if((((unsigned long)(unsigned char)((*(p_bConvGdBrd)))==(unsigned long)(unsigned char)1))){

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi1-1])==(unsigned long)(unsigned char)0)))){
goto imp9_endfor9_0;
}
}imp9_endfor9_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10004);
}

}else{

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(pa_bMagRej))[udi1-1])==(unsigned long)(unsigned char)1)))){
goto imp9_endfor12_0;
}
}imp9_endfor12_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10005);
}

}

}else{

for((udi1=1);udi1<=3;udi1+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi1-1]==(unsigned long)(unsigned char)1)))){
goto imp9_endfor15_0;
}
}imp9_endfor15_0:;

if((((unsigned long)udi1==(unsigned long)4))){
(udiStatus1=10004);
}

}

}








if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[2-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[3-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[2-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[3-1]==(unsigned long)(unsigned char)1))&(((unsigned long)udiStatus1!=(unsigned long)10008)))){




if((a_tyMagAllwBffrStat[1-1].bBffrFull&a_tyMagAllwBffrStat[2-1].bBffrFull&a_tyMagAllwBffrStat[3-1].bBffrFull)){
(udiStatus1=10008);
}
}








if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[2-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[3-1])==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[2-1]==(unsigned long)(unsigned char)1))&(((unsigned long)udiStatus1!=(unsigned long)10006))&(((unsigned long)udiStatus1!=(unsigned long)10008)))){





if((((signed long)(((((*(p_tyBufferStat1)).diTtlGdBrd)+((*(p_tyBufferStat1)).diTtlBadBrd))+((*(p_tyBufferStat2)).diTtlGdBrd))+((*(p_tyBufferStat2)).diTtlBadBrd))>=(signed long)((((*(p_tyBufferStat1)).diTtlBrdCap)+((*(p_tyBufferStat2)).diTtlBrdCap))-1)))){
(udiStatus1=10006);

}
}









if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[1-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[2-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(pa_bMagDis))[3-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[1-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[2-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[3-1]==(unsigned long)(unsigned char)1))&(((unsigned long)udiStatus1!=(unsigned long)10007))&(((unsigned long)udiStatus1!=(unsigned long)10008)))){








if((((signed long)(((((((*(p_tyBufferStat1)).diTtlGdBrd)+((*(p_tyBufferStat1)).diTtlBadBrd))+((*(p_tyBufferStat2)).diTtlGdBrd))+((*(p_tyBufferStat2)).diTtlBadBrd))+((*(p_tyBufferStat3)).diTtlGdBrd))+((*(p_tyBufferStat3)).diTtlBadBrd))>=(signed long)(((((*(p_tyBufferStat1)).diTtlBrdCap)+((*(p_tyBufferStat2)).diTtlBrdCap))+((*(p_tyBufferStat3)).diTtlBrdCap))-1)))){
(udiStatus1=10007);

}
}

for((udi=1);udi<=3;udi+=1){
if(((((unsigned long)(unsigned char)((*(pa_bMagDis))[udi-1])==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)a_bMagAllwMagPresent[udi-1]==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)a_tyMagAllwBffrStat[udi-1].bBffrFull==(unsigned long)(unsigned char)1)))){
(udiStatus1=(10001+(udi-1)));

goto imp9_endfor24_0;
}
}imp9_endfor24_0:;

}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Sequence/Act_OpsRst.st"
static void __AS__Action__Act_OpsRst(void){
{
(udiStatus1=0);

(eLifterAct=0);
(eLifter2Act=0);
(eLifterConvAct=0);
(eLifterConv2Act=0);
(eBufferAct1=0);
(eBufferAct2=0);
(eBufferAct3=0);
(eUSSMEMAAct1=0);
(eUSSMEMAAct2=0);
(eUSSMEMAAct3=0);

(usiMag1Rdy=0);
(usiMag2Rdy=0);
}}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.nodebug"

void __AS__ImplInitCyclic_st(void){}

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
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsLifMagU/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsLifMagU/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsLifMagUL/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_MagPlat/X20CP0483/OpsLifMagU/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'a_udiMagAllwPriority'\\n\"");
__asm__(".ascii \"plcdata_const 'a_udiMagAllwSum'\\n\"");
__asm__(".previous");
