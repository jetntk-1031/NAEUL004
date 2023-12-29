#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/AutoRcp/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.st"
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
__AS__Action__Act_Background();
__AS__Action__Act_Background2();
}else{
__AS__Action__Act_Main_Disable();

}

__AS__Action__Act_Alarm();

}

}imp22_end0_0:;}
#line 38 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkStartupRun=p_StartupRun);

(p_bLinkOpsRun=p_OpsRun);
(p_eLinkNtParamProjMag=p_NtParamProjMag);


(p_udiRstErr=p_RstErrReset);

(p_sProgNm=p_NtParamAutoRcpProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_bMcParamAutoRcpDis=p_McParamAutoRcpDisable);

(p_bLinkPshrConvHvBrd=p_PshrConvHvBrd);
(p_bLinkOpsTravLifULInitDone=p_OpsTravLifULInitDone);


(p_bLinkOpsMagConvUL1InitDone=p_OpsMagConvUL1InitDone);
(p_bLinkOpsMagConvUL2InitDone=p_OpsMagConvUL2InitDone);
(p_bLinkOpsMagConvUL3InitDone=p_OpsMagConvUL3InitDone);
(p_udiOpsMagConvUL1MagAllwGo=p_OpsMagConvUL1MagAllwGo);
(p_udiOpsMagConvUL2MagAllwGo=p_OpsMagConvUL2MagAllwGo);
(p_udiOpsMagConvUL3MagAllwGo=p_OpsMagConvUL3MagAllwGo);


(p_bBuffer1MagPresent=p_Buffer1MagPresent);
(p_bBuffer2MagPresent=p_Buffer2MagPresent);
(p_bBuffer3MagPresent=p_Buffer3MagPresent);

(p_bBuffer1MagRemoved=p_Buffer1MagPresent);
(p_bBuffer2MagRemoved=p_Buffer2MagPresent);
(p_bBuffer3MagRemoved=p_Buffer3MagPresent);

(p_tyBuffer1BffrStat=p_Buffer1BffrStat);
(p_tyBuffer2BffrStat=p_Buffer2BffrStat);
(p_tyBuffer3BffrStat=p_Buffer3BffrStat);

(p_bMagAW1WidthDiff=p_MagAWOpen1WidthPosDiff);
(p_bMagAW2WidthDiff=p_MagAWOpen2WidthPosDiff);
(p_bMagAW3WidthDiff=p_MagAWOpen3WidthPosDiff);



(p_bHermesABAAccepted=p_USHermesABAAccepted);
(p_bHermesABFAccepted=p_USHermesABFAccepted);


(p_bHermesBBAAccepted=p_USHermesBBAAccepted);
(p_bHermesBBFAccepted=p_USHermesBBFAccepted);

(p_diMagRcpCurrRcpTtlSlt=p_MagRcpCurrRcpTtlSlt);
(p_diMagRcpCurrRcpSltToSlt=p_MagRcpCurrRcpSltToSlt);



(p_bProdRcp0ToptoBtm=p_ProdRcpCurrRcp0TopToBtm);

(p_bHermesBrdAvlDataNewBrdAvl1stZ=p_HermesBrdAvlDataNewBrdAvl1stZ);
(pa_tyLinkXMLTableDataBrdAvl1=p_HermesBrdAvlDataTable1stZ);
(p_iLinkXMLTableDataBrdAvlTtlIdx1=p_HermesBrdAvlDataTtlIdx1stZ);

(p_usiLinkProdRcpCurrRcpMcMod=p_ProdRcpCurrRcp0McMod);
(pa_bMagRej=p_OpsTravLifULMagRej);

(p_bOpsMagConvUL1AWDone=p_OpsMagConvUL1AWDone);
(p_bOpsMagConvUL2AWDone=p_OpsMagConvUL2AWDone);
(p_bOpsMagConvUL3AWDone=p_OpsMagConvUL3AWDone);

(p_bOpsMagConvUL1SlotUpdtDone=p_OpsMagConvUL1SlotUpdtDone);
(p_bOpsMagConvUL2SlotUpdtDone=p_OpsMagConvUL2SlotUpdtDone);
(p_bOpsMagConvUL3SlotUpdtDone=p_OpsMagConvUL3SlotUpdtDone);
(p_bMcParamAutoRcpBatchIDChgCmp=p_McParamAutoRcpBatchIDChgCmp);
(p_bMcParamAutoRcpIgnoreBtmClr=p_McParamAutoRcpIgnoreBtmClr);
(p_bMcParamAutoRcpIgnoreTopClr=p_McParamAutoRcpIgnoreTopClr);
(p_bMcParamAutoRcpIgnoreThickns=p_McParamAutoRcpIgnoreThickns);


(p_eNtParamAutoRcpParamLmt=p_NtParamAutoRcpParamLmt);
(p_diNtParamProdRcpMinWidth=p_NtParamProdRcpMinWidth);
(p_diNtParamProdRcpMaxWidth=p_NtParamProdRcpMaxWidth);





(p_tyInternalReqProdRcp=p_Follower1UpdtProdRcp);
(p_eNtParamAutoRcpPrecededBy=p_NtParamAutoRcpPrecededBy);

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if((((unsigned long)(unsigned char)((*(p_bLinkStartupRun)))==(unsigned long)(unsigned char)1))){
(p_eAct=p_StartupAutoRcpsAct);
}else{
(p_eAct=((unsigned long)(&eAct)));
}

}imp9_end0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


