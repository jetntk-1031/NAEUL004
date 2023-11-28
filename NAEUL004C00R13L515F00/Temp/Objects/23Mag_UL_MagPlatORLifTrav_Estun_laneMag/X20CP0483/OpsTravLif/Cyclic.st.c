#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsTravLif/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.st"
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

}imp18_end0_0:;}
#line 27 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{




(p_bLinkNtParamMagConv1Prep=p_NtParamProjMag1ConvPrep);
(p_bLinkNtParamMagConv2Prep=p_NtParamProjMag2ConvPrep);
(p_bLinkNtParamMagConv3Prep=p_NtParamProjMag3ConvPrep);
(p_bLinkUSHermesABlkUS=p_USHermesABlkUS);
(p_bLinkUSHermesBBlkUS=p_USHermesBBlkUS);
(p_bLinkFollower1USAllow=p_Follower1USAllow);
(p_bLinkFollower2DSAllow=p_Follower2DSAllow);
(p_bLinkProjLifterMagPlatform=p_NtParamProjLifterMagPlatform);
(p_bLinkDIPshrAntiJamSen=p_DIPshrAntiJamSen);
(p_bLinkCurtainSen=p_DICurtainSen);
(p_bLinkPshrRetSen=p_DIPusherRetRS);

(p_diBuffer1NxtLoadSlt=p_Buffer1NxtLoadSlt);
(p_diBuffer2NxtLoadSlt=p_Buffer2NxtLoadSlt);
(p_diBuffer3NxtLoadSlt=p_Buffer3NxtLoadSlt);

(p_diMinSlt=p_ProdRcpCurrRcp1MinSltValue);
(p_diMaxSlt=p_ProdRcpCurrRcp1MaxSltValue);

(p_bTopToBtm=p_ProdRcpCurrRcp1TopToBtm);

(p_bLinkMcParamMagWidthChkDis=p_McParamMagWidthChkDis);



(p_sLinkProdRcpCurrRcp1Nm=p_ProdRcpCurrRcp1Nm);
(p_diLinkProdRcpCurrRcp1Pitch=p_ProdRcpCurrRcp1Pitch);
(p_sLinkMagRcpCurrRcpNm=p_MagRcpCurrRcpNm);


(p_udiRstErr=p_RstErrReset);
(p_bRun=p_OpsRun);
(p_bStop=p_OpsStop);
(p_bStep=p_OpsStep);

(p_tShutterWaitTmr=p_NtParamShutterWaitTmr);
(p_bCurtainSenPrep=p_NtParamCurtainSenPrep);


(p_sProgNm=p_NtParamOpsTravLifULProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(p_eULMag=p_NtParamProjMag);
(p_bInShutDis=p_McParamInShutterDis);


(p_eUSCommMod1=p_McParamUSCommAMod);
(p_eUSCommMod2=p_McParamUSCommBMod);

(p_eUSSMEMAStat1=p_USSMEMAAStat);
(p_eUSSMEMAStatus1=p_USSMEMAAStatus);
(p_bUSSMEMAUSRdy1=p_USSMEMAAUSRdy);
(p_bUSSMEMAGdBrdRdy1=p_USSMEMAAUSGdBrdRdy);
(p_bUSSMEMATransporting1=p_USSMEMAATransporting);
(p_bUSSMEMAConvStart1=p_USSMEMAAConvStart);
(p_bUSSMEMAConvStop1=p_USSMEMAAConvStop);

(p_eUSSMEMAStat2=p_USSMEMABStat);
(p_eUSSMEMAStatus2=p_USSMEMABStatus);
(p_bUSSMEMAUSRdy2=p_USSMEMABUSRdy);
(p_bUSSMEMAGdBrdRdy2=p_USSMEMABUSGdBrdRdy);
(p_bUSSMEMATransporting2=p_USSMEMABTransporting);
(p_bUSSMEMAConvStart2=p_USSMEMABConvStart);
(p_bUSSMEMAConvStop2=p_USSMEMABConvStop);

(p_eDSSMEMAStat1=p_DSSMEMA1Stat);
(p_eDSSMEMAStatus1=p_DSSMEMA1Status);
(p_bDSSMEMADSRdy1=p_DSSMEMA1DSRdy);
(p_bDSSMEMAConvStart1=p_DSSMEMA1ConvStart);

(p_eDSSMEMAStat2=p_DSSMEMA2Stat);
(p_eDSSMEMAStatus2=p_DSSMEMA2Status);
(p_bDSSMEMADSRdy2=p_DSSMEMA2DSRdy);
(p_bDSSMEMAConvStart2=p_DSSMEMA2ConvStart);

(p_eDSSMEMAStat3=p_DSSMEMA3Stat);
(p_eDSSMEMAStatus3=p_DSSMEMA3Status);
(p_bDSSMEMADSRdy3=p_DSSMEMA3DSRdy);
(p_bDSSMEMAConvStart3=p_DSSMEMA3ConvStart);

(p_bUSHermesUSRdy1=p_USHermesAUSRdy);
(p_bUSHermesUSGdRdy1=p_USHermesAUSGdRdy);
(p_bUSHermesTransporting1=p_USHermesATransporting);
(p_bUSHermesStopTransport1=p_USHermesAStopTransport);

(p_bUSHermesUSRdy2=p_USHermesBUSRdy);
(p_bUSHermesUSGdRdy2=p_USHermesBUSGdRdy);
(p_bUSHermesTransporting2=p_USHermesBTransporting);
(p_bUSHermesStopTransport2=p_USHermesBStopTransport);

(p_eConvStat=p_PshrConvStat);
(p_eConvStatus=p_PshrConvStatus);
(p_eConvDir=p_NtParamProjConvDir);
(p_bConvHvBrd=p_PshrConvHvBrd);
(p_bConvGdBrd=p_PshrConvGdBrd);

(p_eAWStat=p_AWOpenStat);
(p_eAWStatus=p_AWOpenStatus);
(p_bAWWidthPosDiff=p_AWOpenWidthPosDiff);

(p_eTravStat=p_TravStat);
(p_eTravStatus=p_TravStatus);




(p_eInletPneuStat=p_Pneu2SenInShutterStat);
(p_eInletPneuStatus=p_Pneu2SenInShutterStatus);
(p_bInletPneuCls=p_Pneu2SenInShutterExtended);

(p_eOutletPneuStat=p_Pneu2SenOutShutterStat);
(p_eOutletPneuStatus=p_Pneu2SenOutShutterStatus);

(p_eOutletPneuStat2=p_Pneu2SenOutShutterStat2);
(p_eOutletPneuStatus2=p_Pneu2SenOutShutterStatus2);

(p_eOutletPneuStat3=p_Pneu2SenOutShutterStat3);
(p_eOutletPneuStatus3=p_Pneu2SenOutShutterStatus3);

(p_eStopperStat1=p_PneuNoSenStopperAStat);
(p_eStopperStatus1=p_PneuNoSenStopperAStatus);
(p_bStopperBlk1=p_PneuNoSenStopperAExtended);

(p_eStopperStat2=p_PneuNoSenStopperBStat);
(p_eStopperStatus2=p_PneuNoSenStopperBStatus);
(p_bStopperBlk2=p_PneuNoSenStopperBExtended);

(p_eStopperStat3=p_PneuNoSenStopperCStat);
(p_eStopperStatus3=p_PneuNoSenStopperCStatus);
(p_bStopperBlk3=p_PneuNoSenStopperCExtended);

(p_bConvLftSen=p_DIConvLftSen);
(p_bConvMidSen=p_DIConvMidSen);
(p_bConvRgtSen=p_DIConvRgtSen);
(p_bConvClrSen=p_DIConvClrSen);
(p_bConvLineAInletSen=p_DIConvLineAInletSen);
(p_bConvLineBInletSen=p_DIConvLineBInletSen);

(p_bBufferMagPresent1=p_Buffer1MagPresent);
(p_bBufferMagPresent2=p_Buffer2MagPresent);
(p_bBufferMagPresent3=p_Buffer3MagPresent);

(p_bBufferMagDet1=p_DIMagPresentSen1);
(p_bBufferMagDet2=p_DIMagPresentSen2);
(p_bBufferMagDet3=p_DIMagPresentSen3);

(p_tyBufferStat1=p_Buffer1BffrStat);
(p_tyBufferStat2=p_Buffer2BffrStat);
(p_tyBufferStat3=p_Buffer3BffrStat);

(p_bTravAPosDiff=p_TravAPosDiff);
(p_bTravBPosDiff=p_TravBPosDiff);
(p_bTravPosDiff=p_TravPosDiff);




(p_bDIInShutterOpenRS=p_DIInShutterOpenRS);
(p_bDIInShutterCloseRS=p_DIInShutterCloseRS);
(p_bDIPusherExtRS=p_DIPusherExtRS);
(p_bDIPusherRetRS=p_DIPusherRetRS);
(p_bDIOutShutterOpenRS=p_DIOutShutterOpenRS);
(p_bDIOutShutterCloseRS=p_DIOutShutterCloseRS);
(p_bDIOutShutterOpenRS2=p_DIOutShutterOpenRS2);
(p_bDIOutShutterCloseRS2=p_DIOutShutterCloseRS2);
(p_bDIOutShutterOpenRS3=p_DIOutShutterOpenRS3);
(p_bDIOutShutterCloseRS3=p_DIOutShutterCloseRS3);
(p_bPshrConvPshrRetracted=p_PshrConvPshrRetracted);

(p_bMagWidthChkSenOn=p_DIMagWidthChkSen);

(p_eAWPushOrPullerStat=p_AWPushOrPullerStat);
(p_eAWPushOrPullerStatus=p_AWPushOrPullerStatus);
(p_bAWPushOrPullerWidthPosDiff=p_AWPushOrPullerPosDiff);


(p_dtBufferMagPresentTm1=p_Buffer1MagPresentTm);
(p_dtBufferMagPresentTm2=p_Buffer2MagPresentTm);
(p_dtBufferMagPresentTm3=p_Buffer3MagPresentTm);

(p_diProdRcpCurrRcp1Width=p_ProdRcpCurrRcp1Width);
(p_diProdRcpCurrRcp2Width=p_ProdRcpCurrRcp2Width);

(p_bCurtainSenPB=p_DICurtainSenPB);


(p_bTopScannerEn=p_McParamTopScannerEn);
(p_bBtmScannerEn=p_McParamBtmScannerEn);

(p_eTCPTopStat=p_TCPTopStat);
(p_eTCPTopStatus=p_TCPTopStatus);
(p_sTopMsgRd=p_TCPTopFullMsgRd);

(p_eTCPBtmStat=p_TCPBtmStat);
(p_eTCPBtmStatus=p_TCPBtmStatus);
(p_sBtmMsgRd=p_TCPBtmFullMsgRd);
(p_bOpConPrep=p_NtParamProjOpConPrep);
(p_tyPartReceiveRetCode=p_OpConPartRcvRetCode);
(p_tyOpConPlcGrabRcvCode=p_OpConPlcGrabRcvCode);

(p_bOpsMagConvUL1UnclmpDone=p_OpsMagConvUL1UnclmpDone);
(p_bOpsMagConvUL2UnclmpDone=p_OpsMagConvUL2UnclmpDone);
(p_bOpsMagConvUL3UnclmpDone=p_OpsMagConvUL3UnclmpDone);

(p_bNtParamProjOutletShutPrep=p_NtParamProjOutletShutPrep);
(p_bNtParamProjOutletShut2Prep=p_NtParamProjOutletShut2Prep);
(p_bNtParamProjOutletShut3Prep=p_NtParamProjOutletShut3Prep);


(p_bAutoRcpTravWidthDiffBlk=p_AutoRcpbTravWidthDiffblk);

(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_bMcParamAutoRcpDis=p_McParamAutoRcpDisable);
(p_eNtParamAutoRcpPrecededBy=p_NtParamAutoRcpPrecededBy);




(p_eCustomerReq=p_NtParamCustomerReq);

(p_bStopperUnBlkCtrl=p_InletStopperRetCtrl);
(p_eInletStopperStatus=p_InletStopperStatus);
(p_eInletStopperStat=p_InletStopperStat);
(p_bInletStopperPrep=p_NtParamProjInletStopperPrep);
(p_bDIInletStopperASen=p_DIInletStopperASen);
(p_diMcParamInStprExtDelayTm=p_McParamInStopperExtDelayTm);

(p_bLinkOpConEn=p_McParamOpConEn);
(p_sTopBtmBarcode=p_USHermesATopBtmBarcode);
(p_MCUL1StepPLCGrab=p_OpsMagConvUL1StepPLCGrab);
(p_MCUL2StepPLCGrab=p_OpsMagConvUL2StepPLCGrab);
(p_MCUL3StepPLCGrab=p_OpsMagConvUL3StepPLCGrab);
(p_bMagPresentSen1=p_DIMagPresentSen1);
(p_bMagPresentSen2=p_DIMagPresentSen2);
(p_bMagPresentSen3=p_DIMagPresentSen3);

(p_tyNtParamDISettings=p_NtParamDISettings);
(p_tyNtParamDOSettings=p_NtParamDOSettings);
(p_bDIPCBScanComplSig=p_DIPCBScanComplSig);

(p_bRlsMag1=p_UIRlsMag1);
(p_bRlsMag2=p_UIRlsMag2);
(p_bRlsMag3=p_UIRlsMag3);

(p_bPshrConvPshrRetSlwSen=p_PshrConvPshrRetAllwTrav);
(p_bMcParamDMCScannerEn=p_McParamDMCScannerEn);
(p_diMcParamDMCScanResponseTO=p_McParamDMCScanWriteTO);


(p_iLifterSltMoved=p_LifterBtmMovedSlt);
}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{

((*(p_bScanEn))=(((*(p_bTopScannerEn)))|((*(p_bBtmScannerEn)))));
}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
((*(p_bMagWidthChkDis))=(((((signed long)((*(p_tyNtParamDISettings)).diUSWidthChkSen)>(signed long)0))^1)|((*(p_bLinkMcParamMagWidthChkDis)))));


if((((*(p_bNtParamAutoRcpPrep)))&(((*(p_bMcParamAutoRcpDis))^1)))){
if((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)0))){
(p_usiLinkProdRcpCurrRcpMcMod=p_ProdRcpCurrRcp0McMod);
((*(p_bUSAllow))=(((unsigned long)(unsigned char)((*(p_bAutoRcpTravWidthDiffBlk)))==(unsigned long)(unsigned char)0)));
}else if((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)1))){
(p_usiLinkProdRcpCurrRcpMcMod=p_ProdRcpCurrRcp1McMod);
((*(p_bUSAllow))=(((*(p_bLinkFollower1USAllow)))&(((unsigned long)(unsigned char)((*(p_bLinkUSHermesABlkUS)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkUSHermesBBlkUS)))==(unsigned long)(unsigned char)0))));
}
}else{
(p_usiLinkProdRcpCurrRcpMcMod=p_ProdRcpCurrRcp1McMod);
((*(p_bUSAllow))=(((*(p_bLinkFollower1USAllow)))&(((unsigned long)(unsigned char)((*(p_bLinkUSHermesABlkUS)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkUSHermesBBlkUS)))==(unsigned long)(unsigned char)0))));
}

((*(p_eULMod))=(unsigned long)((*(p_usiLinkProdRcpCurrRcpMcMod))));

((*(p_bPneuUnclmpFBDone))=(((*(p_bOpsMagConvUL1UnclmpDone)))|((*(p_bOpsMagConvUL2UnclmpDone)))|((*(p_bOpsMagConvUL3UnclmpDone)))));

switch(((*(p_eULMod)))){
case 0:case 3:case 6:{
(bBypsGdBadBrd=1);
}break;case 1:case 2:case 4:case 5:case 7:case 8:{
(bBypsGdBadBrd=0);
}break;}


