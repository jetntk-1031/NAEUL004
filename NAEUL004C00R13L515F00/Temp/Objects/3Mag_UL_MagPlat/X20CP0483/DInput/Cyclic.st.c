#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/DInput/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

if((((unsigned long)(unsigned char)bInitDone==(unsigned long)(unsigned char)0))){
(bInitDone=1);

__AS__Action__Act_InitLocal();
__AS__Action__Act_InitGlobal();

}else if((((unsigned long)(unsigned char)bInitialDone==(unsigned long)(unsigned char)0))){
(bInitialDone=1);

__AS__Action__Act_Initial();

}else{

__AS__Action__Act_RstErr();
__AS__Action__Act_Background();
__AS__Action__Act_Link();
__AS__Action__Act_Alarm1();
__AS__Action__Act_Alarm2();
__AS__Action__Act_Alarm3();
__AS__Action__Act_Alarm4();
__AS__Action__Act_Alarm5();
__AS__Action__Act_Alarm6();

}

}imp13_end0_0:;}
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_eLinkAGVComProtocol=p_McParamAGVComProtocol);
(p_bLinkNtParamProjSOTSenPrep=p_NtParamProjSOTSenPrep);
(p_bLinkStartupRun=p_StartupRun);
(p_bOpsTravLifULBypCurtainSenCtrl=p_OpsTravLifULBypCurtainSenCtrl);
(p_bOpsRun=p_OpsRun);
(p_bCurtainSenPrep=p_NtParamCurtainSenPrep);


(p_udiRstErr=p_RstErrReset);
(p_tyDISettings=p_NtParamDISettings);
(p_sProgNm=p_NtParamDIProgNm);

(p_diConvLftSenOnTm=p_McParamConvLftSenOnTm);
(p_diConvLftSenOffTm=p_McParamConvLftSenOffTm);
(p_diConvMidSenOnTm=p_McParamConvMidSenOnTm);
(p_diConvMidSenOffTm=p_McParamConvMidSenOffTm);
(p_diConvRgtSenOnTm=p_McParamConvRgtSenOnTm);
(p_diConvRgtSenOffTm=p_McParamConvRgtSenOffTm);
(p_diConvClrSenOnTm=p_McParamConvClrSenOnTm);
(p_diConvClrSenOffTm=p_McParamConvClrSenOffTm);

(p_diMagConvEntSenOnTm=p_McParamMagConvEntrySenOnTm);
(p_diMagConvEntSenOffTm=p_McParamMagConvEntrySenOffTm);
(p_diMagConvPresentSenOnTm=p_McParamMagConvPresentSenOnTm);
(p_diMagConvPresentSenOffTm=p_McParamMagConvPresentSenOffTm);

(p_tyBufferStat1=p_Buffer1BffrStat);
(p_tyBufferStat2=p_Buffer2BffrStat);
(p_tyBufferStat3=p_Buffer3BffrStat);
(p_bSelfTest=p_OpsTravLifULSelfTest);
(p_bPshrConvHvBrd=p_PshrConvHvBrd);

(p_bUIAGVSimulationOn=p_UIAGVSimulationOn);
(p_tySOTSimulate1=p_UISOTSimulationSig1);
(p_tySOTSimulate2=p_UISOTSimulationSig2);
(p_tySOTSimulate3=p_UISOTSimulationSig3);

(p_tyTagFromMes=p_TagFromMes);
(p_tyDO=p_DO);
(p_eULMag=p_NtParamProjMag);
(p_bRstErrSafetyRlyRst=p_RstErrSafetyRlyRst);

(p_diConvLineAInletSenOnTm=p_McParamConvLineAInletSenOnTm);
(p_diConvLineAInletSenOffTm=p_McParamConvLineAInletSenOffTm);
(p_diConvLineBInletSenOnTm=p_McParamConvLineBInletSenOnTm);
(p_diConvLineBInletSenOffTm=p_McParamConvLineBInletSenOffTm);
(p_diConvUSWidthChkSenOnTm=p_McParamUSWidthChkSenOnTm);
(p_diConvUSWidthChkSenOffTm=p_McParamUSWidthChkSenOffTm);

(p_tyNtParamCurr=p_NtParamCurr);
(p_bMcParamUSWidthChkEn=p_McParamUSWidthChkEn);


(p_diInMagConvEntSenOnTm=p_McParamInMagConvEntSenOnTm);
(p_diInMagConvEntSenOffTm=p_McParamInMagConvEntSenOffTm);
(p_diInMagConvExtSenOnTm=p_McParamInMagConvExtSenOnTm);
(p_diInMagConvExtSenOffTm=p_McParamInMagConvExtSenOffTm);
(p_diInMagConvMidSenOnTm=p_McParamInMagConvMidSenOnTm);
(p_diInMagConvMidSenOffTm=p_McParamInMagConvMidSenOffTm);

(p_diOutMagConvEntSenOnTm=p_McParamOutMagConvEntSenOnTm);
(p_diOutMagConvEntSenOffTm=p_McParamOutMagConvEntSenOffTm);
(p_diOutMagConvExtSenOnTm=p_McParamOutMagConvExtSenOnTm);
(p_diOutMagConvExtSenOffTm=p_McParamOutMagConvExtSenOffTm);
(p_diOutMagConvMidSenOnTm=p_McParamOutMagConvMidSenOnTm);
(p_diOutMagConvMidSenOffTm=p_McParamOutMagConvMidSenOffTm);

(p_diInMagConv2EntSenOnTm=p_McParamInMagConv2EntSenOnTm);
(p_diInMagConv2EntSenOffTm=p_McParamInMagConv2EntSenOffTm);
(p_diInMagConv2ExtSenOnTm=p_McParamInMagConv2ExtSenOnTm);
(p_diInMagConv2ExtSenOffTm=p_McParamInMagConv2ExtSenOffTm);
(p_diInMagConv2MidSenOnTm=p_McParamInMagConv2MidSenOnTm);
(p_diInMagConv2MidSenOffTm=p_McParamInMagConv2MidSenOffTm);

(p_diOutMagConv2EntSenOnTm=p_McParamOutMagConv2EntSenOnTm);
(p_diOutMagConv2EntSenOffTm=p_McParamOutMagConv2EntSenOffTm);
(p_diOutMagConv2ExtSenOnTm=p_McParamOutMagConv2ExtSenOnTm);
(p_diOutMagConv2ExtSenOffTm=p_McParamOutMagConv2ExtSenOffTm);
(p_diOutMagConv2MidSenOnTm=p_McParamOutMagConv2MidSenOnTm);
(p_diOutMagConv2MidSenOffTm=p_McParamOutMagConv2MidSenOffTm);

(p_bRstCurtainSen=p_UISafetyCurtainReset);
(p_bManual=p_UIMnlMod);