((*(p_bPrep))=(((*(p_bNtParamAutoRcpPrep)))&(((*(p_bMcParamAutoRcpDis))^1))));



}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
__AS__Action__PrecededBySelfLink();
}break;case 1:{
__AS__Action__PrecededByF1Link();
}break;}



(a_tyBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBuffer1BffrStat))));
(a_tyBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBuffer2BffrStat))));
(a_tyBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBuffer3BffrStat))));

(a_udiMagAllwGo[1-1]=((*(p_udiOpsMagConvUL1MagAllwGo))));
(a_udiMagAllwGo[2-1]=((*(p_udiOpsMagConvUL2MagAllwGo))));
(a_udiMagAllwGo[3-1]=((*(p_udiOpsMagConvUL3MagAllwGo))));

(a_bBufferMagPresent[1-1]=((*(p_bBuffer1MagPresent))));
(a_bBufferMagPresent[2-1]=((*(p_bBuffer2MagPresent))));
(a_bBufferMagPresent[3-1]=((*(p_bBuffer3MagPresent))));

(a_bMagAWWidthDiff[1-1]=((*(p_bMagAW1WidthDiff))));
(a_bMagAWWidthDiff[2-1]=((*(p_bMagAW2WidthDiff))));
(a_bMagAWWidthDiff[3-1]=((*(p_bMagAW3WidthDiff))));


for((x=1);x<=3;x+=1){

if(((((unsigned long)(unsigned char)a_bMagAWWidthDiff[x-1]==(unsigned long)(unsigned char)0))&(a_bBufferMagPresent[x-1]^1))){
(a_bForceChgWidthIfSameRcp[x-1]=1);
}else if(a_bBufferMagPresent[x-1]){
if((((*(p_bOpsMagConvUL1AWDone)))&(((signed long)(signed long)(short)x==(signed long)(signed long)(short)1)))){
(a_bForceChgWidthIfSameRcp[x-1]=0);
}else if((((*(p_bOpsMagConvUL2AWDone)))&(((signed long)(signed long)(short)x==(signed long)(signed long)(short)2)))){
(a_bForceChgWidthIfSameRcp[x-1]=0);
}else if((((*(p_bOpsMagConvUL3AWDone)))&(((signed long)(signed long)(short)x==(signed long)(signed long)(short)3)))){
(a_bForceChgWidthIfSameRcp[x-1]=0);
}
}

}imp8_endfor1_0:;



if(((*(p_bOpsMagConvUL1SlotUpdtDone)))){
(a_bAllwChangeSlot[1-1]=0);
}
if(((*(p_bOpsMagConvUL2SlotUpdtDone)))){
(a_bAllwChangeSlot[2-1]=0);
}
if(((*(p_bOpsMagConvUL3SlotUpdtDone)))){
(a_bAllwChangeSlot[3-1]=0);
}


((*(p_eULMod))=(unsigned long)((*(p_usiLinkProdRcpCurrRcpMcMod))));
}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp13_end0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(p_sIPAddr=((unsigned long)(&sIPAddr)));
(p_sMcNm=((unsigned long)(&sMcNm)));
(p_bAWPrep=((unsigned long)(&bAWPrep)));
(p_bAWDis=((unsigned long)(&bAWDis)));
(p_bMnlAccData=((unsigned long)(&bMnlAccData)));
(p_bSectionLeader=((unsigned long)(&bSectionLeader)));
(p_sMagRcpNm=((unsigned long)(&sMagRcpNm)));
(p_diWidthLimit=((unsigned long)(&diWidthLimit)));
(p_bUSWidthChkPrep=((unsigned long)(&bUSWidthChkPrep)));
(p_bUSWidthChkEn=((unsigned long)(&bUSWidthChkEn)));
(p_bUSWidthChkSen=((unsigned long)(&bUSWidthChkSen)));
(p_bDSWidthChkPrep=((unsigned long)(&bDSWidthChkPrep)));
(p_bDSWidthChkEn=((unsigned long)(&bDSWidthChkEn)));
(p_bDSWidthChkSen=((unsigned long)(&bDSWidthChkSen)));
(p_bProdWidthChk=((unsigned long)(&bProdWidthChk)));
(p_bUIProdAccData=((unsigned long)(&bUIProdAccData)));
(p_bUIProdUpdtData=((unsigned long)(&bUIProdUpdtData)));
(p_bUIMagAccData=((unsigned long)(&bUIMagAccData)));

