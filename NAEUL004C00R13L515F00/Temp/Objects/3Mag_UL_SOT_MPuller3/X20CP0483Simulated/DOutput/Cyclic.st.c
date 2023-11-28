#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/DOutput/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.st"
void _CYCLIC __BUR__ENTRY_CYCLIC_FUNCT__(void){{

if((((unsigned long)(unsigned char)bInitDone==(unsigned long)(unsigned char)0))){
(bInitDone=1);

__AS__Action__Act_InitLocal();
__AS__Action__Act_InitGlobal();

}else if((((unsigned long)(unsigned char)bInitialDone==(unsigned long)(unsigned char)0))){
(bInitialDone=1);

__AS__Action__Act_Initial();

}else{

__AS__Action__Act_LinkAction();
__AS__Action__Act_Action();
__AS__Action__Act_Link();
__AS__Action__Act_Main();
__AS__Action__Act_Background();

}

}imp9_end0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkStartupRun=p_StartupRun);
(p_bLinkOpsRun=p_OpsRun);
(p_bLinkError=p_AlarmErr);
(p_eLinkAGVComProtocol=p_McParamAGVComProtocol);
(p_bLinkNtParamProjSOTSenPrep=p_NtParamProjSOTSenPrep);
(p_bLinkProjMagConvLane1Prep=p_NtParamProjMagConvLane1Prep);
(p_bLinkProjMagConvLane2Prep=p_NtParamProjMagConvLane2Prep);

(p_bLinkAGVCommRdy1=p_OpsAGVCommRdy1);
(p_bLinkAGVCommRdy2=p_OpsAGVCommRdy2);
(p_bLinkAGVCommRdy3=p_OpsAGVCommRdy3);

(p_bLinkOpsBypCurtainLED=p_OpsTravLifULBypCurtainLED);
(p_bLinkOpsBypCurtainSen=p_OpsTravLifULBypCurtainSenCtrl);


(p_eAct=p_UIDOAct);
(p_tyDOSettings=p_NtParamDOSettings);
(p_bManual=p_UIUIMnlMod);
(p_bSafetyRlyRst=p_RstErrSafetyRlyRst);
(p_bTLRed=p_TLBuzRed);
(p_bTLAmber=p_TLBuzAmber);
(p_bTLGreen=p_TLBuzGreen);
(p_bBuzzer=p_TLBuzBeep);
(p_bUSBA=p_USSMEMAAUSB);
(p_bUSBB=p_USSMEMABUSB);
(p_bOvenInfoSigA=p_OvenInfoAOvenAllow);
(p_bOvenInfoSigB=p_OvenInfoBOvenAllow);
(p_bPusherExtCtrl=p_PshrConvPshrExtCtrl);
(p_bStopperUnblkCtrlA=p_PneuNoSenStopperARetCtrl);
(p_bStopperUnblkCtrlB=p_PneuNoSenStopperBRetCtrl);

(p_bMag1RemoteClampCtrl=p_MagConv2Clp1RmtClprClampCtrl);

(p_bMag2RemoteClampCtrl=p_MagConv2Clp2RmtClprClampCtrl);
(p_bMag3FixedClampCtrl=p_MagConv2Clp3FixClprClampCtrl);
(p_bMag3RemoteClampCtrl=p_MagConv2Clp3RmtClprClampCtrl);
(p_bInShutterOpenCtrl=p_Pneu2SenInShutterRetCtrl);
(p_bInShutterCloseCtrl=p_Pneu2SenInShutterExtCtrl);
(p_bOutShutterOpenCtrl=p_Pneu2SenOutShutterRetCtrl);
(p_bOutShutterCloseCtrl=p_Pneu2SenOutShutterExtCtrl);




(p_bMag3ConvMtrIn=p_MagConv2Clp3MtrSigOnOrLToR);
(p_bMag3ConvMtrOut=p_MagConv2Clp3MtrDirOrRToL);
(p_bMag1SelClampCtrl=p_PneuNoSenSelClamp1RetCtrl);
(p_bMag2SelClampCtrl=p_PneuNoSenSelClamp2RetCtrl);
(p_bMag3SelClampCtrl=p_PneuNoSenSelClamp3RetCtrl);
(p_bMag1SelUnclampCtrl=p_PneuNoSenSelClamp1ExtCtrl);
(p_bMag2SelUnclampCtrl=p_PneuNoSenSelClamp2ExtCtrl);
(p_bMag3SelUnclampCtrl=p_PneuNoSenSelClamp3ExtCtrl);

(p_bPushConvMtrOn=p_PshrConvMtrSigOnOrLToR);
(p_bMag1WallEngageCtrl=p_Pneu2SMag1AWEngageExtCtrl);
(p_bMag2WallEngageCtrl=p_Pneu2SMag2AWEngageExtCtrl);
(p_bMag3WallEngageCtrl=p_Pneu2SMag3AWEngageExtCtrl);
(p_bMag1SafetyBarRetCtrl=p_Pneu2SMag1SafetyBarRetCtrl);
(p_bMag2SafetyBarRetCtrl=p_Pneu2SMag2SafetyBarRetCtrl);
(p_bMag3SafetyBarRetCtrl=p_Pneu2SMag3SafetyBarRetCtrl);
(p_bMtrPshrExt=p_MtrPshrCW);
(p_bMtrPshrRet=p_MtrPshrCCW);
(p_bMtrPshrOn=p_MtrPshrSigOn);
(p_bMtrPshrBrakeRls=p_MtrPshrBrake);
(p_bMtrPshrSpdBinBit0=p_MtrPshrSpdBinBit0);
(p_bMtrPshrSpdBinBit1=p_MtrPshrSpdBinBit1);
(p_bMtrPshrSpdBinBit2=p_MtrPshrSpdBinBit2);
(p_bMtrPshrAlmRst=p_MtrPshrAlmRst);

(p_bEntTopStprUnblkCtrl=p_PneuNoSenTopEntStprRetCtrl);
(p_bMidTopStprUnblkCtrl=p_PneuNoSenTopMidStprExtCtrl);
(p_bExtTopStprUnblkCtrl=p_PneuNoSenTopExtStprRetCtrl);
(p_bMidBtmStprUnblkCtrl=p_PneuNoSenBtmMidStprExtCtrl);
(p_bExtBtmStprUnblkCtrl=p_PneuNoSenBtmExtStprRetCtrl);
(p_bEntTopStprUnblkCtrl2=p_PneuNoSenTopEntStpr2RetCtrl);
(p_bMidTopStprUnblkCtrl2=p_PneuNoSenTopMidStpr2ExtCtrl);
(p_bExtTopStprUnblkCtrl2=p_PneuNoSenTopExtStpr2RetCtrl);
(p_bMidBtmStprUnblkCtrl2=p_PneuNoSenBtmMidStpr2ExtCtrl);
(p_bExtBtmStprUnblkCtrl2=p_PneuNoSenBtmExtStpr2RetCtrl);
(p_bInMagConvMtrOn=p_InMagConvMtrDirOrRToL);
(p_bOutMagConvMtrOn=p_OutMagConvMtrSigOnOrLToR);
(p_bInMagConv2MtrOn=p_InMagConv2MtrDirOrRToL);
(p_bOutMagConv2MtrOn=p_OutMagConv2MtrSigOnOrLToR);

