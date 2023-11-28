#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/MagConv2C2/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.st"
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
__AS__Action__Act_LinkAction();
__AS__Action__Act_Action();
__AS__Action__Act_LinkEn();

if(((((unsigned long)(unsigned char)((*(p_bPrep)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)0)))){
__AS__Action__Act_Link();
__AS__Action__Act_Main();
}else{
if((((signed long)eStat!=(signed long)0))){
(eStatus=1);
}else{
(eStatus=0);
}
}

__AS__Action__Act_Alarm();

}

}imp11_end0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkOpsRun=p_OpsRun);

(p_bLinkDISafetyRlySig=p_DISafetyRlySig);

(p_bLinkMagSmallSen=p_DIMagConvSmallMagSen3);
(p_bLinkMagLargeSen=p_DIMagConvLargeMagSen3);
(p_bLinkFixClprUnClampSen=p_DIMag3FixedUnclampRS);
(p_bLinkFixClprClampSen=p_DIMag3FixedClampRS);
(p_bLinkFixClprMagDetectSen=p_DIMag3FixedClampSen);
(p_bLinkFixClprMagDetectSenPrep=p_NtParamProjFixClpMagDSenPrep);

(p_bLinkMagOpsStepMagFullExit=p_OpsMagConvUL3MagFullExit);
(p_bLinkDIMagEntSen=p_DIMagConvEntSen3);
(p_bLinkDO=p_DO);

(p_bLinkNtParamMagModelAutoVerify=p_NtParamProjMagAutoVerifyPrep);

(p_bWidthChkInterrupt=p_DICurtainSen);
(p_bWidthChkSen=p_DIMagWidthChkSen);

(p_tyDISettings=p_NtParamDISettings);
(p_bLinkFixClprClampSen=((unsigned long)(&bFixClprClampSen)));


(p_udiRstErr=p_RstErrReset);
(p_bPrep=p_NtParamProjMag3ConvPrep);
(p_bManual=p_UIMnlMod);
(p_bOnDirMod=p_NtParamMagConv3OnDirMod);
(p_diInitTm=p_McParamMag3ConvRunTmOut);
(p_tMtrOffDlyTm=p_NtParamMagConv3MtrOffDlyTm);
(p_diTxInTimeOut=p_McParamMag3ConvRunTmOut);
(p_diTxOutTimeOut=p_McParamMag3ConvRunTmOut);
(p_eDirection=p_NtParamProjMagConvDir);
(p_sProgNm=p_NtParamMagConv3ProgNm);
(p_tClprClampTO=p_NtParamMagConv3ClprClampTO);
(p_tClprUnclampTO=p_NtParamMagConv3ClprUnclampTO);

(p_bRightSen=p_DIMagPresentSen3);

(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);



}}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if((((unsigned long)(unsigned char)((*(p_bLinkOpsRun)))==(unsigned long)(unsigned char)1))){
(p_eAct=p_OpsMagConvUL3MagConv2ClpAct);
}else if((((unsigned long)(unsigned char)((*(p_bManual)))==(unsigned long)(unsigned char)1))){
(p_eAct=p_UIMagConv2Clp3Act);
}else{
(p_eAct=((unsigned long)(&eAct)));
}

}imp7_end0_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
if((((unsigned long)(unsigned char)((*(p_bLinkDISafetyRlySig)))==(unsigned long)(unsigned char)0))){
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);
}

((*(p_bFixClprUnclampSen))=((*(p_bLinkFixClprUnClampSen))));

if(((*(p_bLinkNtParamMagModelAutoVerify)))){
(fbSmallLargeSenDlyTm.IN=(((*(p_bLinkMagSmallSen)))|((*(p_bLinkMagLargeSen)))));;TON(&fbSmallLargeSenDlyTm);
if(fbSmallLargeSenDlyTm.Q){
((*(p_bFixClprClampSen))=1);
}else{
((*(p_bFixClprClampSen))=0);
}
}else{
if(((*(p_bLinkFixClprMagDetectSenPrep)))){


if(((((signed long)((*(p_eAct)))==(signed long)19))|((((signed long)((*(p_eAct)))==(signed long)3))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)0)))|((((signed long)((*(p_eAct)))==(signed long)2))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)0)))|((((signed long)((*(p_eAct)))==(signed long)8))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)0)))|((((signed long)((*(p_eAct)))==(signed long)12))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)0)))|(((signed long)((*(p_eAct)))==(signed long)27)))){

((*(p_bFixClprClampSen))=(((*(p_bLinkFixClprUnClampSen))^1)));
}else{
((*(p_bFixClprClampSen))=((*(p_bLinkFixClprMagDetectSen))));
}

}else{
((*(p_bFixClprClampSen))=((*(p_bLinkFixClprClampSen))));
}
}

