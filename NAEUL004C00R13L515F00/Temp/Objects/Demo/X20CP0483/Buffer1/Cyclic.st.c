#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Buffer1/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.st"
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
#line 29 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkStartupRun=p_StartupRun);
(p_bLinkNtParamProjMagConvPrep=p_NtParamProjMag1ConvPrep);

(p_eLinkOpsMagConvULBufferAct=p_OpsMagConvUL1BufferAct);
(p_eLinkUIBufferAct=p_UIBuffer1Act);
(p_bLinkOpsMagStepBffrLoad=p_OpsMagConvUL1StepBffrLoad);
(p_bLinkProjLifterMagPlatform=p_NtParamProjLifterMagPlatform);
(p_eLinkOpsLifMagULBufferAct=p_OpsLifMagULBufferAct1);

(p_diLinkSltToSltDist=p_MagRcpCurrRcpSltToSlt);
(p_bLinkMcParamProdSelTopToBtm=p_ProdRcpCurrRcp2TopToBtm);
(p_bLinkPresentSen1=p_DIMagPresentSen1);
(p_bLinkPresentSen2=p_DIMagConvEntSen1);
(p_bLinkOpsTravLifULExitBrd=p_OpsTravLifULExitBrd);


(p_udiRstErr=p_RstErrReset);
(p_sFileName=p_NtParamBffr1FileNm);
(p_bManual=p_UIMnlMod);
(p_dtCurrDT=p_TimeCurrDT);



(p_diBffrTtlSlt=p_MagRcpCurrRcpTtlSlt);
(p_diLifterBtmPosInUM=p_MagRcpCurrRcpMag1Slt1Pos);
(p_diLifterCurrPosInUM=p_LifterBtmActualPos);
(p_bGdBrdIn=p_PshrConvGdBrd);
(p_bNxtLoadSeq=p_NtParamBffr1NxtLoadSeq);

(p_sCurrRcpNm=p_ProdRcpCurrRcp2Nm);
(p_sProgNm=p_NtParamBffr1ProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);
(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_bMcParamAutoRcpDis=p_McParamAutoRcpDisable);


(p_bOpsMagConvULRlsMagAllw=p_OpsMagConvUL1RlsMagAllw);
(p_eNtParamCustomerReq=p_NtParamCustomerReq);
(p_tyResponseFromMES=p_TagFromMesMagConv1);