(p_bMag1FixedClampOpenCtrl=p_MagConv2Clp1FixClprClampCtrl);
(p_bMag1RemoteClampOpenCtrl=p_MagConv2Clp1RmtClprClampCtrl);
(p_bMag2FixedClampOpenCtrl=p_MagConv2Clp2FixClprClampCtrl);
(p_bMag2RemoteClampOpenCtrl=p_MagConv2Clp2RmtClprClampCtrl);
(p_bMag3FixedClampOpenCtrl=p_MagConv2Clp3FixClprClampCtrl);
(p_bMag3RemoteClampOpenCtrl=p_MagConv2Clp3RmtClprClampCtrl);

(p_bOutShutterOpenCtrl2=p_Pneu2SenOutShutterRetCtrl2);
(p_bOutShutterCloseCtrl2=p_Pneu2SenOutShutterExtCtrl2);
(p_bOutShutterOpenCtrl3=p_Pneu2SenOutShutterRetCtrl3);
(p_bOutShutterCloseCtrl3=p_Pneu2SenOutShutterExtCtrl3);

(p_bInletStopperExtCtrl=p_InletStopperExtCtrl);
(p_bInletStopperRetCtrl=p_InletStopperRetCtrl);




(p_eCustomerReq=p_NtParamCustomerReq);


}}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if((~((*(p_bManual)))&Edge0000700000&1?((Edge0000700000=((*(p_bManual)))&1),1):((Edge0000700000=((*(p_bManual)))&1),0))){
((*(p_eAct))=0);
}

}imp7_else0_0:imp7_end0_0:;}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_Link.st"
static void __AS__Action__Act_Link(void){
{
if((((signed long)((*(p_eCustomerReq)))==(signed long)5))){
(p_bTLAmber=p_TLBuzWhite);
}else{
(p_bTLAmber=p_TLBuzAmber);
}



if((((unsigned long)(unsigned char)((*(p_bLinkStartupRun)))==(unsigned long)(unsigned char)0))){
((*(p_bMtrPwrRly))=1);
}

if(((*(p_bManual)))){

(p_bSOTMagError1=p_UISOTMagErr1);
(p_bSOTMagError2=p_UISOTMagErr2);
(p_bSOTMagError3=p_UISOTMagErr3);

(p_bSOTMagReady1=p_UISOTMagRdy1);
(p_bSOTMagReady2=p_UISOTMagRdy2);
(p_bSOTMagReady3=p_UISOTMagRdy3);

(p_bSOTMagAvailable1=p_UISOTMagAvail1);
(p_bSOTMagAvailable2=p_UISOTMagAvail2);
(p_bSOTMagAvailable3=p_UISOTMagAvail3);

(p_bSOTMagSizeLarge1=p_UISOTMagSLarge1);
(p_bSOTMagSizeLarge2=p_UISOTMagSLarge2);
(p_bSOTMagSizeLarge3=p_UISOTMagSLarge3);



(p_bMagAWOpenLimByp1=p_UIMagAWOpenLimByp1);
(p_bMagAWOpenLimByp2=p_UIMagAWOpenLimByp2);
(p_bMagAWOpenLimByp3=p_UIMagAWOpenLimByp3);


(p_bMagAWSmallLimSen1=p_UIMagAWSmallLimSen1);
(p_bMagAWSmallLimSen2=p_UIMagAWSmallLimSen2);
(p_bMagAWSmallLimSen3=p_UIMagAWSmallLimSen3);


(p_bRequestToBring1=p_UIAIVReqBring1);
(p_bRequestToBring2=p_UIAIVReqBring2);
(p_bRequestToBring3=p_UIAIVReqBring3);

(p_bRequestToGet1=p_UIAIVReqGet1);
(p_bRequestToGet2=p_UIAIVReqGet2);
(p_bRequestToGet3=p_UIAIVReqGet3);


(p_bScanTrigSig=p_UIStartScanSig);
(p_bMag1ExitPCB=p_UIMag1TransOut);
(p_bMag2ExitPCB=p_UIMag2TransOut);
(p_bMag3ExitPCB=p_UIMag3TransOut);

}else if(((*(p_bLinkOpsRun)))){
(p_bSOTMagReady1=p_USSOT1USB);
(p_bSOTMagReady2=p_USSOT2USB);
(p_bSOTMagReady3=p_USSOT3USB);

(p_bSOTMagError1=p_AlarmErr);
(p_bSOTMagError2=p_AlarmErr);
(p_bSOTMagError3=p_AlarmErr);

(p_bSOTMagAvailable1=p_DSSOT1DBA);
(p_bSOTMagAvailable2=p_DSSOT2DBA);
(p_bSOTMagAvailable3=p_DSSOT3DBA);

(p_bSOTMagSizeLarge1=p_DSSOT1MagSizeLarge);
(p_bSOTMagSizeLarge2=p_DSSOT2MagSizeLarge);
(p_bSOTMagSizeLarge3=p_DSSOT3MagSizeLarge);

(p_bRequestToBring1=p_Buffer1MagRemoved);
(p_bRequestToBring2=p_Buffer2MagRemoved);
(p_bRequestToBring3=p_Buffer3MagRemoved);


(p_bRequestToGet1=p_DSSOT1DBA);
(p_bRequestToGet2=p_DSSOT2DBA);
(p_bRequestToGet3=p_DSSOT3DBA);



(p_bScanTrigSig=p_OpsTravLifStartScanSig);
(p_bMag1ExitPCB=p_OpsTravLifMag1TransOut);
(p_bMag2ExitPCB=p_OpsTravLifMag2TransOut);
(p_bMag3ExitPCB=p_OpsTravLifMag3TransOut);
}else{
((*(p_bSOTMagReady1))=0);
((*(p_bSOTMagReady2))=0);
((*(p_bSOTMagReady3))=0);

(p_bSOTMagError1=p_AlarmErr);
(p_bSOTMagError2=p_AlarmErr);
(p_bSOTMagError3=p_AlarmErr);

((*(p_bSOTMagAvailable1))=0);
((*(p_bSOTMagAvailable2))=0);
((*(p_bSOTMagAvailable3))=0);

((*(p_bSOTMagSizeLarge1))=0);
((*(p_bSOTMagSizeLarge2))=0);
((*(p_bSOTMagSizeLarge3))=0);





((*(p_bRequestToGet1))=0);
((*(p_bRequestToGet2))=0);
((*(p_bRequestToGet3))=0);


(p_bScanTrigSig=((unsigned long)(&bStartScanSig)));
(p_bMag1ExitPCB=((unsigned long)(&bPCBExitMag1)));
(p_bMag2ExitPCB=((unsigned long)(&bPCBExitMag2)));
(p_bMag3ExitPCB=((unsigned long)(&bPCBExitMag3)));

}

switch(((*(p_eLinkAGVComProtocol)))){
case 0:case 2:{
if(((*(p_bLinkNtParamProjSOTSenPrep)))){
(bAgvComIODisabled=0);
}else{
(bAgvComIODisabled=1);
}

}break;case 1:{
(bAgvComIODisabled=0);

}break;}

if((((*(p_bLinkProjMagConvLane1Prep)))&((*(p_bLinkProjMagConvLane2Prep))))){
(p_bMag1FixedClampCtrl=p_LifterMagConvClprClampCtrl);
(p_bMag2FixedClampCtrl=p_LifterMagConv2ClprClampCtrl);

(p_bMag1ConvMtrIn=p_LifterMagConvMtrDirOrRToL);
(p_bMag1ConvMtrOut=p_LifterMagConvMtrSigOnOrLToR);
(p_bMag2ConvMtrIn=p_LifterMagConv2MtrDirOrRToL);
(p_bMag2ConvMtrOut=p_LifterMagConv2MtrSigOnOrLToR);
}else{
(p_bMag1FixedClampCtrl=p_MagConv2Clp1FixClprClampCtrl);
(p_bMag2FixedClampCtrl=p_MagConv2Clp2FixClprClampCtrl);

(p_bMag1ConvMtrIn=p_MagConv2Clp1MtrSigOnOrLToR);
(p_bMag1ConvMtrOut=p_MagConv2Clp1MtrDirOrRToL);
(p_bMag2ConvMtrIn=p_MagConv2Clp2MtrSigOnOrLToR);
(p_bMag2ConvMtrOut=p_MagConv2Clp2MtrDirOrRToL);
}

if(((*(p_bManual)))){
(p_bBypCurtainSen=p_UIMnlBypCurtainSen);
(p_bRstCurtainSen=p_UISafetyCurtainReset);
(p_bBypCurtainPBLED=p_UIMnlBypCurtainPBLED);

}else if(((*(p_bLinkOpsRun)))){

((*(p_bBypCurtainPBLED))=((*(p_bLinkOpsBypCurtainLED))));

if((((*(p_bLinkOpsBypCurtainSen)))|((*(p_bLinkAGVCommRdy1)))|((*(p_bLinkAGVCommRdy2)))|((*(p_bLinkAGVCommRdy3))))){
((*(p_bBypCurtainSen))=1);
}else{
((*(p_bBypCurtainSen))=0);
}

}else{
(p_bRstCurtainSen=p_UISafetyCurtainReset);
(p_bBypCurtainSen=p_UIMnlBypCurtainSen);
(p_bBypCurtainPBLED=p_UIMnlBypCurtainPBLED);
}

}imp6_end6_0:;}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_udiMax=((unsigned long)(&c_udiDOutputMax)));
(p_eAct=((unsigned long)(&eAct)));
(p_tyDOSettings=((unsigned long)(&tyDOSettings)));
(p_bManual=((unsigned long)(&bManual)));