(p_eMidSenNcNoType=p_NtParamMidSenNcNo);




}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Link.st"
static void __AS__Action__Act_Link(void){
{



}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp12_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_udiMax=((unsigned long)(&c_udiDInputMax)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_tyDISettings=((unsigned long)(&tyDISettings)));
(p_sProgNm=((unsigned long)(&sProgNm)));

(p_diConvLftSenOnTm=((unsigned long)(&diConvLftSenOnTm)));
(p_diConvLftSenOffTm=((unsigned long)(&diConvLftSenOffTm)));
(p_diConvMidSenOnTm=((unsigned long)(&diConvMidSenOnTm)));
(p_diConvMidSenOffTm=((unsigned long)(&diConvMidSenOffTm)));
(p_diConvRgtSenOnTm=((unsigned long)(&diConvRgtSenOnTm)));
(p_diConvRgtSenOffTm=((unsigned long)(&diConvRgtSenOffTm)));
(p_diConvClrSenOnTm=((unsigned long)(&diConvClrSenOnTm)));
(p_diConvClrSenOffTm=((unsigned long)(&diConvClrSenOffTm)));
(p_diMagConvEntSenOnTm=((unsigned long)(&diMagConvEntSenOnTm)));
(p_diMagConvEntSenOffTm=((unsigned long)(&diMagConvEntSenOffTm)));
(p_diMagConvPresentSenOnTm=((unsigned long)(&diMagConvPresentSenOnTm)));
(p_diMagConvPresentSenOffTm=((unsigned long)(&diMagConvPresentSenOffTm)));


(p_diInMagConvEntSenOnTm=((unsigned long)(&diInMagConvEntSenOnTm)));
(p_diInMagConvEntSenOffTm=((unsigned long)(&diInMagConvEntSenOffTm)));
(p_diInMagConvExtSenOnTm=((unsigned long)(&diInMagConvExtSenOnTm)));
(p_diInMagConvExtSenOffTm=((unsigned long)(&diInMagConvExtSenOffTm)));
(p_diInMagConvMidSenOnTm=((unsigned long)(&diInMagConvMidSenOnTm)));
(p_diInMagConvMidSenOffTm=((unsigned long)(&diInMagConvMidSenOffTm)));

(p_diOutMagConvEntSenOnTm=((unsigned long)(&diOutMagConvEntSenOnTm)));
(p_diOutMagConvEntSenOffTm=((unsigned long)(&diOutMagConvEntSenOffTm)));
(p_diOutMagConvExtSenOnTm=((unsigned long)(&diOutMagConvExtSenOnTm)));
(p_diOutMagConvExtSenOffTm=((unsigned long)(&diOutMagConvExtSenOffTm)));
(p_diOutMagConvMidSenOnTm=((unsigned long)(&diOutMagConvMidSenOnTm)));
(p_diOutMagConvMidSenOffTm=((unsigned long)(&diOutMagConvMidSenOffTm)));

(p_diInMagConv2EntSenOnTm=((unsigned long)(&diInMagConv2EntSenOnTm)));
(p_diInMagConv2EntSenOffTm=((unsigned long)(&diInMagConv2EntSenOffTm)));
(p_diInMagConv2ExtSenOnTm=((unsigned long)(&diInMagConv2ExtSenOnTm)));
(p_diInMagConv2ExtSenOffTm=((unsigned long)(&diInMagConv2ExtSenOffTm)));
(p_diInMagConv2MidSenOnTm=((unsigned long)(&diInMagConv2MidSenOnTm)));
(p_diInMagConv2MidSenOffTm=((unsigned long)(&diInMagConv2MidSenOffTm)));

(p_diOutMagConv2EntSenOnTm=((unsigned long)(&diOutMagConv2EntSenOnTm)));
(p_diOutMagConv2EntSenOffTm=((unsigned long)(&diOutMagConv2EntSenOffTm)));
(p_diOutMagConv2ExtSenOnTm=((unsigned long)(&diOutMagConv2ExtSenOnTm)));
(p_diOutMagConv2ExtSenOffTm=((unsigned long)(&diOutMagConv2ExtSenOffTm)));
(p_diOutMagConv2MidSenOnTm=((unsigned long)(&diOutMagConv2MidSenOnTm)));
(p_diOutMagConv2MidSenOffTm=((unsigned long)(&diOutMagConv2MidSenOffTm)));


}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Background.st"
static void __AS__Action__Act_Background(void){
{

if(((((signed long)((*(p_tyDISettings)).diSafetyRlySig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSafetyRlySig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSafetyRlySig=a_bPhysicalDI[((*(p_tyDISettings)).diSafetyRlySig)-1]);
}else{
(tyDInput.bSafetyRlySig=1);
}

if(((((signed long)((*(p_tyDISettings)).diEStopSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diEStopSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bEStopSig=a_bPhysicalDI[((*(p_tyDISettings)).diEStopSig)-1]);
}else{
(tyDInput.bEStopSig=1);
}

if(((((signed long)((*(p_tyDISettings)).diCoverSWSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diCoverSWSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bCoverSWSig=a_bPhysicalDI[((*(p_tyDISettings)).diCoverSWSig)-1]);
}else{
(tyDInput.bCoverSWSig=1);
}

if((((unsigned long)(unsigned char)((*(p_bSelfTest)))==(unsigned long)(unsigned char)0))){
if(((((signed long)((*(p_tyDISettings)).diUBAA)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diUBAA)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bUBAA=a_bPhysicalDI[((*(p_tyDISettings)).diUBAA)-1]);
}else{
(tyDInput.bUBAA=0);
}
}else{
(tyDInput.bUBAA=(((unsigned long)(unsigned char)((*(p_bPshrConvHvBrd)))==(unsigned long)(unsigned char)0)));
}

if(((((signed long)((*(p_tyDISettings)).diUBAB)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diUBAB)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bUBAB=a_bPhysicalDI[((*(p_tyDISettings)).diUBAB)-1]);
}else{
(tyDInput.bUBAB=0);
}

if(((((signed long)((*(p_tyDISettings)).diUBAAStat)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diUBAAStat)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bUBAAStat=a_bPhysicalDI[((*(p_tyDISettings)).diUBAAStat)-1]);
}else{
(tyDInput.bUBAAStat=0);
}

if(((((signed long)((*(p_tyDISettings)).diUBABStat)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diUBABStat)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bUBABStat=a_bPhysicalDI[((*(p_tyDISettings)).diUBABStat)-1]);
}else{
(tyDInput.bUBABStat=0);
}

if(((((signed long)((*(p_tyDISettings)).diPusherExtRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diPusherExtRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bPusherExtRS=a_bPhysicalDI[((*(p_tyDISettings)).diPusherExtRS)-1]);
}else{
(tyDInput.bPusherExtRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diPusherRetRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diPusherRetRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bPusherRetRS=a_bPhysicalDI[((*(p_tyDISettings)).diPusherRetRS)-1]);
}else{
(tyDInput.bPusherRetRS=1);
}

if(((((signed long)((*(p_tyDISettings)).diPshrAntiJam)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diPshrAntiJam)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bPshrAntiJam=a_bPhysicalDI[((*(p_tyDISettings)).diPshrAntiJam)-1]);
}else{
(tyDInput.bPshrAntiJam=1);
}

if((((unsigned long)(unsigned char)((*(p_bSelfTest)))==(unsigned long)(unsigned char)0))){
if(((((signed long)((*(p_tyDISettings)).diConvLftSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvLftSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvLftSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvLftSenOnTm))));
(fbConvLftSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvLftSenOffTm))));
(fbConvLftSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvLftSen)-1]);;fbSenFltr(&fbConvLftSigFltr);

(tyDInput.bConvLftSen=fbConvLftSigFltr.bSigOut);
}else{
(tyDInput.bConvLftSen=0);
}
}else{
(fbConvLftSenTm.IN=((*(p_bPshrConvHvBrd))));;TON(&fbConvLftSenTm);
if((((*(p_bPshrConvHvBrd)))&~Edge0000700000&1?((Edge0000700000=((*(p_bPshrConvHvBrd)))&1),1):((Edge0000700000=((*(p_bPshrConvHvBrd)))&1),0))){
(tyDInput.bConvLftSen=1);
}else if(fbConvLftSenTm.Q){
(tyDInput.bConvLftSen=0);
}
}

if(((((signed long)((*(p_tyDISettings)).diConvMidSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvMidSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvMidSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvMidSenOnTm))));
(fbConvMidSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvMidSenOffTm))));
(fbConvMidSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvMidSen)-1]);;fbSenFltr(&fbConvMidSigFltr);
if((((*(p_bCurtainSenPrep)))&(((signed long)((*(p_eMidSenNcNoType)))==(signed long)1)))){
(tyDInput.bConvMidSen=(fbConvMidSigFltr.bSigOut^1));
}else{
(tyDInput.bConvMidSen=fbConvMidSigFltr.bSigOut);
}

}else{
(tyDInput.bConvMidSen=0);
}

if((((unsigned long)(unsigned char)((*(p_bSelfTest)))==(unsigned long)(unsigned char)0))){
if(((((signed long)((*(p_tyDISettings)).diConvRgtSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvRgtSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvRgtSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvRgtSenOnTm))));
(fbConvRgtSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvRgtSenOffTm))));
(fbConvRgtSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvRgtSen)-1]);;fbSenFltr(&fbConvRgtSigFltr);
(tyDInput.bConvRgtSen=fbConvRgtSigFltr.bSigOut);
}else{
(tyDInput.bConvRgtSen=0);
}
}else{
(tyDInput.bConvRgtSen=((*(p_bPshrConvHvBrd))));
}

if(((((signed long)((*(p_tyDISettings)).diConvClrSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvClrSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvClrSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvClrSenOnTm))));
(fbConvClrSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvClrSenOffTm))));
(fbConvClrSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvClrSen)-1]);;fbSenFltr(&fbConvClrSigFltr);
(tyDInput.bConvClrSen=fbConvClrSigFltr.bSigOut);
}else{
(tyDInput.bConvClrSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOvenInfeedSigA)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOvenInfeedSigA)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOvenInfeedSigA=a_bPhysicalDI[((*(p_tyDISettings)).diOvenInfeedSigA)-1]);
}else{
(tyDInput.bOvenInfeedSigA=0);
}