(p_bNtParamAutoRcpF1ArbitraryType=p_NtParamAutoRcpF1ArbitraryType);


}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if((((unsigned long)(unsigned char)((*(p_bLinkStartupRun)))==(unsigned long)(unsigned char)1))){
(p_eAct=p_StartupBuffer1Act);
}else{
if((((signed long)eStatus==(signed long)0))){
if((((unsigned long)(unsigned char)((*(p_bLinkProjLifterMagPlatform)))==(unsigned long)(unsigned char)0))){
if((((signed long)((*(p_eLinkOpsMagConvULBufferAct)))!=(signed long)0))){
(p_eAct=p_OpsMagConvUL1BufferAct);
}else if((((signed long)((*(p_eLinkUIBufferAct)))!=(signed long)0))){
(p_eAct=p_UIBuffer1Act);
}else{
(p_eAct=((unsigned long)(&eAct)));
}
}else{
if((((signed long)((*(p_eLinkOpsLifMagULBufferAct)))!=(signed long)0))){
(p_eAct=p_OpsLifMagULBufferAct1);
}else{
(p_eAct=p_UIBuffer1Act);
}
}
}
}

}imp8_end4_0:imp8_end2_0:imp8_else1_0:imp8_end1_0:imp8_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Link.st"
static void __AS__Action__Act_Link(void){
{if((((*(p_bNtParamAutoRcpPrep)))&(((*(p_bMcParamAutoRcpDis))^1))&(((*(p_bNtParamAutoRcpF1ArbitraryType))^1)))){
(p_diMinSlt=p_diAutoRcpMag1MinSlt);
(p_diMaxSlt=p_diAutoRcpMag1MaxSlt);
(p_diPitch=p_diAutoRcpMag1Pitch);
}else{
(p_diMinSlt=p_ProdRcpCurrRcp2MinSltValue);
(p_diMaxSlt=p_ProdRcpCurrRcp2MaxSltValue);
(p_diPitch=p_ProdRcpCurrRcp2Pitch);
}
if(((*(p_bLinkProjLifterMagPlatform)))){
(p_diSltToSltInUM=p_MagRcpCurrRcpSltToSlt);
}else{
((*(p_diSltToSltInUM))=(((*(p_diLinkSltToSltDist)))*-1));
}

((*(p_bAscending))=(((*(p_bLinkMcParamProdSelTopToBtm))^1)));

if(((*(p_bLinkOpsTravLifULExitBrd)))){
((*(p_bMagPresentSensor))=((*(p_bLinkPresentSen1))));
}else{
((*(p_bMagPresentSensor))=(((*(p_bLinkPresentSen1)))|((*(p_bLinkPresentSen2)))));
}




if((((*(p_tyResponseFromMES)).bTrigMagFull)&((*(p_bOpsMagConvULRlsMagAllw)))&(tyBufferStat.bBffrFull^1)&(((signed long)((*(p_eNtParamCustomerReq)))==(signed long)5)))){
(bMESTrigSetFull=1);
}
if(bMESTrigSetFull){
(eAct=3);
if(((((signed long)eStat==(signed long)3))&(((signed long)eStatus==(signed long)1)))){
(eAct=0);
(bMESTrigSetFull=0);
}
}


}imp7_else5_0:imp7_end5_0:imp7_else4_0:imp7_end4_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp10_end0_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_sFileName=((unsigned long)(&sFileName)));
(p_bManual=((unsigned long)(&bManual)));
(p_dtCurrDT=((unsigned long)(&dtCurrDT)));
(p_diMinSlt=((unsigned long)(&diMinSlt)));
(p_diMaxSlt=((unsigned long)(&diMaxSlt)));
(p_diPitch=((unsigned long)(&diPitch)));
(p_diSltCap=((unsigned long)(&diSltCap)));
(p_diBffrTtlSlt=((unsigned long)(&diBffrTtlSlt)));
(p_diCoolTm=((unsigned long)(&diCoolTm)));
(p_diSltToSltInUM=((unsigned long)(&diSltToSltInUM)));
(p_diLifterBtmPosInUM=((unsigned long)(&diLifterBtmPosInUM)));
(p_diLifterCurrPosInUM=((unsigned long)(&diLifterCurrPosInUM)));
(p_bAscending=((unsigned long)(&bAscending)));
(p_bFIFO=((unsigned long)(&bFIFO)));
(p_bGdBrdIn=((unsigned long)(&bGdBrdIn)));
(p_bGdBrdReq=((unsigned long)(&bGdBrdReq)));
(p_bNxtLoadSeq=((unsigned long)(&bNxtLoadSeq)));
(pa_bSkip=((unsigned long)(&a_bSkip)));
(p_diCoolFanOffDlyTm=((unsigned long)(&diCoolFanOffDlyTm)));
(p_bMagPresentSensor=((unsigned long)(&bMagPresentSensor)));
(p_bPrepCoolFan=((unsigned long)(&bPrepCoolFan)));
(p_bCoolFanTm=((unsigned long)(&bCoolFanTm)));
(p_tyBuffer=((unsigned long)(&tyBuffer)));
(p_tyDispBuffer=((unsigned long)(&tyDispBuffer)));
(p_tyBufferStat=((unsigned long)(&tyBufferStat)));
(p_sBffrNm=((unsigned long)(&sBffrNm)));
(p_sProdNm=((unsigned long)(&sProdNm)));
(p_sBarcode1=((unsigned long)(&sBarcode1)));
(p_sBarcode2=((unsigned long)(&sBarcode2)));
(p_sCurrRcpNm=((unsigned long)(&sCurrRcpNm)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDevice; plcstring* zzRValue=(plcstring*)"F"; for(zzIndex=0; zzIndex<1l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDirName; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDirName; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sFile; plcstring* zzRValue=(plcstring*)((*(p_sFileName))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead1.udiOffset=0);
(fbFileRead1.p_Dest=((unsigned long)(&((*(p_tyBuffer))))));
(fbFileRead1.udiLen=23536);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sFile; plcstring* zzRValue=(plcstring*)((*(p_sFileName))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite1.udiOffset=0);
(fbFileWrite1.p_Src=((unsigned long)(&((*(p_tyBuffer))))));
(fbFileWrite1.udiLen=23536);
(fbFileWrite1.udiOption=0);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);

(fbCoolFanOffDlyTm.PT=(plctime)((*(p_diCoolFanOffDlyTm))));
(fbCoolFanOffDlyTm.IN=0);;TON(&fbCoolFanOffDlyTm);

(fbCoolFanOffChkTm.IN=0);;TON(&fbCoolFanOffChkTm);
(fbMagAbsentTm.IN=0);;TON(&fbMagAbsentTm);
(fbMagPresentTm.IN=0);;TON(&fbMagPresentTm);

}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Action.st"
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
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);
(usiStep=0);