(p_bSafetyRlyRst=((unsigned long)(&bSafetyRlyRst)));
(p_bTLRed=((unsigned long)(&bTLRed)));
(p_bTLAmber=((unsigned long)(&bTLAmber)));
(p_bTLGreen=((unsigned long)(&bTLGreen)));
(p_bBuzzer=((unsigned long)(&bBuzzer)));
(p_bUSBA=((unsigned long)(&bUSBA)));
(p_bUSBB=((unsigned long)(&bUSBB)));
(p_bOvenInfoSigA=((unsigned long)(&bOvenInfoSigA)));
(p_bOvenInfoSigB=((unsigned long)(&bOvenInfoSigB)));
(p_bPusherExtCtrl=((unsigned long)(&bPusherExtCtrl)));
(p_bStopperUnblkCtrlA=((unsigned long)(&bStopperUnblkCtrlA)));
(p_bStopperUnblkCtrlB=((unsigned long)(&bStopperUnblkCtrlB)));
(p_bMag1FixedClampCtrl=((unsigned long)(&bMag1FixedClampCtrl)));
(p_bMag1RemoteClampCtrl=((unsigned long)(&bMag1RemoteClampCtrl)));
(p_bMag2FixedClampCtrl=((unsigned long)(&bMag2FixedClampCtrl)));
(p_bMag2RemoteClampCtrl=((unsigned long)(&bMag2RemoteClampCtrl)));
(p_bMag3FixedClampCtrl=((unsigned long)(&bMag3FixedClampCtrl)));
(p_bMag3RemoteClampCtrl=((unsigned long)(&bMag3RemoteClampCtrl)));
(p_bInShutterOpenCtrl=((unsigned long)(&bInShutterOpenCtrl)));
(p_bInShutterCloseCtrl=((unsigned long)(&bInShutterCloseCtrl)));
(p_bOutShutterOpenCtrl=((unsigned long)(&bOutShutterOpenCtrl)));
(p_bOutShutterCloseCtrl=((unsigned long)(&bOutShutterCloseCtrl)));
(p_bMag1ConvMtrIn=((unsigned long)(&bMag1ConvMtrIn)));
(p_bMag1ConvMtrOut=((unsigned long)(&bMag1ConvMtrOut)));
(p_bMag2ConvMtrIn=((unsigned long)(&bMag2ConvMtrIn)));
(p_bMag2ConvMtrOut=((unsigned long)(&bMag2ConvMtrOut)));
(p_bMag3ConvMtrIn=((unsigned long)(&bMag3ConvMtrIn)));
(p_bMag3ConvMtrOut=((unsigned long)(&bMag3ConvMtrOut)));
(p_bMag1SelClampCtrl=((unsigned long)(&bMag1SelClampCtrl)));
(p_bMag2SelClampCtrl=((unsigned long)(&bMag2SelClampCtrl)));
(p_bMag3SelClampCtrl=((unsigned long)(&bMag3SelClampCtrl)));
(p_bPushConvMtrOn=((unsigned long)(&bPushConvMtrOn)));
(p_bMag1SafetyBarRetCtrl=((unsigned long)(&bMag1SafetyBarRetCtrl)));
(p_bMag2SafetyBarRetCtrl=((unsigned long)(&bMag2SafetyBarRetCtrl)));
(p_bMag3SafetyBarRetCtrl=((unsigned long)(&bMag3SafetyBarRetCtrl)));
(p_bMag1WallEngageCtrl=((unsigned long)(&bMag1WallEngageCtrl)));
(p_bMag2WallEngageCtrl=((unsigned long)(&bMag2WallEngageCtrl)));
(p_bMag3WallEngageCtrl=((unsigned long)(&bMag3WallEngageCtrl)));
(p_bSOTMagError1=((unsigned long)(&bSOTMagError1)));
(p_bSOTMagError2=((unsigned long)(&bSOTMagError2)));
(p_bSOTMagError3=((unsigned long)(&bSOTMagError3)));
(p_bSOTMagError4=((unsigned long)(&bSOTMagError4)));
(p_bSOTMagReady1=((unsigned long)(&bSOTMagReady1)));
(p_bSOTMagReady2=((unsigned long)(&bSOTMagReady2)));
(p_bSOTMagReady3=((unsigned long)(&bSOTMagReady3)));
(p_bSOTMagReady4=((unsigned long)(&bSOTMagReady4)));
(p_bSOTMagAvailable1=((unsigned long)(&bSOTMagAvailable1)));
(p_bSOTMagAvailable2=((unsigned long)(&bSOTMagAvailable2)));
(p_bSOTMagAvailable3=((unsigned long)(&bSOTMagAvailable3)));
(p_bSOTMagAvailable4=((unsigned long)(&bSOTMagAvailable4)));
(p_bSOTMagSizeLarge1=((unsigned long)(&bSOTMagSLarge1)));
(p_bSOTMagSizeLarge2=((unsigned long)(&bSOTMagSLarge2)));
(p_bSOTMagSizeLarge3=((unsigned long)(&bSOTMagSLarge3)));
(p_bSOTMagSizeLarge4=((unsigned long)(&bSOTMagSLarge4)));
(p_bMagAWOpenLimByp1=((unsigned long)(&bMagAWOpenLimByp1)));
(p_bMagAWOpenLimByp2=((unsigned long)(&bMagAWOpenLimByp2)));
(p_bMagAWOpenLimByp3=((unsigned long)(&bMagAWOpenLimByp3)));
(p_bMagAWOpenLimByp4=((unsigned long)(&bMagAWOpenLimByp4)));
(p_bMagAWSmallLimSen1=((unsigned long)(&bMagAWSmallLimSen1)));
(p_bMagAWSmallLimSen2=((unsigned long)(&bMagAWSmallLimSen2)));
(p_bMagAWSmallLimSen3=((unsigned long)(&bMagAWSmallLimSen3)));
(p_bMagAWSmallLimSen4=((unsigned long)(&bMagAWSmallLimSen4)));
(p_bRequestToBring1=((unsigned long)(&bRequestToBring1)));
(p_bRequestToGet1=((unsigned long)(&bRequestToGet1)));
(p_bRequestToBring2=((unsigned long)(&bRequestToBring2)));
(p_bRequestToGet2=((unsigned long)(&bRequestToGet2)));
(p_bRequestToBring3=((unsigned long)(&bRequestToBring3)));
(p_bRequestToGet3=((unsigned long)(&bRequestToGet3)));
(p_bRequestToBring4=((unsigned long)(&bRequestToBring4)));
(p_bRequestToGet4=((unsigned long)(&bRequestToGet4)));

