#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsMagStpr/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.st"
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

}

}imp12_end0_0:;}
#line 27 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkOpsMnlUnloadMag=p_UIOpsMnlUnloadMag);
(p_bLinkOpsOutMagConvStepWaitRmv=p_OpsOutMagConvStepWaitToRmvMag);


(p_udiRstErr=p_RstErrReset);
(p_bRun=p_OpsRun);
(p_bStop=p_OpsStop);
(p_bStep=p_OpsStep);
(p_sProgNm=p_NtParamOpsMagConvStprProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(p_diLinkLiftBtmActualPos=p_LifterBtmActualPos);
(p_diLinkLiftBtmPos=p_McParamLifterBtmPos);
(p_diLinkLiftTopPos=p_McParamLifterTopPos);

(p_eStprBtmMidStat=p_PneuNoSenBtmMidStprStat);
(p_eStprBtmMidStatus=p_PneuNoSenBtmMidStprStatus);

(p_eStprBtmExitStat=p_PneuNoSenBtmExtStprStat);
(p_eStprBtmExitStatus=p_PneuNoSenBtmExtStprStatus);


(p_eStprTopEntStat=p_PneuNoSenTopEntStprStat);
(p_eStprTopEntStatus=p_PneuNoSenTopEntStprStatus);

(p_eStprTopMidStat=p_PneuNoSenTopMidStprStat);
(p_eStprTopMidStatus=p_PneuNoSenTopMidStprStatus);
(p_bStprTopMidStprExtended=p_PneuNoSenTopMidStprExtended);

(p_eStprTopExitStat=p_PneuNoSenTopExtStprStat);
(p_eStprTopExitStatus=p_PneuNoSenTopExtStprStatus);
(p_bStprTopExitStprExtended=p_PneuNoSenTopEntStprExtended);

(p_eInMagConvStatus=p_InMagConvStatus);
(p_eInMagConvStat=p_InMagConvStat);
(p_eOutMagConvStatus=p_OutMagConvStatus);
(p_eLiftMagConvStat=p_LifterMagConvStat);
(p_eLiftMagConvStatus=p_LifterMagConvStatus);



(p_bBtmMagConvZ1Sen=p_DIOutMagConvEntSen);
(p_bTopMagConvZ1Sen=p_DIInMagConvExtSen);

(p_bBtmMagConvMidSen=p_DIOutMagConvMidSen);
(p_bTopMagConvMidSen=p_DIInMagConvMidSen);

(p_bBtmMagConvEndSen=p_DIOutMagConvExtSen);
(p_bTopMagConvEndSen=p_DIInMagConvEntSen);

(p_bMagPresentSen=p_DILifterLmtSW);

(p_bEnterSig=p_OpsInMagConvStepEntToMid);
(p_bExitSig=p_OpsOutMagConvStepExtMag);




}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
if((((signed long)((((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftBtmPos))))<0?-((((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftBtmPos))))):(((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftBtmPos)))))<(signed long)500))){

((*(p_bLiftBtmPos))=1);

}else{
((*(p_bLiftBtmPos))=0);

}

if((((signed long)((((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftTopPos))))<0?-((((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftTopPos))))):(((*(p_diLinkLiftBtmActualPos)))-((*(p_diLinkLiftTopPos)))))<(signed long)500))){

((*(p_bLiftTopPos))=1);

}else{
((*(p_bLiftTopPos))=0);

}


((*(p_bBtmEntToLift))=((((unsigned long)(unsigned char)((*(p_bMagPresentSen)))==(unsigned long)(unsigned char)0))&((*(p_bBtmMagConvZ1Sen)))&((((signed long)((*(p_eLiftMagConvStat)))==(signed long)5))&(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)2)))&((*(p_bLiftBtmPos)))));

((*(p_bTopExitFromLift))=(((((signed long)((*(p_eLiftMagConvStat)))==(signed long)11))&(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)2)))&((*(p_bLiftTopPos)))));