(bFileNotFound=0);
(bNewProduct=0);
(bLastProductUnload=0);
(bLastProductLeftInBffr=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eStatOld=eStat);

(eStatus=2);
}


switch(eStat){

case 0:{
(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

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

(fbFileRead1.bEn=1);;fbFileFullRead(&fbFileRead1);
if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)0))){
(eStatus=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else if((((unsigned long)fbFileRead1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1900))){
(udiStatus=10002);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1902))){
(udiStatus=10003);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1904))){
(udiStatus=10004);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead1.udiStatus);
}
}

}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(tyBffrParameter.bAscending=((*(p_bAscending))));
(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diMaxSlt=((*(p_diMaxSlt))));
(tyBffrParameter.diMinSlt=((*(p_diMinSlt))));
(tyBffrParameter.diPitch=((*(p_diPitch))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));
{int zzIndex; unsigned char* zzLValue=(unsigned char*)tyBffrParameter.a_bSkip; unsigned char* zzRValue=(unsigned char*)((*(pa_bSkip))); for(zzIndex=0; zzIndex<60l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
(bFIFOOld=((*(p_bFIFO))));

(udiStatus=fBffrSetFull(((unsigned long)(&((*(p_tyBuffer))))),&tyBffrParameter,((*(p_dtCurrDT))),((*(p_sBffrNm))),((*(p_sProdNm)))));

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10005);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10006);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10007);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10008);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10040);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 4:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(tyBffrParameter.bAscending=((*(p_bAscending))));
(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diMaxSlt=((*(p_diMaxSlt))));
(tyBffrParameter.diMinSlt=((*(p_diMinSlt))));
(tyBffrParameter.diPitch=((*(p_diPitch))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));
{int zzIndex; unsigned char* zzLValue=(unsigned char*)tyBffrParameter.a_bSkip; unsigned char* zzRValue=(unsigned char*)((*(pa_bSkip))); for(zzIndex=0; zzIndex<60l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
(bFIFOOld=((*(p_bFIFO))));

(udiStatus=fBffrSetMty(((unsigned long)(&((*(p_tyBuffer))))),&tyBffrParameter,((*(p_sBffrNm)))));

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10009);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10010);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10011);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10012);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10041);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 5:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

(udiStatus=fBffrLoad(((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bNewProduct)),diCurrSlt,((*(p_dtCurrDT))),((*(p_bGdBrdIn))),((*(p_sProdNm))),((*(p_sBarcode1))),((*(p_sBarcode2)))));

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1010))){
(udiStatus=10076);
}else if((((unsigned long)udiStatus==(unsigned long)1011))){
(udiStatus=10077);
}else if((((unsigned long)udiStatus==(unsigned long)1012))){
(udiStatus=10078);
}else if((((unsigned long)udiStatus==(unsigned long)1013))){
(udiStatus=10079);
}else if((((unsigned long)udiStatus==(unsigned long)1014))){
(udiStatus=10080);
}else if((((unsigned long)udiStatus==(unsigned long)1015))){
(udiStatus=10081);
}else if((((unsigned long)udiStatus==(unsigned long)1001))){
(udiStatus=10082);
}else if((((unsigned long)udiStatus==(unsigned long)1016))){
(udiStatus=10083);
}

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10013);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10014);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10015);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10016);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10042);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 6:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if(((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdIn)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtLoadSeqGd(((*(p_bAscending))),&((*(p_tyBuffer)))));
}else if(((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdIn)))==(unsigned long)(unsigned char)0)))){
(diExpectedSlt=fBffrNxtLoadSeqBad(((*(p_bAscending))),&((*(p_tyBuffer)))));
}else if(((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bGdBrdIn)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtLoadNearbyGd(diCurrSlt,&((*(p_tyBuffer)))));
}else{
(diExpectedSlt=fBffrNxtLoadNearbyBad(diCurrSlt,&((*(p_tyBuffer)))));
}