if(((((signed long)((*(p_tyDISettings)).diOvenInfeedSigB)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOvenInfeedSigB)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOvenInfeedSigB=a_bPhysicalDI[((*(p_tyDISettings)).diOvenInfeedSigB)-1]);
}else{
(tyDInput.bOvenInfeedSigB=0);
}

if(((((signed long)((*(p_tyDISettings)).diLifterTimingBeltSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diLifterTimingBeltSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bLifterTimingBeltSen=a_bPhysicalDI[((*(p_tyDISettings)).diLifterTimingBeltSen)-1]);
}else{
(tyDInput.bLifterTimingBeltSen=1);
}

if(((((signed long)((*(p_tyDISettings)).diLifterSafetyLmtSW1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diLifterSafetyLmtSW1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bLifterSafetyLmtSW1=a_bPhysicalDI[((*(p_tyDISettings)).diLifterSafetyLmtSW1)-1]);
}else{
(tyDInput.bLifterSafetyLmtSW1=1);
}

if(((((signed long)((*(p_tyDISettings)).diLifterSafetyLmtSW2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diLifterSafetyLmtSW2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bLifterSafetyLmtSW2=a_bPhysicalDI[((*(p_tyDISettings)).diLifterSafetyLmtSW2)-1]);
}else{
(tyDInput.bLifterSafetyLmtSW2=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag1FixedClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1FixedClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1FixedClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1FixedClampRS)-1]);
}else{
(tyDInput.bMag1FixedClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1FixedUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1FixedUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1FixedUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1FixedUnclampRS)-1]);
}else{
(tyDInput.bMag1FixedUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag1RemoteClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1RemoteClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1RemoteClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1RemoteClampRS)-1]);
}else{
(tyDInput.bMag1RemoteClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1RemoteUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1RemoteUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1RemoteUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1RemoteUnclampRS)-1]);
}else{
(tyDInput.bMag1RemoteUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag1SelUnClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1SelUnClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1SelUnClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1SelUnClampRS)-1]);
}else{
(tyDInput.bMag1SelUnClampRS=0);
}


if(((((signed long)((*(p_tyDISettings)).diMag2FixedClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2FixedClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2FixedClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2FixedClampRS)-1]);
}else{
(tyDInput.bMag2FixedClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2FixedUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2FixedUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2FixedUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2FixedUnclampRS)-1]);
}else{
(tyDInput.bMag2FixedUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag2RemoteClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2RemoteClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2RemoteClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2RemoteClampRS)-1]);
}else{
(tyDInput.bMag2RemoteClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2RemoteUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2RemoteUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2RemoteUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2RemoteUnclampRS)-1]);
}else{
(tyDInput.bMag2RemoteUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag2SelUnClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2SelUnClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2SelUnClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2SelUnClampRS)-1]);
}else{
(tyDInput.bMag2SelUnClampRS=0);
}


if(((((signed long)((*(p_tyDISettings)).diMag3FixedClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3FixedClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3FixedClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3FixedClampRS)-1]);
}else{
(tyDInput.bMag3FixedClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3FixedUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3FixedUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3FixedUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3FixedUnclampRS)-1]);
}else{
(tyDInput.bMag3FixedUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag3RemoteClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3RemoteClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3RemoteClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3RemoteClampRS)-1]);
}else{
(tyDInput.bMag3RemoteClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3RemoteUnclampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3RemoteUnclampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3RemoteUnclampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3RemoteUnclampRS)-1]);
}else{
(tyDInput.bMag3RemoteUnclampRS=1);
}


if(((((signed long)((*(p_tyDISettings)).diMag3SelUnClampRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3SelUnClampRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3SelUnClampRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3SelUnClampRS)-1]);
}else{
(tyDInput.bMag3SelUnClampRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diInShutterOpenRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInShutterOpenRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bInShutterOpenRS=a_bPhysicalDI[((*(p_tyDISettings)).diInShutterOpenRS)-1]);
}else{
(tyDInput.bInShutterOpenRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diInShutterCloseRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInShutterCloseRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bInShutterCloseRS=a_bPhysicalDI[((*(p_tyDISettings)).diInShutterCloseRS)-1]);
}else{
(tyDInput.bInShutterCloseRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutShutterOpenRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterOpenRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterOpenRS=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterOpenRS)-1]);
}else{
(tyDInput.bOutShutterOpenRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutShutterCloseRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterCloseRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterCloseRS=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterCloseRS)-1]);
}else{
(tyDInput.bOutShutterCloseRS=0);
}


if(((((signed long)((*(p_tyDISettings)).diOutShutterOpenRS2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterOpenRS2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterOpenRS2=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterOpenRS2)-1]);
}else{
(tyDInput.bOutShutterOpenRS2=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutShutterCloseRS2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterCloseRS2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterCloseRS2=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterCloseRS2)-1]);
}else{
(tyDInput.bOutShutterCloseRS2=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutShutterOpenRS3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterOpenRS3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterOpenRS3=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterOpenRS3)-1]);
}else{
(tyDInput.bOutShutterOpenRS3=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutShutterCloseRS3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutShutterCloseRS3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bOutShutterCloseRS3=a_bPhysicalDI[((*(p_tyDISettings)).diOutShutterCloseRS3)-1]);
}else{
(tyDInput.bOutShutterCloseRS3=0);
}

if((((unsigned long)(unsigned char)((*(p_bSelfTest)))==(unsigned long)(unsigned char)0))){

if(((((signed long)((*(p_tyDISettings)).diMagPresentSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagPresentSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbMagConv1PresentSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvPresentSenOnTm))));
(fbMagConv1PresentSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvPresentSenOffTm))));
(fbMagConv1PresentSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagPresentSen1)-1]);;fbSenFltr(&fbMagConv1PresentSigFltr);
(tyDInput.bMagPresentSen1=fbMagConv1PresentSigFltr.bSigOut);
}else{
(tyDInput.bMagPresentSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMagPresentSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagPresentSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbMagConv2PresentSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvPresentSenOnTm))));
(fbMagConv2PresentSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvPresentSenOffTm))));
(fbMagConv2PresentSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagPresentSen2)-1]);;fbSenFltr(&fbMagConv2PresentSigFltr);
(tyDInput.bMagPresentSen2=fbMagConv2PresentSigFltr.bSigOut);
}else{
(tyDInput.bMagPresentSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMagPresentSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagPresentSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbMagConv3PresentSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvPresentSenOnTm))));
(fbMagConv3PresentSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvPresentSenOffTm))));
(fbMagConv3PresentSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagPresentSen3)-1]);;fbSenFltr(&fbMagConv3PresentSigFltr);
(tyDInput.bMagPresentSen3=fbMagConv3PresentSigFltr.bSigOut);
}else{
(tyDInput.bMagPresentSen3=0);
}

if(((((signed long)((*(p_tyDISettings)).diMagConvEntSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvEntSen1)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbMagConv1EntSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvEntSenOnTm))));
(fbMagConv1EntSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvEntSenOffTm))));
(fbMagConv1EntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvEntSen1)-1]);;fbSenFltr(&fbMagConv1EntSigFltr);
(tyDInput.bMagConvEntSen1=fbMagConv1EntSigFltr.bSigOut);
}else{
(tyDInput.bMagConvEntSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMagConvEntSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvEntSen2)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbMagConv2EntSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvEntSenOnTm))));
(fbMagConv2EntSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvEntSenOffTm))));
(fbMagConv2EntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvEntSen2)-1]);;fbSenFltr(&fbMagConv2EntSigFltr);
(tyDInput.bMagConvEntSen2=fbMagConv2EntSigFltr.bSigOut);
}else{
(tyDInput.bMagConvEntSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMagConvEntSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvEntSen3)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbMagConv3EntSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvEntSenOnTm))));
(fbMagConv3EntSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvEntSenOffTm))));
(fbMagConv3EntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvEntSen3)-1]);;fbSenFltr(&fbMagConv3EntSigFltr);
(tyDInput.bMagConvEntSen3=fbMagConv3EntSigFltr.bSigOut);
}else{
(tyDInput.bMagConvEntSen3=0);
}
}else{
switch(((*(p_eULMag)))){
case 0:{

(fbSelfTestTm1.IN=((((unsigned long)(unsigned char)((*(p_tyDO)).bMag1ConvMtrIn)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_tyDO)).bMag1ConvMtrOut)==(unsigned long)(unsigned char)0))));;TON(&fbSelfTestTm1);
if(fbSelfTestTm1.Q){
(tyDInput.bMagPresentSen1=1);
}else if(((*(p_tyDO)).bMag1ConvMtrOut)){
(tyDInput.bMagPresentSen1=0);
(tyDInput.bMagConvEntSen1=1);
}else if(tyDInput.bMagConvEntSen1){
(tyDInput.bMagConvEntSen1=0);
}