(p_tyCmpRcp=((unsigned long)(&tyCurrProdRcp)));
(p_sCurrMagRcpNm=((unsigned long)(&sCurrMagRcpNm)));
(p_eTimeStat=((unsigned long)(&eTimeStat)));
(p_eTimeStatus=((unsigned long)(&eTimeStatus)));
(p_bAccNewRcpCond=((unsigned long)(&bAccNewRcpCond)));
(p_bUpdtNewRcpCond=((unsigned long)(&bUpdtNewRcpCond)));
(p_bAutoUpdtData=((unsigned long)(&bAutoUpdtData)));
(p_sInfoMsg=((unsigned long)(&sInfoMsg)));
(p_bInternalUse=((unsigned long)(&bInternalUse)));
(p_tyInternalReqProdRcp=((unsigned long)(&tyInternalReqProdRcp)));
(p_bNewBrdEnteredCond=((unsigned long)(&bNewBrdEnteredCond)));
(p_bOldBrdExitedCond=((unsigned long)(&bOldBrdExitedCond)));
(p_bRlsBrd=((unsigned long)(&bRlsBrd)));
(p_tyToLeaderProdRcp=((unsigned long)(&tyToLeaderProdRcp)));
(pa_bInternalReqProdRcpDiff=((unsigned long)(&a_bInternalReqProdRcpDiff)));
(p_bUpdtProdRcpDiff=((unsigned long)(&bUpdtProdRcpDiff)));
(p_bRlsBrdProdRcpDiff=((unsigned long)(&bRlsBrdProdRcpDiff)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));
(p_tOnlineChkDlyTm=((unsigned long)(&tOnlineChkDlyTm)));
(p_bManual=((unsigned long)(&bManual)));
(p_bErr=((unsigned long)(&bErr)));
(p_bWarning=((unsigned long)(&bWarning)));
(p_bOps=((unsigned long)(&bOps)));
(p_bStandby=((unsigned long)(&bStandby)));
(p_eAWStat=((unsigned long)(&eAWStat)));
(p_bWidth2Prep=((unsigned long)(&bWidth2Prep)));
(p_bDBAOnWOAlign=((unsigned long)(&bDBAOnWOAlign)));
(p_tyProdRcpCurrRcpWr=((unsigned long)(&bDBAOnWOAlign)));
(p_eLinkUIProdRcpAct=((unsigned long)(&bDBAOnWOAlign)));


(p_bZ1AccNewRcpCondition=((unsigned long)(&bZ1AccNewRcpCondition)));
(p_bZ2AccNewRcpCondition=((unsigned long)(&bZ2AccNewRcpCondition)));
(p_tyHermesBARcv=((unsigned long)(&tyHermesBAAccpt)));
(p_tyHermesBFRcv=((unsigned long)(&tyHermesBFAccpt)));
(p_bHermesBADataAccepted=((unsigned long)(&bHermesBAAccpt)));
(p_bHermesBFDataAccepted=((unsigned long)(&bHermesBFAccpt)));
(p_diRequestedMinSlt=((unsigned long)(&diRequestedMinSlt)));
(p_diRequestedGapToMaxSlt=((unsigned long)(&diRequestedGapToMaxSlt)));

(p_eULMod=((unsigned long)(&eULMode)));
}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDevice; plcstring* zzRValue=(plcstring*)"F"; for(zzIndex=0; zzIndex<1l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDirName; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDirName; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);




switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
__AS__Action__PrecededBySelfInitial();
}break;case 1:{
__AS__Action__PrecededByF1Initial();
}break;}

}imp7_case0_1:imp7_endcase0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
__AS__Action__PrecededBySelfBackground1();
}break;case 1:{
__AS__Action__PrecededByF1Background1();
}break;}




if(((((unsigned long)(unsigned char)usiPrevChg2!=(unsigned long)(unsigned char)usiChg2))&((((signed long)eStatus==(signed long)0))&(((signed long)eStat==(signed long)0))))){
(tyZ1RcpWr=*(struct tyBoardProperty*)&tyCurrZ1Rcp);
((*(p_eAct))=3);
}
if(((((signed long)eStatus==(signed long)1))&(((signed long)eStat==(signed long)3)))){
(usiPrevChg2=usiChg2);
((*(p_eAct))=0);
}





if(((((unsigned long)(unsigned char)usiPrevChg!=(unsigned long)(unsigned char)usiChg))&((((signed long)eStatus==(signed long)0))&(((signed long)eStat==(signed long)0))))){
switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyZ2RcpWr; unsigned char* zzRValue=(unsigned char*)a_tyCurrZ2Rcp; for(zzIndex=0; zzIndex<4336l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
}break;case 1:{
{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyMagPropsWr; unsigned char* zzRValue=(unsigned char*)a_tyMagProps; for(zzIndex=0; zzIndex<1088l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
}break;}
((*(p_eAct))=5);
}
if(((((signed long)eStatus==(signed long)1))&(((signed long)eStat==(signed long)5)))){
(usiPrevChg=usiChg);
((*(p_eAct))=0);
}


}imp3_else5_0:imp3_end5_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Background2.st"
static void __AS__Action__Act_Background2(void){
{
switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
__AS__Action__PrecededBySelfBackground2();
}break;case 1:{
__AS__Action__PrecededByF1Background2();
}break;}


}imp4_case0_1:imp4_endcase0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Action.st"
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
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);

(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);
(fbFileRead2.bEn=0);;fbFileFullRead(&fbFileRead2);
(fbFileWrite2.bEn=0);;fbFileFullWrite(&fbFileWrite2);

(usiStep=0);
(bFileNotFound=0);



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

}break;case 4:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);



(fbFileRead1.bEn=1);;fbFileFullRead(&fbFileRead1);