if((((unsigned long)(unsigned char)((*(p_bLinkProjLifterMagPlatform)))==(unsigned long)(unsigned char)0))){
(p_bMagTransferBrd1=p_OpsMagConvUL1MagBffrAvl);
(p_bMagTransferBrd2=p_OpsMagConvUL2MagBffrAvl);
(p_bMagTransferBrd3=p_OpsMagConvUL3MagBffrAvl);
}else{
(p_bMagTransferBrd1=p_DSSMEMA1DSRdy);
(p_bMagTransferBrd2=p_DSSMEMA2DSRdy);
(p_bMagTransferBrd3=p_DSSMEMA3DSRdy);
}





if((((unsigned long)(unsigned char)((*(p_bLinkProjLifterMagPlatform)))==(unsigned long)(unsigned char)0))){
(p_eLifStat=p_LifterBtmStat);
(p_eLifStatus=p_LifterBtmStatus);
(p_bLifterBtmPosDiff=p_LifterBtmPosDiff);
(p_bLifterAPosDiff=p_LifterBtmAPosDiff);
(p_bLifterBPosDiff=p_LifterBtmBPosDiff);
}else if((((*(p_bLinkProjLifterMagPlatform)))&((*(p_bRun))))){
((*(p_eLifStat))=eLifAct);
((*(p_eLifStatus))=1);
(p_bLifterBtmPosDiff=((unsigned long)(&bLifterBtmPosDiff)));
(p_bLifterAPosDiff=((unsigned long)(&bLifterAPosDiff)));
(p_bLifterBPosDiff=((unsigned long)(&bLifterBPosDiff)));
}

if((((*(p_bRun)))&(((unsigned long)(unsigned char)((*(p_bLinkDIPshrAntiJamSen)))==(unsigned long)(unsigned char)0)))){
(eStatus=3);
(udiStatus=10005);
}


if(((*(p_bRun)))){
if((~(((*(p_bRlsMag1)))|((*(p_bRlsMag2)))|((*(p_bRlsMag3))))&Edge0000600000&1?((Edge0000600000=(((*(p_bRlsMag1)))|((*(p_bRlsMag2)))|((*(p_bRlsMag3))))&1),1):((Edge0000600000=(((*(p_bRlsMag1)))|((*(p_bRlsMag2)))|((*(p_bRlsMag3))))&1),0))){
(bBypCurtainSenPB=1);
(bBypCurtainSensorPBLED=1);
}else if((~((*(p_bCurtainSenPB)))&Edge0000600001&1?((Edge0000600001=((*(p_bCurtainSenPB)))&1),1):((Edge0000600001=((*(p_bCurtainSenPB)))&1),0))){
if((((unsigned long)(unsigned char)bBypCurtainSenPB==(unsigned long)(unsigned char)1))){
(bBypCurtainSenPB=0);
(bBypCurtainSensorPBLED=0);
(bBypCurtainSenCtrl=0);
(bWait=0);
}else{
(bBypCurtainSenPB=1);
(bBypCurtainSensorPBLED=1);
}
}
}else{
(bBypCurtainSenPB=0);
(bBypCurtainSensorPBLED=0);
(bBypCurtainSenCtrl=0);
}


if((bBypCurtainSenPB&(((signed long)((*(p_eTravStatus)))!=(signed long)2))&(((signed long)((*(p_eLifStatus)))!=(signed long)2))&(((unsigned long)(unsigned char)bWait==(unsigned long)(unsigned char)0)))){
(bWait=1);
}

if((((*(p_bRun)))&bOpsInitDone&bBypCurtainSenPB&bWait)){
(bBypCurtainSenCtrl=1);
}else{
(bBypCurtainSenCtrl=0);
}


if(((((unsigned long)(unsigned char)bBypCurtainSenPB==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)bBypCurtainSenCtrl==(unsigned long)(unsigned char)1)))){
(bBypCurtainSensorPBLED=1);
(fbBypCurtainPBLEDBlinkTm.IN=0);;TON(&fbBypCurtainPBLEDBlinkTm);
}else if(((((unsigned long)(unsigned char)bBypCurtainSenPB==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)bBypCurtainSenCtrl==(unsigned long)(unsigned char)0)))){
(fbBypCurtainPBLEDBlinkTm.IN=1);;TON(&fbBypCurtainPBLEDBlinkTm);
if((((unsigned long)(unsigned char)fbBypCurtainPBLEDBlinkTm.Q==(unsigned long)(unsigned char)1))){
(fbBypCurtainPBLEDBlinkTm.IN=0);;TON(&fbBypCurtainPBLEDBlinkTm);
if((((unsigned long)(unsigned char)bBypCurtainSensorPBLED==(unsigned long)(unsigned char)0))){
(bBypCurtainSensorPBLED=1);
}else{
(bBypCurtainSensorPBLED=0);
}
}
}else{
(bBypCurtainSensorPBLED=0);
(fbBypCurtainPBLEDBlinkTm.IN=0);;TON(&fbBypCurtainPBLEDBlinkTm);
}


(fb2SenTm.IN=((((unsigned long)(unsigned char)((*(p_bConvRgtSen)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bConvLftSen)))==(unsigned long)(unsigned char)1))));;(fb2SenTm.PT=500);;TON(&fb2SenTm);
if((((unsigned long)(unsigned char)fb2SenTm.Q==(unsigned long)(unsigned char)1))){
(eStatus=3);
(udiStatus=10009);
}

























}imp6_else14_0:imp6_end14_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp17_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_InitLocal.st"
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

(p_eULMod=((unsigned long)(&eULMode)));
(p_eULMag=((unsigned long)(&eULMagazine)));
(p_bNonBffrMod=((unsigned long)(&bNonBffrMod)));
(p_bBypsGdBadBrd=((unsigned long)(&bBypsGdBadBrd)));
(p_bUSAllow=((unsigned long)(&bUSAllow)));
(p_bDSAllow=((unsigned long)(&bDSAllow)));

(p_eUSCommMod1=((unsigned long)(&eUSCommMod1)));
(p_eUSCommMod2=((unsigned long)(&eUSCommMod2)));
(p_eUSCommMod3=((unsigned long)(&eUSCommMod3)));
(p_eDSCommMod1=((unsigned long)(&eDSCommMod1)));
(p_eDSCommMod2=((unsigned long)(&eDSCommMod2)));
(p_eDSCommMod3=((unsigned long)(&eDSCommMod3)));

(p_eUSSMEMAStat1=((unsigned long)(&eUSSMEMAStat1)));
(p_eUSSMEMAStatus1=((unsigned long)(&eUSSMEMAStatus1)));
(p_bUSSMEMAUSRdy1=((unsigned long)(&bUSSMEMAUSRdy1)));
(p_bUSSMEMAGdBrdRdy1=((unsigned long)(&bUSSMEMAGdBrdRdy1)));
(p_bUSSMEMATransporting1=((unsigned long)(&bUSSMEMATransporting1)));
(p_bUSSMEMAConvStart1=((unsigned long)(&bUSSMEMAConvStart1)));
(p_bUSSMEMAConvStop1=((unsigned long)(&bUSSMEMAConvStop1)));

(p_eUSSMEMAStat2=((unsigned long)(&eUSSMEMAStat2)));
(p_eUSSMEMAStatus2=((unsigned long)(&eUSSMEMAStatus2)));
(p_bUSSMEMAUSRdy2=((unsigned long)(&bUSSMEMAUSRdy2)));
(p_bUSSMEMAGdBrdRdy2=((unsigned long)(&bUSSMEMAGdBrdRdy2)));
(p_bUSSMEMATransporting2=((unsigned long)(&bUSSMEMATransporting2)));
(p_bUSSMEMAConvStart2=((unsigned long)(&bUSSMEMAConvStart2)));
(p_bUSSMEMAConvStop2=((unsigned long)(&bUSSMEMAConvStop2)));

(p_eUSSMEMAStat3=((unsigned long)(&eUSSMEMAStat3)));
(p_eUSSMEMAStatus3=((unsigned long)(&eUSSMEMAStatus3)));
(p_bUSSMEMAUSRdy3=((unsigned long)(&bUSSMEMAUSRdy3)));
(p_bUSSMEMAGdBrdRdy3=((unsigned long)(&bUSSMEMAGdBrdRdy3)));
(p_bUSSMEMATransporting3=((unsigned long)(&bUSSMEMATransporting3)));
(p_bUSSMEMAConvStart3=((unsigned long)(&bUSSMEMAConvStart3)));
(p_bUSSMEMAConvStop3=((unsigned long)(&bUSSMEMAConvStop3)));

(p_eDSSMEMAStat1=((unsigned long)(&eDSSMEMAStat1)));
(p_eDSSMEMAStatus1=((unsigned long)(&eDSSMEMAStatus1)));
(p_bDSSMEMADSRdy1=((unsigned long)(&bDSSMEMADSRdy1)));
(p_bDSSMEMAConvStart1=((unsigned long)(&bDSSMEMAConvStart1)));

(p_eDSSMEMAStat2=((unsigned long)(&eDSSMEMAStat2)));
(p_eDSSMEMAStatus2=((unsigned long)(&eDSSMEMAStatus2)));
(p_bDSSMEMADSRdy2=((unsigned long)(&bDSSMEMADSRdy2)));
(p_bDSSMEMAConvStart2=((unsigned long)(&bDSSMEMAConvStart2)));

(p_eDSSMEMAStat3=((unsigned long)(&eDSSMEMAStat3)));
(p_eDSSMEMAStatus3=((unsigned long)(&eDSSMEMAStatus3)));
(p_bDSSMEMADSRdy3=((unsigned long)(&bDSSMEMADSRdy3)));
(p_bDSSMEMAConvStart3=((unsigned long)(&bDSSMEMAConvStart3)));

(p_bUSHermesUSRdy1=((unsigned long)(&bUSHermesUSRdy1)));
(p_bUSHermesUSGdRdy1=((unsigned long)(&bUSHermesUSGdRdy1)));
(p_bUSHermesTransporting1=((unsigned long)(&bUSHermesTransporting1)));
(p_bUSHermesStopTransport1=((unsigned long)(&bUSHermesStopTransport1)));

(p_bUSHermesUSRdy2=((unsigned long)(&bUSHermesUSRdy2)));
(p_bUSHermesUSGdRdy2=((unsigned long)(&bUSHermesUSGdRdy2)));
(p_bUSHermesTransporting2=((unsigned long)(&bUSHermesTransporting2)));
(p_bUSHermesStopTransport2=((unsigned long)(&bUSHermesStopTransport2)));

(p_bUSHermesUSRdy3=((unsigned long)(&bUSHermesUSRdy3)));
(p_bUSHermesUSGdRdy3=((unsigned long)(&bUSHermesUSGdRdy3)));
(p_bUSHermesTransporting3=((unsigned long)(&bUSHermesTransporting3)));
(p_bUSHermesStopTransport3=((unsigned long)(&bUSHermesStopTransport3)));

(p_bDSHermesDSRdy1=((unsigned long)(&bDSHermesDSRdy1)));
(p_bDSHermesTransporting1=((unsigned long)(&bDSHermesTransporting1)));
(p_bDSHermesStopTransport1=((unsigned long)(&bDSHermesStopTransport1)));

(p_bDSHermesDSRdy2=((unsigned long)(&bDSHermesDSRdy2)));
(p_bDSHermesTransporting2=((unsigned long)(&bDSHermesTransporting2)));
(p_bDSHermesStopTransport2=((unsigned long)(&bDSHermesStopTransport2)));

(p_bDSHermesDSRdy3=((unsigned long)(&bDSHermesDSRdy3)));
(p_bDSHermesTransporting3=((unsigned long)(&bDSHermesTransporting3)));
(p_bDSHermesStopTransport3=((unsigned long)(&bDSHermesStopTransport3)));

(p_eConvStat=((unsigned long)(&eConvStat)));
(p_eConvStatus=((unsigned long)(&eConvStatus)));
(p_eConvDir=((unsigned long)(&eConvDirection)));
(p_bConvHvBrd=((unsigned long)(&bConvHvBrd)));
(p_bConvGdBrd=((unsigned long)(&bConvGdBrd)));

(p_eAWStat=((unsigned long)(&eAWStat)));
(p_eAWStatus=((unsigned long)(&eAWStatus)));
(p_bAWWidthPosDiff=((unsigned long)(&bAWWidthPosDiff)));

(p_eTravStat=((unsigned long)(&eTravStat)));
(p_eTravStatus=((unsigned long)(&eTravStatus)));

(p_eLifStat=((unsigned long)(&eLifStat)));
(p_eLifStatus=((unsigned long)(&eLifStatus)));
(p_bLifterBtmPosDiff=((unsigned long)(&bLifterBtmPosDiff)));
(p_bLifterAPosDiff=((unsigned long)(&bLifterAPosDiff)));
(p_bLifterBPosDiff=((unsigned long)(&bLifterBPosDiff)));

(p_eInletPneuStat=((unsigned long)(&eInletPneuStat)));
(p_eInletPneuStatus=((unsigned long)(&eInletPneuStatus)));
(p_bInletPneuCls=((unsigned long)(&bInletPneuCls)));

(p_eOutletPneuStat=((unsigned long)(&eOutletPneuStat)));
(p_eOutletPneuStatus=((unsigned long)(&eOutletPneuStatus)));

(p_bConvLftSen=((unsigned long)(&bConvLftSen)));
(p_bConvRgtSen=((unsigned long)(&bConvRgtSen)));

(p_bMagTransferBrd1=((unsigned long)(&bMagTransferBrd1)));
(p_bMagTransferBrd2=((unsigned long)(&bMagTransferBrd2)));
(p_bMagTransferBrd3=((unsigned long)(&bMagTransferBrd3)));
(p_bBufferMagPresent1=((unsigned long)(&bBufferMagPresent1)));
(p_bBufferMagPresent2=((unsigned long)(&bBufferMagPresent2)));
(p_bBufferMagPresent3=((unsigned long)(&bBufferMagPresent3)));

(p_bPneuUnclmpFBDone=((unsigned long)(&bPneuUnclmpFBDone)));

(p_tShutterWaitTmr=((unsigned long)(&tShutterWaitTmr)));
(p_eNtParamProjMagBuffferActLoad=((unsigned long)(&eMagBuffferActLoad)));

(p_bScanEn=((unsigned long)(&bScanEn)));
(p_eTCPTopStat=((unsigned long)(&eTCPTopStat)));
(p_eTCPTopStatus=((unsigned long)(&eTCPTopStatus)));
(p_sTopMsgRd=((unsigned long)(&sTopMsgRd)));
(p_eTCPBtmStat=((unsigned long)(&eTCPBtmStat)));
(p_eTCPBtmStatus=((unsigned long)(&eTCPBtmStatus)));
(p_sBtmMsgRd=((unsigned long)(&sBtmMsgRd)));