(fbSelfTestTm2.IN=((((unsigned long)(unsigned char)((*(p_tyDO)).bMag2ConvMtrIn)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_tyDO)).bMag2ConvMtrOut)==(unsigned long)(unsigned char)0))));;TON(&fbSelfTestTm2);
if(fbSelfTestTm2.Q){
(tyDInput.bMagPresentSen2=1);
}else if(((*(p_tyDO)).bMag2ConvMtrOut)){
(tyDInput.bMagPresentSen2=0);
(tyDInput.bMagConvEntSen2=1);
}else if(tyDInput.bMagConvEntSen2){
(tyDInput.bMagConvEntSen2=0);
}

}break;case 1:{

(fbSelfTestTm1.IN=((((unsigned long)(unsigned char)((*(p_tyDO)).bMag1ConvMtrIn)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_tyDO)).bMag1ConvMtrOut)==(unsigned long)(unsigned char)0))));;TON(&fbSelfTestTm1);
if(fbSelfTestTm1.Q){
(tyDInput.bMagPresentSen1=1);
}else if(((*(p_tyDO)).bMag1ConvMtrOut)){
(tyDInput.bMagPresentSen1=0);
(tyDInput.bMagConvEntSen1=1);
}else if(tyDInput.bMagConvEntSen1){
(tyDInput.bMagConvEntSen1=0);
}

(fbSelfTestTm2.IN=((((unsigned long)(unsigned char)((*(p_tyDO)).bMag2ConvMtrIn)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_tyDO)).bMag2ConvMtrOut)==(unsigned long)(unsigned char)0))));;TON(&fbSelfTestTm2);
if(fbSelfTestTm2.Q){
(tyDInput.bMagPresentSen2=1);
}else if(((*(p_tyDO)).bMag2ConvMtrOut)){
(tyDInput.bMagPresentSen2=0);
(tyDInput.bMagConvEntSen2=1);
}else if(tyDInput.bMagConvEntSen2){
(tyDInput.bMagConvEntSen2=0);
}

(fbSelfTestTm3.IN=((((unsigned long)(unsigned char)((*(p_tyDO)).bMag3ConvMtrIn)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_tyDO)).bMag3ConvMtrOut)==(unsigned long)(unsigned char)0))));;TON(&fbSelfTestTm3);
if(fbSelfTestTm3.Q){
(tyDInput.bMagPresentSen3=1);
}else if(((*(p_tyDO)).bMag3ConvMtrOut)){
(tyDInput.bMagPresentSen3=0);
(tyDInput.bMagConvEntSen3=1);
}else if(tyDInput.bMagConvEntSen3){
(tyDInput.bMagConvEntSen3=0);
}
}break;}

}

if(((((signed long)((*(p_tyDISettings)).diMag1AIVInPosSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1AIVInPosSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1AIVInPosSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag1AIVInPosSen1)-1]);
}else{
(tyDInput.bMag1AIVInPosSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1AIVInPosSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1AIVInPosSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1AIVInPosSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag1AIVInPosSen2)-1]);
}else{
(tyDInput.bMag1AIVInPosSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2AIVInPosSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2AIVInPosSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2AIVInPosSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag2AIVInPosSen1)-1]);
}else{
(tyDInput.bMag2AIVInPosSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2AIVInPosSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2AIVInPosSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2AIVInPosSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag2AIVInPosSen2)-1]);
}else{
(tyDInput.bMag2AIVInPosSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3AIVInPosSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3AIVInPosSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3AIVInPosSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag3AIVInPosSen1)-1]);
}else{
(tyDInput.bMag3AIVInPosSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3AIVInPosSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3AIVInPosSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3AIVInPosSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag3AIVInPosSen2)-1]);
}else{
(tyDInput.bMag3AIVInPosSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1OrientChkSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1OrientChkSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1OrientChkSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag1OrientChkSen1)-1]);
}else{
(tyDInput.bMag1OrientChkSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1OrientChkSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1OrientChkSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1OrientChkSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag1OrientChkSen2)-1]);
}else{
(tyDInput.bMag1OrientChkSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2OrientChkSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2OrientChkSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2OrientChkSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag2OrientChkSen1)-1]);
}else{
(tyDInput.bMag2OrientChkSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2OrientChkSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2OrientChkSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2OrientChkSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag2OrientChkSen2)-1]);
}else{
(tyDInput.bMag2OrientChkSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3OrientChkSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3OrientChkSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3OrientChkSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMag3OrientChkSen1)-1]);
}else{
(tyDInput.bMag3OrientChkSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3OrientChkSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3OrientChkSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3OrientChkSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMag3OrientChkSen2)-1]);
}else{
(tyDInput.bMag3OrientChkSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvHeightSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvHeightSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvHeightSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvHeightSen1)-1]);
}else{
(tyDInput.bMagConvHeightSen1=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvHeightSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvHeightSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvHeightSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvHeightSen2)-1]);
}else{
(tyDInput.bMagConvHeightSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvHeightSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvHeightSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvHeightSen3=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvHeightSen3)-1]);
}else{
(tyDInput.bMagConvHeightSen3=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvSmallMagSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvSmallMagSen1)-1]);
}else{
(tyDInput.bMagConvSmallMagSen1=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvSmallMagSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvSmallMagSen2)-1]);
}else{
(tyDInput.bMagConvSmallMagSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvSmallMagSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvSmallMagSen3=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvSmallMagSen3)-1]);
}else{
(tyDInput.bMagConvSmallMagSen3=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvLargeMagSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvLargeMagSen1)-1]);
}else{
(tyDInput.bMagConvLargeMagSen1=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvLargeMagSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvLargeMagSen2)-1]);
}else{
(tyDInput.bMagConvLargeMagSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvLargeMagSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvLargeMagSen3=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvLargeMagSen3)-1]);
}else{
(tyDInput.bMagConvLargeMagSen3=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvCAB717MagSen1=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvCAB717MagSen1)-1]);
}else{
(tyDInput.bMagConvCAB717MagSen1=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvCAB717MagSen2=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvCAB717MagSen2)-1]);
}else{
(tyDInput.bMagConvCAB717MagSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagConvCAB717MagSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagConvCAB717MagSen3=a_bPhysicalDI[((*(p_tyDISettings)).diMagConvCAB717MagSen3)-1]);
}else{
(tyDInput.bMagConvCAB717MagSen3=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1SafetyBarExtRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1SafetyBarExtRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1SafetyBarExtRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1SafetyBarExtRS)-1]);
}else{
(tyDInput.bMag1SafetyBarExtRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1SafetyBarRetRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1SafetyBarRetRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1SafetyBarRetRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1SafetyBarRetRS)-1]);
}else{
(tyDInput.bMag1SafetyBarRetRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2SafetyBarExtRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2SafetyBarExtRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2SafetyBarExtRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2SafetyBarExtRS)-1]);
}else{
(tyDInput.bMag2SafetyBarExtRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2SafetyBarRetRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2SafetyBarRetRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2SafetyBarRetRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2SafetyBarRetRS)-1]);
}else{
(tyDInput.bMag2SafetyBarRetRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3SafetyBarExtRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3SafetyBarExtRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3SafetyBarExtRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3SafetyBarExtRS)-1]);
}else{
(tyDInput.bMag3SafetyBarExtRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3SafetyBarRetRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3SafetyBarRetRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3SafetyBarRetRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3SafetyBarRetRS)-1]);
}else{
(tyDInput.bMag3SafetyBarRetRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1WallEngageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1WallEngageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1WallEngageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1WallEngageRS)-1]);
}else{
(tyDInput.bMag1WallEngageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag1WallDisengageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1WallDisengageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1WallDisengageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag1WallDisengageRS)-1]);
}else{
(tyDInput.bMag1WallDisengageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2WallEngageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2WallEngageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2WallEngageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2WallEngageRS)-1]);
}else{
(tyDInput.bMag2WallEngageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2WallDisengageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2WallDisengageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2WallDisengageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag2WallDisengageRS)-1]);
}else{
(tyDInput.bMag2WallDisengageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3WallEngageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3WallEngageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3WallEngageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3WallEngageRS)-1]);
}else{
(tyDInput.bMag3WallEngageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3WallDisengageRS)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3WallDisengageRS)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3WallDisengageRS=a_bPhysicalDI[((*(p_tyDISettings)).diMag3WallDisengageRS)-1]);
}else{
(tyDInput.bMag3WallDisengageRS=0);
}