if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)0))){
(eStatus=1);
switch(((*(p_eNtParamAutoRcpPrecededBy)))){
case 0:{
{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyZ2RcpWr; unsigned char* zzRValue=(unsigned char*)a_tyCurrZ2Rcp; for(zzIndex=0; zzIndex<4336l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
}break;case 1:{
{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyMagPropsWr; unsigned char* zzRValue=(unsigned char*)a_tyMagProps; for(zzIndex=0; zzIndex<1088l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
}break;}
(bOverWriteMagProperties=1);

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

}break;case 5:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);



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
(udiStatus=10009);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbFileRead2.bEn=1);;fbFileFullRead(&fbFileRead2);

if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)0))){
(eStatus=1);
(tyZ1RcpWr=*(struct tyBoardProperty*)&tyCurrZ1Rcp);
(bOverWriteTravLifProperties=1);
}else if((((unsigned long)fbFileRead2.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)1900))){
(udiStatus=10002);
}else if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)1902))){
(udiStatus=10003);
}else if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)1904))){
(udiStatus=10004);
}else if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead2.udiStatus);
}
}

}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);


(fbFileWrite2.bEn=1);;fbFileFullWrite(&fbFileWrite2);

if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite2.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)1900))){
(udiStatus=10005);
}else if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)1901))){
(udiStatus=10006);
}else if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)1903))){
(udiStatus=10007);
}else if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)1904))){
(udiStatus=10008);
}else if((((unsigned long)fbFileWrite2.udiStatus==(unsigned long)1914))){
(udiStatus=10009);
}else{
(udiStatus=fbFileWrite2.udiStatus);
}
}

}

}break;default: {
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){
(eStatus=1);
}

}break;}

}imp11_else21_0:imp11_end21_0:imp11_endcase1_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Main_Disable.st"
static void __AS__Action__Act_Main_Disable(void){
{
(bUSAllow=1);
(bDSAllow=1);


(usiProdAccDatStep=0);
(usiProdUpdtDatStep=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyInfoData.sProgNm; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyInfoData.udiCode=0);
(tyInfoData.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyInfoData.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(usiMagAccDatStep=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyInfoData1.sProgNm; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyInfoData1.udiCode=0);
(tyInfoData1.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyInfoData1.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


(eStatus=0);
(udiStatus=0);
(bProdRcpErr=0);
(bMagRcpErr=0);



}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sAutoRcpProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

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

}imp2_else0_1:imp2_end0_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededBySelf/PrecededBySelfInitial.st"
static void __AS__Action__PrecededBySelfInitial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sFile; plcstring* zzRValue=(plcstring*)"MagazineRcp"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead1.udiOffset=0);
(fbFileRead1.p_Dest=((unsigned long)(&a_tyCurrZ2Rcp)));
(fbFileRead1.udiLen=4336);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sFile; plcstring* zzRValue=(plcstring*)"MagazineRcp"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite1.udiOffset=0);
(fbFileWrite1.p_Src=((unsigned long)(&a_tyZ2RcpWr)));
(fbFileWrite1.udiLen=4336);
(fbFileWrite1.udiOption=0);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);


{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead2.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead2.sFile; plcstring* zzRValue=(plcstring*)"TravRcp"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead2.udiOffset=0);
(fbFileRead2.p_Dest=((unsigned long)(&tyCurrZ1Rcp)));
(fbFileRead2.udiLen=1084);
(fbFileRead2.bEn=0);;fbFileFullRead(&fbFileRead2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite2.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite2.sFile; plcstring* zzRValue=(plcstring*)"TravRcp"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite2.udiOffset=0);
(fbFileWrite2.p_Src=((unsigned long)(&tyZ1RcpWr)));
(fbFileWrite2.udiLen=1084);
(fbFileWrite2.udiOption=0);
(fbFileWrite2.bEn=0);;fbFileFullWrite(&fbFileWrite2);

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededBySelf/PrecededBySelfLink.st"
static void __AS__Action__PrecededBySelfLink(void){
{

((*(p_bHermesBADataAccepted))=(((*(p_bHermesABAAccepted)))|((*(p_bHermesBBAAccepted)))));
if(((*(p_bHermesABAAccepted)))){
(p_tyHermesBARcv=p_USHermesABoardAvailableRcv);
}else if(((*(p_bHermesBBAAccepted)))){
(p_tyHermesBARcv=p_USHermesABoardAvailableRcv);
}

((*(p_bHermesBFDataAccepted))=(((*(p_bHermesABFAccepted)))|((*(p_bHermesBBFAccepted)))));
if(((*(p_bHermesABFAccepted)))){
(p_tyHermesBFRcv=p_USHermesABoardForecastRcv);
}else if(((*(p_bHermesBBFAccepted)))){
(p_tyHermesBFRcv=p_USHermesBBoardForecastRcv);
}



((*(p_bZ1AccNewRcpCondition))=((((unsigned long)(unsigned char)((*(p_bLinkOpsRun)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULInitDone)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLinkPshrConvHvBrd)))==(unsigned long)(unsigned char)0))));