((*(p_bRmtClprClampSen))=((*(p_bLinkDO)).bMag3RemoteClampCtrl));
((*(p_bRmtClprUnclampSen))=(((*(p_bLinkDO)).bMag3RemoteClampCtrl)^1));



if(((*(p_bLinkMagOpsStepMagFullExit)))){
(fbLeftSenDelayTm.IN=1);;(fbLeftSenDelayTm.PT=3000);;TON(&fbLeftSenDelayTm);
if(fbLeftSenDelayTm.Q){
((*(p_bLeftSen))=((*(p_bLinkDIMagEntSen))));
}
}else{
((*(p_bLeftSen))=((*(p_bLinkDIMagEntSen))));
(fbLeftSenDelayTm.IN=0);;TON(&fbLeftSenDelayTm);
}



if((((signed long)((*(p_tyDISettings)).diMag3FixedClampSen)>(signed long)0))){



if((((((signed long)eStat==(signed long)2))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)3)))|((((signed long)eStat==(signed long)5))&(((unsigned long)(unsigned char)usiStep==(unsigned long)(unsigned char)1)))|(((signed long)eStat==(signed long)18))|(((signed long)eStat==(signed long)19)))){
(fbClpExtChkTm.IN=1);;TON(&fbClpExtChkTm);

if(fbClpExtChkTm.Q){
(fbClpExtChkTm.IN=0);;TON(&fbClpExtChkTm);
(p_bLinkFixClprClampSen=p_DIMag3FixedClampSen);
}else{
(p_bLinkFixClprClampSen=((unsigned long)(&bFixClprClampSen)));
}
}else{
(fbClpExtChkTm.IN=0);;TON(&fbClpExtChkTm);
((*(p_bFixClprClampSen))=0);
}
}else{
(p_bLinkFixClprClampSen=p_DIMag3FixedClampRS);
}

}imp6_end7_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


}}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp10_end0_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));

(p_bManual=((unsigned long)(&bManual)));
(p_bOnDirMod=((unsigned long)(&bOnDirMod)));
(p_diInitTm=((unsigned long)(&diInitTm)));
(p_tMtrOffDlyTm=((unsigned long)(&tMtrOffDlyTm)));
(p_diTxInTimeOut=((unsigned long)(&diTxInTimeOut)));
(p_diTxOutTimeOut=((unsigned long)(&diTxOutTimeOut)));
(p_eDirection=((unsigned long)(&eDirection)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_tClprClampTO=((unsigned long)(&tClprClampTO)));
(p_tClprUnclampTO=((unsigned long)(&tClprUnclampTO)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));
(p_bLeftSen=((unsigned long)(&bLeftSen)));
(p_bRightSen=((unsigned long)(&bRightSen)));
(p_bFixClprClampSen=((unsigned long)(&bFixClprClampSen)));
(p_bFixClprUnclampSen=((unsigned long)(&bFixClprUnclampSen)));
(p_bFixClprClampSafetySen=((unsigned long)(&bFixClprClampSafetySen)));
(p_bFixClprUnclampSafetySen=((unsigned long)(&bFixClprUnclampSafetySen)));
(p_bRmtClprClampSen=((unsigned long)(&bRmtClprClampSen)));
(p_bRmtClprUnclampSen=((unsigned long)(&bRmtClprUnclampSen)));
(p_bRmtClprClampSafetySen=((unsigned long)(&bRmtClprClampSafetySen)));
(p_bRmtClprUnclampSafetySen=((unsigned long)(&bRmtClprUnclampSafetySen)));
(p_bWidthChkSenPrep=((unsigned long)(&bWidthChkPrep)));

}}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbInit.bOnDirMod=((*(p_bOnDirMod))));
(fbInit.bStartSen=1);
(fbInit.tMtrOffDlyTm=((*(p_tMtrOffDlyTm))));
(fbInit.bEn=0);;fbConvSenToSenTm(&fbInit);

(fbEnt.bOnDirMod=((*(p_bOnDirMod))));
(fbEnt.bStartSen=1);
(fbEnt.tMtrOffDlyTm=((*(p_tMtrOffDlyTm))));
(fbEnt.bEn=0);;fbConvSenToSen(&fbEnt);

(fbPreExit.bOnDirMod=((*(p_bOnDirMod))));
(fbPreExit.bStartSen=1);
(fbPreExit.tMtrOffDlyTm=((*(p_tMtrOffDlyTm))));
(fbPreExit.bEn=0);;fbConvSenToSenTm(&fbPreExit);

(fbExit.bOnDirMod=((*(p_bOnDirMod))));
(fbExit.bStartSen=1);
(fbExit.tMtrOffDlyTm=((*(p_tMtrOffDlyTm))));
(fbExit.bEn=0);;fbConvSenToSenOff(&fbExit);