(p_bEntTopStprUnblkCtrl=((unsigned long)(&bEntTopStprUnblkCtrl)));
(p_bMidTopStprUnblkCtrl=((unsigned long)(&bMidTopStprUnblkCtrl)));
(p_bExtTopStprUnblkCtrl=((unsigned long)(&bExtTopStprUnblkCtrl)));
(p_bMidBtmStprUnblkCtrl=((unsigned long)(&bMidBtmStprUnblkCtrl)));
(p_bExtBtmStprUnblkCtrl=((unsigned long)(&bExtBtmStprUnblkCtrl)));
(p_bEntTopStprUnblkCtrl2=((unsigned long)(&bEntTopStprUnblkCtrl2)));
(p_bMidTopStprUnblkCtrl2=((unsigned long)(&bMidTopStprUnblkCtrl2)));
(p_bExtTopStprUnblkCtrl2=((unsigned long)(&bExtTopStprUnblkCtrl2)));
(p_bMidBtmStprUnblkCtrl2=((unsigned long)(&bMidBtmStprUnblkCtrl2)));
(p_bExtBtmStprUnblkCtrl2=((unsigned long)(&bExtBtmStprUnblkCtrl2)));

(p_bInMagConvMtrOn=((unsigned long)(&bInMagConvMtrOn)));
(p_bOutMagConvMtrOn=((unsigned long)(&bOutMagConvMtrOn)));
(p_bInMagConv2MtrOn=((unsigned long)(&bInMagConv2MtrOn)));
(p_bOutMagConv2MtrOn=((unsigned long)(&bOutMagConv2MtrOn)));
(p_bMtrPwrRly=((unsigned long)(&bMtrPwrRly)));

(p_bBypCurtainSen=((unsigned long)(&bBypCurtainSen)));
(p_bRstCurtainSen=((unsigned long)(&bRstCurtainSen)));
(p_bBypCurtainPBLED=((unsigned long)(&bBypCurtainPBLED)));


}}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_Action.st"
static void __AS__Action__Act_Action(void){
{

if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2))|(((signed long)eStatus==(signed long)1)))){
(eStat=((*(p_eAct))));
}

}imp1_else0_0:imp1_end0_0:;}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eStatOld=eStat);

(eStatus=2);
}


switch(eStat){

case 0:{
(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){


(eStatus=1);

}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){


(eStatus=1);

}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){


(eStatus=1);

}

}break;}

}imp8_case1_3:imp8_endcase1_0:;}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Act_Background.st"
static void __AS__Action__Act_Background(void){
{

__AS__MEMSET(((unsigned long)(&a_bPhysicalDO)),0,200);


if(((((signed long)((*(p_tyDOSettings)).diSafetyRlyRst)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSafetyRlyRst)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSafetyRlyRst)-1]=((*(p_bSafetyRlyRst))));
}

if(((((signed long)((*(p_tyDOSettings)).diTLRed)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diTLRed)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diTLRed)-1]=((*(p_bTLRed))));
}

if(((((signed long)((*(p_tyDOSettings)).diTLAmber)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diTLAmber)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diTLAmber)-1]=((*(p_bTLAmber))));
}

if(((((signed long)((*(p_tyDOSettings)).diTLGreen)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diTLGreen)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diTLGreen)-1]=((*(p_bTLGreen))));
}

if(((((signed long)((*(p_tyDOSettings)).diBuzzer)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diBuzzer)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diBuzzer)-1]=((*(p_bBuzzer))));
}

if(((((signed long)((*(p_tyDOSettings)).diUSBA)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diUSBA)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diUSBA)-1]=((*(p_bUSBA))));
}

if(((((signed long)((*(p_tyDOSettings)).diUSBB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diUSBB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diUSBB)-1]=((*(p_bUSBB))));
}

if(((((signed long)((*(p_tyDOSettings)).diOvenInfoSigA)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOvenInfoSigA)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOvenInfoSigA)-1]=((*(p_bOvenInfoSigA))));
}