((*(p_bZ2AccNewRcpCondition))=(((unsigned long)(unsigned char)((*(p_bLinkOpsRun)))==(unsigned long)(unsigned char)1)));

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededBySelf/PrecededBySelfBackground1.st"
static void __AS__Action__PrecededBySelfBackground1(void){
{

if(((*(p_bLinkOpsRun)))){
if(((*(p_bHermesBADataAccepted)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBoardId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sBoardId); for(zzIndex=0; zzIndex<36l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBoardIdCreatedBy; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sBoardIdCreatedBy); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.eFailedBoard=((*(p_tyHermesBARcv)).tyData.eFailedBoard));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sProductTypeId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sProductTypeId); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.eFlippedBoard=((*(p_tyHermesBARcv)).tyData.eFlippedBoard));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sTopBarcode; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sTopBarcode); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBottomBarcode; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sBottomBarcode); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.rLength=((*(p_tyHermesBARcv)).tyData.rLength));
(tyCurrReqRcp.rWidth=((*(p_tyHermesBARcv)).tyData.rWidth));
(tyCurrReqRcp.rThickness=((*(p_tyHermesBARcv)).tyData.rThickness));
(tyCurrReqRcp.rConveyorSpeed=((*(p_tyHermesBARcv)).tyData.rConveyorSpeed));
(tyCurrReqRcp.rTopClearanceHeight=((*(p_tyHermesBARcv)).tyData.rTopClearanceHeight));
(tyCurrReqRcp.rBottomClearanceHeight=((*(p_tyHermesBARcv)).tyData.rBottomClearanceHeight));
(tyCurrReqRcp.rWeight=((*(p_tyHermesBARcv)).tyData.rWeight));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sWorkOrderId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sWorkOrderId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBatchId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBARcv)).tyData.sBatchId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if(((*(p_bHermesBFDataAccepted)))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBoardId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sBoardId); for(zzIndex=0; zzIndex<36l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBoardIdCreatedBy; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sBoardIdCreatedBy); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.eFailedBoard=((*(p_tyHermesBFRcv)).tyData.eFailedBoard));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sProductTypeId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sProductTypeId); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.eFlippedBoard=((*(p_tyHermesBFRcv)).tyData.eFlippedBoard));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sTopBarcode; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sTopBarcode); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBottomBarcode; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sBottomBarcode); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrReqRcp.rLength=((*(p_tyHermesBFRcv)).tyData.rLength));
(tyCurrReqRcp.rWidth=((*(p_tyHermesBFRcv)).tyData.rWidth));
(tyCurrReqRcp.rThickness=((*(p_tyHermesBFRcv)).tyData.rThickness));
(tyCurrReqRcp.rConveyorSpeed=((*(p_tyHermesBFRcv)).tyData.rConveyorSpeed));
(tyCurrReqRcp.rTopClearanceHeight=((*(p_tyHermesBFRcv)).tyData.rTopClearanceHeight));
(tyCurrReqRcp.rBottomClearanceHeight=((*(p_tyHermesBFRcv)).tyData.rBottomClearanceHeight));
(tyCurrReqRcp.rWeight=((*(p_tyHermesBFRcv)).tyData.rWeight));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sWorkOrderId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sWorkOrderId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqRcp.sBatchId; plcstring* zzRValue=(plcstring*)((*(p_tyHermesBFRcv)).tyData.sBatchId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}


if(((((unsigned long)(unsigned char)bInitializedFollower1Done==(unsigned long)(unsigned char)0))&((*(p_bLinkOpsRun))))){
if(((tyCurrZ1Rcp.rWidth==0))){
if(((*(p_bHermesBrdAvlDataNewBrdAvl1stZ)))){
if((((signed long)((*(p_tyInternalReqProdRcp)).diWidthInUM)!=(signed long)0))){
(tyCurrZ1Rcp.rWidth=(((signed long)(((*(p_tyInternalReqProdRcp)).diWidthInUM)))/((signed long)(1000))));
}else{
(tyCurrZ1Rcp.rWidth=(((signed long)(((*(p_diNtParamProdRcpMinWidth)))))/((signed long)(1000))));
}
}else{
(fbParseBrdAvlExternal.p_XMLTable=((unsigned long)(&((*(pa_tyLinkXMLTableDataBrdAvl1))))));
(fbParseBrdAvlExternal.iTotalIdxWrite=((*(p_iLinkXMLTableDataBrdAvlTtlIdx1))));
fbHermesParseXMLTable(&fbParseBrdAvlExternal);

{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sBoardId; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBoardId; for(zzIndex=0; zzIndex<36l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sBoardIdCreatedBy; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBoardIdCreatedBy; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrZ1Rcp.eFailedBoard=fbParseBrdAvlExternal.tyBoardAvailable.tyData.eFailedBoard);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sProductTypeId; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sProductTypeId; for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrZ1Rcp.eFlippedBoard=fbParseBrdAvlExternal.tyBoardAvailable.tyData.eFlippedBoard);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sTopBarcode; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sTopBarcode; for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sBottomBarcode; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBottomBarcode; for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyCurrZ1Rcp.rLength=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rLength);
(tyCurrZ1Rcp.rWidth=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rWidth);
(tyCurrZ1Rcp.rThickness=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rThickness);
(tyCurrZ1Rcp.rConveyorSpeed=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rConveyorSpeed);
(tyCurrZ1Rcp.rTopClearanceHeight=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rTopClearanceHeight);
(tyCurrZ1Rcp.rBottomClearanceHeight=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rBottomClearanceHeight);
(tyCurrZ1Rcp.rWeight=fbParseBrdAvlExternal.tyBoardAvailable.tyData.rWeight);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sWorkOrderId; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sWorkOrderId; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrZ1Rcp.sBatchId; plcstring* zzRValue=(plcstring*)fbParseBrdAvlExternal.tyBoardAvailable.tyData.sBatchId; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}
(bOverWriteTravLifProperties=1);
(bInitializedFollower1Done=1);
}