(p_bPass=((unsigned long)(&bPass)));
(p_tyPartReceiveRetCode=((unsigned long)(&tyPartReceive)));
(p_bPLCGrabPic=((unsigned long)(&bPLCGrabPic)));
(p_eLocalUSCommMod=((unsigned long)(&eLocalUSCommMod)));
(p_bMagWidthChkDis=((unsigned long)(&bMagWidthChkDis)));
}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_Background.st"
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
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000100000&1?((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000100000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sOpsTravLifULProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


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
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_OpsInitial.st"
static void __AS__Action__Act_OpsInitial(void){
{
(eOpsStep=0);
(eGotoOpsStep=1);

(bInitConv=0);
(bOpsInitDone=0);
(bUSComm=0);
(bEntBrd=0);
(bDSComm=0);
(bExitBrd=0);

(usiMagWidthChkStep=0);
(bMagWidthChk=0);
(bTravGoToChkPt=0);

(bShut1Closed=0);
(bShut2Closed=0);
(bShut3Closed=0);

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_OpsRun.st"
static void __AS__Action__Act_OpsRun(void){
{






























__AS__Action__Act_LogStep();
__AS__Action__Act_OpsCommSig();
__AS__Action__Act_OpsMod();



if((((signed long)eGotoOpsStep!=(signed long)eOpsStep))){

(fbWidthChkSenOnTim.IN=0);;TON(&fbWidthChkSenOnTim);
(fbWidthChkSenOffTim.IN=0);;TON(&fbWidthChkSenOffTim);
(tTravLiftInPos.IN=0);;TON(&tTravLiftInPos);
(tExitBoardTimoutErr.IN=0);;TON(&tExitBoardTimoutErr);


if(((((signed long)eGotoOpsStep==(signed long)12))|(((signed long)eGotoOpsStep==(signed long)11))|(((signed long)eGotoOpsStep==(signed long)28)))){
(bTravLifInDSPos=1);
}else{
(bTravLifInDSPos=0);
}

switch(eGotoOpsStep){

case 28:{
if(((((*(p_bLinkProjLifterMagPlatform))^1))&(((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1))){


if((((((signed long)eTravLifPosGo==(signed long)4))&((*(p_bDIOutShutterOpenRS)))&((*(p_bDIOutShutterCloseRS2)))&((*(p_bDIOutShutterCloseRS3))))|((((signed long)eTravLifPosGo==(signed long)5))&((*(p_bDIOutShutterOpenRS2)))&((*(p_bDIOutShutterCloseRS)))&((*(p_bDIOutShutterCloseRS3))))|((((signed long)eTravLifPosGo==(signed long)6))&((*(p_bDIOutShutterOpenRS3)))&((*(p_bDIOutShutterCloseRS)))&((*(p_bDIOutShutterCloseRS2)))))){
(eOpsStep=eGotoOpsStep);
}
}else{
if(((*(p_bDIOutShutterOpenRS)))){
(eOpsStep=eGotoOpsStep);
}
}

}break;case 11:{
if((((*(p_bConvLftSen)))|((*(p_bConvClrSen))))){
(eGotoOpsStep=37);
}else if((((((*(p_bConvRgtSen)))|((*(p_bConvMidSen))))^1)&((((signed long)eTravLifPosGo==(signed long)4))|(((signed long)eTravLifPosGo==(signed long)5))|(((signed long)eTravLifPosGo==(signed long)6))))){
(eGotoOpsStep=36);
}else{
(eOpsStep=eGotoOpsStep);
}
}break;case 23:{
if(((((*(p_bConvRgtSen)))|((*(p_bConvMidSen))))^1)){
(eGotoOpsStep=36);
}else{
(eOpsStep=eGotoOpsStep);
}
}break;case 18:{
if(((((signed long)((*(p_eInletPneuStat)))==(signed long)6))&(((signed long)((*(p_eInletPneuStatus)))!=(signed long)1)))){
if(((((signed long)((*(p_eInletPneuStat)))==(signed long)6))&(((signed long)((*(p_eInletPneuStatus)))==(signed long)1)))){
(eInletPneuAct=0);
}
}else if(((((signed long)((*(p_eConvStat)))==(signed long)19))&((((signed long)((*(p_eConvStatus)))!=(signed long)1))|(((*(p_bLinkPshrRetSen))^1))))){
if(((((signed long)((*(p_eConvStat)))==(signed long)19))&((((signed long)((*(p_eConvStatus)))==(signed long)1))|((*(p_bLinkPshrRetSen)))))){
(eConvAct=0);
}
}else{
(eOpsStep=eGotoOpsStep);
}
}break;case 35:{

if((((unsigned long)(unsigned char)bCmdUnclmpFlag==(unsigned long)(unsigned char)0))){
(bCmdUnclmpFlag=1);
if((((signed long)eTravLifPosGo==(signed long)4))){
(bWidthChkErrCmdUnclmp1=1);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(bWidthChkErrCmdUnclmp2=1);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(bWidthChkErrCmdUnclmp3=1);
}
}

if(((*(p_bPneuUnclmpFBDone)))){
(bCmdUnclmpFlag=0);

((*(p_bOpsMagConvUL1UnclmpDone))=0);
((*(p_bOpsMagConvUL2UnclmpDone))=0);
((*(p_bOpsMagConvUL3UnclmpDone))=0);

(bWidthChkErrCmdUnclmp1=0);
(bWidthChkErrCmdUnclmp2=0);
(bWidthChkErrCmdUnclmp3=0);

(eOpsStep=eGotoOpsStep);
}
}break;default: {
(eOpsStep=eGotoOpsStep);

}break;}

}




if(((((signed long)((*(p_eConvDir)))==(signed long)0))|(((signed long)((*(p_eConvDir)))==(signed long)2)))){
if(((*(p_bConvLftSen)))){
(bConvInSenOn=1);
}
if(bConvInSenOn){
(tConvLftSenOff.IN=(((*(p_bConvLftSen))^1)));;TON(&tConvLftSenOff);
if(tConvLftSenOff.Q){
(bConvInSenOn=0);
(tConvLftSenOff.IN=0);;TON(&tConvLftSenOff);
}
}
}else{
if(((*(p_bConvRgtSen)))){
(bConvInSenOn=1);
}
if(bConvInSenOn){
(tConvRgtSenOff.IN=(((*(p_bConvRgtSen))^1)));;TON(&tConvRgtSenOff);
if(tConvRgtSenOff.Q){
(bConvInSenOn=0);
(tConvRgtSenOff.IN=0);;TON(&tConvRgtSenOff);
}
}
}




if(((((signed long)((*(p_eConvDir)))==(signed long)0))|(((signed long)((*(p_eConvDir)))==(signed long)2)))){
if(((*(p_bConvRgtSen)))){
(bConvOutSenOn=1);
}
if(bConvOutSenOn){
(tConvRgtSenOff.IN=(((*(p_bConvRgtSen))^1)));;TON(&tConvRgtSenOff);
if(tConvRgtSenOff.Q){
(bConvOutSenOn=0);
(tConvRgtSenOff.IN=0);;TON(&tConvRgtSenOff);
}
}
}else{
if(((*(p_bConvLftSen)))){
(bConvOutSenOn=1);
}
if(bConvOutSenOn){
(tConvLftSenOff.IN=(((*(p_bConvLftSen))^1)));;TON(&tConvLftSenOff);
if(tConvLftSenOff.Q){
(bConvOutSenOn=0);
(tConvLftSenOff.IN=0);;TON(&tConvLftSenOff);
}
}
}




if((((signed long)eOpsStep==(signed long)eGotoOpsStep))){

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)0))){

if((bOpsInitDone&(((unsigned long)(unsigned char)bBypCurtainSenCtrl==(unsigned long)(unsigned char)0))&((*(p_bCurtainSenPrep)))&(((signed long)((*(p_eConvStatus)))!=(signed long)2))&((*(p_bDIPusherRetRS)))&(((*(p_bLinkProjLifterMagPlatform))^1)))){
if((((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1)){
if(((((signed long)eTravLifPosGo==(signed long)4))&(bShut1Closed^1))){
(eOutletPneuAct=6);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);



if((((((signed long)((*(p_eOutletPneuStat)))==(signed long)6))&(((signed long)((*(p_eOutletPneuStatus)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat2)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

(bShut1Closed=1);
(bShut2Closed=0);
(bShut3Closed=0);

}

}

if(((((signed long)eTravLifPosGo==(signed long)5))&(bShut2Closed^1))){
(eOutletPneuAct2=6);
(eOutletPneuAct=5);
(eOutletPneuAct3=5);




if((((((signed long)((*(p_eOutletPneuStat)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat2)))==(signed long)6))&(((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

(bShut1Closed=0);
(bShut2Closed=1);
(bShut3Closed=0);

}

}

if(((((signed long)eTravLifPosGo==(signed long)6))&(bShut3Closed^1))){
(eOutletPneuAct3=6);
(eOutletPneuAct=5);
(eOutletPneuAct2=5);




if((((((signed long)((*(p_eOutletPneuStat)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat2)))==(signed long)5))&(((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1)))&((((signed long)((*(p_eOutletPneuStat3)))==(signed long)6))&(((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

(bShut1Closed=0);
(bShut2Closed=0);
(bShut3Closed=1);

}
}
}else{
if((((((signed long)eTravLifPosGo==(signed long)6))|(((signed long)eTravLifPosGo==(signed long)5))|(((signed long)eTravLifPosGo==(signed long)6)))&(((*(p_bDIOutShutterOpenRS))^1)))){
(eOutletPneuAct=6);
if(((((signed long)((*(p_eOutletPneuStat)))==(signed long)6))&(((signed long)((*(p_eOutletPneuStatus)))==(signed long)1)))){
(eOutletPneuAct=0);
(bShut1Closed=1);
}
}
}
}




if((((((signed long)eOpsStep==(signed long)18))|(((signed long)eOpsStep==(signed long)19))|(((signed long)eOpsStep==(signed long)11))|(((signed long)eOpsStep==(signed long)22)))&(bBypCurtainSenCtrl|((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bCurtainSenPrep)))==(unsigned long)(unsigned char)0))))&(((*(p_bLinkProjLifterMagPlatform))^1)))){
if((((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1)){
if(((((*(p_bDIOutShutterCloseRS))^1))|(((*(p_bDIOutShutterCloseRS2))^1))|(((*(p_bDIOutShutterCloseRS3))^1)))){
(eOutletPneuAct=5);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);
}
}else{
if((((*(p_bDIOutShutterCloseRS))^1))){
(eOutletPneuAct=5);
}
}
}


switch(eOpsStep){

case 1:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Pusher Conveyor"; for(zzIndex=0; zzIndex<28l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eConvAct=3);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)3)))){
if(((*(p_bConvLftSen)))){
(bBrdOnSen=1);
}

if(bBrdOnSen){
if((((*(p_bConvLftSen))^1))){
(eConvAct=0);
(eGotoOpsStep=3);
}
}else{
(eGotoOpsStep=3);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{


if(((((signed long)((*(p_eConvDir)))==(signed long)0))|(((signed long)((*(p_eConvDir)))==(signed long)2)))){

if(((*(p_bConvLftSen)))){
(bBrdOnSen=1);
}

if(bBrdOnSen){
if(((((*(p_bConvLftSen))^1))&((((*(p_bInletPneuCls)))&((*(p_bStopperBlk1)))&((*(p_bStopperBlk2)))&((*(p_bStopperBlk3))))^1))){
(bBrdOnSen=0);
(eGotoOpsStep=2);
}
}

}else{

if(((*(p_bConvRgtSen)))){
(bBrdOnSen=1);
}

if(bBrdOnSen){
if(((((*(p_bConvRgtSen))^1))&((((*(p_bInletPneuCls)))&((*(p_bStopperBlk1)))&((*(p_bStopperBlk2)))&((*(p_bStopperBlk3))))^1))){
(bBrdOnSen=0);
(eGotoOpsStep=2);
}
}

}

}


(tEntBoardTimoutErr.IN=(bConvInSenOn&(((*(p_bDIInShutterCloseRS))^1))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=33);
}

}break;case 2:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Inlet Pneumatic Closing"; for(zzIndex=0; zzIndex<36l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))){
(eStopperAct1=5);
(eStopperAct2=5);
(eStopperAct3=5);
}






if(((((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))&((((*(p_bTravAPosDiff)))&((*(p_bLifterAPosDiff))))&(((*(p_bLifterBPosDiff)))&((*(p_bTravBPosDiff))))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bTravAPosDiff)))&((*(p_bTravBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bLifterAPosDiff)))&((*(p_bLifterBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))))){

if(((*(p_bInShutDis)))){
(eInletPneuAct=6);
}else{
(eInletPneuAct=5);
}

(bSkipCloseInletShutter=0);
}else{
(bSkipCloseInletShutter=1);
}






if(((((((signed long)((*(p_eInletPneuStatus)))==(signed long)1))&((((signed long)((*(p_eInletPneuStat)))==(signed long)5))|(((signed long)((*(p_eInletPneuStat)))==(signed long)6))))&((((signed long)((*(p_eStopperStatus1)))==(signed long)1))&(((signed long)((*(p_eStopperStat1)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus2)))==(signed long)1))&(((signed long)((*(p_eStopperStat2)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus3)))==(signed long)1))&(((signed long)((*(p_eStopperStat3)))==(signed long)5))))|bSkipCloseInletShutter)){

(eInletPneuAct=0);
(eStopperAct1=0);
(eStopperAct2=0);
(eStopperAct3=0);
(bSkipCloseInletShutter=0);
(eGotoOpsStep=1);
}



}break;case 3:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Inlet&Outlet Pneumatic Closing"; for(zzIndex=0; zzIndex<43l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((*(p_bLinkProjLifterMagPlatform))^1))){
if((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))){
(eStopperAct1=5);
(eStopperAct2=5);
(eStopperAct3=5);
}

if((((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0))){
(eOutletPneuAct=5);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);
}




if(((((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))&((((*(p_bTravAPosDiff)))&((*(p_bLifterAPosDiff))))&(((*(p_bLifterBPosDiff)))&((*(p_bTravBPosDiff))))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bTravAPosDiff)))&((*(p_bTravBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bLifterAPosDiff)))&((*(p_bLifterBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))))){

if(((*(p_bInShutDis)))){
(eInletPneuAct=6);
}else{
(eInletPneuAct=5);
}

(bSkipCloseInletShutter=0);
}else{
(bSkipCloseInletShutter=1);
}















(tEntBoardTimoutErr.IN=(bConvInSenOn&(((*(p_bDIInShutterCloseRS))^1))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=33);
}


if(((*(p_bConvClrSen)))){
(eGotoOpsStep=34);
}

if(bSkipCloseInletShutter){


if((((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))|((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))|((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=12);
}else{

(eGotoOpsStep=20);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{







if(((((((signed long)((*(p_eInletPneuStatus)))==(signed long)1))&((((signed long)((*(p_eInletPneuStat)))==(signed long)5))|(((signed long)((*(p_eInletPneuStat)))==(signed long)6))))&(((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))|((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))|((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))&((((signed long)((*(p_eStopperStatus1)))==(signed long)1))&(((signed long)((*(p_eStopperStat1)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus2)))==(signed long)1))&(((signed long)((*(p_eStopperStat2)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus3)))==(signed long)1))&(((signed long)((*(p_eStopperStat3)))==(signed long)5))))|bSkipCloseInletShutter)){
(eInletPneuAct=0);
(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);
(eStopperAct1=0);
(eStopperAct2=0);
(eStopperAct3=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(bSkipCloseInletShutter=0);
(eGotoOpsStep=5);
}else{
(bSkipCloseInletShutter=0);
(eGotoOpsStep=4);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}

}else{
if((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))){
(eStopperAct1=5);
(eStopperAct2=5);
(eStopperAct3=5);
}

if((((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0))){
(eOutletPneuAct=5);
}




if(((((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))&((((*(p_bTravAPosDiff)))&((*(p_bLifterAPosDiff))))&(((*(p_bLifterBPosDiff)))&((*(p_bTravBPosDiff))))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bTravAPosDiff)))&((*(p_bTravBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd)))&((*(p_bLifterAPosDiff)))&((*(p_bLifterBPosDiff))))|((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))))){

if(((*(p_bInShutDis)))){
(eInletPneuAct=6);
}else{
(eInletPneuAct=5);
}

(bSkipCloseInletShutter=0);
}else{
(bSkipCloseInletShutter=1);
}



(tEntBoardTimoutErr.IN=(bConvInSenOn&(((*(p_bDIInShutterCloseRS))^1))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=33);
}


(tExitBoardTimoutErr.IN=(((*(p_bConvClrSen)))&(((*(p_bDIOutShutterCloseRS))^1))));;TON(&tExitBoardTimoutErr);
if(tExitBoardTimoutErr.Q){
(eGotoOpsStep=32);
}


if(((*(p_bConvClrSen)))){
(eGotoOpsStep=34);
}

if(bSkipCloseInletShutter){
if(((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))){

(eOutletPneuAct=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=12);
}else{

(eGotoOpsStep=20);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{





if(((((((signed long)((*(p_eInletPneuStatus)))==(signed long)1))&((((signed long)((*(p_eInletPneuStat)))==(signed long)5))|(((signed long)((*(p_eInletPneuStat)))==(signed long)6))))&((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus1)))==(signed long)1))&(((signed long)((*(p_eStopperStat1)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus2)))==(signed long)1))&(((signed long)((*(p_eStopperStat2)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus3)))==(signed long)1))&(((signed long)((*(p_eStopperStat3)))==(signed long)5))))|bSkipCloseInletShutter)){
(eInletPneuAct=0);
(eOutletPneuAct=0);
(eStopperAct1=0);
(eStopperAct2=0);
(eStopperAct3=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(bSkipCloseInletShutter=0);
(eGotoOpsStep=5);
}else{
(bSkipCloseInletShutter=0);
(eGotoOpsStep=4);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}
}

}break;case 4:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Traverser And Lifter Homing"; for(zzIndex=0; zzIndex<40l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


(eTravAct=9);
(eLifAct=21);

if((((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)9)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)21))))){
(eTravAct=0);
(eLifAct=0);

(eGotoOpsStep=22);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 5:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Initializing Auto Width, Traverser And Lifter Homing"; for(zzIndex=0; zzIndex<52l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eAWAct=16);
(eAWPushOrPullerAct=16);
(eTravAct=9);
(eLifAct=21);





if((((((signed long)((*(p_eAWStatus)))==(signed long)1))&(((signed long)((*(p_eAWStat)))==(signed long)16)))&((((signed long)((*(p_eAWPushOrPullerStatus)))==(signed long)1))&(((signed long)((*(p_eAWPushOrPullerStat)))==(signed long)16)))&((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)9)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)21))))){
(eAWAct=0);
(eAWPushOrPullerAct=0);
(eTravAct=0);
(eLifAct=0);

if(((*(p_bInShutDis)))){
(eGotoOpsStep=14);
(bInitInletPneu=1);
}else{
(eGotoOpsStep=12);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 6:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Moving Auto Width"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eAWAct=16);
(eAWPushOrPullerAct=16);



if((((((signed long)((*(p_eAWStatus)))==(signed long)1))&(((signed long)((*(p_eAWStat)))==(signed long)16)))&((((signed long)((*(p_eAWPushOrPullerStatus)))==(signed long)1))&(((signed long)((*(p_eAWPushOrPullerStat)))==(signed long)16))))){
(eAWAct=0);
(eAWPushOrPullerAct=0);
(eGotoOpsStep=12);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 11:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Moving Traverser And Lifter"; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((signed long)eTravLifPosGo==(signed long)1))){
(eTravAct=1);
(eLifAct=1);

}else if((((signed long)eTravLifPosGo==(signed long)2))){
(eTravAct=2);
(eLifAct=2);

}else if((((signed long)eTravLifPosGo==(signed long)3))){
(eTravAct=3);
(eLifAct=3);

}else if((((signed long)eTravLifPosGo==(signed long)4))){
(eTravAct=4);
(eLifAct=9);

}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eTravAct=5);
(eLifAct=12);

}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eTravAct=6);
(eLifAct=15);

}else if((((signed long)eTravLifPosGo==(signed long)0))){
if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=12);
}else{
(eGotoOpsStep=22);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}