((*(p_bBtmExitFromLift))=(((((signed long)((*(p_eLiftMagConvStat)))==(signed long)11))&(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)2)))&((*(p_bLiftBtmPos)))));




((*(p_bTopEntToLift))=((((unsigned long)(unsigned char)((*(p_bMagPresentSen)))==(unsigned long)(unsigned char)0))&((*(p_bTopMagConvZ1Sen)))&((((signed long)((*(p_eLiftMagConvStat)))==(signed long)6))&(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)2)))&((*(p_bLiftTopPos)))));

((*(p_bTopEntFromMagConv))=((*(p_bEnterSig))));
((*(p_bBtmExitFromMagConv))=(((*(p_bExitSig)))&((*(p_bBtmMagConvEndSen)))));
((*(p_bBtmExitMnl))=(((*(p_bLinkOpsMnlUnloadMag)))&((*(p_bLinkOpsOutMagConvStepWaitRmv)))&((*(p_bBtmMagConvEndSen)))));

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp11_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(p_bRun=((unsigned long)(&bRun)));
(p_bStop=((unsigned long)(&bStop)));
(p_bStep=((unsigned long)(&bStep)));

(p_eStprBtmExitStat=((unsigned long)(&eStprBtmExitStat)));
(p_eStprBtmExitStatus=((unsigned long)(&eStprBtmExitStatus)));
(p_eStprBtmMidStat=((unsigned long)(&eStprBtmMidStat)));
(p_eStprBtmMidStatus=((unsigned long)(&eStprBtmMidStatus)));

(p_eStprTopExitStat=((unsigned long)(&eStprTopExitStat)));
(p_eStprTopExitStatus=((unsigned long)(&eStprTopExitStatus)));
(p_eStprTopMidStat=((unsigned long)(&eStprTopMidStat)));
(p_eStprTopMidStatus=((unsigned long)(&eStprTopMidStatus)));
(p_eStprTopEntStat=((unsigned long)(&eStprTopEntStat)));
(p_eStprTopEntStatus=((unsigned long)(&eStprTopEntStatus)));

(p_bLiftBtmPos=((unsigned long)(&bLiftBtmPos)));
(p_bLiftTopPos=((unsigned long)(&bLiftTopPos)));

(p_bBtmEntToLift=((unsigned long)(&bBtmEntToLift)));
(p_bBtmExitFromLift=((unsigned long)(&bBtmExitFromLift)));
(p_bTopEntToLift=((unsigned long)(&bTopEntToLift)));
(p_bTopExitFromLift=((unsigned long)(&bTopExitFromLift)));
(p_bBtmExitFromMagConv=((unsigned long)(&bBtmExitFromMagConv)));
(p_bTopEntFromMagConv=((unsigned long)(&bTopEntFromMagConv)));
(p_bBtmExitMnl=((unsigned long)(&bBtmExitMnl)));

(p_bBtmMagConvZ1Sen=((unsigned long)(&bBtmMagConvZ1Sen)));
(p_bTopMagConvZ1Sen=((unsigned long)(&bTopMagConvZ1Sen)));

(p_bTopMagConvMidSen=((unsigned long)(&bTopMagConvMidSen)));
(p_bBtmMagConvMidSen=((unsigned long)(&bBtmMagConvMidSen)));

(p_bBtmMagConvEndSen=((unsigned long)(&bBtmMagConvEndSen)));
(p_bTopMagConvEndSen=((unsigned long)(&bTopMagConvEndSen)));

(p_bMagPresentSen=((unsigned long)(&bMagPresentSen)));
(p_eLiftMagConvAct=((unsigned long)(&eLiftMagConvAct)));

(p_bEnterSig=((unsigned long)(&bEnterSig)));
(p_bExitSig=((unsigned long)(&bExitSig)));