if((((signed long)diCurrSlt==(signed long)diExpectedSlt))){
(udiStatus=fBffrLoad(((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bNewProduct)),diCurrSlt,((*(p_dtCurrDT))),((*(p_bGdBrdIn))),((*(p_sProdNm))),((*(p_sBarcode1))),((*(p_sBarcode2)))));

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1010))){
(udiStatus=10084);
}else if((((unsigned long)udiStatus==(unsigned long)1011))){
(udiStatus=10085);
}else if((((unsigned long)udiStatus==(unsigned long)1012))){
(udiStatus=10086);
}else if((((unsigned long)udiStatus==(unsigned long)1013))){
(udiStatus=10087);
}else if((((unsigned long)udiStatus==(unsigned long)1014))){
(udiStatus=10088);
}else if((((unsigned long)udiStatus==(unsigned long)1015))){
(udiStatus=10089);
}else if((((unsigned long)udiStatus==(unsigned long)1001))){
(udiStatus=10090);
}else if((((unsigned long)udiStatus==(unsigned long)1016))){
(udiStatus=10091);
}

}

}else{
(udiStatus=10017);
(eStatus=3);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10018);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10019);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10020);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10021);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10043);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 7:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

(udiStatus=fBffrUnload(((unsigned long)(&tyBoardUnloadStat)),((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bLastProductUnload)),((unsigned long)(&bLastProductLeftInBffr)),diCurrSlt));

if(((__AS__STRING_CMP(((*(p_sCurrRcpNm))),tyBoardUnloadStat.sProdNm)==0))){
(bLastProductUnload=0);
}

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1000))){
(udiStatus=10048);
}else if((((unsigned long)udiStatus==(unsigned long)1003))){
(udiStatus=10049);
}else if((((unsigned long)udiStatus==(unsigned long)1004))){
(udiStatus=10050);
}else if((((unsigned long)udiStatus==(unsigned long)1005))){
(udiStatus=10051);
}else if((((unsigned long)udiStatus==(unsigned long)1006))){
(udiStatus=10052);
}else if((((unsigned long)udiStatus==(unsigned long)1007))){
(udiStatus=10053);
}else if((((unsigned long)udiStatus==(unsigned long)1008))){
(udiStatus=10054);
}

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10022);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10023);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10024);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10025);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10044);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 8:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtUnloadFIFOGd(&((*(p_tyBuffer))),""));
}else if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)0)))){
(diExpectedSlt=fBffrNxtUnloadFIFOBad(&((*(p_tyBuffer))),""));
}else if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtUnloadLIFOGd(&((*(p_tyBuffer))),""));
}else{
(diExpectedSlt=fBffrNxtUnloadLIFOBad(&((*(p_tyBuffer))),""));
}

if((((signed long)diCurrSlt==(signed long)diExpectedSlt))){
(udiStatus=fBffrUnload(((unsigned long)(&tyBoardUnloadStat)),((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bLastProductUnload)),((unsigned long)(&bLastProductLeftInBffr)),diCurrSlt));

if(((__AS__STRING_CMP(((*(p_sCurrRcpNm))),tyBoardUnloadStat.sProdNm)==0))){
(bLastProductUnload=0);
}

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1000))){
(udiStatus=10055);
}else if((((unsigned long)udiStatus==(unsigned long)1003))){
(udiStatus=10056);
}else if((((unsigned long)udiStatus==(unsigned long)1004))){
(udiStatus=10057);
}else if((((unsigned long)udiStatus==(unsigned long)1005))){
(udiStatus=10058);
}else if((((unsigned long)udiStatus==(unsigned long)1006))){
(udiStatus=10059);
}else if((((unsigned long)udiStatus==(unsigned long)1007))){
(udiStatus=10060);
}else if((((unsigned long)udiStatus==(unsigned long)1008))){
(udiStatus=10061);
}

}

}else{
(udiStatus=10026);
(eStatus=3);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10027);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10028);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10029);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10030);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10045);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 9:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

(bCoolNotRdy=(fBffrChkCoolTmRdy(diCurrSlt,((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer))))^1));