if(((((signed long)((*(p_tyDISettings)).diHighMagDetSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diHighMagDetSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bHighMagDetSen1=a_bPhysicalDI[((*(p_tyDISettings)).diHighMagDetSen1)-1]);
}else{
(tyDInput.bHighMagDetSen1=0);
}

if(((((signed long)((*(p_tyDISettings)).diHighMagDetSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diHighMagDetSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bHighMagDetSen2=a_bPhysicalDI[((*(p_tyDISettings)).diHighMagDetSen2)-1]);
}else{
(tyDInput.bHighMagDetSen2=0);
}

if(((((signed long)((*(p_tyDISettings)).diHighMagDetSen3)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diHighMagDetSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bHighMagDetSen3=a_bPhysicalDI[((*(p_tyDISettings)).diHighMagDetSen3)-1]);
}else{
(tyDInput.bHighMagDetSen3=0);
}

if(((((signed long)((*(p_tyDISettings)).diScanComplSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diScanComplSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.diScanComplSig=a_bPhysicalDI[((*(p_tyDISettings)).diScanComplSig)-1]);
}else{
(tyDInput.diScanComplSig=0);
}

switch(((*(p_eLinkAGVComProtocol)))){
case 0:{
(tyDInput.bFleetManagerReady=((*(p_tyTagFromMes)).bActive));
}break;case 1:{

if(((((signed long)((*(p_tyDISettings)).diFleetManagerReady)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diFleetManagerReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bFleetManagerReady=a_bPhysicalDI[((*(p_tyDISettings)).diFleetManagerReady)-1]);
}else{
(tyDInput.bFleetManagerReady=0);
}

}break;case 2:{
(tyDInput.bFleetManagerReady=0);
}break;}



if((((*(p_bLinkNtParamProjSOTSenPrep)))|(((signed long)((*(p_eLinkAGVComProtocol)))==(signed long)1)))){
if((((unsigned long)(unsigned char)((*(p_bUIAGVSimulationOn)))==(unsigned long)(unsigned char)0))){

if(((((signed long)((*(p_tyDISettings)).diSOT1Receive)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT1Receive)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT1Receive=a_bPhysicalDI[((*(p_tyDISettings)).diSOT1Receive)-1]);
}else{
(tyDInput.bSOT1Receive=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT1AIVError)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT1AIVError)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT1AIVError=a_bPhysicalDI[((*(p_tyDISettings)).diSOT1AIVError)-1]);
}else{
(tyDInput.bSOT1AIVError=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT1AIVSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT1AIVSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT1AIVSizeLarge=a_bPhysicalDI[((*(p_tyDISettings)).diSOT1AIVSizeLarge)-1]);
}else{
(tyDInput.bSOT1AIVSizeLarge=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT1AIVReady)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT1AIVReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT1AIVReady=a_bPhysicalDI[((*(p_tyDISettings)).diSOT1AIVReady)-1]);
}else{
(tyDInput.bSOT1AIVReady=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT1AIVAvailable)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT1AIVAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT1AIVAvailable=a_bPhysicalDI[((*(p_tyDISettings)).diSOT1AIVAvailable)-1]);
}else{
(tyDInput.bSOT1AIVAvailable=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT2Receive)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT2Receive)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT2Receive=a_bPhysicalDI[((*(p_tyDISettings)).diSOT2Receive)-1]);
}else{
(tyDInput.bSOT2Receive=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT2AIVError)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT2AIVError)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT2AIVError=a_bPhysicalDI[((*(p_tyDISettings)).diSOT2AIVError)-1]);
}else{
(tyDInput.bSOT2AIVError=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT2AIVSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT2AIVSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT2AIVSizeLarge=a_bPhysicalDI[((*(p_tyDISettings)).diSOT2AIVSizeLarge)-1]);
}else{
(tyDInput.bSOT2AIVSizeLarge=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT2AIVReady)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT2AIVReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT2AIVReady=a_bPhysicalDI[((*(p_tyDISettings)).diSOT2AIVReady)-1]);
}else{
(tyDInput.bSOT2AIVReady=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT2AIVAvailable)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT2AIVAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT2AIVAvailable=a_bPhysicalDI[((*(p_tyDISettings)).diSOT2AIVAvailable)-1]);
}else{
(tyDInput.bSOT2AIVAvailable=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT3Receive)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT3Receive)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT3Receive=a_bPhysicalDI[((*(p_tyDISettings)).diSOT3Receive)-1]);
}else{
(tyDInput.bSOT3Receive=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT3AIVError)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT3AIVError)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT3AIVError=a_bPhysicalDI[((*(p_tyDISettings)).diSOT3AIVError)-1]);
}else{
(tyDInput.bSOT3AIVError=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT3AIVSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT3AIVSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT3AIVSizeLarge=a_bPhysicalDI[((*(p_tyDISettings)).diSOT3AIVSizeLarge)-1]);
}else{
(tyDInput.bSOT3AIVSizeLarge=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT3AIVReady)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT3AIVReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT3AIVReady=a_bPhysicalDI[((*(p_tyDISettings)).diSOT3AIVReady)-1]);
}else{
(tyDInput.bSOT3AIVReady=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT3AIVAvailable)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT3AIVAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT3AIVAvailable=a_bPhysicalDI[((*(p_tyDISettings)).diSOT3AIVAvailable)-1]);
}else{
(tyDInput.bSOT3AIVAvailable=0);
}


if(((((signed long)((*(p_tyDISettings)).diSOT4Receive)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT4Receive)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT4Receive=a_bPhysicalDI[((*(p_tyDISettings)).diSOT4Receive)-1]);
}else{
(tyDInput.bSOT4Receive=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT4AIVError)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT4AIVError)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT4AIVError=a_bPhysicalDI[((*(p_tyDISettings)).diSOT4AIVError)-1]);
}else{
(tyDInput.bSOT4AIVError=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT4AIVSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT4AIVSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT4AIVSizeLarge=a_bPhysicalDI[((*(p_tyDISettings)).diSOT4AIVSizeLarge)-1]);
}else{
(tyDInput.bSOT4AIVSizeLarge=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT4AIVReady)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT4AIVReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT4AIVReady=a_bPhysicalDI[((*(p_tyDISettings)).diSOT4AIVReady)-1]);
}else{
(tyDInput.bSOT4AIVReady=0);
}

if(((((signed long)((*(p_tyDISettings)).diSOT4AIVAvailable)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diSOT4AIVAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bSOT4AIVAvailable=a_bPhysicalDI[((*(p_tyDISettings)).diSOT4AIVAvailable)-1]);
}else{
(tyDInput.bSOT4AIVAvailable=0);
}
}else{
(tyDInput.bSOT1Receive=((*(p_tySOTSimulate1)).tyBtnInPos));
(tyDInput.bSOT1AIVError=((*(p_tySOTSimulate1)).tyBtnError));
(tyDInput.bSOT1AIVReady=((*(p_tySOTSimulate1)).tyBtnRdy));
(tyDInput.bSOT1AIVAvailable=((*(p_tySOTSimulate1)).tyBtnAvail));

(tyDInput.bSOT2Receive=((*(p_tySOTSimulate2)).tyBtnInPos));
(tyDInput.bSOT2AIVError=((*(p_tySOTSimulate2)).tyBtnError));
(tyDInput.bSOT2AIVReady=((*(p_tySOTSimulate2)).tyBtnRdy));
(tyDInput.bSOT2AIVAvailable=((*(p_tySOTSimulate2)).tyBtnAvail));

(tyDInput.bSOT3Receive=((*(p_tySOTSimulate3)).tyBtnInPos));
(tyDInput.bSOT3AIVError=((*(p_tySOTSimulate3)).tyBtnError));
(tyDInput.bSOT3AIVReady=((*(p_tySOTSimulate3)).tyBtnRdy));
(tyDInput.bSOT3AIVAvailable=((*(p_tySOTSimulate3)).tyBtnAvail));

}

}else if((((unsigned long)(unsigned char)((*(p_bLinkNtParamProjSOTSenPrep)))==(unsigned long)(unsigned char)0))){

switch(((*(p_eLinkAGVComProtocol)))){
case 0:{
if((((unsigned long)(unsigned char)((*(p_bUIAGVSimulationOn)))==(unsigned long)(unsigned char)0))){
(tyDInput.bFleetManagerReady=((*(p_tyTagFromMes)).bActive));

(tyDInput.bSOT1Receive=1);
(tyDInput.bSOT1AIVError=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[1-1].bError));
(tyDInput.bSOT1AIVSizeLarge=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[1-1].bSizeLarge));
(tyDInput.bSOT1AIVReady=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[1-1].bReady));
(tyDInput.bSOT1AIVAvailable=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[1-1].bAvailable));