(fbExit1.bOnDirMod=((*(p_bOnDirMod))));
(fbExit1.bStartSen=1);
(fbExit1.tMtrOffDlyTm=((*(p_tMtrOffDlyTm))));
(fbExit1.bEn=0);;fbConvSenToSenOff1(&fbExit1);

(fbStop.bEn=0);;fbConvMtrOff(&fbStop);

(fbFixClprClampChk.tTimeOut=((*(p_tClprClampTO))));
(fbFixClprClampChk.bEn=0);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);

(fbFixClprUnclampChk.tTimeOut=((*(p_tClprUnclampTO))));
(fbFixClprUnclampChk.bEn=0);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprClampChk.tTimeOut=((*(p_tClprClampTO))));
(fbRmtClprClampChk.bEn=0);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

(fbRmtClprUnclampChk.tTimeOut=((*(p_tClprUnclampTO))));
(fbRmtClprUnclampChk.bEn=0);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);


(fbFixClprUnclampChk1.tTimeOut=((*(p_tClprClampTO))));
(fbFixClprUnclampChk.bEn=0);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);
(fbRmtClprUnclampChk1.tTimeOut=((*(p_tClprUnclampTO))));
(fbRmtClprUnclampChk1.bEn=0);;fbPneuRetSenRetChk(&fbRmtClprUnclampChk1);

(fbClprDlyTm.PT=(((signed long)(((*(p_tMtrOffDlyTm)))))/((signed long)(2))));
(fbClprDlyTm.IN=0);;TON(&fbClprDlyTm);

}}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
(fbInit.bEn=0);;fbConvSenToSenTm(&fbInit);
(fbEnt.bEn=0);;fbConvSenToSen(&fbEnt);
(fbPreExit.bEn=0);;fbConvSenToSenTm(&fbPreExit);
(fbExit.bEn=0);;fbConvSenToSenOff(&fbExit);
(fbExit1.bEn=0);;fbConvSenToSenOff1(&fbExit1);
(fbStop.bEn=0);;fbConvMtrOff(&fbStop);
(fbFixClprClampChk.bEn=0);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);
(fbFixClprUnclampChk.bEn=0);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);
(fbRmtClprClampChk.bEn=0);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);
(fbRmtClprUnclampChk.bEn=0);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);
(fbClprDlyTm.IN=0);;TON(&fbClprDlyTm);
(fbFixClprDly.IN=0);;TON(&fbFixClprDly);
(fbWidthChk.IN=0);;TON(&fbWidthChk);







if(((((signed long)eStatOld!=(signed long)0))&(((signed long)eStatOld!=(signed long)28))&(((signed long)eStatOld!=(signed long)29))&(((signed long)eStatOld!=(signed long)30))&(((signed long)eStatOld!=(signed long)31))&(((signed long)eStatOld!=(signed long)32))&(((signed long)eStatOld!=(signed long)33)))){

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

}

(usiStep=0);
(usiSubStep=0);
(bReachEnd=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eStatOld=eStat);

(eStatus=2);
}


switch(eStat){

case 0:{
if((~((*(p_bManual)))&Edge0000900000&1?((Edge0000900000=((*(p_bManual)))&1),1):((Edge0000900000=((*(p_bManual)))&1),0))){
(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);
}

(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);



if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}else{
(bHvMag=0);
}

(fbInit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbInit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbInit.bEndSen=((*(p_bRightSen))));
}else{
(fbInit.bEndSen=((*(p_bLeftSen))));
}

(fbInit.bEn=1);;fbConvSenToSenTm(&fbInit);

(bMtrSigOnOrLToR=fbInit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbInit.bMtrDirOrRToL);

if((((unsigned long)fbInit.udiStatus==(unsigned long)0))){
if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bRightSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10000);
(eStatus=3);
}else{
(eStatus=1);
}
}else{
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLeftSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10001);
(eStatus=3);
}else{
(eStatus=1);
}
}
}else if((((unsigned long)fbInit.udiStatus<(unsigned long)65534))){
(udiStatus=fbInit.udiStatus);
(eStatus=3);
}
}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}break;case 1:{

if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}else{
(bHvMag=0);
}

(fbInit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbInit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbInit.bEndSen=((*(p_bRightSen))));
}else{
(fbInit.bEndSen=((*(p_bLeftSen))));
}

(fbInit.bEn=1);;fbConvSenToSenTm(&fbInit);

(bMtrSigOnOrLToR=fbInit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbInit.bMtrDirOrRToL);