if((((*(p_bLinkOpsRun)))&(((*(p_bHermesBADataAccepted)))|((*(p_bHermesBFDataAccepted)))))){
if(((tyCurrReqRcp.rWidth<((float)((*(p_diNtParamProdRcpMinWidth)))/1.00000000000000000000E+03)))){
(eStatus=3);
(udiStatus=10010);
}else if(((tyCurrReqRcp.rWidth>((float)((*(p_diNtParamProdRcpMaxWidth)))/1.00000000000000000000E+03)))){
(eStatus=3);
(udiStatus=10011);
}else if(((tyCurrReqRcp.rThickness>((float)((*(p_eNtParamAutoRcpParamLmt)).diThicknessInUM)/1.00000000000000000000E+03)))){
(eStatus=3);
(udiStatus=10012);
}else if(((tyCurrReqRcp.rBottomClearanceHeight>((float)((*(p_eNtParamAutoRcpParamLmt)).diMaxBottomCleranceInUM)/1.00000000000000000000E+03)))){
(eStatus=3);
(udiStatus=10013);
}else if(((tyCurrReqRcp.rTopClearanceHeight>((float)((*(p_eNtParamAutoRcpParamLmt)).diMaxTopClearamceInUM)/1.00000000000000000000E+03)))){
(eStatus=3);
(udiStatus=10014);
}
if((((signed long)eStatus==(signed long)3))){
__AS__MEMSET(((unsigned long)(&tyCurrReqRcp)),0,1084);
}
}


if((((signed long)eStatus!=(signed long)3))){

if(((((signed long)memcmp(((unsigned long)(&tyCurrZ1Rcp)),((unsigned long)(&tyCurrReqRcp)),1084)!=(signed long)0))&((tyCurrReqRcp.rWidth!=0)))){
(bTravLifWidthDiffBlk=1);
if(((*(p_bZ1AccNewRcpCondition)))){
(tyCurrZ1Rcp=*(struct tyBoardProperty*)&tyCurrReqRcp);
(bOverWriteTravLifProperties=1);
(usiChg2=(usiChg2+1));
}
}else{
(bTravLifWidthDiffBlk=0);
(bOverWriteTravLifProperties=1);
}


for((ii=1);ii<=3;ii+=1){
if(((*(p_bZ2AccNewRcpCondition)))){
if((((unsigned long)(unsigned char)a_bBufferMagPresent[ii-1]==(unsigned long)(unsigned char)0))){
__AS__MEMSET((((unsigned long)(&a_tyCurrZ2Rcp[1-1]))+((ii-1)*1084)),0,1084);
(a_bMagChangOverBlk[ii-1]=0);
}else{
(p_tyCmpRcp=(((unsigned long)(&a_tyCurrZ2Rcp[1-1]))+((ii-1)*1084)));







(a_bCheckDifferent[ii-1]=(((__AS__STRING_CMP(((*(p_tyCmpRcp)).sProductTypeId),tyCurrZ1Rcp.sProductTypeId)!=0))|(((__AS__STRING_CMP(((*(p_tyCmpRcp)).sBatchId),tyCurrZ1Rcp.sBatchId)!=0))&((*(p_bMcParamAutoRcpBatchIDChgCmp))))|((__AS__STRING_CMP(((*(p_tyCmpRcp)).sWorkOrderId),tyCurrZ1Rcp.sWorkOrderId)!=0))|((((*(p_tyCmpRcp)).rWidth)!=tyCurrZ1Rcp.rWidth))|(((((*(p_tyCmpRcp)).rTopClearanceHeight)!=tyCurrZ1Rcp.rTopClearanceHeight))&(((*(p_bMcParamAutoRcpIgnoreTopClr))^1)))|(((((*(p_tyCmpRcp)).rBottomClearanceHeight)!=tyCurrZ1Rcp.rBottomClearanceHeight))&(((*(p_bMcParamAutoRcpIgnoreBtmClr))^1)))|(((((*(p_tyCmpRcp)).rThickness)!=tyCurrZ1Rcp.rThickness))&(((*(p_bMcParamAutoRcpIgnoreThickns))^1)))|(((signed long)((*(p_tyCmpRcp)).eFlippedBoard)!=(signed long)tyCurrZ1Rcp.eFlippedBoard))));
if(a_bCheckDifferent[ii-1]){
(a_bAllwChangeWidth[ii-1]=0);
if(a_tyBffrStat[ii-1].bBffrMty){
((*(p_tyCmpRcp))=*(struct tyBoardProperty*)&tyCurrZ1Rcp);
(usiChg=(usiChg+1));
(a_bMagChangOverBlk[ii-1]=0);
(bOverWriteMagProperties=1);
(a_bAllwChangeSlot[ii-1]=1);
}else{
(a_bMagChangOverBlk[ii-1]=1);
}
}else{
(a_bMagChangOverBlk[ii-1]=0);
(a_bAllwChangeWidth[ii-1]=((a_bMagAWWidthDiff[ii-1]|a_bForceChgWidthIfSameRcp[ii-1])&a_tyBffrStat[ii-1].bBffrMty));

}

}


}
}imp18_endfor12_0:;
}