if((((unsigned long)(unsigned char)bCoolNotRdy==(unsigned long)(unsigned char)0))){
(udiStatus=fBffrUnload(((unsigned long)(&tyBoardUnloadStat)),((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bLastProductUnload)),((unsigned long)(&bLastProductLeftInBffr)),diCurrSlt));

if(((__AS__STRING_CMP(((*(p_sCurrRcpNm))),tyBoardUnloadStat.sProdNm)==0))){
(bLastProductUnload=0);
}

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1000))){
(udiStatus=10062);
}else if((((unsigned long)udiStatus==(unsigned long)1003))){
(udiStatus=10063);
}else if((((unsigned long)udiStatus==(unsigned long)1004))){
(udiStatus=10064);
}else if((((unsigned long)udiStatus==(unsigned long)1005))){
(udiStatus=10065);
}else if((((unsigned long)udiStatus==(unsigned long)1006))){
(udiStatus=10066);
}else if((((unsigned long)udiStatus==(unsigned long)1007))){
(udiStatus=10067);
}else if((((unsigned long)udiStatus==(unsigned long)1008))){
(udiStatus=10068);
}

}

}else{
(eStatus=1);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10031);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10032);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10033);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10034);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10046);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 10:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

switch(usiStep){
case 0:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtUnloadFIFOGd(&((*(p_tyBuffer))),""));
}else if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)0)))){
(diExpectedSlt=fBffrNxtUnloadFIFOBad(&((*(p_tyBuffer))),""));
}else if(((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bGdBrdReq)))==(unsigned long)(unsigned char)1)))){
(diExpectedSlt=fBffrNxtUnloadLIFOGd(&((*(p_tyBuffer))),""));
}else{
(diExpectedSlt=fBffrNxtUnloadLIFOBad(&((*(p_tyBuffer))),""));
}

if((((signed long)diCurrSlt==(signed long)diExpectedSlt))){
(bCoolNotRdy=(fBffrChkCoolTmRdy(diCurrSlt,((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer))))^1));

if((((unsigned long)(unsigned char)bCoolNotRdy==(unsigned long)(unsigned char)0))){
(udiStatus=fBffrUnload(((unsigned long)(&tyBoardUnloadStat)),((unsigned long)(&((*(p_tyBuffer))))),((unsigned long)(&bLastProductUnload)),((unsigned long)(&bLastProductLeftInBffr)),diCurrSlt));

if(((__AS__STRING_CMP(((*(p_sCurrRcpNm))),tyBoardUnloadStat.sProdNm)==0))){
(bLastProductUnload=0);
}

if((((unsigned long)udiStatus==(unsigned long)0))){
(usiStep=1);

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

}else{
(eStatus=3);

if((((unsigned long)udiStatus==(unsigned long)1000))){
(udiStatus=10069);
}else if((((unsigned long)udiStatus==(unsigned long)1003))){
(udiStatus=10070);
}else if((((unsigned long)udiStatus==(unsigned long)1004))){
(udiStatus=10071);
}else if((((unsigned long)udiStatus==(unsigned long)1005))){
(udiStatus=10072);
}else if((((unsigned long)udiStatus==(unsigned long)1006))){
(udiStatus=10073);
}else if((((unsigned long)udiStatus==(unsigned long)1007))){
(udiStatus=10074);
}else if((((unsigned long)udiStatus==(unsigned long)1008))){
(udiStatus=10075);
}

}

}else{
(eStatus=1);

}

}else{
(udiStatus=10035);
(eStatus=3);

}

}break;case 1:{
(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10036);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10037);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10038);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10039);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10047);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}break;}

}

}break;case 11:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)1))){
(diNxtLoadSlt=fBffrNxtLoadSeqAny(((*(p_bAscending))),&((*(p_tyBuffer)))));
}else{
(diNxtLoadSlt=fBffrNxtLoadNearbyAny(diCurrSlt,&((*(p_tyBuffer)))));
}

(eStatus=1);

}

}break;case 12:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)1))){
(diNxtLoadSlt=fBffrNxtLoadSeqGd(((*(p_bAscending))),&((*(p_tyBuffer)))));
}else{
(diNxtLoadSlt=fBffrNxtLoadNearbyGd(diCurrSlt,&((*(p_tyBuffer)))));
}

(eStatus=1);

}

}break;case 13:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

if((((unsigned long)(unsigned char)((*(p_bNxtLoadSeq)))==(unsigned long)(unsigned char)1))){
(diNxtLoadSlt=fBffrNxtLoadSeqBad(((*(p_bAscending))),&((*(p_tyBuffer)))));
}else{
(diNxtLoadSlt=fBffrNxtLoadNearbyBad(diCurrSlt,&((*(p_tyBuffer)))));
}

(eStatus=1);

}

}break;case 14:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