if((((unsigned long)fbInit.udiStatus==(unsigned long)0))){
if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bRightSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10005);
(eStatus=3);
}else{
(usiStep=2);
}
}else{
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLeftSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10006);
(eStatus=3);
}else{
(usiStep=2);
}
}
}else if((((unsigned long)fbInit.udiStatus<(unsigned long)65534))){
(udiStatus=fbInit.udiStatus);
(eStatus=3);
}

}break;case 2:{
if((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))){
(fbWidthChk.IN=(((*(p_bWidthChkInterrupt))^1)));;TON(&fbWidthChk);
if((((unsigned long)(unsigned char)((*(p_bWidthChkInterrupt)))==(unsigned long)(unsigned char)0))){
if(fbWidthChk.Q){
(udiStatus=10048);
(eStatus=3);
}
}else if(((*(p_bWidthChkInterrupt)))){
(usiStep=3);
}
}else{
(eStatus=1);
}

}break;case 3:{
(bFixClprClampCtrl=1);

(fbFixClprClampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprClampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprClampChk.bExtSafety=((*(p_bFixClprClampSafetySen))));
(fbFixClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)0))){
(fbFixClprDly.IN=1);;TON(&fbFixClprDly);
if(fbFixClprDly.Q){
(fbFixClprDly.IN=0);;TON(&fbFixClprDly);
(usiStep=4);
}

}else if((((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534))){
(bFixClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10007);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10008);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10009);
}else{
(udiStatus=fbFixClprClampChk.udiStatus);
}
}

}break;case 4:{
(bRmtClprClampCtrl=1);

(fbRmtClprClampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprClampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprClampChk.bExtSafety=((*(p_bRmtClprClampSafetySen))));
(fbRmtClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))){
(eStatus=1);

}else if((((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534))){
(bRmtClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10007);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10008);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10009);
}else{
(udiStatus=fbRmtClprClampChk.udiStatus);
}
}

}break;}
}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}break;case 1:{

if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}else{
(bHvMag=0);
}

(fbInit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbInit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbInit.bEndSen=((*(p_bRightSen))));
}else{
(fbInit.bEndSen=((*(p_bLeftSen))));
}

(fbInit.bEn=1);;fbConvSenToSenTm(&fbInit);

(bMtrSigOnOrLToR=fbInit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbInit.bMtrDirOrRToL);

if((((unsigned long)(unsigned char)fbInit.bEndSen==(unsigned long)(unsigned char)1))){
(bReachEnd=1);
}

if((((unsigned long)(unsigned char)bReachEnd==(unsigned long)(unsigned char)1))){
(fbClprDlyTm.IN=1);;TON(&fbClprDlyTm);
if((((unsigned long)(unsigned char)fbClprDlyTm.Q==(unsigned long)(unsigned char)1))){
switch(usiSubStep){












case 0:{
(bRmtClprClampCtrl=1);

(fbRmtClprClampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprClampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprClampChk.bExtSafety=((*(p_bRmtClprClampSafetySen))));
(fbRmtClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))){
(usiSubStep=1);
}


}break;case 1:{

(bFixClprClampCtrl=1);

(fbFixClprClampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprClampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprClampChk.bExtSafety=((*(p_bFixClprClampSafetySen))));
(fbFixClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);

}break;}
}
}

if(((((unsigned long)fbInit.udiStatus==(unsigned long)0))&(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0)))|(((unsigned long)(unsigned char)bReachEnd==(unsigned long)(unsigned char)0))))){
if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bRightSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10041);
(eStatus=3);
}else{
(eStatus=1);
}
}else{
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLeftSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10042);
(eStatus=3);
}else{
(eStatus=1);
}
}

}else if(((((unsigned long)fbInit.udiStatus>(unsigned long)0))&(((unsigned long)fbInit.udiStatus<(unsigned long)65534)))){
(udiStatus=fbInit.udiStatus);
(eStatus=3);

}else if((((((unsigned long)fbFixClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(eStatus=3);

if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1503))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1503)))){
(udiStatus=10043);
}else if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1506))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1506)))){
(udiStatus=10044);
}else if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1507))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1507)))){
(udiStatus=10045);
}else{
if(((((unsigned long)fbFixClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprClampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprClampChk.udiStatus);
}
}
}

}break;}
}

}break;case 4:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}


(fbEnt.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbEnt.tTimeOut=(plctime)((*(p_diTxInTimeOut))));

if((((unsigned long)(unsigned char)fbEnt.bConvLToR==(unsigned long)(unsigned char)1))){
(fbEnt.bEndSen=((*(p_bRightSen))));
}else{
(fbEnt.bEndSen=((*(p_bLeftSen))));
}

(fbEnt.bEn=1);;fbConvSenToSen(&fbEnt);