(tyDInput.bSOT2Receive=1);
(tyDInput.bSOT2AIVError=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[2-1].bError));
(tyDInput.bSOT2AIVSizeLarge=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[2-1].bSizeLarge));
(tyDInput.bSOT2AIVReady=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[2-1].bReady));
(tyDInput.bSOT2AIVAvailable=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[2-1].bAvailable));

(tyDInput.bSOT3Receive=1);
(tyDInput.bSOT3AIVError=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[3-1].bError));
(tyDInput.bSOT3AIVSizeLarge=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[3-1].bSizeLarge));
(tyDInput.bSOT3AIVReady=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[3-1].bReady));
(tyDInput.bSOT3AIVAvailable=((*(p_tyTagFromMes)).tyTagStatOfPlatforms[3-1].bAvailable));

}else{
(tyDInput.bSOT1Receive=((*(p_tySOTSimulate1)).tyBtnInPos));
(tyDInput.bSOT1AIVError=((*(p_tySOTSimulate1)).tyBtnError));
(tyDInput.bSOT1AIVReady=((*(p_tySOTSimulate1)).tyBtnRdy));
(tyDInput.bSOT1AIVAvailable=((*(p_tySOTSimulate1)).tyBtnAvail));

(tyDInput.bSOT2Receive=((*(p_tySOTSimulate2)).tyBtnInPos));
(tyDInput.bSOT2AIVError=((*(p_tySOTSimulate2)).tyBtnError));
(tyDInput.bSOT2AIVReady=((*(p_tySOTSimulate2)).tyBtnRdy));
(tyDInput.bSOT2AIVAvailable=((*(p_tySOTSimulate2)).tyBtnAvail));

(tyDInput.bSOT3Receive=((*(p_tySOTSimulate3)).tyBtnInPos));
(tyDInput.bSOT3AIVError=((*(p_tySOTSimulate3)).tyBtnError));
(tyDInput.bSOT3AIVReady=((*(p_tySOTSimulate3)).tyBtnRdy));
(tyDInput.bSOT3AIVAvailable=((*(p_tySOTSimulate3)).tyBtnAvail));

}


}break;case 2:{
(tyDInput.bSOT1Receive=0);
(tyDInput.bSOT1AIVError=0);
(tyDInput.bSOT1AIVSizeLarge=0);
(tyDInput.bSOT1AIVReady=0);
(tyDInput.bSOT1AIVAvailable=0);

(tyDInput.bSOT2Receive=0);
(tyDInput.bSOT2AIVError=0);
(tyDInput.bSOT2AIVSizeLarge=0);
(tyDInput.bSOT2AIVReady=0);
(tyDInput.bSOT2AIVAvailable=0);

(tyDInput.bSOT3Receive=0);
(tyDInput.bSOT3AIVError=0);
(tyDInput.bSOT3AIVSizeLarge=0);
(tyDInput.bSOT3AIVReady=0);
(tyDInput.bSOT3AIVAvailable=0);
}break;}
}

if(((((signed long)((*(p_tyDISettings)).diPusherExtSlwSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diPusherExtSlwSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bPusherExtSlwSen=a_bPhysicalDI[((*(p_tyDISettings)).diPusherExtSlwSen)-1]);
}else{
(tyDInput.bPusherExtSlwSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diPusherRetSlwSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diPusherRetSlwSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bPusherRetSlwSen=a_bPhysicalDI[((*(p_tyDISettings)).diPusherRetSlwSen)-1]);
}else{
(tyDInput.bPusherRetSlwSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diMtrPshrTorqueSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMtrPshrTorqueSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMtrPshrTorqueSig=a_bPhysicalDI[((*(p_tyDISettings)).diMtrPshrTorqueSig)-1]);
}else{
(tyDInput.bMtrPshrTorqueSig=0);
}

if(((((signed long)((*(p_tyDISettings)).diMtrPshrAlmSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMtrPshrAlmSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMtrPshrAlmSig=a_bPhysicalDI[((*(p_tyDISettings)).diMtrPshrAlmSig)-1]);
}else{
(tyDInput.bMtrPshrAlmSig=1);
}

if(((((signed long)((*(p_tyDISettings)).diMagWidthChkSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagWidthChkSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMagWidthChkSen=a_bPhysicalDI[((*(p_tyDISettings)).diMagWidthChkSen)-1]);
}else{
(tyDInput.bMagWidthChkSen=1);
}


if(((((signed long)((*(p_tyDISettings)).diInletStopperASen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInletStopperASen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bInletStopperASen=a_bPhysicalDI[((*(p_tyDISettings)).diInletStopperASen)-1]);
}else{
(tyDInput.bInletStopperASen=0);
}


if(((((signed long)((*(p_tyDISettings)).diUSWidthChkSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diUSWidthChkSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbConvUSWidthSenSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvUSWidthChkSenOnTm))));
(fbConvUSWidthSenSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvUSWidthChkSenOffTm))));
(fbConvUSWidthSenSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diUSWidthChkSen)-1]);;fbSenFltr(&fbConvUSWidthSenSigFltr);
if((((*(p_tyNtParamCurr)).bUSWidthChkPrep)&(((unsigned long)(unsigned char)((*(p_bMcParamUSWidthChkEn)))==(unsigned long)(unsigned char)1)))){
(tyDInput.bUSWidthChkSen=fbConvUSWidthSenSigFltr.bSigOut);
}else{
(tyDInput.bUSWidthChkSen=0);
}
}else{
(tyDInput.bUSWidthChkSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diConvLineAInletSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvLineAInletSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvLineAInletSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvLineAInletSenOnTm))));
(fbConvLineAInletSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvLineAInletSenOffTm))));
(fbConvLineAInletSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvLineAInletSen)-1]);;fbSenFltr(&fbConvLineAInletSigFltr);
(tyDInput.bConvLineAInletSen=fbConvLineAInletSigFltr.bSigOut);
}else{
(tyDInput.bConvLineAInletSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diConvLineBInletSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diConvLineBInletSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbConvLineBInletSigFltr.tSigOnFltrTm=(plctime)((*(p_diConvLineBInletSenOnTm))));
(fbConvLineBInletSigFltr.tSigOffFltrTm=(plctime)((*(p_diConvLineBInletSenOffTm))));
(fbConvLineBInletSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diConvLineBInletSen)-1]);;fbSenFltr(&fbConvLineBInletSigFltr);
(tyDInput.bConvLineBInletSen=fbConvLineBInletSigFltr.bSigOut);
}else{
(tyDInput.bConvLineBInletSen=0);
}