if(((((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)1)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)1))))|(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)2)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)2))))|(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)3)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)3))))|(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)4)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)9))))|(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)5)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)12))))|(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)6)))&((((signed long)((*(p_eLifStatus)))==(signed long)1))&(((signed long)((*(p_eLifStat)))==(signed long)15)))))){

(eTravAct=0);
(eLifAct=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){

if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=14);
}else{
(eGotoOpsStep=12);
}

}else{
if(((((*(p_bLinkProjLifterMagPlatform))^1))&(((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1))){
if((((*(p_bDSAllow)))&((*(p_bLocalDSRdy))))){
if((((signed long)eTravLifPosGo==(signed long)4))){
(eOutletPneuAct=6);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eOutletPneuAct2=6);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eOutletPneuAct3=6);
}
}
(eGotoOpsStep=23);
}else{
if((((*(p_bLocalDSRdy)))&((*(p_bDSAllow))))){
(eOutletPneuAct=6);
}
(eGotoOpsStep=23);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}



if(((((signed long)eTravLifPosGo==(signed long)4))|(((signed long)eTravLifPosGo==(signed long)5))|(((signed long)eTravLifPosGo==(signed long)6)))){
(tTravLiftInPos.IN=((((unsigned long)(unsigned char)((*(p_bTravPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterBtmPosDiff)))==(unsigned long)(unsigned char)0))));;TON(&tTravLiftInPos);
if(tTravLiftInPos.Q){

if(((((*(p_bLinkProjLifterMagPlatform))^1))&(((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1))){
if((((*(p_bDSAllow)))&((*(p_bLocalDSRdy))))){
if((((signed long)eTravLifPosGo==(signed long)4))){
(eOutletPneuAct=6);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eOutletPneuAct2=6);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eOutletPneuAct3=6);
}
}
(eGotoOpsStep=23);
(bTravLifInDSPos=1);
}else{
if((((*(p_bLocalDSRdy)))&((*(p_bDSAllow))))){
(eOutletPneuAct=6);
}
(eGotoOpsStep=23);
(bTravLifInDSPos=1);
}

(eTravAct=0);
(eLifAct=0);
}
}




if((((((signed long)eTravLifPosGo==(signed long)1))&(((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0)))|((((signed long)eTravLifPosGo==(signed long)2))&(((unsigned long)(unsigned char)((*(p_bTravBPosDiff)))==(unsigned long)(unsigned char)0)))|(((signed long)eTravLifPosGo==(signed long)3)))){
(tTravLiftInPos.IN=((((unsigned long)(unsigned char)((*(p_bTravPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterBtmPosDiff)))==(unsigned long)(unsigned char)0))));;TON(&tTravLiftInPos);
if(tTravLiftInPos.Q){
(eInletPneuAct=6);
(bTravLifInDSPos=1);
}
}

}break;case 12:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Waiting For Upstream Signal"; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(a_bPosAllwSigOn[1-1]=bLocalUSRdy1);
(a_bPosAllwSigOn[2-1]=bLocalUSRdy2);
(a_bPosAllwSigOn[3-1]=bLocalUSRdy3);

__AS__MEMSET(((unsigned long)(&a_udiPosAllwSum)),0,12);

for((udi=1);udi<=3;udi+=1){

(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+tyParamTravLif.a_usiUSPriority[udi-1]));

if((((unsigned long)(unsigned char)tyParamTravLif.a_bUSDis[udi-1]==(unsigned long)(unsigned char)0))){
(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+1000));
}

if((((unsigned long)(unsigned char)a_bPosAllwSigOn[udi-1]==(unsigned long)(unsigned char)1))){
(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+2000));
}

}imp14_endfor106_0:;

(udiPosAllwGo=99);

for((udi=1);udi<=3;udi+=1){

if((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)3000))){

if((((unsigned long)udiPosAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiPosAllwSum[udi-1]<(unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]))){
(udiPosAllwGo=udi);
}
}else{
(udiPosAllwGo=udi);
}

}

}imp14_endfor109_0:;

if((((unsigned long)udiPosAllwGo==(unsigned long)99))){

for((udi=1);udi<=3;udi+=1){

if(((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)1000))&(((unsigned long)a_udiPosAllwSum[udi-1]<(unsigned long)2000)))){

if((((unsigned long)udiPosAllwGo==(unsigned long)99))){
(udiPosAllwGo=udi);
}else{
(udiPosAllwGo=99);
goto imp14_endfor114_0;
}

}

}imp14_endfor114_0:;

}



if((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))){

(eGotoOpsStep=20);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)1))&(((unsigned long)udiPosAllwGo!=(unsigned long)99)))){
(eTravLifPosGo=udiPosAllwGo);

if(bSkipCloseInletShutter){
(eGotoOpsStep=13);
}else{
(eGotoOpsStep=11);
}

if((((signed long)eTravLifPosGo==(signed long)1))){
(p_eLocalUSCommMod=((unsigned long)(&((*(p_eUSCommMod1))))));

(p_bLocalUSRdy=((unsigned long)(&bLocalUSRdy1)));
(p_bLocalUSGdRdy=((unsigned long)(&bLocalUSGdRdy1)));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct1)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat1))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus1))))));
(p_bLocalUSSMEMAUSRdy=((unsigned long)(&((*(p_bUSSMEMAUSRdy1))))));
(p_bLocalUSSMEMAGdBrdRdy=((unsigned long)(&((*(p_bUSSMEMAGdBrdRdy1))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting1))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart1))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop1))))));

(p_bLocalUSHermesUSRdy=((unsigned long)(&((*(p_bUSHermesUSRdy1))))));
(p_bLocalUSHermesUSGdRdy=((unsigned long)(&((*(p_bUSHermesUSGdRdy1))))));
(p_bLocalUSHermesTransporting=((unsigned long)(&((*(p_bUSHermesTransporting1))))));
(p_bLocalUSHermesStopTransport=((unsigned long)(&((*(p_bUSHermesStopTransport1))))));

(p_eStopperAct=((unsigned long)(&eStopperAct1)));
(p_eStopperStat=((unsigned long)(&((*(p_eStopperStat1))))));
(p_eStopperStatus=((unsigned long)(&((*(p_eStopperStatus1))))));
(p_bStopperBlk=((unsigned long)(&((*(p_bStopperBlk1))))));

}else if((((signed long)eTravLifPosGo==(signed long)2))){
(p_eLocalUSCommMod=((unsigned long)(&((*(p_eUSCommMod2))))));

(p_bLocalUSRdy=((unsigned long)(&bLocalUSRdy2)));
(p_bLocalUSGdRdy=((unsigned long)(&bLocalUSGdRdy2)));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct2)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat2))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus2))))));
(p_bLocalUSSMEMAUSRdy=((unsigned long)(&((*(p_bUSSMEMAUSRdy2))))));
(p_bLocalUSSMEMAGdBrdRdy=((unsigned long)(&((*(p_bUSSMEMAGdBrdRdy2))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting2))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart2))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop2))))));

(p_bLocalUSHermesUSRdy=((unsigned long)(&((*(p_bUSHermesUSRdy2))))));
(p_bLocalUSHermesUSGdRdy=((unsigned long)(&((*(p_bUSHermesUSGdRdy2))))));
(p_bLocalUSHermesTransporting=((unsigned long)(&((*(p_bUSHermesTransporting2))))));
(p_bLocalUSHermesStopTransport=((unsigned long)(&((*(p_bUSHermesStopTransport2))))));

(p_eStopperAct=((unsigned long)(&eStopperAct2)));
(p_eStopperStat=((unsigned long)(&((*(p_eStopperStat2))))));
(p_eStopperStatus=((unsigned long)(&((*(p_eStopperStatus2))))));
(p_bStopperBlk=((unsigned long)(&((*(p_bStopperBlk2))))));

}else if((((signed long)eTravLifPosGo==(signed long)3))){
(p_eLocalUSCommMod=((unsigned long)(&((*(p_eUSCommMod3))))));

(p_bLocalUSRdy=((unsigned long)(&bLocalUSRdy3)));
(p_bLocalUSGdRdy=((unsigned long)(&bLocalUSGdRdy3)));

(p_eLocalUSSMEMAAct=((unsigned long)(&eUSSMEMAAct3)));
(p_eLocalUSSMEMAStat=((unsigned long)(&((*(p_eUSSMEMAStat3))))));
(p_eLocalUSSMEMAStatus=((unsigned long)(&((*(p_eUSSMEMAStatus3))))));
(p_bLocalUSSMEMAUSRdy=((unsigned long)(&((*(p_bUSSMEMAUSRdy3))))));
(p_bLocalUSSMEMAGdBrdRdy=((unsigned long)(&((*(p_bUSSMEMAGdBrdRdy3))))));
(p_bLocalUSSMEMATransporting=((unsigned long)(&((*(p_bUSSMEMATransporting3))))));
(p_bLocalUSSMEMAConvStart=((unsigned long)(&((*(p_bUSSMEMAConvStart3))))));
(p_bLocalUSSMEMAConvStop=((unsigned long)(&((*(p_bUSSMEMAConvStop3))))));

(p_bLocalUSHermesUSRdy=((unsigned long)(&((*(p_bUSHermesUSRdy3))))));
(p_bLocalUSHermesUSGdRdy=((unsigned long)(&((*(p_bUSHermesUSGdRdy3))))));
(p_bLocalUSHermesTransporting=((unsigned long)(&((*(p_bUSHermesTransporting3))))));
(p_bLocalUSHermesStopTransport=((unsigned long)(&((*(p_bUSHermesStopTransport3))))));

(p_eStopperAct=((unsigned long)(&eStopperAct3)));
(p_eStopperStat=((unsigned long)(&((*(p_eStopperStat3))))));
(p_eStopperStatus=((unsigned long)(&((*(p_eStopperStatus3))))));
(p_bStopperBlk=((unsigned long)(&((*(p_bStopperBlk3))))));

}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(eTravLifPosGo=0);

(bPaused=((*(p_bStop))));
}

}break;case 13:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Rechecking Upstream Signal"; for(zzIndex=0; zzIndex<26l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bSkipCloseInletShutter=0);