(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_Background.st"
static void __AS__Action__Act_Background(void){
{

if((~(((*(p_bStop)))|((*(p_bStep))))&Edge0000200000&1?((Edge0000200000=(((*(p_bStop)))|((*(p_bStep))))&1),1):((Edge0000200000=(((*(p_bStop)))|((*(p_bStep))))&1),0))){
(bPaused=0);
}

if(((((signed long)eStatus!=(signed long)3))&(((unsigned long)(unsigned char)((*(p_bRun)))==(unsigned long)(unsigned char)1)))){
if(((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)0)))){
__AS__Action__Act_OpsRun();
}else{
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

if((((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&~Edge0000200001&1?((Edge0000200001=((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&1),1):((Edge0000200001=((((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)1)))&1),0))){
__AS__Action__Act_OpsRst();
}

}else if((((signed long)eStatus!=(signed long)3))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stop"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Error"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}


if(((~((*(p_bRun)))&Edge0000200002&1?((Edge0000200002=((*(p_bRun)))&1),1):((Edge0000200002=((*(p_bRun)))&1),0))|((((signed long)eStatus==(signed long)3))&~Edge0000200003&1?((Edge0000200003=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200003=(((signed long)eStatus==(signed long)3))&1),0)))){
__AS__Action__Act_OpsInitial();
__AS__Action__Act_OpsRst();
}


if(((((signed long)eStatus==(signed long)3))&bRstErr)){
(eStatus=0);
(udiStatus=0);
}

}imp2_else5_0:imp2_end5_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000100000&1?((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sOpsMagConvStprProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

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

}

}imp1_else0_1:imp1_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Sequence/Act_OpsInitial.st"
static void __AS__Action__Act_OpsInitial(void){
{
(eOpsStep=0);
(eGotoOpsStep=1);
(eOpsStep1=0);
(eGotoOpsStep1=11);
(eOpsStep2=0);
(eGotoOpsStep2=1);

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Sequence/Act_OpsRun.st"
static void __AS__Action__Act_OpsRun(void){
{
if((((signed long)eGotoOpsStep!=(signed long)eOpsStep))){

switch(eGotoOpsStep){

default: {
(eOpsStep=eGotoOpsStep);

}break;}

}

if((((signed long)eOpsStep==(signed long)eGotoOpsStep))){

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

switch(eOpsStep){

case 1:{

(eStprBtmMidAct=6);
(eStprBtmExitAct=5);




if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprBtmExitStat)))==(signed long)5))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1))))){

(eStprBtmMidAct=0);
(eStprBtmExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

(eGotoOpsStep=2);

}

}break;case 2:{

if(((*(p_bBtmEntToLift)))){
(eGotoOpsStep=3);
}else if(((*(p_bBtmExitFromLift)))){
(eGotoOpsStep=4);
}else if(((*(p_bBtmExitFromMagConv)))){
(eGotoOpsStep=9);
}else if(((*(p_bBtmExitMnl)))){
(eGotoOpsStep=12);
}else if((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))){
(eGotoOpsStep=10);
}

(fbMidChkDlyTm.IN=(((signed long)((*(p_eOutMagConvStatus)))!=(signed long)2)));;TON(&fbMidChkDlyTm);

if(((((unsigned long)(unsigned char)((*(p_bBtmExitFromLift)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bBtmEntToLift)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bBtmExitFromMagConv)))==(unsigned long)(unsigned char)0))&((*(p_bBtmMagConvEndSen)))&((*(p_bBtmMagConvMidSen)))&fbMidChkDlyTm.Q&(((signed long)((*(p_eInMagConvStatus)))!=(signed long)2)))){
(eStprBtmMidAct=5);
}else if(fbMidChkDlyTm.Q){
(eStprBtmMidAct=6);
}