if(((((signed long)((*(p_tyDOSettings)).diOvenInfoSigB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOvenInfoSigB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOvenInfoSigB)-1]=((*(p_bOvenInfoSigB))));
}

if(((((signed long)((*(p_tyDOSettings)).diPusherExtCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diPusherExtCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diPusherExtCtrl)-1]=((*(p_bPusherExtCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diStopperUnblkCtrlA)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diStopperUnblkCtrlA)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diStopperUnblkCtrlA)-1]=((*(p_bStopperUnblkCtrlA))));
}

if(((((signed long)((*(p_tyDOSettings)).diStopperUnblkCtrlB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diStopperUnblkCtrlB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diStopperUnblkCtrlB)-1]=((*(p_bStopperUnblkCtrlB))));
}

if(((((signed long)((*(p_tyDOSettings)).diInletStopperRetCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInletStopperRetCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInletStopperRetCtrl)-1]=((*(p_bInletStopperRetCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diInletStopperExtCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInletStopperExtCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInletStopperExtCtrl)-1]=((*(p_bInletStopperExtCtrl))));
}


if(((((signed long)((*(p_tyDOSettings)).diMag1FixedClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1FixedClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1FixedClampCtrl)-1]=((*(p_bMag1FixedClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1RemoteClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1RemoteClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1RemoteClampCtrl)-1]=((*(p_bMag1RemoteClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2FixedClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2FixedClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2FixedClampCtrl)-1]=((*(p_bMag2FixedClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2RemoteClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2RemoteClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2RemoteClampCtrl)-1]=((*(p_bMag2RemoteClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3FixedClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3FixedClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3FixedClampCtrl)-1]=((*(p_bMag3FixedClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3RemoteClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3RemoteClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3RemoteClampCtrl)-1]=((*(p_bMag3RemoteClampCtrl))));
}


if((((unsigned long)(unsigned char)bShutterTuning==(unsigned long)(unsigned char)0))){

if(((((signed long)((*(p_tyDOSettings)).diInShutterOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInShutterOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterOpenCtrl)-1]=((*(p_bInShutterOpenCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diInShutterCloseCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInShutterCloseCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterCloseCtrl)-1]=((*(p_bInShutterCloseCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl)-1]=((*(p_bOutShutterOpenCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl)-1]=((*(p_bOutShutterCloseCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl2)-1]=((*(p_bOutShutterOpenCtrl2))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl2)-1]=((*(p_bOutShutterCloseCtrl2))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl3)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterOpenCtrl3)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl3)-1]=((*(p_bOutShutterOpenCtrl3))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl3)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutShutterCloseCtrl3)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl3)-1]=((*(p_bOutShutterCloseCtrl3))));
}


}else{

switch(usiShutterTuningStep){
case 0:{
(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterOpenCtrl)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl2)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl3)-1]=1);

(fbShutterTuneOpnTim.IN=1);;TON(&fbShutterTuneOpnTim);
if(fbShutterTuneOpnTim.Q){
(usiShutterTuningStep=10);
(fbShutterTuneOpnTim.IN=0);;TON(&fbShutterTuneOpnTim);
(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterOpenCtrl)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl2)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterOpenCtrl3)-1]=0);
}
}break;case 10:{

(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterCloseCtrl)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl2)-1]=1);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl3)-1]=1);

(fbShutterTuneClsTim.IN=1);;TON(&fbShutterTuneClsTim);
if(fbShutterTuneClsTim.Q){
(usiShutterTuningStep=0);
(fbShutterTuneClsTim.IN=0);;TON(&fbShutterTuneClsTim);
(a_bPhysicalDO[((*(p_tyDOSettings)).diInShutterCloseCtrl)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl2)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutShutterCloseCtrl3)-1]=0);
}

}break;}
}

if(((((signed long)((*(p_tyDOSettings)).diMag1ConvMtrIn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1ConvMtrIn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ConvMtrIn)-1]=((*(p_bMag1ConvMtrIn))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1ConvMtrOut)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1ConvMtrOut)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ConvMtrOut)-1]=((*(p_bMag1ConvMtrOut))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2ConvMtrIn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2ConvMtrIn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ConvMtrIn)-1]=((*(p_bMag2ConvMtrIn))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2ConvMtrOut)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2ConvMtrOut)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ConvMtrOut)-1]=((*(p_bMag2ConvMtrOut))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3ConvMtrIn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3ConvMtrIn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ConvMtrIn)-1]=((*(p_bMag3ConvMtrIn))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3ConvMtrOut)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3ConvMtrOut)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ConvMtrOut)-1]=((*(p_bMag3ConvMtrOut))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1SelClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1SelClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1SelClampCtrl)-1]=((*(p_bMag1SelClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2SelClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2SelClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2SelClampCtrl)-1]=((*(p_bMag2SelClampCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3SelClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3SelClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3SelClampCtrl)-1]=((*(p_bMag3SelClampCtrl))));
}



if(((((signed long)((*(p_tyDOSettings)).diMag1SelUnClampCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1SelUnClampCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1SelUnClampCtrl)-1]=((*(p_bMag1SelUnclampCtrl))));
}










if(((((signed long)((*(p_tyDOSettings)).diPushConvMtrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diPushConvMtrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diPushConvMtrOn)-1]=((*(p_bPushConvMtrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1SafetyBarRetCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1SafetyBarRetCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1SafetyBarRetCtrl)-1]=((*(p_bMag1SafetyBarRetCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2SafetyBarRetCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2SafetyBarRetCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2SafetyBarRetCtrl)-1]=((*(p_bMag2SafetyBarRetCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3SafetyBarRetCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3SafetyBarRetCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3SafetyBarRetCtrl)-1]=((*(p_bMag3SafetyBarRetCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1WallEngageCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1WallEngageCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1WallEngageCtrl)-1]=((*(p_bMag1WallEngageCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2WallEngageCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2WallEngageCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2WallEngageCtrl)-1]=((*(p_bMag2WallEngageCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3WallEngageCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3WallEngageCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3WallEngageCtrl)-1]=((*(p_bMag3WallEngageCtrl))));
}

if((((unsigned long)(unsigned char)bAgvComIODisabled==(unsigned long)(unsigned char)0))){

if(((((signed long)((*(p_tyDOSettings)).diSOT1MagError)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT1MagError)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagError)-1]=((*(p_bSOTMagError1))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT1MagSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT1MagSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagSizeLarge)-1]=((*(p_bSOTMagSizeLarge1))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT1MagReady)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT1MagReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagReady)-1]=((*(p_bSOTMagReady1))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT1MagAvailable)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT1MagAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagAvailable)-1]=((*(p_bSOTMagAvailable1))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT2MagError)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT2MagError)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagError)-1]=((*(p_bSOTMagError2))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT2MagSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT2MagSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagSizeLarge)-1]=((*(p_bSOTMagSizeLarge2))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT2MagReady)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT2MagReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagReady)-1]=((*(p_bSOTMagReady2))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT2MagAvailable)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT2MagAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagAvailable)-1]=((*(p_bSOTMagAvailable2))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT3MagError)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT3MagError)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagError)-1]=((*(p_bSOTMagError3))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT3MagSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT3MagSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagSizeLarge)-1]=((*(p_bSOTMagSizeLarge3))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT3MagReady)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT3MagReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagReady)-1]=((*(p_bSOTMagReady3))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT3MagAvailable)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT3MagAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagAvailable)-1]=((*(p_bSOTMagAvailable3))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT4MagError)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT4MagError)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagError)-1]=((*(p_bSOTMagError4))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT4MagSizeLarge)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT4MagSizeLarge)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagSizeLarge)-1]=((*(p_bSOTMagSizeLarge4))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT4MagReady)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT4MagReady)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagReady)-1]=((*(p_bSOTMagReady4))));
}