if((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))){

(eGotoOpsStep=20);
}else if((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=12);
}else if((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))){
(eGotoOpsStep=14);
}else{
if((((unsigned long)(unsigned char)((*(p_bLocalUSRdy)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=14);
}else{
if((((signed long)((*(p_eULMod)))>=(signed long)6))){
(eGotoOpsStep=20);
}else{
(eGotoOpsStep=12);
}
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 14:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Opening Inlet Pneumatic"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eInletPneuAct=6);

if(((((signed long)((*(p_eInletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eInletPneuStat)))==(signed long)6)))){
(eInletPneuAct=0);


if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bInitInletPneu==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=18);
}else{
(eGotoOpsStep=12);
(bInitInletPneu=0);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 15:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Rechecking Upstream Signal Twice"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if((((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0)))&(((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))){


if((((unsigned long)(unsigned char)((*(p_bNonBffrMod)))==(unsigned long)(unsigned char)1))){
if((((*(p_bBypsGdBadBrd)))&(((tyParamTravLif.a_bDSDis[1-1]^1)&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if((((*(p_bLocalUSGdRdy)))&(((tyParamTravLif.a_bDSDis[1-1]^1)&(tyParamTravLif.a_bMagRej[1-1]^1)&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&(tyParamTravLif.a_bMagRej[2-1]^1)&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&(tyParamTravLif.a_bMagRej[3-1]^1)&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((((*(p_bLocalUSGdRdy))^1))&(((tyParamTravLif.a_bDSDis[1-1]^1)&tyParamTravLif.a_bMagRej[1-1]&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&tyParamTravLif.a_bMagRej[2-1]&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&tyParamTravLif.a_bMagRej[3-1]&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}
}else{
if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=18);
}else{
(eGotoOpsStep=12);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else{

if((((unsigned long)(unsigned char)((*(p_bLocalUSRdy)))==(unsigned long)(unsigned char)1))){


if((((unsigned long)(unsigned char)((*(p_bNonBffrMod)))==(unsigned long)(unsigned char)1))){
if((((*(p_bBypsGdBadBrd)))&(((tyParamTravLif.a_bDSDis[1-1]^1)&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if((((*(p_bLocalUSGdRdy)))&(((tyParamTravLif.a_bDSDis[1-1]^1)&(tyParamTravLif.a_bMagRej[1-1]^1)&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&(tyParamTravLif.a_bMagRej[2-1]^1)&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&(tyParamTravLif.a_bMagRej[3-1]^1)&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((((*(p_bLocalUSGdRdy))^1))&(((tyParamTravLif.a_bDSDis[1-1]^1)&tyParamTravLif.a_bMagRej[1-1]&bLocalDSRdy1)|((tyParamTravLif.a_bDSDis[2-1]^1)&tyParamTravLif.a_bMagRej[2-1]&bLocalDSRdy2)|((tyParamTravLif.a_bDSDis[3-1]^1)&tyParamTravLif.a_bMagRej[3-1]&bLocalDSRdy3)))){
(eGotoOpsStep=18);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}
}else{
if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=18);
}else{
(eGotoOpsStep=12);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else{

(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}

}



}break;case 16:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Checking Magazine Width"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbWidthChkSenOnTim.IN=((*(p_bMagWidthChkSenOn))));;TON(&fbWidthChkSenOnTim);
(fbWidthChkSenOffTim.IN=(((unsigned long)(unsigned char)((*(p_bMagWidthChkSenOn)))==(unsigned long)(unsigned char)0)));;TON(&fbWidthChkSenOffTim);
if(fbWidthChkSenOnTim.Q){
(eGotoOpsStep=18);
}else if(fbWidthChkSenOffTim.Q){
(eGotoOpsStep=35);
}


}break;case 17:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopper Unblock"; for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
((*(p_eStopperAct))=6);


if(((((signed long)((*(p_eStopperStatus)))==(signed long)1))&(((signed long)((*(p_eStopperStat)))==(signed long)6)))){

((*(p_eStopperAct))=0);
if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=18);
}else{
(eGotoOpsStep=12);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


}break;case 21:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopper Unblock"; for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
((*(p_eStopperAct))=5);


if(((((signed long)((*(p_eStopperStatus)))==(signed long)1))&(((signed long)((*(p_eStopperStat)))==(signed long)5)))){

((*(p_eStopperAct))=0);
if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&((*(p_bLifterAPosDiff))))){
if(((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1)))){
(eGotoOpsStep=20);
}else{
(eGotoOpsStep=18);
}
}else{
if(((((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))|(((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1)))){
(eGotoOpsStep=20);
}else{
(eGotoOpsStep=12);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 18:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating Upstream Machine"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(((*(p_eLocalUSCommMod)))){
case 0:{
((*(p_eLocalUSSMEMAAct))=1);

if((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)1))){
if(((*(p_bStopperBlk)))){
(eGotoOpsStep=17);
}else{
(eGotoOpsStep=19);
}

}else if(((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0))|((*(p_bConvHvBrd))))){
((*(p_eLocalUSSMEMAAct))=0);

if(((*(p_bStopperBlk)))){
(eGotoOpsStep=20);
}else{
(eGotoOpsStep=21);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))){
((*(p_eLocalUSSMEMAAct))=0);
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{

if((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))){
(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
((*(p_eLocalUSSMEMAAct))=0);
}

}else{

if(((((unsigned long)(unsigned char)((*(p_bLocalUSRdy)))==(unsigned long)(unsigned char)0))|((*(p_bConvHvBrd))))){
((*(p_eLocalUSSMEMAAct))=0);
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
((*(p_eLocalUSSMEMAAct))=0);
}
}

}

}

}break;case 1:{

if((((unsigned long)(unsigned char)((*(p_bLocalUSHermesTransporting)))==(unsigned long)(unsigned char)1))){
if(((*(p_bStopperBlk)))){
(eGotoOpsStep=17);
}else{
(eGotoOpsStep=19);
}
}else if(((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bUSAllow)))==(unsigned long)(unsigned char)0)))){

(eGotoOpsStep=21);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else if(((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))&((*(p_bConvHvBrd))))){
((*(p_eLocalUSSMEMAAct))=0);
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{

if((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))){
(bPaused=((*(p_bStop))));

}else{

if((((unsigned long)(unsigned char)((*(p_bLocalUSRdy)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}

}

}

}break;}

}break;case 19:{


if(((((signed long)((*(p_eConvDir)))==(signed long)0))|(((signed long)((*(p_eConvDir)))==(signed long)2)))){




if((((*(p_bConvLftSen)))|(((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2))))){
(bBrdOnSen=1);
}



if(((((unsigned long)(unsigned char)bBrdOnSen==(unsigned long)(unsigned char)0))&((((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2)))))){
(eGotoOpsStep=14);
}
if(bBrdOnSen){






if(((((*(p_bConvLftSen))^1))&(((((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2))))^1)&(((*(p_bInletPneuCls))^1))&((*(p_bConvRgtSen))))){
(eGotoOpsStep=20);
(eInletPneuAct=5);
}
}

}else{




if((((*(p_bConvRgtSen)))|(((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2))))){
(bBrdOnSen=1);
}



if(((((unsigned long)(unsigned char)bBrdOnSen==(unsigned long)(unsigned char)0))&((((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2)))))){
(eGotoOpsStep=14);
}
if(bBrdOnSen){






if(((((*(p_bConvRgtSen))^1))&(((((*(p_bConvLineAInletSen)))&(((signed long)eTravLifPosGo==(signed long)1)))|(((*(p_bConvLineBInletSen)))&(((signed long)eTravLifPosGo==(signed long)2))))^1)&(((*(p_bInletPneuCls))^1))&((*(p_bConvLftSen))))){
(eGotoOpsStep=20);
(eInletPneuAct=5);
}
}

}

switch(((*(p_eLocalUSCommMod)))){
case 0:{
if((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)0))){
(eConvAct=45);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)45)))){

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
(bBrdOnSen=0);
(eConvAct=0);
((*(p_eLocalUSSMEMAAct))=0);


if(((((unsigned long)(unsigned char)((*(p_bTravAPosDiff)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLifterAPosDiff)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=18);
}else{
(eGotoOpsStep=12);
}

}else if(((((unsigned long)(unsigned char)((*(p_bInletPneuCls)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)1)))){
(bBrdOnSen=0);
(eGotoOpsStep=20);
((*(p_eLocalUSSMEMAAct))=0);

}else{
(bBrdOnSen=0);
((*(p_eLocalUSSMEMAAct))=0);
(eConvAct=0);
(eGotoOpsStep=22);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else{

if(((*(p_bLocalUSSMEMAConvStart)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Entering Board"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eConvAct=7);
}

if(((*(p_bLocalUSSMEMAConvStop)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Stopping"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eConvAct=45);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}


if(((((signed long)((*(p_eLocalUSSMEMAStatus)))==(signed long)1))&(((signed long)((*(p_eLocalUSSMEMAStat)))==(signed long)1)))){



if(((((unsigned long)(unsigned char)((*(p_bInletPneuCls)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)1)))){
(bBrdOnSen=0);
(eGotoOpsStep=20);
}else{


if((((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)7)))&(((*(p_bConvClrSen))^1)))){
((*(p_eLocalUSSMEMAAct))=0);
(bBrdOnSen=0);
(eConvAct=0);
(eGotoOpsStep=22);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}

}
}

}break;case 1:{
if((((unsigned long)(unsigned char)((*(p_bLocalUSHermesTransporting)))==(unsigned long)(unsigned char)1))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Entering Board"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eConvAct=7);
}

if((((unsigned long)(unsigned char)((*(p_bLocalUSHermesStopTransport)))==(unsigned long)(unsigned char)1))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Stopping"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eConvAct=45);

if((((unsigned long)(unsigned char)((*(p_bInletPneuCls)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=20);
}
}

if((((unsigned long)(unsigned char)((*(p_bLocalUSHermesTransporting)))==(unsigned long)(unsigned char)0))){

if((((signed long)((*(p_eConvStat)))==(signed long)45))){

if((((signed long)((*(p_eConvStatus)))==(signed long)1))){
(bBrdOnSen=0);
(eConvAct=0);
(eGotoOpsStep=20);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else if((((signed long)((*(p_eConvStat)))==(signed long)7))){

if((((signed long)((*(p_eConvStatus)))==(signed long)1))){
if((((unsigned long)(unsigned char)((*(p_bInletPneuCls)))==(unsigned long)(unsigned char)0))){
(bBrdOnSen=0);
(eGotoOpsStep=20);
}else if((((*(p_bConvClrSen))^1))){
(bBrdOnSen=0);
(eConvAct=0);
(eGotoOpsStep=22);

}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}

}

}break;}

(tEntBoardTimoutErr.IN=((*(p_bConvClrSen))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=34);
}

}break;case 20:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Closing Inlet Pneumatic"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)(unsigned char)bConvInSenOn==(unsigned long)(unsigned char)0))|((*(p_bAWWidthPosDiff)))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1)))){
(eInletPneuAct=5);
(eStopperAct1=5);
(eStopperAct2=5);
(eStopperAct3=5);
}





if((((((signed long)((*(p_eInletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eInletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus1)))==(signed long)1))&(((signed long)((*(p_eStopperStat1)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus2)))==(signed long)1))&(((signed long)((*(p_eStopperStat2)))==(signed long)5)))&((((signed long)((*(p_eStopperStatus3)))==(signed long)1))&(((signed long)((*(p_eStopperStat3)))==(signed long)5))))){

(eInletPneuAct=0);
(eStopperAct1=0);
(eStopperAct2=0);
(eStopperAct3=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){
if(((((unsigned long)(unsigned char)((*(p_bAWWidthPosDiff)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bAWPushOrPullerWidthPosDiff)))==(unsigned long)(unsigned char)1)))){
(eGotoOpsStep=6);

}else{
(eGotoOpsStep=12);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{

if((((unsigned long)(unsigned char)bSkipCloseInletShutter==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=19);
}else{
(eGotoOpsStep=22);
}
}

}


(tEntBoardTimoutErr.IN=(bConvInSenOn&(((*(p_bDIInShutterCloseRS))^1))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=33);
}

}break;case 22:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Waiting For Downstream Signal"; for(zzIndex=0; zzIndex<29l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if((((unsigned long)(unsigned char)((*(p_bLinkProjLifterMagPlatform)))==(unsigned long)(unsigned char)0))){
(a_bPosAllwSigOn[1-1]=bLocalDSRdy1);
(a_bPosAllwSigOn[2-1]=bLocalDSRdy2);
(a_bPosAllwSigOn[3-1]=bLocalDSRdy3);
}else{
(a_bPosAllwSigOn[1-1]=((((signed long)(signed long)(short)((*(p_iLifterSltMoved)))==(signed long)(signed long)(short)1))|bLocalDSRdy1));
(a_bPosAllwSigOn[2-1]=((((signed long)(signed long)(short)((*(p_iLifterSltMoved)))==(signed long)(signed long)(short)2))|bLocalDSRdy2));
(a_bPosAllwSigOn[3-1]=((((signed long)(signed long)(short)((*(p_iLifterSltMoved)))==(signed long)(signed long)(short)3))|bLocalDSRdy3));
}




(a_tyMagAllwBffrStat[1-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat1))));
(a_tyMagAllwBffrStat[2-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat2))));
(a_tyMagAllwBffrStat[3-1]=*(struct tyBffrStat*)&((*(p_tyBufferStat3))));


if((((unsigned long)(unsigned char)a_bPosAllwSigOn[1-1]==(unsigned long)(unsigned char)1))){
(a_udiMagAllwMagPresentTm[1-1]=(unsigned long)((*(p_dtBufferMagPresentTm1))));
}else{
(a_udiMagAllwMagPresentTm[1-1]=((unsigned long)((*(p_dtBufferMagPresentTm1)))+2000000000));
}


if((((unsigned long)(unsigned char)a_bPosAllwSigOn[2-1]==(unsigned long)(unsigned char)1))){
(a_udiMagAllwMagPresentTm[2-1]=(unsigned long)((*(p_dtBufferMagPresentTm2))));
}else{
(a_udiMagAllwMagPresentTm[2-1]=((unsigned long)((*(p_dtBufferMagPresentTm2)))+2000000000));
}

if((((unsigned long)(unsigned char)a_bPosAllwSigOn[3-1]==(unsigned long)(unsigned char)1))){
(a_udiMagAllwMagPresentTm[3-1]=(unsigned long)((*(p_dtBufferMagPresentTm3))));
}else{
(a_udiMagAllwMagPresentTm[3-1]=((unsigned long)((*(p_dtBufferMagPresentTm3)))+2000000000));
}


for((udiMagPresentTm=1);udiMagPresentTm<=3;udiMagPresentTm+=1){
(udiCount=3);

(udiCmpTm=a_udiMagAllwMagPresentTm[udiMagPresentTm-1]);

for((udiMagPresentTm1=1);udiMagPresentTm1<=3;udiMagPresentTm1+=1){
if((((unsigned long)a_udiMagAllwMagPresentTm[udiMagPresentTm1-1]<(unsigned long)udiCmpTm))){
(udiCount=(udiCount-1));
}
}imp14_endfor191_0:;

(a_udiMagAllwPriority[udiMagPresentTm-1]=udiCount);
}imp14_endfor190_0:;

(bGdChk=(((*(p_bConvGdBrd)))|((*(p_bBypsGdBadBrd)))));

__AS__MEMSET(((unsigned long)(&a_udiPosAllwSum)),0,12);

for((udi=1);udi<=3;udi+=1){


(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+a_udiMagAllwPriority[udi-1]));

if((((unsigned long)(unsigned char)tyParamTravLif.a_bDSDis[udi-1]==(unsigned long)(unsigned char)0))){
(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+1000));
}

if((((unsigned long)(unsigned char)a_bPosAllwSigOn[udi-1]==(unsigned long)(unsigned char)1))){
(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+2000));
}


if(((((unsigned long)(unsigned char)((*(p_bBypsGdBadBrd)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)tyParamTravLif.a_bMagRej[udi-1]==(unsigned long)(unsigned char)1)))){
(a_udiPosAllwSum[udi-1]=(a_udiPosAllwSum[udi-1]+6000));
}

}imp14_endfor193_0:;

(udiPosAllwGo=99);

for((udi=1);udi<=3;udi+=1){



if((((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)3003))&(((unsigned long)a_udiPosAllwSum[udi-1]<(unsigned long)6000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)9000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0)))|((((signed long)((*(p_eULMod)))>=(signed long)6))&((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)3000))&(((unsigned long)a_udiPosAllwSum[udi-1]<(unsigned long)6000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))))){

if((((unsigned long)udiPosAllwGo!=(unsigned long)99))){

if((((unsigned long)a_udiPosAllwSum[udi-1]>(unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]))){
(udiPosAllwGo=udi);
}
}else{
(udiPosAllwGo=udi);
}

}

}imp14_endfor197_0:;

if((((unsigned long)udiPosAllwGo==(unsigned long)99))){

for((udi=1);udi<=3;udi+=1){



if((((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)3000))&(((unsigned long)a_udiPosAllwSum[udi-1]<(unsigned long)6000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udi-1]>=(unsigned long)9000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0))))){
if((((unsigned long)udiPosAllwGo==(unsigned long)99))){
(udiPosAllwGo=udi);
}else{
(udiPosAllwGo=99);
goto imp14_endfor202_0;
}

}

}imp14_endfor202_0:;

}



if(((((unsigned long)(unsigned char)((*(p_bDSAllow)))==(unsigned long)(unsigned char)1))&(((unsigned long)udiPosAllwGo!=(unsigned long)99)))){
(eTravLifPosGo=(udiPosAllwGo+3));
(eGotoOpsStep=11);

if((((signed long)eTravLifPosGo==(signed long)4))){
(p_eLocalDSCommMod=((unsigned long)(&((*(p_eDSCommMod1))))));

(p_bLocalDSRdy=((unsigned long)(&bLocalDSRdy1)));

(p_eLocalDSSMEMAAct=((unsigned long)(&eDSSMEMAAct1)));
(p_eLocalDSSMEMAStat=((unsigned long)(&((*(p_eDSSMEMAStat1))))));
(p_eLocalDSSMEMAStatus=((unsigned long)(&((*(p_eDSSMEMAStatus1))))));
(p_bLocalDSSMEMADSRdy=((unsigned long)(&((*(p_bDSSMEMADSRdy1))))));
(p_bLocalDSSMEMAConvStart=((unsigned long)(&((*(p_bDSSMEMAConvStart1))))));

(p_bLocalDSHermesDSRdy=((unsigned long)(&((*(p_bDSHermesDSRdy1))))));
(p_bLocalDSHermesTransporting=((unsigned long)(&((*(p_bDSHermesTransporting1))))));
(p_bLocalDSHermesStopTransport=((unsigned long)(&((*(p_bDSHermesStopTransport1))))));


}else if((((signed long)eTravLifPosGo==(signed long)5))){
(p_eLocalDSCommMod=((unsigned long)(&((*(p_eDSCommMod2))))));

(p_bLocalDSRdy=((unsigned long)(&bLocalDSRdy2)));

(p_eLocalDSSMEMAAct=((unsigned long)(&eDSSMEMAAct2)));
(p_eLocalDSSMEMAStat=((unsigned long)(&((*(p_eDSSMEMAStat2))))));
(p_eLocalDSSMEMAStatus=((unsigned long)(&((*(p_eDSSMEMAStatus2))))));
(p_bLocalDSSMEMADSRdy=((unsigned long)(&((*(p_bDSSMEMADSRdy2))))));
(p_bLocalDSSMEMAConvStart=((unsigned long)(&((*(p_bDSSMEMAConvStart2))))));

(p_bLocalDSHermesDSRdy=((unsigned long)(&((*(p_bDSHermesDSRdy2))))));
(p_bLocalDSHermesTransporting=((unsigned long)(&((*(p_bDSHermesTransporting2))))));
(p_bLocalDSHermesStopTransport=((unsigned long)(&((*(p_bDSHermesStopTransport2))))));


}else if((((signed long)eTravLifPosGo==(signed long)6))){
(p_eLocalDSCommMod=((unsigned long)(&((*(p_eDSCommMod3))))));

(p_bLocalDSRdy=((unsigned long)(&bLocalDSRdy3)));

(p_eLocalDSSMEMAAct=((unsigned long)(&eDSSMEMAAct3)));
(p_eLocalDSSMEMAStat=((unsigned long)(&((*(p_eDSSMEMAStat3))))));
(p_eLocalDSSMEMAStatus=((unsigned long)(&((*(p_eDSSMEMAStatus3))))));
(p_bLocalDSSMEMADSRdy=((unsigned long)(&((*(p_bDSSMEMADSRdy3))))));
(p_bLocalDSSMEMAConvStart=((unsigned long)(&((*(p_bDSSMEMAConvStart3))))));

(p_bLocalDSHermesDSRdy=((unsigned long)(&((*(p_bDSHermesDSRdy3))))));
(p_bLocalDSHermesTransporting=((unsigned long)(&((*(p_bDSHermesTransporting3))))));
(p_bLocalDSHermesStopTransport=((unsigned long)(&((*(p_bDSHermesStopTransport3))))));


}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(eTravLifPosGo=0);

(bPaused=((*(p_bStop))));
}

(tEntBoardTimoutErr.IN=((*(p_bConvClrSen))));;TON(&tEntBoardTimoutErr);
if(tEntBoardTimoutErr.Q){
(eGotoOpsStep=34);
}

}break;case 23:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Rechecking Downstream Signal"; for(zzIndex=0; zzIndex<28l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};




















if((((unsigned long)(unsigned char)((*(p_bDSAllow)))==(unsigned long)(unsigned char)0))){
(eGotoOpsStep=22);
}
else if((((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)8000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0))))){

(eGotoOpsStep=24);
}else{
if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)1))){
if((bBypCurtainSenCtrl&((*(p_bCurtainSenPrep))))){
(eGotoOpsStep=24);
}else{
if((((*(p_bMagWidthChkDis))^1))){
(eGotoOpsStep=26);
}else{
(eGotoOpsStep=27);
}
}
}else{
(eGotoOpsStep=22);
}
}


(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 24:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Opening Outlet Pneumatic"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((*(p_bLinkProjLifterMagPlatform))^1))&(((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0)))^1))){
if((((signed long)eTravLifPosGo==(signed long)4))){
(eOutletPneuAct=6);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eOutletPneuAct2=6);
(eOutletPneuAct=5);
(eOutletPneuAct3=5);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eOutletPneuAct3=6);
(eOutletPneuAct=5);
(eOutletPneuAct2=5);
}






if(((((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)6)))&((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))|(((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)6)))&((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))|(((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)6)))&((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);


if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)1))){
if((((*(p_bMagWidthChkDis))^1))){
(eGotoOpsStep=26);
}else{
(eGotoOpsStep=27);
}
}else{
(eGotoOpsStep=22);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}else{
if((((signed long)eTravLifPosGo==(signed long)4))){
(eOutletPneuAct=6);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eOutletPneuAct=6);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eOutletPneuAct=6);
}
if(((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)6)))){

(eOutletPneuAct=0);


if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)1))){
if((((*(p_bMagWidthChkDis))^1))){
(eGotoOpsStep=26);
}else{
(eGotoOpsStep=27);
}
}else{
(eGotoOpsStep=22);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}




}break;case 25:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Rechecking Downstream Signal Twice"; for(zzIndex=0; zzIndex<34l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)(unsigned char)((*(p_bDSAllow)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bConvOutSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=29);
}
else if((((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)8000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0))))){

if((((*(p_bMagWidthChkDis))^1))){
(eGotoOpsStep=26);
}else{
(eGotoOpsStep=27);
}
}else{
if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)1))){
if((((*(p_bMagWidthChkDis))^1))){
(eGotoOpsStep=26);
}else{
(eGotoOpsStep=27);
}
}else{
(eGotoOpsStep=29);
}
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));


}break;case 26:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Checking Magazine Width"; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};