if(((((signed long)((*(p_tyDISettings)).diInMagConvEntSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConvEntSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConvEntSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConvEntSenOnTm))));
(fbInMagConvEntSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConvEntSenOffTm))));
(fbInMagConvEntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConvEntSen)-1]);;fbSenFltr(&fbInMagConvEntSigFltr);
(tyDInput.bInMagConvEntSen=fbInMagConvEntSigFltr.bSigOut);
}else{
(tyDInput.bInMagConvEntSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diInMagConvExtSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConvExtSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConvExtSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConvExtSenOnTm))));
(fbInMagConvExtSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConvExtSenOffTm))));
(fbInMagConvExtSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConvExtSen)-1]);;fbSenFltr(&fbInMagConvExtSigFltr);
(tyDInput.bInMagConvExtSen=fbInMagConvExtSigFltr.bSigOut);
}else{
(tyDInput.bInMagConvExtSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diInMagConvMidSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConvMidSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConvMidSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConvMidSenOnTm))));
(fbInMagConvMidSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConvMidSenOffTm))));
(fbInMagConvMidSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConvMidSen)-1]);;fbSenFltr(&fbInMagConvMidSigFltr);
(tyDInput.bInMagConvMidSen=fbInMagConvMidSigFltr.bSigOut);
}else{
(tyDInput.bInMagConvMidSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConvEntSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConvEntSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConvEntSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConvEntSenOnTm))));
(fbOutMagConvEntSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConvEntSenOffTm))));
(fbOutMagConvEntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConvEntSen)-1]);;fbSenFltr(&fbOutMagConvEntSigFltr);
(tyDInput.bOutMagConvEntSen=fbOutMagConvEntSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConvEntSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConvExtSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConvExtSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConvExtSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConvExtSenOnTm))));
(fbOutMagConvExtSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConvExtSenOffTm))));
(fbOutMagConvExtSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConvExtSen)-1]);;fbSenFltr(&fbOutMagConvExtSigFltr);
(tyDInput.bOutMagConvExtSen=fbOutMagConvExtSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConvExtSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConvMidSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConvMidSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConvMidSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConvMidSenOnTm))));
(fbOutMagConvMidSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConvMidSenOffTm))));
(fbOutMagConvMidSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConvMidSen)-1]);;fbSenFltr(&fbOutMagConvMidSigFltr);
(tyDInput.bOutMagConvMidSen=fbOutMagConvMidSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConvMidSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diLifterLmtSW)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diLifterLmtSW)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbMagConv1PresentSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvPresentSenOnTm))));
(fbMagConv1PresentSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvPresentSenOffTm))));
(fbMagConv1PresentSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diLifterLmtSW)-1]);;fbSenFltr(&fbMagConv1PresentSigFltr);
(tyDInput.bLifterLmtSW=fbMagConv1PresentSigFltr.bSigOut);
(tyDInput.bMagPresentSen1=fbMagConv1PresentSigFltr.bSigOut);
}else if(((((signed long)((*(p_tyDISettings)).diMagPresentSen1)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagPresentSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bLifterLmtSW=0);
}else{
(tyDInput.bLifterLmtSW=0);
(tyDInput.bMagPresentSen1=0);
}


if(((((signed long)((*(p_tyDISettings)).diInMagConv2EntSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConv2EntSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConv2EntSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConv2EntSenOnTm))));
(fbInMagConv2EntSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConv2EntSenOffTm))));
(fbInMagConv2EntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConv2EntSen)-1]);;fbSenFltr(&fbInMagConv2EntSigFltr);
(tyDInput.bInMagConv2EntSen=fbInMagConv2EntSigFltr.bSigOut);
}else{
(tyDInput.bInMagConv2EntSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diInMagConv2ExtSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConv2ExtSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConv2ExtSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConv2ExtSenOnTm))));
(fbInMagConv2ExtSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConv2ExtSenOffTm))));
(fbInMagConv2ExtSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConv2ExtSen)-1]);;fbSenFltr(&fbInMagConv2ExtSigFltr);
(tyDInput.bInMagConv2ExtSen=fbInMagConv2ExtSigFltr.bSigOut);
}else{
(tyDInput.bInMagConv2ExtSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diInMagConv2MidSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diInMagConv2MidSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbInMagConv2MidSigFltr.tSigOnFltrTm=(plctime)((*(p_diInMagConv2MidSenOnTm))));
(fbInMagConv2MidSigFltr.tSigOffFltrTm=(plctime)((*(p_diInMagConv2MidSenOffTm))));
(fbInMagConv2MidSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diInMagConv2MidSen)-1]);;fbSenFltr(&fbInMagConv2MidSigFltr);
(tyDInput.bInMagConv2MidSen=fbInMagConv2MidSigFltr.bSigOut);
}else{
(tyDInput.bInMagConv2MidSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConv2EntSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConv2EntSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConv2EntSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConv2EntSenOnTm))));
(fbOutMagConv2EntSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConv2EntSenOffTm))));
(fbOutMagConv2EntSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConv2EntSen)-1]);;fbSenFltr(&fbOutMagConv2EntSigFltr);
(tyDInput.bOutMagConv2EntSen=fbOutMagConv2EntSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConv2EntSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConv2ExtSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConv2ExtSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConv2ExtSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConv2ExtSenOnTm))));
(fbOutMagConv2ExtSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConv2ExtSenOffTm))));
(fbOutMagConv2ExtSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConv2ExtSen)-1]);;fbSenFltr(&fbOutMagConv2ExtSigFltr);
(tyDInput.bOutMagConv2ExtSen=fbOutMagConv2ExtSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConv2ExtSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diOutMagConv2MidSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diOutMagConv2MidSen)<=(signed long)(signed long)((*(p_udiMax))))))){

(fbOutMagConv2MidSigFltr.tSigOnFltrTm=(plctime)((*(p_diOutMagConv2MidSenOnTm))));
(fbOutMagConv2MidSigFltr.tSigOffFltrTm=(plctime)((*(p_diOutMagConv2MidSenOffTm))));
(fbOutMagConv2MidSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diOutMagConv2MidSen)-1]);;fbSenFltr(&fbOutMagConv2MidSigFltr);
(tyDInput.bOutMagConv2MidSen=fbOutMagConv2MidSigFltr.bSigOut);
}else{
(tyDInput.bOutMagConv2MidSen=0);
}