(bMtrSigOnOrLToR=fbEnt.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbEnt.bMtrDirOrRToL);

if((((unsigned long)fbEnt.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbEnt.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbEnt.udiStatus==(unsigned long)1101))){
(udiStatus=10028);
}else{
(udiStatus=fbEnt.udiStatus);
}
}

}

}break;case 5:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{

if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}


(fbEnt.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbEnt.tTimeOut=(plctime)((*(p_diTxInTimeOut))));

if((((unsigned long)(unsigned char)fbEnt.bConvLToR==(unsigned long)(unsigned char)1))){
(fbEnt.bEndSen=((*(p_bRightSen))));
}else{
(fbEnt.bEndSen=((*(p_bLeftSen))));
}

(fbEnt.bEn=1);;fbConvSenToSen(&fbEnt);

(bMtrSigOnOrLToR=fbEnt.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbEnt.bMtrDirOrRToL);

if((((unsigned long)fbEnt.udiStatus==(unsigned long)0))){

(fbWidthChk.IN=(((*(p_bWidthChkInterrupt))^1)));;TON(&fbWidthChk);
if((((unsigned long)(unsigned char)((*(p_bWidthChkInterrupt)))==(unsigned long)(unsigned char)0))){
if(fbWidthChk.Q){
(udiStatus=10048);
(eStatus=3);
}
}else if(((*(p_bWidthChkInterrupt)))){
(usiStep=1);
}
}else if((((unsigned long)fbEnt.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbEnt.udiStatus==(unsigned long)1101))){
(udiStatus=10029);
}else{
(udiStatus=fbEnt.udiStatus);
}
}

}break;case 1:{
(bFixClprClampCtrl=1);

(fbFixClprClampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprClampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprClampChk.bExtSafety=((*(p_bFixClprClampSafetySen))));
(fbFixClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)0))){
(fbFixClprDly.IN=1);;TON(&fbFixClprDly);
if(fbFixClprDly.Q){
(fbFixClprDly.IN=0);;TON(&fbFixClprDly);
(usiStep=2);
}

}else if((((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534))){
(bFixClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10010);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10011);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10012);
}else{
(udiStatus=fbFixClprClampChk.udiStatus);
}
}

}break;case 2:{
(bRmtClprClampCtrl=1);

(fbRmtClprClampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprClampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprClampChk.bExtSafety=((*(p_bRmtClprClampSafetySen))));
(fbRmtClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))){
(eStatus=1);

}else if((((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534))){
(bRmtClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10010);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10011);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10012);
}else{
(udiStatus=fbRmtClprClampChk.udiStatus);
}
}

}break;}

}

}break;case 6:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}


(fbEnt.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)2))));
(fbEnt.tTimeOut=(plctime)((*(p_diTxInTimeOut))));

if((((unsigned long)(unsigned char)fbEnt.bConvLToR==(unsigned long)(unsigned char)1))){
(fbEnt.bEndSen=((*(p_bRightSen))));
}else{
(fbEnt.bEndSen=((*(p_bLeftSen))));
}

(fbEnt.bEn=1);;fbConvSenToSen(&fbEnt);

(bMtrSigOnOrLToR=fbEnt.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbEnt.bMtrDirOrRToL);

if((((unsigned long)(unsigned char)fbEnt.bEndSen==(unsigned long)(unsigned char)1))){
(bReachEnd=1);
}

if((((unsigned long)(unsigned char)bReachEnd==(unsigned long)(unsigned char)1))){
(fbClprDlyTm.IN=1);;TON(&fbClprDlyTm);
if((((unsigned long)(unsigned char)fbClprDlyTm.Q==(unsigned long)(unsigned char)1))){
switch(usiSubStep){
case 0:{











(bRmtClprClampCtrl=1);

(fbRmtClprClampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprClampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprClampChk.bExtSafety=((*(p_bRmtClprClampSafetySen))));
(fbRmtClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))){
(usiSubStep=1);
}

}break;case 1:{







(bFixClprClampCtrl=1);

(fbFixClprClampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprClampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprClampChk.bExtSafety=((*(p_bFixClprClampSafetySen))));
(fbFixClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);



}break;}
}
}