if((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))){
(diNxtUnloadSlt=fBffrNxtUnloadFIFOAny(&((*(p_tyBuffer))),""));
}else{
(diNxtUnloadSlt=fBffrNxtUnloadLIFOAny(&((*(p_tyBuffer))),""));
}

(eStatus=1);

}

}break;case 15:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

if((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))){
(diNxtUnloadSlt=fBffrNxtUnloadFIFOGd(&((*(p_tyBuffer))),""));
}else{
(diNxtUnloadSlt=fBffrNxtUnloadLIFOGd(&((*(p_tyBuffer))),""));
}

(eStatus=1);

}

}break;case 16:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

if((((unsigned long)(unsigned char)((*(p_bFIFO)))==(unsigned long)(unsigned char)1))){
(diNxtUnloadSlt=fBffrNxtUnloadFIFOBad(&((*(p_tyBuffer))),""));
}else{
(diNxtUnloadSlt=fBffrNxtUnloadLIFOBad(&((*(p_tyBuffer))),""));
}

(eStatus=1);

}

}break;case 17:{
(diCurrSlt=fLifterPosInUMToSltBtmMin(((*(p_diLifterCurrPosInUM))),((*(p_diSltToSltInUM))),((*(p_diLifterBtmPosInUM)))));

(bCoolNotRdy=(fBffrChkCoolTmRdy(diCurrSlt,((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer))))^1));

(eStatus=1);

}break;case 18:{
(diCoolBrdAny=fBffrChkCoolBrdAny(((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer)))));

(eStatus=1);

}break;case 19:{
(diCoolBrdGd=fBffrChkCoolBrdGd(((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer)))));

(eStatus=1);

}break;case 20:{
(diCoolBrdBad=fBffrChkCoolBrdBad(((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer)))));

(eStatus=1);

}break;case 21:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(tyBffrParameter.diBffrTtlSlt=((*(p_diBffrTtlSlt))));
(tyBffrParameter.diSltCap=((*(p_diSltCap))));

__AS__MEMSET(((unsigned long)(&((*(p_tyBuffer))))),0,23536);
fBffrStat(((unsigned long)(&((*(p_tyBufferStat))))),&((*(p_tyBuffer))));
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);

(eStatus=1);

}

}break;case 22:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bCoolFanCtrl=1);
(eStatus=1);

}

}break;case 23:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bCoolFanCtrl=0);
(eStatus=1);

}

}break;case 24:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bBffrSetFull=1);
(bBffrSetMty=0);
(eStatus=1);

}

}break;case 25:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bBffrSetFull=0);
(bBffrSetMty=1);
(eStatus=1);

}

}break;case 26:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bBffrSetFull=0);
(bBffrSetMty=0);
(eStatus=1);

}

}break;case 27:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bUpdateSensor=1);
(eStatus=1);

}

}break;case 28:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bUpdateSensor=0);
(eStatus=1);

}

}break;case 29:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bUpdtDisplay=1);
(eStatus=1);

}

}break;case 30:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bUpdtDisplay=0);
(eStatus=1);

}


}break;case 31:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bCoolFanRun=1);
(eStatus=1);

}

}break;case 32:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(bCoolFanRun=0);
(eStatus=1);

}

}break;}

}imp9_case1_32:imp9_endcase1_0:;}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
(fbMagPresentTm.IN=((*(p_bMagPresentSensor))));;TON(&fbMagPresentTm);


if((((unsigned long)(unsigned char)bUpdateSensor==(unsigned long)(unsigned char)1))){
(bMagPresent=fbMagPresentTm.Q);
}