if(((((signed long)((*(p_tyDISettings)).diLifter2LmtSW)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diLifter2LmtSW)<=(signed long)(signed long)((*(p_udiMax))))))){
(fbMagConv2PresentSigFltr.tSigOnFltrTm=(plctime)((*(p_diMagConvPresentSenOnTm))));
(fbMagConv2PresentSigFltr.tSigOffFltrTm=(plctime)((*(p_diMagConvPresentSenOffTm))));
(fbMagConv2PresentSigFltr.bSigIn=a_bPhysicalDI[((*(p_tyDISettings)).diLifter2LmtSW)-1]);;fbSenFltr(&fbMagConv2PresentSigFltr);
(tyDInput.bLifter2LmtSW=fbMagConv2PresentSigFltr.bSigOut);
(tyDInput.bMagPresentSen2=fbMagConv2PresentSigFltr.bSigOut);
}else if(((((signed long)((*(p_tyDISettings)).diMagPresentSen2)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMagPresentSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bLifter2LmtSW=0);
}else{
(tyDInput.bLifter2LmtSW=0);
(tyDInput.bMagPresentSen2=0);
}


if(((((signed long)((*(p_tyDISettings)).diMtrOverloadSig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMtrOverloadSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMtrOverloadSig=a_bPhysicalDI[((*(p_tyDISettings)).diMtrOverloadSig)-1]);
}else{
(tyDInput.bMtrOverloadSig=1);
}


if((((unsigned long)DiagCpuIsSimulated()==(unsigned long)(unsigned char)1))){
(tyDInput.bSafetyRlySig=1);
(tyDInput.bEStopSig=1);
(tyDInput.bCoverSWSig=1);
(tyDInput.bLifterTimingBeltSen=1);
(tyDInput.bLifterSafetyLmtSW1=1);
(tyDInput.bLifterSafetyLmtSW2=1);
(tyDInput.bCurtainSafetySig=1);
(tyDInput.bCurtainSen=1);
}


if(((((unsigned long)(unsigned char)tyDInput.bEStopSig==(unsigned long)(unsigned char)0))&(((signed long)eStatus1!=(signed long)3)))){
(eStatus1=3);
(udiStatus1=10000);
}


if(((((unsigned long)(unsigned char)tyDInput.bCoverSWSig==(unsigned long)(unsigned char)0))&(((signed long)eStatus2!=(signed long)3)))){
(eStatus2=3);
(udiStatus2=10001);
}


(fbInitializedTm.IN=1);;TON(&fbInitializedTm);
if(fbInitializedTm.Q){
if(((((unsigned long)(unsigned char)tyDInput.bLifterTimingBeltSen==(unsigned long)(unsigned char)0))&(((signed long)eStatus3!=(signed long)3)))){
(eStatus3=3);
(udiStatus3=10002);
}
}


if((((((unsigned long)(unsigned char)tyDInput.bLifterSafetyLmtSW1==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)tyDInput.bLifterSafetyLmtSW2==(unsigned long)(unsigned char)0)))&(((signed long)eStatus4!=(signed long)3)))){
(eStatus4=3);
(udiStatus4=10003);
}

if(((((signed long)((*(p_tyDISettings)).diMag1FixedClampSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag1FixedClampSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag1FixedClampSen=a_bPhysicalDI[((*(p_tyDISettings)).diMag1FixedClampSen)-1]);
}else{
(tyDInput.bMag1FixedClampSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag2FixedClampSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag2FixedClampSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag2FixedClampSen=a_bPhysicalDI[((*(p_tyDISettings)).diMag2FixedClampSen)-1]);
}else{
(tyDInput.bMag2FixedClampSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diMag3FixedClampSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diMag3FixedClampSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bMag3FixedClampSen=a_bPhysicalDI[((*(p_tyDISettings)).diMag3FixedClampSen)-1]);
}else{
(tyDInput.bMag3FixedClampSen=0);
}

if(((((signed long)((*(p_tyDISettings)).diCurtainSen)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diCurtainSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bCurtainSen=a_bPhysicalDI[((*(p_tyDISettings)).diCurtainSen)-1]);
}else{
(tyDInput.bCurtainSen=1);
}

if(((((signed long)((*(p_tyDISettings)).diCurtainSenPB)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diCurtainSenPB)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bCurtainSenPB=a_bPhysicalDI[((*(p_tyDISettings)).diCurtainSenPB)-1]);
}else{
(tyDInput.bCurtainSenPB=0);
}

if(((((signed long)((*(p_tyDISettings)).diCurtainSafetySig)>(signed long)0))&(((signed long)((*(p_tyDISettings)).diCurtainSafetySig)<=(signed long)(signed long)((*(p_udiMax))))))){
(tyDInput.bCurtainSafetySig=a_bPhysicalDI[((*(p_tyDISettings)).diCurtainSafetySig)-1]);
}else{
(tyDInput.bCurtainSafetySig=1);
}


if(((*(p_bCurtainSenPrep)))){
(fbCurtainSafetyRstTm.IN=(((*(p_bRstCurtainSen))^1)));;TON(&fbCurtainSafetyRstTm);

if(((tyDInput.bCurtainSafetySig^1)&(((signed long)eStatus6!=(signed long)3))&fbCurtainSafetyRstTm.Q&(((unsigned long)(unsigned char)((*(p_tyDO)).bBypCurtainSen)==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bRstCurtainSen)))==(unsigned long)(unsigned char)0)))){

if((tyDInput.bSafetyRlySig^1)){
}else{
(eStatus6=3);
(udiStatus6=10006);
}
}
}














if(((*(p_bLinkStartupRun)))){
(fbSafetyRlyRstTm.IN=(((*(p_bRstErrSafetyRlyRst))^1)));;TON(&fbSafetyRlyRstTm);
if(((((unsigned long)(unsigned char)tyDInput.bSafetyRlySig==(unsigned long)(unsigned char)0))&((((signed long)eStatus5!=(signed long)3))&((((signed long)eStatus1!=(signed long)3))&(((signed long)eStatus2!=(signed long)3))))&fbSafetyRlyRstTm.Q)){
(bSafetySigErrNoBuz=1);
}
}else if((((unsigned long)(unsigned char)bSafetySigErrNoBuz==(unsigned long)(unsigned char)0))){
(fbSafetyRlyRstTm.IN=(((*(p_bRstErrSafetyRlyRst))^1)));;TON(&fbSafetyRlyRstTm);
if(((((unsigned long)(unsigned char)tyDInput.bSafetyRlySig==(unsigned long)(unsigned char)0))&((((signed long)eStatus5!=(signed long)3))&((((signed long)eStatus1!=(signed long)3))&(((signed long)eStatus2!=(signed long)3))))&fbSafetyRlyRstTm.Q&tyDInput.bEStopSig&tyDInput.bCoverSWSig)){
(eStatus5=3);
(udiStatus5=10004);
}
}

if(((((signed long)eStatus1==(signed long)3))&bRstErr)){
(eStatus1=0);
(udiStatus1=0);
}

if(((((signed long)eStatus2==(signed long)3))&bRstErr)){
(eStatus2=0);
(udiStatus2=0);
}

if(((((signed long)eStatus3==(signed long)3))&bRstErr)){
(eStatus3=0);
(udiStatus3=0);
}

if(((((signed long)eStatus4==(signed long)3))&bRstErr)){
(eStatus4=0);
(udiStatus4=0);
}

if(((((signed long)eStatus5==(signed long)3))&bRstErr)){
(eStatus5=0);
(udiStatus5=0);
}

if(((((signed long)eStatus6==(signed long)3))&bRstErr)){
(eStatus6=0);
(udiStatus6=0);
}

if((bRstErr&bSafetySigErrNoBuz)){
(bSafetySigErrNoBuz=0);
}

}imp7_else175_0:imp7_end175_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm1.st"
static void __AS__Action__Act_Alarm1(void){
{

if(((((signed long)eStatus1==(signed long)3))&~Edge0000100000&1?((Edge0000100000=(((signed long)eStatus1==(signed long)3))&1),1):((Edge0000100000=(((signed long)eStatus1==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData1.udiCode=udiStatus1);
(tyAlmData1.eSeverity=1);
(tyAlmData1.udiRunTime=(tyAlmData1.udiRunTime+1));
(tyAlmData1.bAlm=1);
(tyAlmData1.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData1.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData1.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData1.udiCode!=(unsigned long)0)))){

(tyAlmData1.udiCode=0);
(tyAlmData1.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData1.bAlm=0);
}

}imp1_else0_1:imp1_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm2.st"
static void __AS__Action__Act_Alarm2(void){
{

if(((((signed long)eStatus2==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus2==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus2==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData2.udiCode=udiStatus2);
(tyAlmData2.eSeverity=1);
(tyAlmData2.udiRunTime=(tyAlmData2.udiRunTime+1));
(tyAlmData2.bAlm=1);
(tyAlmData2.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData2.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData2.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData2.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData2.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData2.udiCode!=(unsigned long)0)))){

(tyAlmData2.udiCode=0);
(tyAlmData2.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData2.bAlm=0);
}

}imp2_else0_1:imp2_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm3.st"
static void __AS__Action__Act_Alarm3(void){
{

if(((((signed long)eStatus3==(signed long)3))&~Edge0000300000&1?((Edge0000300000=(((signed long)eStatus3==(signed long)3))&1),1):((Edge0000300000=(((signed long)eStatus3==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData3.udiCode=udiStatus3);
(tyAlmData3.eSeverity=1);
(tyAlmData3.udiRunTime=(tyAlmData3.udiRunTime+1));
(tyAlmData3.bAlm=1);
(tyAlmData3.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData3.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData3.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData3.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData3.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData3.udiCode!=(unsigned long)0)))){

(tyAlmData3.udiCode=0);
(tyAlmData3.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData3.bAlm=0);
}

}imp3_else0_1:imp3_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm4.st"
static void __AS__Action__Act_Alarm4(void){
{

if(((((signed long)eStatus4==(signed long)3))&~Edge0000400000&1?((Edge0000400000=(((signed long)eStatus4==(signed long)3))&1),1):((Edge0000400000=(((signed long)eStatus4==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData4.udiCode=udiStatus4);
(tyAlmData4.eSeverity=1);
(tyAlmData4.udiRunTime=(tyAlmData4.udiRunTime+1));
(tyAlmData4.bAlm=1);
(tyAlmData4.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData4.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData4.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData4.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData4.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData4.udiCode!=(unsigned long)0)))){

(tyAlmData4.udiCode=0);
(tyAlmData4.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData4.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData4.bAlm=0);
}

}imp4_else0_1:imp4_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm5.st"
static void __AS__Action__Act_Alarm5(void){
{

if(((((signed long)eStatus5==(signed long)3))&~Edge0000500000&1?((Edge0000500000=(((signed long)eStatus5==(signed long)3))&1),1):((Edge0000500000=(((signed long)eStatus5==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData5.udiCode=udiStatus5);
(tyAlmData5.eSeverity=1);
(tyAlmData5.udiRunTime=(tyAlmData5.udiRunTime+1));
(tyAlmData5.bAlm=1);
(tyAlmData5.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData5.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData5.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData5.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData5.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData5.udiCode!=(unsigned long)0)))){

(tyAlmData5.udiCode=0);
(tyAlmData5.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData5.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData5.bAlm=0);
}

}imp5_else0_1:imp5_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Act_Alarm6.st"
static void __AS__Action__Act_Alarm6(void){
{

if(((((signed long)eStatus6==(signed long)3))&~Edge0000600000&1?((Edge0000600000=(((signed long)eStatus6==(signed long)3))&1),1):((Edge0000600000=(((signed long)eStatus6==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData6.udiCode=udiStatus6);
(tyAlmData6.eSeverity=1);
(tyAlmData6.udiRunTime=(tyAlmData6.udiRunTime+1));
(tyAlmData6.bAlm=1);
(tyAlmData6.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sDInputProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData6.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData6.udiCode>(unsigned long)10099)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData6.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData6.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

}else if((bRstErr&(((unsigned long)tyAlmData6.udiCode!=(unsigned long)0)))){

(tyAlmData6.udiCode=0);
(tyAlmData6.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData6.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData6.bAlm=0);
}

}imp6_else0_1:imp6_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.nodebug"

void __AS__ImplInitCyclic_st(void){}

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
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/DInput/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/DInput/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DInput/DInput/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_MagPlat/X20CP0483/DInput/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'c_udiDInputMax'\\n\"");
__asm__(".previous");