if(((((((((signed long)((*(p_diMinSlt)))==(signed long)((*(p_diBuffer1NxtLoadSlt)))))&(((*(p_bTopToBtm))^1)))|((((signed long)((*(p_diMaxSlt)))==(signed long)((*(p_diBuffer1NxtLoadSlt)))))&((*(p_bTopToBtm)))))&(((signed long)eTravLifPosGo==(signed long)4)))|((((((signed long)((*(p_diMinSlt)))==(signed long)((*(p_diBuffer2NxtLoadSlt)))))&(((*(p_bTopToBtm))^1)))|((((signed long)((*(p_diMaxSlt)))==(signed long)((*(p_diBuffer2NxtLoadSlt)))))&((*(p_bTopToBtm)))))&(((signed long)eTravLifPosGo==(signed long)5)))|((((((signed long)((*(p_diMinSlt)))==(signed long)((*(p_diBuffer3NxtLoadSlt)))))&(((*(p_bTopToBtm))^1)))|((((signed long)((*(p_diMaxSlt)))==(signed long)((*(p_diBuffer3NxtLoadSlt)))))&((*(p_bTopToBtm)))))&(((signed long)eTravLifPosGo==(signed long)6))))&(((unsigned long)(unsigned char)bMagWidthChk==(unsigned long)(unsigned char)0)))){

(bMagWidthChk=1);
}



if((bMagWidthChk&((((*(p_bDIOutShutterOpenRS)))&(((signed long)eTravLifPosGo==(signed long)4)))|(((*(p_bDIOutShutterOpenRS2)))&(((signed long)eTravLifPosGo==(signed long)5)))|(((*(p_bDIOutShutterOpenRS3)))&(((signed long)eTravLifPosGo==(signed long)6)))))){


switch(usiMagWidthChkStep){
case 10:{
if(((*(p_bTopToBtm)))){
if((((signed long)eTravLifPosGo==(signed long)4))){
(eLifAct=9);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eLifAct=12);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eLifAct=15);
}

if((((((signed long)((*(p_eLifStat)))==(signed long)9))|(((signed long)((*(p_eLifStat)))==(signed long)12))|(((signed long)((*(p_eLifStat)))==(signed long)15)))&(((signed long)((*(p_eLifStatus)))==(signed long)1)))){
(eLifAct=0);

(usiMagWidthChkStep=0);
}
}else{
(usiMagWidthChkStep=0);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 0:{
if((((*(p_bMagWidthChkSenOn))^1))){

(bTravGoToChkPt=1);
(usiMagWidthChkStep=1);
}else{
(eGotoOpsStep=35);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 1:{
if((((signed long)eTravLifPosGo==(signed long)4))){
(eTravAct=4);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eTravAct=5);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eTravAct=6);
}

if((((((signed long)((*(p_eTravStat)))==(signed long)4))|(((signed long)((*(p_eTravStat)))==(signed long)5))|(((signed long)((*(p_eTravStat)))==(signed long)6)))&(((signed long)((*(p_eTravStatus)))==(signed long)1)))){
(eTravAct=0);
(bTravGoToChkPt=0);

if(((*(p_bMagWidthChkSenOn)))){
(usiMagWidthChkStep=2);
}else{
(eGotoOpsStep=35);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 2:{
if((((signed long)eTravLifPosGo==(signed long)4))){
(eTravAct=4);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eTravAct=5);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eTravAct=6);
}

if((((((signed long)((*(p_eTravStat)))==(signed long)4))|(((signed long)((*(p_eTravStat)))==(signed long)5))|(((signed long)((*(p_eTravStat)))==(signed long)6)))&(((signed long)((*(p_eTravStatus)))==(signed long)1)))){
(eTravAct=0);

(usiMagWidthChkStep=3);


(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}
}break;case 3:{

(fbWidthChkSenOnTim.IN=((*(p_bMagWidthChkSenOn))));;TON(&fbWidthChkSenOnTim);

if((((*(p_bMagWidthChkSenOn))^1))){
(usiMagWidthChkStep=4);


}else{
if(fbWidthChkSenOnTim.Q){
(eGotoOpsStep=35);
}
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}break;case 4:{
if((((signed long)eTravLifPosGo==(signed long)4))){
(eLifAct=9);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(eLifAct=12);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(eLifAct=15);
}

if((((((signed long)((*(p_eLifStat)))==(signed long)9))|(((signed long)((*(p_eLifStat)))==(signed long)12))|(((signed long)((*(p_eLifStat)))==(signed long)15)))&(((signed long)((*(p_eLifStatus)))==(signed long)1)))){
(eLifAct=0);
(usiMagWidthChkStep=10);
(bMagWidthChk=0);
(eGotoOpsStep=27);

}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;}

}else{
(eGotoOpsStep=27);
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}break;case 27:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Communicating Downstream Machine"; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(((*(p_eLocalDSCommMod)))){
case 0:{
((*(p_eLocalDSSMEMAAct))=1);

if((((unsigned long)(unsigned char)((*(p_bLocalDSSMEMAConvStart)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=28);

}else if(((((unsigned long)(unsigned char)((*(p_bDSAllow)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bConvOutSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0)))){
((*(p_eLocalDSSMEMAAct))=0);
(eGotoOpsStep=29);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{


if((((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)8000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0))))){

(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
((*(p_eLocalDSSMEMAAct))=0);
}

}else{

if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)0))){
((*(p_eLocalDSSMEMAAct))=0);
if(((((unsigned long)(unsigned char)bConvOutSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=29);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));

if((((unsigned long)(unsigned char)bPaused==(unsigned long)(unsigned char)1))){
((*(p_eLocalDSSMEMAAct))=0);
}
}

}

}

}break;case 1:{
if((((unsigned long)(unsigned char)((*(p_bLocalDSHermesTransporting)))==(unsigned long)(unsigned char)1))){
(eGotoOpsStep=28);

}else if(((((unsigned long)(unsigned char)((*(p_bDSAllow)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bConvOutSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=29);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}else{


if((((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)2000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)1)))|((((unsigned long)a_udiPosAllwSum[udiPosAllwGo-1]<(unsigned long)8000))&(((unsigned long)(unsigned char)bGdChk==(unsigned long)(unsigned char)0))))){

(bPaused=((*(p_bStop))));

}else{

if((((unsigned long)(unsigned char)((*(p_bLocalDSRdy)))==(unsigned long)(unsigned char)0))){
if(((((unsigned long)(unsigned char)bConvOutSenOn==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0)))){
(eGotoOpsStep=29);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}else{
(bPaused=((*(p_bStop))));
}

}

}

}break;}

}break;case 28:{






(bSkipCloseInletShutter=0);

switch(((*(p_eLocalDSCommMod)))){

case 0:{

if((((unsigned long)(unsigned char)((*(p_bLocalDSSMEMAConvStart)))==(unsigned long)(unsigned char)1))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Exiting Board"; for(zzIndex=0; zzIndex<29l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eConvAct=19);
}

if(((((signed long)((*(p_eLocalDSSMEMAStatus)))==(signed long)1))&(((signed long)((*(p_eLocalDSSMEMAStat)))==(signed long)1)))){


if((((*(p_bPshrConvPshrRetSlwSen)))&((((*(p_bConvClrSen)))|((*(p_bConvRgtSen))))^1)&((((*(p_bStop)))|((*(p_bStep))))^1))){
(eGotoOpsStep=29);
((*(p_eLocalDSSMEMAAct))=0);
}else if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)19)))){
(eConvAct=0);
(eGotoOpsStep=29);
((*(p_eLocalDSSMEMAAct))=0);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}

(tExitBoardTimoutErr.IN=(bConvOutSenOn|(((*(p_bConvClrSen)))|((*(p_bConvRgtSen))))));;TON(&tExitBoardTimoutErr);
if(tExitBoardTimoutErr.Q){
(eGotoOpsStep=32);
}
}

}break;case 1:{
if((((unsigned long)(unsigned char)((*(p_bLocalDSHermesTransporting)))==(unsigned long)(unsigned char)1))){

if((((unsigned long)(unsigned char)((*(p_bLocalDSHermesStopTransport)))==(unsigned long)(unsigned char)1))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Stopping"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eConvAct=46);
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Pusher Conveyor Exiting Board"; for(zzIndex=0; zzIndex<29l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eConvAct=19);
}

}else{

if((((unsigned long)(unsigned char)((*(p_bLocalDSHermesStopTransport)))==(unsigned long)(unsigned char)1))){

(eConvAct=46);

if((((*(p_bPshrConvPshrRetSlwSen)))&((((*(p_bStop)))|((*(p_bStep))))^1))){
(eGotoOpsStep=29);
}else if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)46)))){
(eConvAct=0);
(eGotoOpsStep=29);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else{

(eConvAct=19);
if((((*(p_bPshrConvPshrRetSlwSen)))&((((*(p_bStop)))|((*(p_bStep))))^1))){
(eGotoOpsStep=29);
}else if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)19)))){
(eConvAct=0);
(eGotoOpsStep=29);

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}

}

}break;}


if((((*(p_bMagTransferBrd1)))&(((*(p_bBufferMagDet1))^1)))){
(eGotoOpsStep=31);
}else if((((*(p_bMagTransferBrd2)))&(((*(p_bBufferMagDet2))^1)))){
(eGotoOpsStep=31);
}else if((((*(p_bMagTransferBrd3)))&(((*(p_bBufferMagDet3))^1)))){
(eGotoOpsStep=31);
}

}break;case 29:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Closing Outlet Pneumatic"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};



if(((bBypCurtainSenCtrl&((*(p_bCurtainSenPrep))))|((((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut2Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bNtParamProjOutletShut3Prep)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bCurtainSenPrep)))==(unsigned long)(unsigned char)0))))){



(fbWaitTimer.IN=1);;(fbWaitTimer.PT=((*(p_tShutterWaitTmr))));;TON(&fbWaitTimer);
if(fbWaitTimer.Q){
if(((((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0))&(((*(p_bDIPusherRetRS)))|((*(p_bPshrConvPshrRetSlwSen)))))){
(eOutletPneuAct=5);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);
}
}




if((((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

(fbWaitTimer.IN=0);;TON(&fbWaitTimer);
if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){

(eGotoOpsStep=20);
}else{
(eGotoOpsStep=22);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));
}

}else{

if(((*(p_bLinkProjLifterMagPlatform)))){

if(((((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0))&((*(p_bDIPusherRetRS))))){
(eOutletPneuAct=5);
(eOutletPneuAct2=5);
(eOutletPneuAct3=5);
}



if((((((signed long)((*(p_eOutletPneuStatus)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus2)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat2)))==(signed long)5)))&((((signed long)((*(p_eOutletPneuStatus3)))==(signed long)1))&(((signed long)((*(p_eOutletPneuStat3)))==(signed long)5))))){

(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);

if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){

(eGotoOpsStep=20);
}else{
(eGotoOpsStep=22);
}
}
}else{
if((((unsigned long)(unsigned char)((*(p_bConvHvBrd)))==(unsigned long)(unsigned char)0))){

(eGotoOpsStep=20);
}else{
(eGotoOpsStep=22);
}
if(((((unsigned long)(unsigned char)((*(p_bConvClrSen)))==(unsigned long)(unsigned char)0))&(((*(p_bDIPusherRetRS)))|((*(p_bPshrConvPshrRetSlwSen)))))){
(eOutletPneuAct=((unsigned char)(((((signed long)eTravLifPosGo==(signed long)4))&((*(p_tyBufferStat1)).bBffrFull))&1)*5));
(eOutletPneuAct2=((unsigned char)(((((signed long)eTravLifPosGo==(signed long)5))&((*(p_tyBufferStat2)).bBffrFull))&1)*5));
(eOutletPneuAct3=((unsigned char)(((((signed long)eTravLifPosGo==(signed long)6))&((*(p_tyBufferStat3)).bBffrFull))&1)*5));
}
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}