if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)5))|(((signed long)((*(p_eStprBtmMidStat)))==(signed long)6)))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))){
(eStprBtmMidAct=0);
(fbMidChkDlyTm.IN=0);;TON(&fbMidChkDlyTm);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 3:{

(eStprBtmMidAct=5);
(eStprBtmExitAct=6);


if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)5))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprBtmExitStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1))))){

(eStprBtmMidAct=0);
(eStprBtmExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if(((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)0)))){

(eGotoOpsStep=10);

}

}

}break;case 4:{

(eStprBtmMidAct=6);
(eStprBtmExitAct=5);


if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprBtmExitStat)))==(signed long)5))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1))))){

(eStprBtmMidAct=0);
(eStprBtmExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if(((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)0)))){

(eGotoOpsStep=10);

}
}


}break;case 9:{
(eStprBtmMidAct=5);
(eStprBtmExitAct=6);

if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)5))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprBtmExitStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1))))){
(eStprBtmMidAct=0);
(eStprBtmExitAct=0);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if(((((signed long)((*(p_eOutMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eOutMagConvStatus)))==(signed long)0)))){
(eGotoOpsStep=10);
}
}



}break;case 10:{

(eStprBtmMidAct=6);
(eStprBtmExitAct=5);




if((((((signed long)((*(p_eStprBtmMidStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprBtmExitStat)))==(signed long)5))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1))))){

(eStprBtmMidAct=0);
(eStprBtmExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

(eGotoOpsStep=2);

}
}break;case 11:{
if(((((signed long)((*(p_eInMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eInMagConvStatus)))==(signed long)0)))){
(eStprTopEntAct=5);
}

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)5))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(eGotoOpsStep=2);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 12:{

(eStprBtmExitAct=6);

if(((((signed long)((*(p_eStprBtmExitStat)))==(signed long)6))&(((signed long)((*(p_eStprBtmExitStatus)))==(signed long)1)))){
(eStprBtmExitAct=0);

if((((unsigned long)(unsigned char)((*(p_bBtmExitMnl)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=10);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;}
}
}else{
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


if((((signed long)eGotoOpsStep1!=(signed long)eOpsStep1))){
switch(eGotoOpsStep1){
default: {
(eOpsStep1=eGotoOpsStep1);
}break;}
}

if((((signed long)eGotoOpsStep1==(signed long)eOpsStep1))){

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){
switch(eOpsStep1){
case 11:{
if((((signed long)eOpsStep1>(signed long)1))){
(eStprTopEntAct=5);
}

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)5))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(eGotoOpsStep1=2);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 2:{
if(((*(p_bTopEntFromMagConv)))){
(eGotoOpsStep1=7);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 7:{
(eStprTopEntAct=6);

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)6))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(eGotoOpsStep1=8);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}
}break;case 8:{
if((((*(p_bTopMagConvMidSen)))|((((signed long)((*(p_eInMagConvStatus)))!=(signed long)2))&(((unsigned long)(unsigned char)((*(p_bTopMagConvEndSen)))==(unsigned long)(unsigned char)0))))){
(eStprTopEntAct=5);
}

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)5))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
(eGotoOpsStep1=2);
}
}break;}
}
}else{
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


if((((signed long)eGotoOpsStep2!=(signed long)eOpsStep2))){
switch(eGotoOpsStep2){
default: {
(eOpsStep2=eGotoOpsStep2);
}break;}
}

if((((signed long)eGotoOpsStep2==(signed long)eOpsStep2))){
if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){
switch(eOpsStep2){

case 1:{

(eStprTopMidAct=6);
(eStprTopExitAct=5);


if((((((signed long)((*(p_eStprTopMidStat)))==(signed long)6))&(((signed long)((*(p_eStprTopMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprTopExitStat)))==(signed long)5))&(((signed long)((*(p_eStprTopExitStatus)))==(signed long)1))))){

(eStprTopMidAct=0);
(eStprTopExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

(eGotoOpsStep2=2);

}

}break;case 2:{


if(((*(p_bTopEntToLift)))){
(eGotoOpsStep2=5);
}else if(((*(p_bTopExitFromLift)))){
(eGotoOpsStep2=6);
}else if((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))){
(eGotoOpsStep2=10);
}

(fbTopMidChkDlyTm.IN=(((signed long)((*(p_eInMagConvStatus)))!=(signed long)2)));;TON(&fbTopMidChkDlyTm);

if(((((unsigned long)(unsigned char)((*(p_bTopEntToLift)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bTopExitFromLift)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bTopEntFromMagConv)))==(unsigned long)(unsigned char)0))&((*(p_bTopMagConvZ1Sen)))&((*(p_bTopMagConvMidSen)))&fbTopMidChkDlyTm.Q&(((signed long)((*(p_eOutMagConvStatus)))!=(signed long)2)))){
(eStprTopMidAct=5);
}else if(fbTopMidChkDlyTm.Q){
(eStprTopMidAct=6);
}

if((((((signed long)((*(p_eStprTopMidStat)))==(signed long)5))|(((signed long)((*(p_eStprTopMidStat)))==(signed long)6)))&(((signed long)((*(p_eStprTopMidStatus)))==(signed long)1)))){
(eStprTopMidAct=0);
(fbTopMidChkDlyTm.IN=0);;TON(&fbTopMidChkDlyTm);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


}break;case 5:{
if(((*(p_bTopMagConvMidSen)))){
(eStprTopMidAct=5);
}else{
(eStprTopMidAct=6);
}
(eStprTopExitAct=6);


if(((((((signed long)((*(p_eStprTopMidStat)))==(signed long)5))|(((signed long)((*(p_eStprTopMidStat)))==(signed long)6)))&(((signed long)((*(p_eStprTopMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprTopExitStat)))==(signed long)6))&(((signed long)((*(p_eStprTopExitStatus)))==(signed long)1))))){

(eStprTopMidAct=0);
(eStprTopExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if(((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)0)))){

(eGotoOpsStep2=10);
}

}

}break;case 6:{

(eStprTopMidAct=6);
(eStprTopExitAct=6);


if((((((signed long)((*(p_eStprTopMidStat)))==(signed long)6))&(((signed long)((*(p_eStprTopMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprTopExitStat)))==(signed long)6))&(((signed long)((*(p_eStprTopExitStatus)))==(signed long)1))))){

(eStprTopMidAct=0);
(eStprTopExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

if(((((signed long)((*(p_eLiftMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eLiftMagConvStatus)))==(signed long)0)))){

(eGotoOpsStep2=10);

}
}

}break;case 7:{
(eStprTopEntAct=6);

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)6))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(eGotoOpsStep2=8);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}

}break;case 8:{
if(((*(p_bTopMagConvMidSen)))){
(eStprTopEntAct=5);
}

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)5))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
(eGotoOpsStep2=2);
}


}break;case 10:{

(eStprTopMidAct=6);
(eStprTopExitAct=5);


if((((((signed long)((*(p_eStprTopMidStat)))==(signed long)6))&(((signed long)((*(p_eStprTopMidStatus)))==(signed long)1)))&((((signed long)((*(p_eStprTopExitStat)))==(signed long)5))&(((signed long)((*(p_eStprTopExitStatus)))==(signed long)1))))){

(eStprTopMidAct=0);
(eStprTopExitAct=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

(eGotoOpsStep2=2);

}

}break;case 11:{
if(((((signed long)((*(p_eInMagConvStatus)))==(signed long)1))|(((signed long)((*(p_eInMagConvStatus)))==(signed long)0)))){
(eStprTopEntAct=5);
}

if(((((signed long)((*(p_eStprTopEntStat)))==(signed long)5))&(((signed long)((*(p_eStprTopEntStatus)))==(signed long)1)))){
(eStprTopEntAct=0);
(eGotoOpsStep2=2);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}break;}
}
}else{
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}



}imp10_end33_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Sequence/Act_OpsRst.st"
static void __AS__Action__Act_OpsRst(void){
{
(eStprBtmExitAct=0);
(eStprBtmMidAct=0);
(eStprTopExitAct=0);
(eStprTopMidAct=0);

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Temp/Includes/AS_TempDecl/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/GlobalComponents/MpComponents.var\\\" scope \\\"global\\\"\\n\"");
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
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsMagStpr/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsMagStpr/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsMagStpr/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");