if((((unsigned long)(unsigned char)bUpdtDisplay==(unsigned long)(unsigned char)1))){
fDispBffrDescending(((unsigned long)(&((*(p_tyDispBuffer))))),&tyBffrParameter,&((*(p_tyBuffer))),((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),0,1,2);
}


if((((unsigned long)(unsigned char)((*(p_bManual)))==(unsigned long)(unsigned char)1))){


}else if(((((unsigned long)(unsigned char)bCoolFanRun==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bPrepCoolFan)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)bCoolFanTm==(unsigned long)(unsigned char)1)))){

(fbCoolFanOffChkTm.IN=1);;TON(&fbCoolFanOffChkTm);

if((((unsigned long)(unsigned char)fbCoolFanOffChkTm.Q==(unsigned long)(unsigned char)1))){
if((((signed long)fBffrChkCoolBrdAny(((*(p_dtCurrDT))),(plctime)((*(p_diCoolTm))),&((*(p_tyBuffer))))==(signed long)0))){
(fbCoolFanOffDlyTm.IN=1);
}else{
(fbCoolFanOffDlyTm.IN=0);
(bCoolFanCtrl=1);
}

(fbCoolFanOffChkTm.IN=0);;TON(&fbCoolFanOffChkTm);
}

TON(&fbCoolFanOffDlyTm);

if((((unsigned long)(unsigned char)fbCoolFanOffDlyTm.Q==(unsigned long)(unsigned char)1))){
(bCoolFanCtrl=0);
}

}else if(((((unsigned long)(unsigned char)bCoolFanRun==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bPrepCoolFan)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)bCoolFanTm==(unsigned long)(unsigned char)0)))){
(fbCoolFanOffDlyTm.IN=((*(p_tyBufferStat)).bBffrMty));;TON(&fbCoolFanOffDlyTm);

if((((unsigned long)(unsigned char)((*(p_tyBufferStat)).bBffrMty)==(unsigned long)(unsigned char)0))){
(bCoolFanCtrl=1);
}

if((((unsigned long)(unsigned char)fbCoolFanOffDlyTm.Q==(unsigned long)(unsigned char)1))){
(bCoolFanCtrl=0);
}

}else{

(bCoolFanCtrl=0);

}


if((((unsigned long)(unsigned char)bBffrSetFull==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)((*(p_bMagPresentSensor)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)fbMagAbsentTm.Q==(unsigned long)(unsigned char)1)))){
(bSetFull=1);
(dtMagPresentTm=((*(p_dtCurrDT))));
}

if((((unsigned long)(unsigned char)bSetFull==(unsigned long)(unsigned char)1))){
((*(p_eAct))=3);

if(((((signed long)eStatus==(signed long)1))&(((signed long)eStat==(signed long)3)))){
((*(p_eAct))=0);
(bSetFull=0);
}else if((((signed long)eStatus==(signed long)3))){
(bSetFull=0);
}
}

(fbMagAbsentTm.IN=(((*(p_bMagPresentSensor))^1)));;TON(&fbMagAbsentTm);

}else if((((unsigned long)(unsigned char)bBffrSetMty==(unsigned long)(unsigned char)1))){
if(((((unsigned long)(unsigned char)((*(p_bMagPresentSensor)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)fbMagAbsentTm.Q==(unsigned long)(unsigned char)1)))){
(bSetMty=1);
(dtMagPresentTm=((*(p_dtCurrDT))));
}

if((((unsigned long)(unsigned char)bSetMty==(unsigned long)(unsigned char)1))){
((*(p_eAct))=4);

if(((((signed long)eStatus==(signed long)1))&(((signed long)eStat==(signed long)4)))){
((*(p_eAct))=0);
(bSetMty=0);
}else if((((signed long)eStatus==(signed long)3))){
(bSetMty=0);
}
}

(fbMagAbsentTm.IN=(((*(p_bMagPresentSensor))^1)));;TON(&fbMagAbsentTm);

}







(bParamDiff=((((unsigned long)(unsigned char)tyBffrParameter.bAscending!=(unsigned long)(unsigned char)((*(p_bAscending)))))|(((signed long)tyBffrParameter.diMinSlt!=(signed long)((*(p_diMinSlt)))))|(((signed long)tyBffrParameter.diMaxSlt!=(signed long)((*(p_diMaxSlt)))))|(((signed long)tyBffrParameter.diPitch!=(signed long)((*(p_diPitch)))))|(((signed long)tyBffrParameter.diSltCap!=(signed long)((*(p_diSltCap)))))|(((unsigned long)(unsigned char)bFIFOOld!=(unsigned long)(unsigned char)((*(p_bFIFO)))))));


(bMagRemoved=fbMagAbsentTm.Q);

}}
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sBufferProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


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
#line 30 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Temp/Includes/AS_TempDecl/Demo/GlobalComponents/MpComponents.var\\\" scope \\\"global\\\"\\n\"");
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
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer1/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer1/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Buffer1/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Buffer1/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Buffer/Buffer1/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/Demo/X20CP0483/Buffer1/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'p_tyBuffer'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diBffrSize'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diBffrSubSize'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diDispBffrSize'\\n\"");
__asm__(".previous");