(tExitBoardTimoutErr.IN=((bConvOutSenOn|((*(p_bConvClrSen))))&(((*(p_bDIOutShutterCloseRS))^1))));;TON(&tExitBoardTimoutErr);
if(tExitBoardTimoutErr.Q){
(eGotoOpsStep=32);
}




}break;case 31:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopping Pusher Conveyor"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eConvAct=46);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)46)))){
(eConvAct=0);

(eStatus=3);
(udiStatus=10000);
}

}break;case 32:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopping Pusher Conveyor"; for(zzIndex=0; zzIndex<24l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tExitBoardTimoutErr.IN=0);;TON(&tExitBoardTimoutErr);
(eConvAct=46);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)46)))){
(eConvAct=0);

(eStatus=3);
(udiStatus=10001);
}

}break;case 33:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopping Conveyor"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tEntBoardTimoutErr.IN=0);;TON(&tEntBoardTimoutErr);
(eConvAct=45);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)45)))){
(eConvAct=0);

(eStatus=3);
(udiStatus=10002);
}

}break;case 34:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Stopping Conveyor"; for(zzIndex=0; zzIndex<17l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tEntBoardTimoutErr.IN=0);;TON(&tEntBoardTimoutErr);
(eConvAct=45);

if(((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)45)))){
(eConvAct=0);

(eStatus=3);
(udiStatus=10003);
}

}break;case 35:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Width Detection Failed"; for(zzIndex=0; zzIndex<31l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eStatus=3);
(udiStatus=10004);

}break;case 36:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Board Stuck in Middle of the Conveyor "; for(zzIndex=0; zzIndex<38l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eStatus=3);
(udiStatus=10008);

}break;case 37:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Anti Crash sensor activated before Traversing"; for(zzIndex=0; zzIndex<45l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(eStatus=3);
(udiStatus=10012);
}break;}

}

}

(bInitConv=(((signed long)eOpsStep==(signed long)1)));
(bOpsInitDone=(((signed long)eOpsStep>(signed long)5)));
(bUSComm=(((signed long)eOpsStep==(signed long)18)));
(bEntBrd=(((signed long)eOpsStep==(signed long)19)));
(bDSComm=(((signed long)eOpsStep==(signed long)27)));
(bExitBrd=(((signed long)eOpsStep==(signed long)28)));
(bTravLifMove=(((signed long)eOpsStep==(signed long)11)));


(bAllwExitMag1=(((((signed long)((*(p_eConvStatus)))!=(signed long)2))&(((*(p_bConvHvBrd))^1)))|(((*(p_bConvHvBrd)))&((((signed long)eTravLifPosGo==(signed long)5))|(((signed long)eTravLifPosGo==(signed long)6))))));
(bAllwExitMag2=(((((signed long)((*(p_eConvStatus)))!=(signed long)2))&(((*(p_bConvHvBrd))^1)))|(((*(p_bConvHvBrd)))&((((signed long)eTravLifPosGo==(signed long)4))|(((signed long)eTravLifPosGo==(signed long)6))))));
(bAllwExitMag3=(((((signed long)((*(p_eConvStatus)))!=(signed long)2))&(((*(p_bConvHvBrd))^1)))|(((*(p_bConvHvBrd)))&((((signed long)eTravLifPosGo==(signed long)4))|(((signed long)eTravLifPosGo==(signed long)5))))));






if((((*(p_bOpConPrep)))&((*(p_bLinkOpConEn))))){
__AS__Action__Act_OpsOpCon();
}
if(((*(p_bInletStopperPrep)))){
__AS__Action__Act_OpsStopper();
}

__AS__Action__Act_OpsScanner();



}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_OpsMod.st"
static void __AS__Action__Act_OpsMod(void){
{
switch(((*(p_eULMag)))){

case 0:{

switch(((*(p_eULMod)))){
case 0:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 1:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=1);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 2:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 3:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=2);
(tyParamTravLif.a_usiDSPriority[2-1]=1);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 4:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=2);
(tyParamTravLif.a_usiDSPriority[2-1]=1);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 5:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=2);
(tyParamTravLif.a_usiDSPriority[2-1]=1);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=1);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 6:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

if(((((unsigned long)(unsigned char)((*(p_bUSSMEMAConvStart1)))==(unsigned long)(unsigned char)1))|(((signed long)eTravLifPosGo==(signed long)1)))){
(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
}else if(((((unsigned long)(unsigned char)((*(p_bUSSMEMAConvStart2)))==(unsigned long)(unsigned char)1))|(((signed long)eTravLifPosGo==(signed long)2)))){
(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
}

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 7:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=1);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 8:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=1);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;}

}break;case 1:{

switch(((*(p_eULMod)))){
case 0:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 1:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=1);

}break;case 2:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=1);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=1);
(tyParamTravLif.a_usiUSPriority[2-1]=2);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 3:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=3);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=1);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 4:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=3);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=1);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 5:{
(tyParamTravLif.a_bUSDis[1-1]=1);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[1-1]=2);
(tyParamTravLif.a_usiUSPriority[2-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=3);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=1);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=1);

}break;case 6:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

if(((((unsigned long)(unsigned char)((*(p_bUSSMEMAConvStart1)))==(unsigned long)(unsigned char)1))|(((signed long)eTravLifPosGo==(signed long)1)))){
(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);

(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);
}else if(((((unsigned long)(unsigned char)((*(p_bUSSMEMAConvStart2)))==(unsigned long)(unsigned char)1))|(((signed long)eTravLifPosGo==(signed long)2)))){

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);



(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);
}

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;case 7:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=1);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=3);

(tyParamTravLif.a_bMagRej[1-1]=0);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=1);

}break;case 8:{
(tyParamTravLif.a_bUSDis[1-1]=0);
(tyParamTravLif.a_bUSDis[2-1]=0);
(tyParamTravLif.a_bUSDis[3-1]=1);
(tyParamTravLif.a_usiUSPriority[3-1]=3);


if(((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy1==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[1-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]+1));
}
}

if(((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[2-1]==(unsigned long)(unsigned char)3)))){
(tyParamTravLif.a_usiUSPriority[2-1]=(tyParamTravLif.a_usiUSPriority[2-1]-1));
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]!=(unsigned long)(unsigned char)3))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]-1));
}
}else if((((unsigned long)(unsigned char)bLocalUSRdy2==(unsigned long)(unsigned char)0))){
(tyParamTravLif.a_usiUSPriority[2-1]=3);
if((((unsigned long)(unsigned char)tyParamTravLif.a_usiUSPriority[1-1]<(unsigned long)(unsigned char)2))){
(tyParamTravLif.a_usiUSPriority[1-1]=(tyParamTravLif.a_usiUSPriority[1-1]+1));
}
}

(tyParamTravLif.a_bDSDis[1-1]=0);
(tyParamTravLif.a_bDSDis[2-1]=0);
(tyParamTravLif.a_bDSDis[3-1]=0);
(tyParamTravLif.a_usiDSPriority[1-1]=3);
(tyParamTravLif.a_usiDSPriority[2-1]=2);
(tyParamTravLif.a_usiDSPriority[3-1]=1);

(tyParamTravLif.a_bMagRej[1-1]=1);
(tyParamTravLif.a_bMagRej[2-1]=0);
(tyParamTravLif.a_bMagRej[3-1]=0);

}break;}

}break;}