if(((((signed long)((*(p_tyDOSettings)).diSOT4MagAvailable)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diSOT4MagAvailable)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagAvailable)-1]=((*(p_bSOTMagAvailable4))));
}
}else{
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagError)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagError)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagError)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagError)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagSizeLarge)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagSizeLarge)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagSizeLarge)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagSizeLarge)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagReady)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagReady)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagReady)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagReady)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT1MagAvailable)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT2MagAvailable)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT3MagAvailable)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diSOT4MagAvailable)-1]=0);
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp1)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp1)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWOpenLimByp1)-1]=((*(p_bMagAWOpenLimByp1))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWOpenLimByp2)-1]=((*(p_bMagAWOpenLimByp2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp3)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp3)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWOpenLimByp3)-1]=((*(p_bMagAWOpenLimByp3))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp4)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWOpenLimByp4)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWOpenLimByp4)-1]=((*(p_bMagAWOpenLimByp4))));
}


if(((((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen1)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen1)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWSmallLimSen1)-1]=((*(p_bMagAWSmallLimSen1))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWSmallLimSen2)-1]=((*(p_bMagAWSmallLimSen2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen3)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen3)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWSmallLimSen3)-1]=((*(p_bMagAWSmallLimSen3))));
}

if(((((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen4)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMagAWSmallLimSen4)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMagAWSmallLimSen4)-1]=((*(p_bMagAWSmallLimSen4))));
}


if((((signed long)((*(p_eLinkAGVComProtocol)))==(signed long)1))){

if(((((signed long)((*(p_tyDOSettings)).diMag1ReqToBring)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1ReqToBring)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToBring)-1]=((*(p_bRequestToBring1))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1ReqToGet)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1ReqToGet)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToGet)-1]=((*(p_bRequestToGet1))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2ReqToBring)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2ReqToBring)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToBring)-1]=((*(p_bRequestToBring2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2ReqToGet)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2ReqToGet)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToGet)-1]=((*(p_bRequestToGet2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3ReqToBring)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3ReqToBring)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToBring)-1]=((*(p_bRequestToBring3))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3ReqToGet)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3ReqToGet)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToGet)-1]=((*(p_bRequestToGet3))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag4ReqToBring)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag4ReqToBring)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToBring)-1]=((*(p_bRequestToBring4))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag4ReqToGet)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag4ReqToGet)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToGet)-1]=((*(p_bRequestToGet4))));
}
}else{
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToBring)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToGet)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToBring)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToGet)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToBring)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToGet)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToBring)-1]=0);
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToGet)-1]=0);
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrExt)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrExt)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrExt)-1]=((*(p_bMtrPshrExt))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrRet)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrRet)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrRet)-1]=((*(p_bMtrPshrRet))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrOn)-1]=((*(p_bMtrPshrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrBrakeRls)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrBrakeRls)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrBrakeRls)-1]=((*(p_bMtrPshrBrakeRls))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit0)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit0)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrSpdBinBit0)-1]=((*(p_bMtrPshrSpdBinBit0))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit1)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit1)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrSpdBinBit1)-1]=((*(p_bMtrPshrSpdBinBit1))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrSpdBinBit2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrSpdBinBit2)-1]=((*(p_bMtrPshrSpdBinBit2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPshrAlmRst)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPshrAlmRst)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPshrAlmRst)-1]=((*(p_bMtrPshrAlmRst))));
}