(iChgOvrCntr=0);
for((ii=1);ii<=3;ii+=1){
if((a_bBufferMagPresent[ii-1]&(((unsigned long)(unsigned char)a_bMagChangOverBlk[ii-1]==(unsigned long)(unsigned char)1)))){
(iChgOvrCntr=(iChgOvrCntr+1));
goto imp18_endfor17_0;
}
}imp18_endfor17_0:;
if((((signed long)(signed long)(short)iChgOvrCntr>=(signed long)(signed long)(short)1))){
(bForceExitMag=1);
}else{
(bForceExitMag=0);
}

}imp18_end19_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededBySelf/PrecededBySelfBackground2.st"
static void __AS__Action__PrecededBySelfBackground2(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sProdtypeID; plcstring* zzRValue=(plcstring*)tyCurrReqRcp.sProductTypeId; for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(diProdWidth=(signed long)((tyCurrReqRcp.rWidth*1000)>=0.0?(tyCurrReqRcp.rWidth*1000)+0.5:(tyCurrReqRcp.rWidth*1000)-0.5));



if(bOverWriteTravLifProperties){
(diTravLifWidth=(signed long)((tyCurrZ1Rcp.rWidth*1000)>=0.0?(tyCurrZ1Rcp.rWidth*1000)+0.5:(tyCurrZ1Rcp.rWidth*1000)-0.5));
(bOverWriteTravLifProperties=0);
}



if((((unsigned long)(unsigned char)bOverWriteMagProperties==(unsigned long)(unsigned char)1))){

for((kk=1);kk<=4;kk+=1){
((*(p_diRequestedMinSlt))=3);
((*(p_diRequestedGapToMaxSlt))=0);
if(((*(p_bProdRcp0ToptoBtm)))){
if((((signed long)((*(p_diRequestedGapToMaxSlt)))>((a_tyCurrZ2Rcp[kk-1].rTopClearanceHeight+a_tyCurrZ2Rcp[kk-1].rThickness)/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000))))))){
(rMaxslt=(((*(p_diMagRcpCurrRcpTtlSlt)))-((*(p_diRequestedGapToMaxSlt)))));
}else{
(rMaxslt=((((*(p_diMagRcpCurrRcpTtlSlt)))-((a_tyCurrZ2Rcp[kk-1].rTopClearanceHeight+a_tyCurrZ2Rcp[kk-1].rThickness)/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))))+1));
}
(rMinslt=(a_tyCurrZ2Rcp[kk-1].rBottomClearanceHeight/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))));
(rPitch=(((a_tyCurrZ2Rcp[kk-1].rTopClearanceHeight+a_tyCurrZ2Rcp[kk-1].rBottomClearanceHeight)+a_tyCurrZ2Rcp[kk-1].rThickness)/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))));
if(((rPitch==0))){
(rPitch=1);
}
(rNumInterval=((rMaxslt-rMinslt)/ceil(rPitch)));
(diCalcedMax=(signed long)(floor(rMaxslt)>=0.0?floor(rMaxslt)+0.5:floor(rMaxslt)-0.5));
(diCalcedPitch=(signed long)(ceil(rPitch)>=0.0?ceil(rPitch)+0.5:ceil(rPitch)-0.5));
(diCalcedMin=(signed long)((diCalcedMax-(floor(rNumInterval)*ceil(rPitch)))>=0.0?(diCalcedMax-(floor(rNumInterval)*ceil(rPitch)))+0.5:(diCalcedMax-(floor(rNumInterval)*ceil(rPitch)))-0.5));

if((((signed long)diCalcedMin==(signed long)0))){
(diCalcedMin=diCalcedPitch);
}

}else{
if((((signed long)((*(p_diRequestedMinSlt)))==(signed long)0))){
((*(p_diRequestedMinSlt))=1);
}
if(((ceil((a_tyCurrZ2Rcp[kk-1].rBottomClearanceHeight/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))))>=(signed long)((*(p_diRequestedMinSlt)))))){
(rMinslt=((a_tyCurrZ2Rcp[kk-1].rBottomClearanceHeight/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000))))+1));
}else{
(rMinslt=((*(p_diRequestedMinSlt))));
}

(rMaxslt=((((*(p_diMagRcpCurrRcpTtlSlt)))-((a_tyCurrZ2Rcp[kk-1].rTopClearanceHeight+a_tyCurrZ2Rcp[kk-1].rThickness)/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))))+1));
(rPitch=(((a_tyCurrZ2Rcp[kk-1].rTopClearanceHeight+a_tyCurrZ2Rcp[kk-1].rBottomClearanceHeight)+a_tyCurrZ2Rcp[kk-1].rThickness)/(((signed long)(((*(p_diMagRcpCurrRcpSltToSlt)))))/((signed long)(1000)))));
if(((rPitch==0))){
(rPitch=1);
}
(rNumInterval=((rMaxslt-rMinslt)/ceil(rPitch)));
(diCalcedMin=(signed long)(ceil(rMinslt)>=0.0?ceil(rMinslt)+0.5:ceil(rMinslt)-0.5));
(diCalcedPitch=(signed long)(ceil(rPitch)>=0.0?ceil(rPitch)+0.5:ceil(rPitch)-0.5));
(diCalcedMax=(signed long)((diCalcedMin+(floor(rNumInterval)*ceil(rPitch)))>=0.0?(diCalcedMin+(floor(rNumInterval)*ceil(rPitch)))+0.5:(diCalcedMin+(floor(rNumInterval)*ceil(rPitch)))-0.5));