{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_bMagDis; unsigned char* zzRValue=(unsigned char*)tyParamTravLif.a_bDSDis; for(zzIndex=0; zzIndex<3l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_bMagRej; unsigned char* zzRValue=(unsigned char*)tyParamTravLif.a_bMagRej; for(zzIndex=0; zzIndex<3l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};



}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_OpsRst.st"
static void __AS__Action__Act_OpsRst(void){
{
(eUSSMEMAAct1=0);
(eUSSMEMAAct2=0);
(eUSSMEMAAct3=0);
(eDSSMEMAAct1=0);
(eDSSMEMAAct2=0);
(eDSSMEMAAct3=0);
(eConvAct=0);
(eAWAct=0);
(eAWPushOrPullerAct=0);
(eTravAct=0);
(eLifAct=0);
(eInletPneuAct=0);
(eOutletPneuAct=0);
(eOutletPneuAct2=0);
(eOutletPneuAct3=0);
(bSkipCloseInletShutter=0);
(bTravLifInDSPos=0);
(usiMagWidthChkStep=10);
(bMagWidthChk=0);
(bTravGoToChkPt=0);
(bShut1Closed=0);
(bShut2Closed=0);
(bShut3Closed=0);
(bInitInletPneu=0);


(eTCPTopAct=0);
(eTCPBtmAct=0);
(fbReturnCodeTO.IN=0);;TON(&fbReturnCodeTO);
(fbIdleTm.IN=0);;TON(&fbIdleTm);
(bJamStarted=0);
(bPass=0);
if(((*(p_bScanEn)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)((*(p_sTopMsgRd))); plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)((*(p_sBtmMsgRd))); plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
(tyOpConMsgReq=0);

(bCmdUnclmpFlag=0);
(bWidthChkErrCmdUnclmp1=0);
(bWidthChkErrCmdUnclmp2=0);
(bWidthChkErrCmdUnclmp3=0);


(bStartScanSig=0);
(fbScanTimOut.IN=0);;TON(&fbScanTimOut);
(bPCBExitMag1=0);
(bPCBExitMag2=0);
(bPCBExitMag3=0);


(eTravLifPosGo=0);

}}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_LogStep.st"
static void __AS__Action__Act_LogStep(void){
{

if((bClsLog&~Edge0000800000&1?((Edge0000800000=bClsLog&1),1):((Edge0000800000=bClsLog&1),0))){
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
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Act_OpsCommSig.st"
static void __AS__Action__Act_OpsCommSig(void){
{if((((unsigned long)(unsigned char)bSelfTest==(unsigned long)(unsigned char)0))){

if((((signed long)((*(p_eUSCommMod1)))==(signed long)1))){
(bLocalUSRdy1=((*(p_bUSHermesUSRdy1))));
(bLocalUSGdRdy1=((*(p_bUSHermesUSGdRdy1))));
}else{
(bLocalUSRdy1=((*(p_bUSSMEMAUSRdy1))));
(bLocalUSGdRdy1=((*(p_bUSSMEMAGdBrdRdy1))));
}

if((((signed long)((*(p_eUSCommMod2)))==(signed long)1))){
(bLocalUSRdy2=((*(p_bUSHermesUSRdy2))));
(bLocalUSGdRdy2=((*(p_bUSHermesUSGdRdy2))));
}else{
(bLocalUSRdy2=((*(p_bUSSMEMAUSRdy2))));
(bLocalUSGdRdy2=((*(p_bUSSMEMAGdBrdRdy2))));
}

if((((signed long)((*(p_eUSCommMod3)))==(signed long)1))){
(bLocalUSRdy3=((*(p_bUSHermesUSRdy3))));
(bLocalUSGdRdy3=((*(p_bUSHermesUSGdRdy3))));
}else{
(bLocalUSRdy3=((*(p_bUSSMEMAUSRdy3))));
(bLocalUSGdRdy3=((*(p_bUSSMEMAGdBrdRdy3))));
}


if((((signed long)((*(p_eDSCommMod1)))==(signed long)1))){
(bLocalDSRdy1=((*(p_bDSHermesDSRdy1))));
}else{
(bLocalDSRdy1=((*(p_bDSSMEMADSRdy1))));
}

if((((signed long)((*(p_eDSCommMod2)))==(signed long)1))){
(bLocalDSRdy2=((*(p_bDSHermesDSRdy2))));
}else{
(bLocalDSRdy2=((*(p_bDSSMEMADSRdy2))));
}

if((((signed long)((*(p_eDSCommMod3)))==(signed long)1))){
(bLocalDSRdy3=((*(p_bDSHermesDSRdy3))));
}else{
(bLocalDSRdy3=((*(p_bDSSMEMADSRdy3))));
}

}else{
if((((signed long)eGotoOpsStep==(signed long)12))){

(bLocalUSRdy1=1);

}else if(((((signed long)eGotoOpsStep==(signed long)19))&((*(p_bConvHvBrd))))){
(bLocalUSRdy1=0);
(bLocalUSRdy2=0);
(bLocalUSRdy3=0);
}

if((((signed long)((*(p_eDSCommMod1)))==(signed long)1))){
(bLocalDSRdy1=((*(p_bDSHermesDSRdy1))));
}else{
(bLocalDSRdy1=((*(p_bDSSMEMADSRdy1))));
}

if((((signed long)((*(p_eDSCommMod2)))==(signed long)1))){
(bLocalDSRdy2=((*(p_bDSHermesDSRdy2))));
}else{
(bLocalDSRdy2=((*(p_bDSSMEMADSRdy2))));
}

if((((signed long)((*(p_eDSCommMod3)))==(signed long)1))){
(bLocalDSRdy3=((*(p_bDSHermesDSRdy3))));
}else{
(bLocalDSRdy3=((*(p_bDSSMEMADSRdy3))));
}
}
}imp9_end10_0:imp9_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Modular/Act_OpsStopper.st"
static void __AS__Action__Act_OpsStopper(void){
{


if(((((signed long)eOpsStep!=(signed long)18))&(((signed long)eOpsStep!=(signed long)1))&(((signed long)eOpsStep!=(signed long)19))&(((signed long)eOpsStep!=(signed long)17)))){
if(((*(p_bStopperUnBlkCtrl)))){
(eInletStopperAct=5);
}
}
if((((signed long)eOpsStep==(signed long)18))){
if(((((unsigned long)(unsigned char)((*(p_bStopperUnBlkCtrl)))==(unsigned long)(unsigned char)0))&((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bLocalUSHermesTransporting)))==(unsigned long)(unsigned char)1))))){
(eInletStopperAct=6);
}else if(((((unsigned long)(unsigned char)((*(p_bStopperUnBlkCtrl)))==(unsigned long)(unsigned char)1))&((((unsigned long)(unsigned char)((*(p_bLocalUSSMEMATransporting)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLocalUSHermesTransporting)))==(unsigned long)(unsigned char)0))))){
(eInletStopperAct=5);
}
}
if(((((signed long)eOpsStep==(signed long)1))|(((signed long)eOpsStep==(signed long)19)))){
if((~((*(p_bDIInletStopperASen)))&Edge0001600000&1?((Edge0001600000=((*(p_bDIInletStopperASen)))&1),1):((Edge0001600000=((*(p_bDIInletStopperASen)))&1),0))){
(bBrdOnStopperSen=1);
}
(fbInletStopperOffTim.IN=bBrdOnStopperSen);;(fbInletStopperOffTim.PT=(plctime)((*(p_diMcParamInStprExtDelayTm))));;TON(&fbInletStopperOffTim);

if((((*(p_bConvLftSen)))|((*(p_bConvRgtSen))))){
(bStopperBrdOnSen=1);
}

if(bStopperBrdOnSen){
if((((*(p_bConvLftSen))^1))){
(eInletStopperAct=5);
}
}
if(bBrdOnStopperSen){
if(fbInletStopperOffTim.Q){
(eInletStopperAct=5);
}
}
}


if(((*(p_bStopperUnBlkCtrl)))){
if(((((signed long)((*(p_eInletStopperStatus)))==(signed long)1))&(((signed long)((*(p_eInletStopperStat)))==(signed long)6)))){
(eInletStopperAct=0);
}
}

if((((unsigned long)(unsigned char)((*(p_bStopperUnBlkCtrl)))==(unsigned long)(unsigned char)0))){
if(((((signed long)((*(p_eInletStopperStatus)))==(signed long)1))&(((signed long)((*(p_eInletStopperStat)))==(signed long)5)))){
(eInletStopperAct=0);
}
(bStopperBrdOnSen=0);
(bBrdOnStopperSen=0);
(fbInletStopperOffTim.IN=0);;TON(&fbInletStopperOffTim);
}

}imp16_else13_0:imp16_end13_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Modular/Act_OpsOpCon.st"
static void __AS__Action__Act_OpsOpCon(void){
{

((*(p_bPass))=(((signed long)(signed long)(short)((*(p_tyPartReceiveRetCode)).tyData.iReturnCode)==(signed long)(signed long)(short)0)));
if((((signed long)eGotoOpsStep==(signed long)eOpsStep))){
switch(eOpsStep){
case 7:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Scanning In Progress"; for(zzIndex=0; zzIndex<20l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
if((((*(p_bConvHvBrd)))&((*(p_bConvRgtSen))))){
(eTCPTopAct=2);
(eTCPBtmAct=2);
}


if((((((signed long)((*(p_eTCPTopStatus)))==(signed long)1))&(((signed long)((*(p_eTCPTopStat)))==(signed long)2)))|((((signed long)((*(p_eTCPBtmStatus)))==(signed long)1))&(((signed long)((*(p_eTCPBtmStat)))==(signed long)2))))){
if((((__AS__STRING_CMP(((*(p_sTopMsgRd))),"NOREAD\r\n")==0))&((__AS__STRING_CMP(((*(p_sBtmMsgRd))),"NOREAD\r\n")==0)))){
(eStatus=3);
(udiStatus=10006);
}else if(((((__AS__STRING_CMP(((*(p_sTopMsgRd))),"NOREAD\r\n")==0))&(((unsigned long)(unsigned char)((*(p_bBtmScannerEn)))==(unsigned long)(unsigned char)0)))|(((__AS__STRING_CMP(((*(p_sBtmMsgRd))),"NOREAD\r\n")==0))&(((unsigned long)(unsigned char)((*(p_bTopScannerEn)))==(unsigned long)(unsigned char)0))))){
(eStatus=3);
(udiStatus=10006);
}else{
if((((__AS__STRING_CMP(((*(p_sTopMsgRd))),"")!=0))&((__AS__STRING_CMP(((*(p_sTopMsgRd))),"NOREAD\r\n")!=0)))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sBarcode; plcstring* zzRValue=(plcstring*)((*(p_sTopMsgRd))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eTCPTopAct=0);
(eTCPBtmAct=0);
(eGotoOpsStep=9);
}else if((((__AS__STRING_CMP(((*(p_sBtmMsgRd))),"")!=0))&((__AS__STRING_CMP(((*(p_sBtmMsgRd))),"NOREAD\r\n")!=0)))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sBarcode; plcstring* zzRValue=(plcstring*)((*(p_sBtmMsgRd))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eTCPTopAct=0);
(eTCPBtmAct=0);
(eGotoOpsStep=9);
}
}
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 8:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Retrieve Barcode"; for(zzIndex=0; zzIndex<16l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bHermesBC=1);
if((((__AS__STRING_CMP(((*(p_sTopBtmBarcode))[0]),"")!=0))&((__AS__STRING_CMP(((*(p_sTopBtmBarcode))[0]),"NOREAD")!=0)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sBarcode; plcstring* zzRValue=(plcstring*)((*(p_sTopBtmBarcode))[0]); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eGotoOpsStep=9);
((*(p_tyPartReceiveRetCode)).tyAvl.bReturnCode=0);
}else if((((__AS__STRING_CMP(((*(p_sTopBtmBarcode))[1]),"")!=0))&((__AS__STRING_CMP(((*(p_sTopBtmBarcode))[1]),"NOREAD")!=0)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sBarcode; plcstring* zzRValue=(plcstring*)((*(p_sTopBtmBarcode))[1]); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eGotoOpsStep=9);
((*(p_tyPartReceiveRetCode)).tyAvl.bReturnCode=0);
}else{
(eStatus=3);
(udiStatus=10006);
}
(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 9:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Wait Return Code"; for(zzIndex=0; zzIndex<16l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbReturnCodeTO.IN=1);;TON(&fbReturnCodeTO);
if((((*(p_bScanEn)))|bHermesBC)){
if((((*(p_bPass)))&((*(p_tyPartReceiveRetCode)).tyAvl.bReturnCode))){
(eGotoOpsStep=11);
(fbReturnCodeTO.IN=0);;TON(&fbReturnCodeTO);
{int zzIndex; plcstring* zzLValue=(plcstring*)((*(p_sTopBtmBarcode))[0]); plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)((*(p_sTopBtmBarcode))[1]); plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
else if((((*(p_tyPartReceiveRetCode)).tyAvl.bReturnCode)&((((signed long)(signed long)(short)((*(p_tyPartReceiveRetCode)).tyData.iReturnCode)==(signed long)(signed long)(short)-1))|(((signed long)(signed long)(short)((*(p_tyPartReceiveRetCode)).tyData.iReturnCode)==(signed long)(signed long)(short)-2))))){
(eStatus=3);
(udiStatus=10008);
}else if(fbReturnCodeTO.Q){
(eStatus=3);
(udiStatus=10007);
}
}else{
(eGotoOpsStep=11);
}

(bPaused=(((*(p_bStop)))|((*(p_bStep)))));

}break;case 10:{
{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)"Magazine Verifing Standby Step"; for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyOpConMsgReq=0);
(fbReturnCodeTO.IN=1);;TON(&fbReturnCodeTO);

if(((((signed long)(signed long)(short)((*(p_tyOpConPlcGrabRcvCode)).tyData.iReturnCode)==(signed long)(signed long)(short)0))&((*(p_tyOpConPlcGrabRcvCode)).tyAvl.bReturnCode))){
(eGotoOpsStep=11);
(bWaitMagChkRetCode=0);
(fbReturnCodeTO.IN=0);;TON(&fbReturnCodeTO);
((*(p_tyOpConPlcGrabRcvCode)).tyAvl.bReturnCode=0);
}
else if((((*(p_tyOpConPlcGrabRcvCode)).tyAvl.bReturnCode)&(((signed long)(signed long)(short)((*(p_tyOpConPlcGrabRcvCode)).tyData.iReturnCode)==(signed long)(signed long)(short)-1)))){
(eStatus=3);
(udiStatus=10010);
}else if(fbReturnCodeTO.Q){
(eStatus=3);
(udiStatus=10007);
}

}break;}
}

if((bJamStarted&((*(p_bConvHvBrd))))){
(bJamStarted=0);
(tyOpConMsgReq=9);
}else if(((((signed long)tyOpConMsgReq==(signed long)8))|(((signed long)tyOpConMsgReq==(signed long)9)))){
(tyOpConMsgReq=0);
(fbIdleTm.IN=0);;TON(&fbIdleTm);
}else if((((signed long)tyOpConMsgReq==(signed long)10))){
(tyOpConMsgReq=0);
}else if((((signed long)tyOpConMsgReq==(signed long)4))){
(tyOpConMsgReq=0);
}else if((((signed long)tyOpConMsgReq==(signed long)2))){
(tyOpConMsgReq=0);
}



((*(p_bPLCGrabPic))=(((*(p_MCUL1StepPLCGrab)))|((*(p_MCUL2StepPLCGrab)))|((*(p_MCUL3StepPLCGrab)))));

{int zzIndex; plcstring* zzLValue=(plcstring*)tyPartProcessedItems.tyData.sValue[0]; plcstring* zzRValue=(plcstring*)((*(p_sLinkProdRcpCurrRcp1Nm))); for(zzIndex=0; zzIndex<254l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(diTemp=((*(p_diLinkProdRcpCurrRcp1Pitch))));
dint2str(diTemp,tyPartProcessedItems.tyData.sValue[1],255);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyPartProcessedItems.tyData.sValue[2]; plcstring* zzRValue=(plcstring*)((*(p_sLinkMagRcpCurrRcpNm))); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((signed long)eOpsStep==(signed long)1))|((*(p_bPLCGrabPic))))){
(tyOpConMsgReq=10);
usint2str((unsigned char)(((*(p_bMagPresentSen1)))&1),asMagEntered[1],11);
usint2str((unsigned char)(((*(p_bMagPresentSen2)))&1),asMagEntered[2],11);
usint2str((unsigned char)(((*(p_bMagPresentSen3)))&1),asMagEntered[3],11);
if(((*(p_bPLCGrabPic)))){
(bWaitMagChkRetCode=1);
}
}else if((((signed long)eOpsStep==(signed long)28))){

if(((((signed long)((*(p_eLocalDSCommMod)))==(signed long)0))&((((signed long)((*(p_eLocalDSSMEMAStatus)))==(signed long)1))&(((signed long)((*(p_eLocalDSSMEMAStat)))==(signed long)1)))&((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)19))))){
(tyOpConMsgReq=4);
}
else if((((((signed long)((*(p_eLocalDSCommMod)))==(signed long)1))&(((unsigned long)(unsigned char)((*(p_bLocalDSHermesStopTransport)))==(unsigned long)(unsigned char)0)))&((((signed long)((*(p_eConvStatus)))==(signed long)1))&(((signed long)((*(p_eConvStat)))==(signed long)46))))){
(tyOpConMsgReq=4);
}
}else if((((signed long)eOpsStep==(signed long)18))){
if((((signed long)((*(p_eConvStat)))==(signed long)7))){
(fbIdleTm.IN=1);;TON(&fbIdleTm);
if(fbIdleTm.Q){
(fbIdleTm.IN=0);;TON(&fbIdleTm);
(bJamStarted=1);
(tyOpConMsgReq=8);
}
}
}else if(((((signed long)eOpsStep==(signed long)22))&(((signed long)eGotoOpsStep==(signed long)11)))){

(tyMagCoordinate.usiMagPos=(unsigned char)udiPosAllwGo);
}else if(((((signed long)eOpsStep==(signed long)11))&(((signed long)eGotoOpsStep==(signed long)23)))){

if(((*(p_bTopToBtm)))){
if((((signed long)eTravLifPosGo==(signed long)4))){
(diMagBrdQty[1-1]=((((signed long)(((((*(p_diMaxSlt)))-((*(p_diBuffer1NxtLoadSlt))))<0?-((((*(p_diMaxSlt)))-((*(p_diBuffer1NxtLoadSlt))))):(((*(p_diMaxSlt)))-((*(p_diBuffer1NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[1-1]);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(diMagBrdQty[2-1]=((((signed long)(((((*(p_diMaxSlt)))-((*(p_diBuffer2NxtLoadSlt))))<0?-((((*(p_diMaxSlt)))-((*(p_diBuffer2NxtLoadSlt))))):(((*(p_diMaxSlt)))-((*(p_diBuffer2NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[2-1]);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(diMagBrdQty[3-1]=((((signed long)(((((*(p_diMaxSlt)))-((*(p_diBuffer3NxtLoadSlt))))<0?-((((*(p_diMaxSlt)))-((*(p_diBuffer3NxtLoadSlt))))):(((*(p_diMaxSlt)))-((*(p_diBuffer3NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[3-1]);
}
}else{
if((((signed long)eTravLifPosGo==(signed long)4))){
(diMagBrdQty[1-1]=((((signed long)(((((*(p_diMinSlt)))-((*(p_diBuffer1NxtLoadSlt))))<0?-((((*(p_diMinSlt)))-((*(p_diBuffer1NxtLoadSlt))))):(((*(p_diMinSlt)))-((*(p_diBuffer1NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[1-1]);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(diMagBrdQty[2-1]=((((signed long)(((((*(p_diMinSlt)))-((*(p_diBuffer2NxtLoadSlt))))<0?-((((*(p_diMinSlt)))-((*(p_diBuffer2NxtLoadSlt))))):(((*(p_diMinSlt)))-((*(p_diBuffer2NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[2-1]);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(diMagBrdQty[3-1]=((((signed long)(((((*(p_diMinSlt)))-((*(p_diBuffer3NxtLoadSlt))))<0?-((((*(p_diMinSlt)))-((*(p_diBuffer3NxtLoadSlt))))):(((*(p_diMinSlt)))-((*(p_diBuffer3NxtLoadSlt)))))))/((signed long)(((*(p_diLinkProdRcpCurrRcp1Pitch))))))+1));
(tyMagCoordinate.usiMagSlot=(unsigned char)diMagBrdQty[3-1]);
}
}
usint2str(tyMagCoordinate.usiMagPos,tyPartProcessedItems.tyData.sValue[3],255);
usint2str(tyMagCoordinate.usiMagSlot,tyPartProcessedItems.tyData.sValue[4],255);
}else if((((((signed long)eOpsStep==(signed long)7))|(((signed long)eOpsStep==(signed long)8)))&(((signed long)eGotoOpsStep==(signed long)9)))){
(tyOpConMsgReq=2);
}



if((((signed long)eGotoOpsStep!=(signed long)eOpsStep))){
switch(eGotoOpsStep){
case 11:{
if((bWaitMagChkRetCode&(((signed long)eOpsStep!=(signed long)10))&(((signed long)eOpsStep!=(signed long)9)))){
(eGotoOpsStep=10);
}else if((((*(p_bScanEn)))&(((signed long)eOpsStep!=(signed long)9)))){
if(((*(p_bConvHvBrd)))){
(eGotoOpsStep=7);
}
}else if(((((signed long)eOpsStep!=(signed long)9))&(((signed long)((*(p_eLocalUSCommMod)))==(signed long)1)))){
if(((*(p_bConvHvBrd)))){
(eGotoOpsStep=8);
}
}
}break;}
}
}imp12_case20_0:imp12_endcase20_0:imp12_else19_0:imp12_end19_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Sequence/Modular/Act_OpsScanner.st"
static void __AS__Action__Act_OpsScanner(void){
{


(bScannerEn=(((((signed long)((*(p_tyNtParamDISettings)).diScanComplSig)!=(signed long)0))|(((signed long)((*(p_tyNtParamDOSettings)).diScanTrigSig)!=(signed long)0)))&((*(p_bMcParamDMCScannerEn)))));


(bSignalTrigMagOutEn=(((((signed long)((*(p_tyNtParamDOSettings)).diMag1ExitPCB)!=(signed long)0))|(((signed long)((*(p_tyNtParamDOSettings)).diMag2ExitPCB)!=(signed long)0))|(((signed long)((*(p_tyNtParamDOSettings)).diMag3ExitPCB)!=(signed long)0)))&((*(p_bMcParamDMCScannerEn)))));
if((bScannerEn|bSignalTrigMagOutEn)){
switch(eOpsStep){
case 30:{
(bStartScanSig=1);
(fbScanTimOut.IN=1);;(fbScanTimOut.PT=(plctime)((*(p_diMcParamDMCScanResponseTO))));;TON(&fbScanTimOut);
if(((*(p_bDIPCBScanComplSig)))){
(bStartScanSig=0);
(eGotoOpsStep=22);
(fbScanTimOut.IN=0);;TON(&fbScanTimOut);
}else if(fbScanTimOut.Q){
(bStartScanSig=0);
(fbScanTimOut.IN=0);;TON(&fbScanTimOut);
(eStatus=3);
(udiStatus=10011);
}
}break;case 28:{
if(bSignalTrigMagOutEn){
if((((signed long)eGotoOpsStep!=(signed long)28))){
(bPCBExitMag1=0);
(bPCBExitMag2=0);
(bPCBExitMag3=0);
}else if((((signed long)eTravLifPosGo==(signed long)4))){
(bPCBExitMag1=1);
}else if((((signed long)eTravLifPosGo==(signed long)5))){
(bPCBExitMag2=1);
}else if((((signed long)eTravLifPosGo==(signed long)6))){
(bPCBExitMag3=1);
}
}
}break;}





switch(eGotoOpsStep){
case 22:{



if(((((signed long)eOpsStep!=(signed long)30))&((((signed long)eOpsStep==(signed long)4))|(((signed long)eOpsStep==(signed long)19))|((((signed long)eOpsStep==(signed long)20))&bSkipCloseInletShutter))&bScannerEn)){
(eGotoOpsStep=30);
}

}break;}
}
}imp15_case5_0:imp15_endcase5_0:imp15_else0_0:imp15_end0_0:;}
#line 28 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsTravLif/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsTravLif/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Operations/OpsTravLifUL/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/OpsTravLif/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'logStep'\\n\"");
__asm__(".ascii \"plcdata_const 'a_udiPosAllwSum'\\n\"");
__asm__(".previous");