if(((((unsigned long)fbEnt.udiStatus==(unsigned long)0))&((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))))){
(eStatus=1);

}else if((((((unsigned long)fbFixClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(eStatus=3);

if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1503))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1503)))){
(udiStatus=10034);
}else if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1506))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1506)))){
(udiStatus=10035);
}else if(((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1507))|(((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1507)))){
(udiStatus=10036);
}else{
if(((((unsigned long)fbFixClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprClampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprClampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprClampChk.udiStatus);
}
}

}else if(((((unsigned long)fbEnt.udiStatus>(unsigned long)0))&(((unsigned long)fbEnt.udiStatus<(unsigned long)65534)))){
(eStatus=3);

if((((unsigned long)fbEnt.udiStatus==(unsigned long)1101))){
(udiStatus=10037);
}else{
(udiStatus=fbEnt.udiStatus);
}

}

}

}break;case 7:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbPreExit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbPreExit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((unsigned long)(unsigned char)fbPreExit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbPreExit.bEndSen=((*(p_bRightSen))));
(fbPreExit.bStartSen=((*(p_bLeftSen))));
}else{
(fbPreExit.bEndSen=((*(p_bLeftSen))));
(fbPreExit.bStartSen=((*(p_bRightSen))));
}

(fbPreExit.bEn=1);;fbConvSenToSenTm(&fbPreExit);

(bMtrSigOnOrLToR=fbPreExit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbPreExit.bMtrDirOrRToL);

if((((unsigned long)fbPreExit.udiStatus==(unsigned long)0))){
if((((unsigned long)(unsigned char)fbPreExit.bEndSen==(unsigned long)(unsigned char)1))){
(eStatus=1);
}else{
(udiStatus=10046);
(eStatus=3);
}
}else if((((unsigned long)fbPreExit.udiStatus<(unsigned long)65534))){
(udiStatus=fbPreExit.udiStatus);
(eStatus=3);
}

}

}break;case 8:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}break;case 1:{

(fbPreExit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbPreExit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((unsigned long)(unsigned char)fbPreExit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbPreExit.bEndSen=((*(p_bRightSen))));
(fbPreExit.bStartSen=((*(p_bLeftSen))));
}else{
(fbPreExit.bEndSen=((*(p_bLeftSen))));
(fbPreExit.bStartSen=((*(p_bRightSen))));
}

(fbPreExit.bEn=1);;fbConvSenToSenTm(&fbPreExit);

(bMtrSigOnOrLToR=fbPreExit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbPreExit.bMtrDirOrRToL);

if((((unsigned long)fbPreExit.udiStatus==(unsigned long)0))){
if((((unsigned long)(unsigned char)fbPreExit.bEndSen==(unsigned long)(unsigned char)1))){
(eStatus=1);
}else{
(udiStatus=10046);
(eStatus=3);
}
}else if((((unsigned long)fbPreExit.udiStatus<(unsigned long)65534))){
(udiStatus=fbPreExit.udiStatus);
(eStatus=3);
}

}break;}

}
}break;case 9:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);


(fbFixClprUnclampChk1.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);


(fbRmtClprUnclampChk1.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk1.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk1.bEn=1);;fbPneuRetSenRetChk(&fbRmtClprUnclampChk1);

if(((((unsigned long)fbFixClprUnclampChk1.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk1.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk1.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk1.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk1.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk1.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk1.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk1.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk1.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk1.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk1.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk1.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk1.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk1.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk1.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk1.udiStatus);
}
}
}

}break;case 1:{

(fbInit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbInit.tTxDlyTm=(plctime)((*(p_diInitTm))));

if((((*(p_bLeftSen)))|((*(p_bRightSen))))){
(bHvMag=1);
}else{
(bHvMag=0);
}

if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbInit.bEndSen=((*(p_bRightSen))));
}else{
(fbInit.bEndSen=((*(p_bLeftSen))));
}

(fbInit.bEn=1);;fbConvSenToSenTm(&fbInit);

(bMtrSigOnOrLToR=fbInit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbInit.bMtrDirOrRToL);

if((((unsigned long)fbInit.udiStatus==(unsigned long)0))){
if((((unsigned long)(unsigned char)fbInit.bConvLToR==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bRightSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10000);
(eStatus=3);
}else{
(eStatus=1);
}
}else{
if(((((unsigned long)(unsigned char)bHvMag==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLeftSen)))==(unsigned long)(unsigned char)0)))){
(udiStatus=10001);
(eStatus=3);
}else{
(eStatus=1);
}
}
}else if((((unsigned long)fbInit.udiStatus<(unsigned long)65534))){
(udiStatus=fbInit.udiStatus);
(eStatus=3);
}

}break;}

}

}break;case 10:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbExit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbExit.tTimeOut=(plctime)((*(p_diTxOutTimeOut))));

if((((unsigned long)(unsigned char)fbExit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbExit.bEndSen=((*(p_bRightSen))));
}else{
(fbExit.bEndSen=((*(p_bLeftSen))));
}

(fbExit.bEn=1);;fbConvSenToSenOff(&fbExit);

(bMtrSigOnOrLToR=fbExit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbExit.bMtrDirOrRToL);

if((((unsigned long)fbExit.udiStatus==(unsigned long)0))){
(bHvMag=0);
(eStatus=1);
}else if((((unsigned long)fbExit.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbExit.udiStatus==(unsigned long)1101))){
(udiStatus=10030);
}else{
(udiStatus=fbExit.udiStatus);
}
}

}

}break;case 11:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbExit1.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbExit1.tTimeOut=(plctime)((*(p_diTxOutTimeOut))));