if((((signed long)diCalcedMax==(signed long)(((*(p_diMagRcpCurrRcpTtlSlt)))+1)))){
(diCalcedMax=(diCalcedMax-diCalcedPitch));
}

}
(a_tyMagProps[kk-1].diMaxSlt=diCalcedMax);
(a_tyMagProps[kk-1].diMinSlt=diCalcedMin);
(a_tyMagProps[kk-1].diPitch=diCalcedPitch);
(a_tyMagProps[kk-1].diWidth=(signed long)((a_tyCurrZ2Rcp[kk-1].rWidth*1000)>=0.0?(a_tyCurrZ2Rcp[kk-1].rWidth*1000)+0.5:(a_tyCurrZ2Rcp[kk-1].rWidth*1000)-0.5));
}imp19_endfor2_0:;

(bOverWriteMagProperties=0);
}





}imp19_else1_0:imp19_end1_0:;}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededByF1/PrecededByF1Initial.st"
static void __AS__Action__PrecededByF1Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sFile; plcstring* zzRValue=(plcstring*)"MagazinePropsRcp"; for(zzIndex=0; zzIndex<16l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead1.udiOffset=0);
(fbFileRead1.p_Dest=((unsigned long)(&a_tyMagProps)));
(fbFileRead1.udiLen=1088);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sFile; plcstring* zzRValue=(plcstring*)"MagazinePropsRcp"; for(zzIndex=0; zzIndex<16l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite1.udiOffset=0);
(fbFileWrite1.p_Src=((unsigned long)(&a_tyMagPropsWr)));
(fbFileWrite1.udiLen=1088);
(fbFileWrite1.udiOption=0);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededByF1/PrecededByF1Link.st"
static void __AS__Action__PrecededByF1Link(void){
{
((*(p_bZ2AccNewRcpCondition))=(((unsigned long)(unsigned char)((*(p_bLinkOpsRun)))==(unsigned long)(unsigned char)1)));

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededByF1/PrecededByF1Background1.st"
static void __AS__Action__PrecededByF1Background1(void){
{
(tyCurrReqMagRcp.diMaxSlt=((*(p_tyInternalReqProdRcp)).diMaxSltValue));
(tyCurrReqMagRcp.diMinSlt=((*(p_tyInternalReqProdRcp)).diMinSltValue));
(tyCurrReqMagRcp.diPitch=((*(p_tyInternalReqProdRcp)).diPitch));
(tyCurrReqMagRcp.diWidth=((*(p_tyInternalReqProdRcp)).diWidthInUM));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyCurrReqMagRcp.sRcpNm; plcstring* zzRValue=(plcstring*)((*(p_tyInternalReqProdRcp)).sRcpNm); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};



for((ii=1);ii<=3;ii+=1){
if(((*(p_bZ2AccNewRcpCondition)))){
if((((unsigned long)(unsigned char)a_bBufferMagPresent[ii-1]==(unsigned long)(unsigned char)0))){
__AS__MEMSET((((unsigned long)(&a_tyMagProps[1-1]))+((ii-1)*272)),0,272);
(a_bMagChangOverBlk[ii-1]=0);
}else{
(p_tyMagCmpRcp=(((unsigned long)(&a_tyMagProps[1-1]))+((ii-1)*272)));
(a_bCheckDifferent[ii-1]=((((signed long)memcmp(((unsigned long)(&((*(p_tyMagCmpRcp))))),((unsigned long)(&tyCurrReqMagRcp)),272)!=(signed long)0))&(((signed long)tyCurrReqMagRcp.diWidth!=(signed long)0))));
if(a_bCheckDifferent[ii-1]){
(a_bAllwChangeWidth[ii-1]=0);
if(a_tyBffrStat[ii-1].bBffrMty){
((*(p_tyMagCmpRcp))=*(struct tyMagProperties*)&tyCurrReqMagRcp);
(usiChg=(usiChg+1));
(a_bMagChangOverBlk[ii-1]=0);
(bOverWriteMagProperties=1);
(a_bAllwChangeSlot[ii-1]=1);
}else{
(a_bMagChangOverBlk[ii-1]=1);
}
}else{
(a_bMagChangOverBlk[ii-1]=0);
(a_bAllwChangeWidth[ii-1]=((a_bMagAWWidthDiff[ii-1]|a_bForceChgWidthIfSameRcp[ii-1])&a_tyBffrStat[ii-1].bBffrMty));

}

}
}
}imp14_endfor0_0:;


}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/PrecededByF1/PrecededByF1Background2.st"
static void __AS__Action__PrecededByF1Background2(void){
{

}}
#line 39 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/AutoRcp/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/AutoRcp/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/AutoRcp/AutoRcp/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_MagPlat/X20CP0483/AutoRcp/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'p_tyMagCmpRcp'\\n\"");
__asm__(".ascii \"plcdata_const 'a_bBufferMagPresent'\\n\"");
__asm__(".ascii \"plcdata_const 'tyCurrReqRcp'\\n\"");
__asm__(".ascii \"plcdata_const 'tyCurrZ1Rcp'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyCurrZ2Rcp'\\n\"");
__asm__(".ascii \"plcdata_const 'tyZ1RcpWr'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyZ2RcpWr'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyMagProps'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyMagPropsWr'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diHermesConfigMaxIdx'\\n\"");
__asm__(".previous");