if(((((signed long)((*(p_tyDOSettings)).diInMagConvMtrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInMagConvMtrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInMagConvMtrOn)-1]=((*(p_bInMagConvMtrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutMagConvMtrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutMagConvMtrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutMagConvMtrOn)-1]=((*(p_bOutMagConvMtrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diInMagConv2MtrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diInMagConv2MtrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diInMagConv2MtrOn)-1]=((*(p_bInMagConv2MtrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diOutMagConv2MtrOn)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diOutMagConv2MtrOn)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diOutMagConv2MtrOn)-1]=((*(p_bOutMagConv2MtrOn))));
}

if(((((signed long)((*(p_tyDOSettings)).diEntTopStprUnblkCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diEntTopStprUnblkCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diEntTopStprUnblkCtrl)-1]=((*(p_bEntTopStprUnblkCtrl))));
}
if(((((signed long)((*(p_tyDOSettings)).diMidTopStprUnblkCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMidTopStprUnblkCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMidTopStprUnblkCtrl)-1]=((*(p_bMidTopStprUnblkCtrl))));
}
if(((((signed long)((*(p_tyDOSettings)).diExtTopStprUnblkCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diExtTopStprUnblkCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diExtTopStprUnblkCtrl)-1]=((*(p_bExtTopStprUnblkCtrl))));
}
if(((((signed long)((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl)-1]=((*(p_bMidBtmStprUnblkCtrl))));
}
if(((((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl)-1]=((*(p_bExtBtmStprUnblkCtrl))));
}

if(((((signed long)((*(p_tyDOSettings)).diEntTopStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diEntTopStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diEntTopStprUnblkCtrl2)-1]=((*(p_bEntTopStprUnblkCtrl2))));
}
if(((((signed long)((*(p_tyDOSettings)).diMidTopStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMidTopStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMidTopStprUnblkCtrl2)-1]=((*(p_bMidTopStprUnblkCtrl2))));
}
if(((((signed long)((*(p_tyDOSettings)).diExtTopStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diExtTopStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diExtTopStprUnblkCtrl2)-1]=((*(p_bExtTopStprUnblkCtrl2))));
}
if(((((signed long)((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMidBtmStprUnblkCtrl2)-1]=((*(p_bMidBtmStprUnblkCtrl2))));
}
if(((((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)-1]=((*(p_bExtBtmStprUnblkCtrl2))));
}

if(((((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diExtBtmStprUnblkCtrl2)-1]=((*(p_bExtBtmStprUnblkCtrl2))));
}

if(((((signed long)((*(p_tyDOSettings)).diMtrPwrRly)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMtrPwrRly)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMtrPwrRly)-1]=((*(p_bMtrPwrRly))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1FixedClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1FixedClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1FixedClampOpenCtrl)-1]=(((*(p_bMag1FixedClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1RemoteClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1RemoteClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1RemoteClampOpenCtrl)-1]=(((*(p_bMag1RemoteClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2FixedClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2FixedClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2FixedClampOpenCtrl)-1]=(((*(p_bMag2FixedClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2RemoteClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2RemoteClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2RemoteClampOpenCtrl)-1]=(((*(p_bMag2RemoteClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3FixedClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3FixedClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3FixedClampOpenCtrl)-1]=(((*(p_bMag3FixedClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3RemoteClampOpenCtrl)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3RemoteClampOpenCtrl)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3RemoteClampOpenCtrl)-1]=(((*(p_bMag3RemoteClampOpenCtrl))^1)));
}

if(((((signed long)((*(p_tyDOSettings)).diBypCurtainSen)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diBypCurtainSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diBypCurtainSen)-1]=((*(p_bBypCurtainSen))));
}

if(((((signed long)((*(p_tyDOSettings)).diRstCurtainSen)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diRstCurtainSen)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diRstCurtainSen)-1]=((*(p_bRstCurtainSen))));
}

if(((((signed long)((*(p_tyDOSettings)).diBypCurtainPBLED)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diBypCurtainPBLED)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diBypCurtainPBLED)-1]=((*(p_bBypCurtainPBLED))));
}

if(((((signed long)((*(p_tyDOSettings)).diScanTrigSig)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diScanTrigSig)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diScanTrigSig)-1]=((*(p_bScanTrigSig))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag1ExitPCB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag1ExitPCB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ExitPCB)-1]=((*(p_bMag1ExitPCB))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag2ExitPCB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag2ExitPCB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ExitPCB)-1]=((*(p_bMag2ExitPCB))));
}

if(((((signed long)((*(p_tyDOSettings)).diMag3ExitPCB)>(signed long)0))&(((signed long)((*(p_tyDOSettings)).diMag3ExitPCB)<=(signed long)(signed long)((*(p_udiMax))))))){
(a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ExitPCB)-1]=((*(p_bMag3ExitPCB))));
}




(tyDOutput.bSafetyRlyRst=((*(p_bSafetyRlyRst))));
(tyDOutput.bTLRed=((*(p_bTLRed))));
(tyDOutput.bTLAmber=((*(p_bTLAmber))));
(tyDOutput.bTLGreen=((*(p_bTLGreen))));
(tyDOutput.bBuzzer=((*(p_bBuzzer))));
(tyDOutput.bUSBA=((*(p_bUSBA))));
(tyDOutput.bUSBB=((*(p_bUSBB))));
(tyDOutput.bOvenInfoSigA=((*(p_bOvenInfoSigA))));
(tyDOutput.bOvenInfoSigB=((*(p_bOvenInfoSigB))));
(tyDOutput.bPusherExtCtrl=((*(p_bPusherExtCtrl))));
(tyDOutput.bStopperUnBlkCtrlA=((*(p_bStopperUnblkCtrlA))));
(tyDOutput.bStopperUnBlkCtrlB=((*(p_bStopperUnblkCtrlB))));
(tyDOutput.bMag1FixedClampCtrl=((*(p_bMag1FixedClampCtrl))));
(tyDOutput.bMag1RemoteClampCtrl=((*(p_bMag1RemoteClampCtrl))));
(tyDOutput.bMag2FixedClampCtrl=((*(p_bMag2FixedClampCtrl))));
(tyDOutput.bMag2RemoteClampCtrl=((*(p_bMag2RemoteClampCtrl))));
(tyDOutput.bMag3FixedClampCtrl=((*(p_bMag3FixedClampCtrl))));
(tyDOutput.bMag3RemoteClampCtrl=((*(p_bMag3RemoteClampCtrl))));
(tyDOutput.bInShutterOpenCtrl=((*(p_bInShutterOpenCtrl))));
(tyDOutput.bInShutterCloseCtrl=((*(p_bInShutterCloseCtrl))));
(tyDOutput.bOutShutterOpenCtrl=((*(p_bOutShutterOpenCtrl))));
(tyDOutput.bOutShutterCloseCtrl=((*(p_bOutShutterCloseCtrl))));
(tyDOutput.bMag1ConvMtrIn=((*(p_bMag1ConvMtrIn))));
(tyDOutput.bMag1ConvMtrOut=((*(p_bMag1ConvMtrOut))));
(tyDOutput.bMag2ConvMtrIn=((*(p_bMag2ConvMtrIn))));
(tyDOutput.bMag2ConvMtrOut=((*(p_bMag2ConvMtrOut))));
(tyDOutput.bMag3ConvMtrIn=((*(p_bMag3ConvMtrIn))));
(tyDOutput.bMag3ConvMtrOut=((*(p_bMag3ConvMtrOut))));
(tyDOutput.bMag1SelClampCtrl=((*(p_bMag1SelClampCtrl))));
(tyDOutput.bMag2SelClampCtrl=((*(p_bMag2SelClampCtrl))));
(tyDOutput.bMag3SelClampCtrl=((*(p_bMag3SelClampCtrl))));
(tyDOutput.bMag1SelUnClampCtrl=((*(p_bMag1SelUnclampCtrl))));


(tyDOutput.bPusherConvMtrOn=((*(p_bPushConvMtrOn))));
(tyDOutput.bMag1WallEngageCtrl=((*(p_bMag1WallEngageCtrl))));
(tyDOutput.bMag2WallEngageCtrl=((*(p_bMag2WallEngageCtrl))));
(tyDOutput.bMag3WallEngageCtrl=((*(p_bMag3WallEngageCtrl))));
(tyDOutput.bMag1SafetyBarRetCtrl=((*(p_bMag1SafetyBarRetCtrl))));
(tyDOutput.bMag2SafetyBarRetCtrl=((*(p_bMag2SafetyBarRetCtrl))));
(tyDOutput.bMag3SafetyBarRetCtrl=((*(p_bMag3SafetyBarRetCtrl))));
(tyDOutput.bSOT1MagAvailable=((*(p_bSOTMagAvailable1))));
(tyDOutput.bSOT2MagAvailable=((*(p_bSOTMagAvailable2))));
(tyDOutput.bSOT3MagAvailable=((*(p_bSOTMagAvailable3))));
(tyDOutput.bSOT4MagAvailable=((*(p_bSOTMagAvailable4))));
(tyDOutput.bSOT1MagError=((*(p_bSOTMagError1))));
(tyDOutput.bSOT2MagError=((*(p_bSOTMagError2))));
(tyDOutput.bSOT3MagError=((*(p_bSOTMagError3))));
(tyDOutput.bSOT4MagError=((*(p_bSOTMagError4))));
(tyDOutput.bSOT1MagReady=((*(p_bSOTMagReady1))));
(tyDOutput.bSOT2MagReady=((*(p_bSOTMagReady2))));
(tyDOutput.bSOT3MagReady=((*(p_bSOTMagReady3))));
(tyDOutput.bSOT4MagReady=((*(p_bSOTMagReady4))));
(tyDOutput.bSOT1MagSizeLarge=((*(p_bSOTMagSizeLarge1))));
(tyDOutput.bSOT2MagSizeLarge=((*(p_bSOTMagSizeLarge2))));
(tyDOutput.bSOT3MagSizeLarge=((*(p_bSOTMagSizeLarge3))));
(tyDOutput.bSOT4MagSizeLarge=((*(p_bSOTMagSizeLarge4))));
(tyDOutput.bMagAWOpenLimByp1=((*(p_bMagAWOpenLimByp1))));
(tyDOutput.bMagAWOpenLimByp2=((*(p_bMagAWOpenLimByp2))));
(tyDOutput.bMagAWOpenLimByp3=((*(p_bMagAWOpenLimByp3))));
(tyDOutput.bMagAWOpenLimByp4=((*(p_bMagAWOpenLimByp4))));
(tyDOutput.bMagAWSmallLimSen1=((*(p_bMagAWSmallLimSen1))));
(tyDOutput.bMagAWSmallLimSen2=((*(p_bMagAWSmallLimSen2))));
(tyDOutput.bMagAWSmallLimSen3=((*(p_bMagAWSmallLimSen3))));
(tyDOutput.bMagAWSmallLimSen4=((*(p_bMagAWSmallLimSen4))));
(tyDOutput.bMag1ReqToBring=a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToBring)-1]);
(tyDOutput.bMag1ReqToGet=a_bPhysicalDO[((*(p_tyDOSettings)).diMag1ReqToGet)-1]);
(tyDOutput.bMag2ReqToBring=a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToBring)-1]);
(tyDOutput.bMag2ReqToGet=a_bPhysicalDO[((*(p_tyDOSettings)).diMag2ReqToGet)-1]);
(tyDOutput.bMag3ReqToBring=a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToBring)-1]);
(tyDOutput.bMag3ReqToGet=a_bPhysicalDO[((*(p_tyDOSettings)).diMag3ReqToGet)-1]);
(tyDOutput.bMag4ReqToBring=a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToBring)-1]);
(tyDOutput.bMag4ReqToGet=a_bPhysicalDO[((*(p_tyDOSettings)).diMag4ReqToGet)-1]);
(tyDOutput.bMtrPshrExt=((*(p_bMtrPshrExt))));
(tyDOutput.bMtrPshrRet=((*(p_bMtrPshrRet))));
(tyDOutput.bMtrPshrOn=((*(p_bMtrPshrOn))));
(tyDOutput.bMtrPshrBrakeRls=((*(p_bMtrPshrBrakeRls))));
(tyDOutput.bMtrPshrSpdBinBit0=((*(p_bMtrPshrSpdBinBit0))));
(tyDOutput.bMtrPshrSpdBinBit1=((*(p_bMtrPshrSpdBinBit1))));
(tyDOutput.bMtrPshrSpdBinBit2=((*(p_bMtrPshrSpdBinBit2))));
(tyDOutput.bMtrPshrAlmRst=((*(p_bMtrPshrAlmRst))));
if(((*(p_bLinkProjMagConvLane1Prep)))){
(tyDOutput.bEntTopStprUnblkCtrl=((*(p_bEntTopStprUnblkCtrl))));
(tyDOutput.bMidTopStprUnblkCtrl=((*(p_bMidTopStprUnblkCtrl))));
(tyDOutput.bExtTopStprUnblkCtrl=((*(p_bExtTopStprUnblkCtrl))));
(tyDOutput.bMidBtmStprUnblkCtrl=((*(p_bMidBtmStprUnblkCtrl))));
(tyDOutput.bExtBtmStprUnblkCtrl=((*(p_bExtBtmStprUnblkCtrl))));
}
if(((*(p_bLinkProjMagConvLane1Prep)))){
(tyDOutput.bEntTopStprUnblkCtrl2=((*(p_bEntTopStprUnblkCtrl2))));
(tyDOutput.bMidTopStprUnblkCtrl2=((*(p_bMidTopStprUnblkCtrl2))));
(tyDOutput.bExtTopStprUnblkCtrl2=((*(p_bExtTopStprUnblkCtrl2))));
(tyDOutput.bMidBtmStprUnblkCtrl2=((*(p_bMidBtmStprUnblkCtrl2))));
(tyDOutput.bExtBtmStprUnblkCtrl2=((*(p_bExtBtmStprUnblkCtrl2))));
}
(tyDOutput.bMtrPwrRly=((*(p_bMtrPwrRly))));

(tyDOutput.bMag1FixedClampOpenCtrl=((*(p_bMag1FixedClampOpenCtrl))));
(tyDOutput.bMag1RemoteClampOpenCtrl=((*(p_bMag1RemoteClampOpenCtrl))));
(tyDOutput.bMag2FixedClampOpenCtrl=((*(p_bMag2FixedClampOpenCtrl))));
(tyDOutput.bMag2RemoteClampOpenCtrl=((*(p_bMag2RemoteClampOpenCtrl))));
(tyDOutput.bMag3FixedClampOpenCtrl=((*(p_bMag3FixedClampOpenCtrl))));
(tyDOutput.bMag3RemoteClampOpenCtrl=((*(p_bMag3RemoteClampOpenCtrl))));

(tyDOutput.bOutShutterOpenCtrl2=((*(p_bOutShutterOpenCtrl2))));
(tyDOutput.bOutShutterCloseCtrl2=((*(p_bOutShutterCloseCtrl2))));

(tyDOutput.bOutShutterOpenCtrl3=((*(p_bOutShutterOpenCtrl3))));
(tyDOutput.bOutShutterCloseCtrl3=((*(p_bOutShutterCloseCtrl3))));

(tyDOutput.bBypCurtainSen=((*(p_bBypCurtainSen))));
(tyDOutput.bRstCurtainSen=((*(p_bRstCurtainSen))));
(tyDOutput.bBypCurtainPBLED=((*(p_bBypCurtainPBLED))));

(tyDOutput.diMag1ExitPCB=((*(p_bMag1ExitPCB))));
(tyDOutput.diMag2ExitPCB=((*(p_bMag2ExitPCB))));
(tyDOutput.diMag3ExitPCB=((*(p_bMag3ExitPCB))));
(tyDOutput.diScanTrigSig=((*(p_bScanTrigSig))));
}}
#line 26 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/DOutput/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/DOutput/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/DOutput/DOutput/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/DOutput/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'a_bPhysicalDO'\\n\"");
__asm__(".ascii \"plcdata_const 'c_udiDOutputMax'\\n\"");
__asm__(".previous");