if((((unsigned long)(unsigned char)fbExit1.bConvLToR==(unsigned long)(unsigned char)1))){
(fbExit1.bEndSen=((*(p_bRightSen))));
}else{
(fbExit1.bEndSen=((*(p_bLeftSen))));
}

(fbExit1.bEn=1);;fbConvSenToSenOff1(&fbExit1);

(bMtrSigOnOrLToR=fbExit1.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbExit1.bMtrDirOrRToL);

if((((unsigned long)fbExit1.udiStatus==(unsigned long)0))){
(bHvMag=0);
(eStatus=1);
}else if((((unsigned long)fbExit1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbExit1.udiStatus==(unsigned long)1101))){
(udiStatus=10032);
}else{
(udiStatus=fbExit1.udiStatus);
}
}

}

}break;case 12:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}break;case 1:{

(fbExit.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbExit.tTimeOut=(plctime)((*(p_diTxOutTimeOut))));

if((((unsigned long)(unsigned char)fbExit.bConvLToR==(unsigned long)(unsigned char)1))){
(fbExit.bEndSen=((*(p_bRightSen))));
}else{
(fbExit.bEndSen=((*(p_bLeftSen))));
}

(fbExit.bEn=1);;fbConvSenToSenOff(&fbExit);

(bMtrSigOnOrLToR=fbExit.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbExit.bMtrDirOrRToL);

if((((unsigned long)fbExit.udiStatus==(unsigned long)0))){
(bHvMag=0);
(eStatus=1);
}else if((((unsigned long)fbExit.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbExit.udiStatus==(unsigned long)1101))){
(udiStatus=10031);
}else{
(udiStatus=fbExit.udiStatus);
}
}

}break;}

}

}break;case 13:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(usiStep=1);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10002);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10003);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10004);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}break;case 1:{

(fbExit1.bConvLToR=((((signed long)((*(p_eDirection)))==(signed long)0))|(((signed long)((*(p_eDirection)))==(signed long)3))));
(fbExit1.tTimeOut=(plctime)((*(p_diTxOutTimeOut))));

if((((unsigned long)(unsigned char)fbExit1.bConvLToR==(unsigned long)(unsigned char)1))){
(fbExit1.bEndSen=((*(p_bRightSen))));
}else{
(fbExit1.bEndSen=((*(p_bLeftSen))));
}

(fbExit1.bEn=1);;fbConvSenToSenOff1(&fbExit1);

(bMtrSigOnOrLToR=fbExit1.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbExit1.bMtrDirOrRToL);

if((((unsigned long)fbExit1.udiStatus==(unsigned long)0))){
(bHvMag=0);
(eStatus=1);
}else if((((unsigned long)fbExit1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbExit1.udiStatus==(unsigned long)1101))){
(udiStatus=10033);
}else{
(udiStatus=fbExit1.udiStatus);
}
}

}break;}

}

}break;case 14:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=1);

(eStatus=1);

}

}break;case 15:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=0);

(eStatus=1);

}

}break;case 16:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=1);

(eStatus=1);

}

}break;case 17:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=0);

(eStatus=1);

}

}break;case 18:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=1);

(fbFixClprClampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprClampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprClampChk.bExtSafety=((*(p_bFixClprClampSafetySen))));
(fbFixClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbFixClprClampChk);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFixClprClampChk.udiStatus<(unsigned long)65534))){
(bFixClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10016);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10017);
}else if((((unsigned long)fbFixClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10018);
}else{
(udiStatus=fbFixClprClampChk.udiStatus);
}
}
}

}break;case 19:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bFixClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

if((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534))){
(bFixClprClampCtrl=1);

(eStatus=3);

if((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))){
(udiStatus=10019);
}else if((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))){
(udiStatus=10020);
}else if((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))){
(udiStatus=10021);
}else{
(udiStatus=fbFixClprUnclampChk.udiStatus);
}
}

}

}break;case 20:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=1);

(eStatus=1);

}

}break;case 21:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=0);

(eStatus=1);

}

}break;case 22:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=1);

(eStatus=1);

}

}break;case 23:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=0);

(eStatus=1);

}

}break;case 24:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=1);

(fbRmtClprClampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprClampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprClampChk.bExtSafety=((*(p_bRmtClprClampSafetySen))));
(fbRmtClprClampChk.bEn=1);;fbPneuExtRetSenExtChk(&fbRmtClprClampChk);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus<(unsigned long)65534))){
(bRmtClprClampCtrl=0);

(eStatus=3);

if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1503))){
(udiStatus=10016);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1506))){
(udiStatus=10017);
}else if((((unsigned long)fbRmtClprClampChk.udiStatus==(unsigned long)1507))){
(udiStatus=10018);
}else{
(udiStatus=fbRmtClprClampChk.udiStatus);
}
}
}

}break;case 25:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(bRmtClprClampCtrl=0);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if((((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))){
(bRmtClprClampCtrl=1);

(eStatus=3);

if((((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504))){
(udiStatus=10019);
}else if((((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505))){
(udiStatus=10020);
}else if((((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508))){
(udiStatus=10021);
}else{
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}

}

}break;case 26:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbStop.bEn=1);;fbConvMtrOff(&fbStop);

(bMtrSigOnOrLToR=fbStop.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbStop.bMtrDirOrRToL);

if((((unsigned long)fbStop.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbStop.udiStatus<(unsigned long)65534))){
(udiStatus=fbStop.udiStatus);
(eStatus=3);
}

}

}break;case 27:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbStop.bEn=1);;fbConvMtrOff(&fbStop);

(bMtrSigOnOrLToR=fbStop.bMtrSigOnOrLToR);
(bMtrDirOrRToL=fbStop.bMtrDirOrRToL);

(bFixClprClampCtrl=0);
(bRmtClprClampCtrl=0);

(fbFixClprUnclampChk.bExtSen=((*(p_bFixClprClampSen))));
(fbFixClprUnclampChk.bRetSen=((*(p_bFixClprUnclampSen))));
(fbFixClprUnclampChk.bRetSafety=((*(p_bFixClprUnclampSafetySen))));
(fbFixClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbFixClprUnclampChk);

(fbRmtClprUnclampChk.bExtSen=((*(p_bRmtClprClampSen))));
(fbRmtClprUnclampChk.bRetSen=((*(p_bRmtClprUnclampSen))));
(fbRmtClprUnclampChk.bRetSafety=((*(p_bRmtClprUnclampSafetySen))));
(fbRmtClprUnclampChk.bEn=1);;fbPneuExtRetSenRetChk(&fbRmtClprUnclampChk);

if(((((unsigned long)fbStop.udiStatus==(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)0)))){
(eStatus=1);
}else if(((((unsigned long)fbStop.udiStatus>(unsigned long)0))&(((unsigned long)fbStop.udiStatus<(unsigned long)65534)))){
(udiStatus=fbStop.udiStatus);
(eStatus=3);
}else if((((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))|((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534))))){
(bFixClprClampCtrl=1);
(bRmtClprClampCtrl=1);

(eStatus=3);

if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1504))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1504)))){
(udiStatus=10022);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1505))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1505)))){
(udiStatus=10023);
}else if(((((unsigned long)fbFixClprUnclampChk.udiStatus==(unsigned long)1508))|(((unsigned long)fbRmtClprUnclampChk.udiStatus==(unsigned long)1508)))){
(udiStatus=10024);
}else{
if(((((unsigned long)fbFixClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbFixClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbFixClprUnclampChk.udiStatus);
}else if(((((unsigned long)fbRmtClprUnclampChk.udiStatus>(unsigned long)0))&(((unsigned long)fbRmtClprUnclampChk.udiStatus<(unsigned long)65534)))){
(udiStatus=fbRmtClprUnclampChk.udiStatus);
}
}
}

}

}break;case 28:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrSigOnOrLToR=1);

(eStatus=1);

}

}break;case 29:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrDirOrRToL=1);

(eStatus=1);

}

}break;case 30:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrSigOnOrLToR=0);

(eStatus=1);

}

}break;case 31:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrDirOrRToL=0);

(eStatus=1);

}

}break;case 32:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrSigOnOrLToR=1);
(bMtrDirOrRToL=1);

(eStatus=1);

}

}break;case 33:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bMtrSigOnOrLToR=0);
(bMtrDirOrRToL=0);

(eStatus=1);

}

}break;}

}imp9_case2_33:imp9_endcase2_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_Action.st"
static void __AS__Action__Act_Action(void){
{

if(((((signed long)eStatus==(signed long)3))&bRstErr)){
((*(p_eAct))=0);
(eStat=0);
}


if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2))|(((signed long)eStatus==(signed long)1)))){
(eStat=((*(p_eAct))));
}

}imp1_else1_0:imp1_end1_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sMagConv2ClpProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


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
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp3/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp3/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp3/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/MagConv2C2/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/MagConv2C2/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/MagConv_LiftnTrav/MagConv2Clp3/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/MagConv2C2/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");
