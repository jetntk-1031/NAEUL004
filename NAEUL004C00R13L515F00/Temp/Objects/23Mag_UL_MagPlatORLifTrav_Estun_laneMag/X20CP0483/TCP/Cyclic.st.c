#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/TCP/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.st"
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

}else{
__AS__Action__Act_Main_Disable();

if((((signed long)eStat!=(signed long)0))){
(eStatus=1);
}else{
(eStatus=0);
}

}

__AS__Action__Act_CombineErr();
__AS__Action__Act_Alarm();
__AS__Action__Act_Alarm1();
__AS__Action__Act_Alarm2();
__AS__Action__Act_Alarm3();


}

}imp27_end0_0:;}
#line 49 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{






(p_bUSB=p_USSOT1USB);
(p_bUSB2=p_USSOT2USB);
(p_bDBA=p_DSSOT1DBA);
(p_bDBA2=p_DSSOT2DBA);
(p_eLinkAGVComProtocol=p_McParamAGVComProtocol);



(p_udiRstErr=p_RstErrReset);
(p_sIPAddr=p_HWInfoIPAddr);
(p_tyDTStructure=p_TimeCurrDTStruct);
(p_dtCurrDT=p_TimeCurrDT);
(p_bOpsRun=p_OpsRun);
(p_sMsgSnd=((unsigned long)(&sMsgSnd)));
(p_sSvrIP=p_HWInfoIPAddr);
(p_uiSvrPort=p_McParamTCPSvrPort);

(p_usiProjMag=p_NtParamProjMag);

(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);



}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{






















}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{

(bEn=(((signed long)((*(p_eLinkAGVComProtocol)))==(signed long)3)));

if(((*(p_bEn)))){
(bRun=1);
}else{
(bRun=0);
}


}imp21_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Link.st"
static void __AS__Action__Act_Link(void){
{







}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp24_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(p_bManual=((unsigned long)(&bManual)));
(p_sIPAddr=((unsigned long)(&sIPAddr)));
(p_tyDTStructure=((unsigned long)(&tyDTStructure)));
(p_dtCurrDT=((unsigned long)(&dtCurrDT)));
(p_udiSndBffrSize=((unsigned long)(&udiSndBffrSize)));
(p_udiRcvBffrSize=((unsigned long)(&udiRcvBffrSize)));
(p_udiAliveIdleTimeInSec=((unsigned long)(&udiAliveIdleTimeInSec)));
(p_tConnTimeOut=((unsigned long)(&tConnTimeOut)));
(p_bOpsRun=((unsigned long)(&bOpsRun)));
(p_udiFileKeepDay=((unsigned long)(&udiFileKeepDay)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));
(p_sMsgSnd=((unsigned long)(&sMsgSnd)));
(p_sSvrIP=((unsigned long)(&sSvrIP)));
(p_uiSvrPort=((unsigned long)(&uiSvrPort)));
(p_uiClientPort=((unsigned long)(&uiClientPort)));

(p_eTCPModel=((unsigned long)(&eTCPModel)));
(p_bFltrIP=((unsigned long)(&bFltrIP)));
(p_bFltrPort=((unsigned long)(&bFltrPort)));
(p_sAllwClntIP=((unsigned long)(&sAllwClntIP)));
(p_uiAllwClntPort=((unsigned long)(&uiAllwClntPort)));
(p_bReconnect=((unsigned long)(&bReconnect)));

(p_usiProjMag=((unsigned long)(&usiProjMag)));
(p_bUSB=((unsigned long)(&bUSB)));
(p_bUSB2=((unsigned long)(&bUSB2)));
(p_bDBA=((unsigned long)(&bDBA)));
(p_bDBA2=((unsigned long)(&bDBA2)));


(p_tyDTMagToAGV=((unsigned long)(&tyDTMagToAGV)));




}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbClntConnect.udiSndBffrSize=((*(p_udiSndBffrSize))));
(fbClntConnect.udiRcvBffrSize=((*(p_udiRcvBffrSize))));
(fbClntConnect.udiAliveIdleTmInSec=((*(p_udiAliveIdleTimeInSec))));
(fbClntConnect.tConnectTO=((*(p_tConnTimeOut))));
(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);

(fbRcv.udiBffrSize=65536);
(fbRcv.p_BffrDest=((unsigned long)(&sRcv)));
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(fbSend.p_BffrDest=((unsigned long)(&sSnd)));
(fbSend.bEn=0);;fbTCPSnd(&fbSend);

(fbClose.bEn=0);;fbTCPClose(&fbClose);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDevice; plcstring* zzRValue=(plcstring*)"F"; for(zzIndex=0; zzIndex<1l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDirName; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDirName; plcstring* zzRValue=(plcstring*)"Log"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileAppend1.sDevice; plcstring* zzRValue=(plcstring*)"Log"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sDevice; plcstring* zzRValue=(plcstring*)"Log"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sPath; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileOldDel1.sKeyword; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileOldDel1.udiFileKeepDay=((*(p_udiFileKeepDay))));
(fbFileOldDel1.bEn=0);;fbFileOldDel(&fbFileOldDel1);

}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Action.st"
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
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);
(usiStep=0);

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
(udiStatus=10016);
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
(udiStatus=10017);
}else{
(udiStatus=fbDirCreate2.udiStatus);
}
}
}break;}

}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileOldDel1.dtDTNow=((*(p_dtCurrDT))));
(fbFileOldDel1.bEn=1);;fbFileOldDel(&fbFileOldDel1);
if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileOldDel1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1910))){
(udiStatus=10154);
}else if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1911))){
(udiStatus=10155);
}else if((((unsigned long)fbFileOldDel1.udiStatus==(unsigned long)1912))){
(udiStatus=10156);
}else{
(udiStatus=fbFileOldDel1.udiStatus);
}
}

}

}break;default: {
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){
(eStatus=1);
}

}break;}

}imp22_else11_0:imp22_end11_0:imp22_endcase1_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
if((((unsigned long)(unsigned char)bRun==(unsigned long)(unsigned char)1))){
if((((signed long)eTCPModel==(signed long)0))){
if((((unsigned long)udiTCPIdent==(unsigned long)0))){
__AS__Action__Act_Background_TCPConnect();
}else{
if((((unsigned long)(unsigned char)bRstConnection==(unsigned long)(unsigned char)0))){
__AS__Action__Act_Background_TCPRcv();
__AS__Action__Act_Background_ChkAlive();
__AS__Action__Act_Background_TCPSend();
__AS__Action__Act_Background_TCPProcess();

}else{
__AS__Action__Act_Background_TCPClose();
}
}
__AS__Action__Act_Background_Stop();

}else if((((signed long)eTCPModel==(signed long)1))){
__AS__Action__Act_TCPSvr();
__AS__Action__Act_TCPSvrProcess();
}


}

if(((~bRun&Edge0000600000&1?((Edge0000600000=bRun&1),1):((Edge0000600000=bRun&1),0))|(~(((unsigned long)udiTCPIdent==(unsigned long)0))&Edge0000600001&1?((Edge0000600001=(((unsigned long)udiTCPIdent==(unsigned long)0))&1),1):((Edge0000600001=(((unsigned long)udiTCPIdent==(unsigned long)0))&1),0)))){

(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);

(bConnected=bRun);

(bWaitAliveResponse=0);
(bCheckAliveTimeout=0);
}

if(((~bRun&Edge0000600002&1?((Edge0000600002=bRun&1),1):((Edge0000600002=bRun&1),0))|(~(((unsigned long)udiTCPIdent!=(unsigned long)0))&Edge0000600003&1?((Edge0000600003=(((unsigned long)udiTCPIdent!=(unsigned long)0))&1),1):((Edge0000600003=(((unsigned long)udiTCPIdent!=(unsigned long)0))&1),0)))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(fbSend.bEn=0);;fbTCPSnd(&fbSend);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
(iWriteLogStep=0);

(bConnected=0);

__AS__MEMSET(((unsigned long)(&a_sMsgSend)),0,3342336);
__AS__MEMSET(((unsigned long)(&tyAIVMsgRcvData)),0,19);
(udiMsgSendBffr=0);
(bLoginSuccess=0);

(bWaitAliveResponse=0);
(bCheckAliveTimeout=0);
}


if(((((signed long)eStatus1==(signed long)3))&bRstErr)){
(eStatus1=0);
(udiStatus1=0);

(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);
(fbSend.bEn=0);;fbTCPSnd(&fbSend);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
(iWriteLogStep=0);

(bConnected=0);

__AS__MEMSET(((unsigned long)(&a_sMsgSend)),0,3342336);
__AS__MEMSET(((unsigned long)(&tyAIVMsgRcvData)),0,19);
(udiMsgSendBffr=0);
(bLoginSuccess=0);

(bWaitAliveResponse=0);
(bCheckAliveTimeout=0);
}

if(((((signed long)eStatus2==(signed long)3))&bRstErr)){
(eStatus2=0);
(udiStatus2=0);

(fbFileAppend1.bEn=0);;fbFileFullAppend(&fbFileAppend1);
(iWriteLogStep=0);

}


}imp6_else7_0:imp6_end7_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_ChkAlive.st"
static void __AS__Action__Act_Background_ChkAlive(void){
{
(fbSendAliveTimer.PT=30000);
(fbSendAliveTimer.IN=bLoginSuccess);;TON(&fbSendAliveTimer);

if((bWaitAliveResponse&(((unsigned long)(unsigned char)bCheckAliveTimeout==(unsigned long)(unsigned char)0)))){

(fbCheckAliveTimer.PT=10000);
(fbCheckAliveTimer.IN=1);;TON(&fbCheckAliveTimer);

if(tyAIVMsgRcvData.bOneLineStatus){

(fbCheckAliveTimer.IN=0);;TON(&fbCheckAliveTimer);
(bWaitAliveResponse=0);
(bCheckAliveTimeout=0);

(tyAIVMsgRcvData.bOneLineStatus=0);

(iFindBatteryLvl=FIND(sDecodeMsg,"StateOfCharge:"));

if((((signed long)(signed long)(short)iFindBatteryLvl!=(signed long)(signed long)(short)0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)sExtractBatteryLvl; plcstring* zzRValue=(plcstring*)MID(sDecodeMsg,20,iFindBatteryLvl); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sExtractBatteryLvl; plcstring* zzRValue=(plcstring*)RIGHT(sExtractBatteryLvl,5); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(rCurrentBatteryLvl=str2real(sExtractBatteryLvl));

}

}else if(fbCheckAliveTimer.Q){

(fbCheckAliveTimer.IN=0);;TON(&fbCheckAliveTimer);
(bWaitAliveResponse=0);
(bCheckAliveTimeout=1);

}
}




}imp7_else1_1:imp7_end1_0:imp7_else0_0:imp7_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_TCPConnect.st"
static void __AS__Action__Act_Background_TCPConnect(void){
{
if((((signed long)eStatus1!=(signed long)3))){


{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sClntIP; plcstring* zzRValue=(plcstring*)((*(p_sIPAddr))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sSvrIP; plcstring* zzRValue=(plcstring*)((*(p_sSvrIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbClntConnect.uiClntPort=((*(p_uiClientPort))));
(fbClntConnect.uiSvrPort=((*(p_uiSvrPort))));
(fbClntConnect.bEn=1);;fbTCPClntConnect(&fbClntConnect);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)0))){
(udiTCPIdent=fbClntConnect.udiTCPIdent);
(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);

}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2313))){
(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);

}else if(((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2323))|(((unsigned long)(unsigned char)bConnected==(unsigned long)(unsigned char)0)))){
(udiStatus3=10013);



}else if((((unsigned long)fbClntConnect.udiStatus<(unsigned long)65534))){
(eStatus1=3);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2300))){
(udiStatus1=10000);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2302))){
(udiStatus1=10001);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2303))){
(udiStatus1=10002);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2304))){
(udiStatus1=10003);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2305))){
(udiStatus1=10004);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2306))){
(udiStatus1=10005);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2307))){
(udiStatus1=10006);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2308))){
(udiStatus1=10007);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2309))){
(udiStatus1=10008);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2310))){
(udiStatus1=10009);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2313))){
(udiStatus1=10010);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2314))){
(udiStatus1=10011);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2315))){
(udiStatus1=10012);

}else{
(udiStatus1=fbClntConnect.udiStatus);
}

}

}

}imp11_end2_0:imp11_else1_3:imp11_end1_0:imp11_else0_0:imp11_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_TCPProcess.st"
static void __AS__Action__Act_Background_TCPProcess(void){
{
if(tyAIVMsgRcvData.bEnterPW){

{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMsgSend[udiMsgSendBffr]; plcstring* zzRValue=(plcstring*)"Hello\r\n"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(udiMsgSendBffr=(udiMsgSendBffr+1));

(tyAIVMsgRcvData.bEnterPW=0);

}else if(tyAIVMsgRcvData.bLoginSuccess){

(bLoginSuccess=1);

(tyAIVMsgRcvData.bLoginSuccess=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMsgSend[udiMsgSendBffr]; plcstring* zzRValue=(plcstring*)"qc status inprogress\r\nqc status pending\r\n"; for(zzIndex=0; zzIndex<41l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(udiMsgSendBffr=(udiMsgSendBffr+1));

}else if(fbSendAliveTimer.Q){

(fbSendAliveTimer.IN=0);;TON(&fbSendAliveTimer);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMsgSend[udiMsgSendBffr]; plcstring* zzRValue=(plcstring*)"onelinestatus\r\n"; for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(udiMsgSendBffr=(udiMsgSendBffr+1));

(bWaitAliveResponse=1);

}else if(((__AS__STRING_CMP(((*(p_sMsgSnd))),"")!=0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMsgSend[udiMsgSendBffr]; plcstring* zzRValue=(plcstring*)((*(p_sMsgSnd))); for(zzIndex=0; zzIndex<65535l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)((*(p_sMsgSnd))); plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(udiMsgSendBffr=(udiMsgSendBffr+1));
}


}imp12_else0_3:imp12_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_TCPRcv.st"
static void __AS__Action__Act_Background_TCPRcv(void){
{
if((((signed long)eStatus1!=(signed long)3))){


(fbRcv.udiTCPIdent=udiTCPIdent);
(fbRcv.bEn=1);;fbTCPRcv(&fbRcv);


if(((((unsigned long)fbRcv.udiStatus==(unsigned long)0))|(((signed long)LEN(sRcv)>(signed long)(signed long)(short)0)))){

fLogDTConvert(((unsigned long)(&sDT)),((*(p_dtCurrDT))));
__AS__MEMSET(((unsigned long)(&a_sLogList[udiLogCntr-1])),0,65536);
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&sDT)),LEN(sDT));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"\r\n")),LEN("\r\n"));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"RCV_FRM_AIV\r\n")),LEN("RCV_FRM_AIV\r\n"));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&sRcv)),LEN(sRcv));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"\r\n\r\n")),LEN("\r\n\r\n"));

(udiLogCntr=(udiLogCntr+1));
if((((unsigned long)udiLogCntr==(unsigned long)11))){
(udiLogCntr=1);
}

if((((signed long)(signed long)(short)iHistoryCntr<(signed long)(signed long)(short)9))){
(a_tyHistoryList[iHistoryCntr-1].eTCP=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[iHistoryCntr-1].sMsg; plcstring* zzRValue=(plcstring*)sRcv; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(iHistoryCntr=(iHistoryCntr+1));
}else{
memmove(((unsigned long)(&a_tyHistoryList[1-1])),((unsigned long)(&a_tyHistoryList[2-1])),1456);
__AS__MEMSET(((unsigned long)(&a_tyHistoryList[8-1])),0,208);
(a_tyHistoryList[8-1].eTCP=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[8-1].sMsg; plcstring* zzRValue=(plcstring*)sRcv; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if((((signed long)FIND(sRcv,"Enter password")!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEnterPW=1);

}else if((((signed long)FIND(sRcv,sELD1Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD1Reached=1);

}else if((((signed long)FIND(sRcv,sELD1Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD1Completed=1);

}else if((((signed long)FIND(sRcv,sELD2Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD2Reached=1);

}else if((((signed long)FIND(sRcv,sELD2Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD2Completed=1);

}else if((((signed long)FIND(sRcv,sELD3Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD3Reached=1);

}else if((((signed long)FIND(sRcv,sELD3Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bELD3Completed=1);

}else if((((signed long)FIND(sRcv,sEUL1Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL1Reached=1);

}else if((((signed long)FIND(sRcv,sEUL1Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL1Completed=1);

}else if((((signed long)FIND(sRcv,sEUL2Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL2Reached=1);

}else if((((signed long)FIND(sRcv,sEUL2Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL2Completed=1);

}else if((((signed long)FIND(sRcv,sEUL3Reached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL3Reached=1);

}else if((((signed long)FIND(sRcv,sEUL3Completed)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bEUL3Completed=1);

}else if((((signed long)FIND(sRcv,sSTANDBYReached)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bStandbyReached=1);

}else if((((signed long)FIND(sRcv,sSTANDBYCompleted)!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bStandbyCompleted=1);

}else if((((signed long)FIND(sRcv,"Arrived at clear")!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bMoveBackCompleted=1);

}else if((((signed long)FIND(sRcv,"Status:")!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bOneLineStatus=1);

{int zzIndex; plcstring* zzLValue=(plcstring*)sDecodeMsg; plcstring* zzRValue=(plcstring*)sRcv; for(zzIndex=0; zzIndex<65535l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)FIND(sRcv,"Welcome to the server")!=(signed long)(signed long)(short)0))){
(tyAIVMsgRcvData.bLoginSuccess=1);

}

(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

__AS__MEMSET(((unsigned long)(&sRcv)),0,65536);

}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2317))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

__AS__MEMSET(((unsigned long)(&sRcv)),0,65536);

}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2316))){
(bRstConnection=1);

__AS__MEMSET(((unsigned long)(&sRcv)),0,65536);

}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2318))){
(bRstConnection=1);

__AS__MEMSET(((unsigned long)(&sRcv)),0,65536);

}else if((((unsigned long)fbRcv.udiStatus<(unsigned long)65534))){
(eStatus1=3);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)2300))){
(udiStatus1=10014);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2319))){
(udiStatus1=10015);
}else{
(udiStatus1=fbRcv.udiStatus);
}

__AS__MEMSET(((unsigned long)(&sRcv)),0,65536);

}

}

}imp13_else1_4:imp13_end1_0:imp13_else0_0:imp13_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_TCPSend.st"
static void __AS__Action__Act_Background_TCPSend(void){
{

if(((__AS__STRING_CMP(a_sMsgSend[0],"")!=0))){

__AS__MEMSET(((unsigned long)(&sSnd)),0,65536);

{int zzIndex; plcstring* zzLValue=(plcstring*)sSnd; plcstring* zzRValue=(plcstring*)a_sMsgSend[0]; for(zzIndex=0; zzIndex<65535l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(udiSndMsgLen=LEN(sSnd));


(fbSend.udiTCPIdent=udiTCPIdent);
(fbSend.udiSndSize=udiSndMsgLen);
(fbSend.bEn=1);;fbTCPSnd(&fbSend);

if((((unsigned long)fbSend.udiStatus==(unsigned long)0))){

fLogDTConvert(((unsigned long)(&sDT)),((*(p_dtCurrDT))));
__AS__MEMSET(((unsigned long)(&a_sLogList[udiLogCntr-1])),0,65536);
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&sDT)),LEN(sDT));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"\r\n")),LEN("\r\n"));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"SND_TO_AIV\r\n")),LEN("SND_TO_AIV\r\n"));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&sSnd)),LEN(sSnd));
__AS__MEMCPY((((unsigned long)(&a_sLogList[udiLogCntr-1]))+LEN(a_sLogList[udiLogCntr-1])),((unsigned long)(&"\r\n\r\n")),LEN("\r\n\r\n"));

(udiLogCntr=(udiLogCntr+1));
if((((unsigned long)udiLogCntr==(unsigned long)11))){
(udiLogCntr=1);
}

if((((signed long)(signed long)(short)iHistoryCntr<(signed long)(signed long)(short)9))){
(a_tyHistoryList[iHistoryCntr-1].eTCP=2);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[iHistoryCntr-1].sMsg; plcstring* zzRValue=(plcstring*)sSnd; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(iHistoryCntr=(iHistoryCntr+1));
}else{
memmove(((unsigned long)(&a_tyHistoryList[1-1])),((unsigned long)(&a_tyHistoryList[2-1])),1456);
__AS__MEMSET(((unsigned long)(&a_tyHistoryList[8-1])),0,208);
(a_tyHistoryList[8-1].eTCP=2);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_tyHistoryList[8-1].sMsg; plcstring* zzRValue=(plcstring*)sSnd; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

__AS__MEMCPY(((unsigned long)(&a_sMsgSend[0])),((unsigned long)(&a_sMsgSend[1])),3276800);
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMsgSend[50]; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(udiMsgSendBffr=(udiMsgSendBffr-1));

(fbSend.bEn=0);;fbTCPSnd(&fbSend);

}else if((((unsigned long)fbSend.udiStatus==(unsigned long)2321))){
(bRstConnection=1);

}else if((((unsigned long)fbSend.udiStatus<(unsigned long)65534))){
(eStatus1=3);

if((((unsigned long)fbSend.udiStatus==(unsigned long)2300))){
(udiStatus1=10024);
}else if((((unsigned long)fbSend.udiStatus==(unsigned long)2320))){
(udiStatus1=10025);
}else if((((unsigned long)fbSend.udiStatus==(unsigned long)2322))){
(udiStatus1=10026);
}else{
(udiStatus1=fbSend.udiStatus);
}

}

}

}imp14_end4_0:imp14_else1_2:imp14_end1_0:imp14_else0_0:imp14_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_TCPClose.st"
static void __AS__Action__Act_Background_TCPClose(void){
{

(fbClose.udiTCPIdent=udiTCPIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(udiTCPIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

(bRstConnection=0);

}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(udiTCPIdent=0);
(eStatus1=3);

if((((unsigned long)fbClose.udiStatus==(unsigned long)2300))){
(udiStatus1=10027);
}else if((((unsigned long)fbClose.udiStatus==(unsigned long)2310))){
(udiStatus1=10028);
}else{
(udiStatus1=fbClose.udiStatus);
}

}


}imp10_end1_0:imp10_else0_1:imp10_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Client/Act_Background_Stop.st"
static void __AS__Action__Act_Background_Stop(void){
{
if((((unsigned long)(unsigned char)bStop==(unsigned long)(unsigned char)1))){

if(((__AS__STRING_CMP(a_sMsgSend[0],"")==0))){

(bRstConnection=1);

if((((unsigned long)udiTCPIdent==(unsigned long)0))){

(bRun=0);

}

}

}

}imp9_else2_0:imp9_end2_0:imp9_else1_0:imp9_end1_0:imp9_else0_0:imp9_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Server/Act_TCPSvr.st"
static void __AS__Action__Act_TCPSvr(void){
{
switch(usiStep){
case 0:{

if((((unsigned long)udiSvrIdent==(unsigned long)0))){

if((((__AS__STRING_CMP(((*(p_sSvrIP))),"")!=0))&(((unsigned long)(unsigned short)((*(p_uiSvrPort)))!=(unsigned long)(unsigned short)0)))){
(usiStep=1);
}

}else if((((unsigned long)udiTCPIdent==(unsigned long)0))){

(usiStep=2);

}

}break;case 1:{

{int zzIndex; plcstring* zzLValue=(plcstring*)fbTCPSvrCreateSvr.sSvrIP; plcstring* zzRValue=(plcstring*)((*(p_sSvrIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbTCPSvrCreateSvr.uiSvrPort=((*(p_uiSvrPort))));
(fbTCPSvrCreateSvr.udiAliveIdleTmInSec=1);
(fbTCPSvrCreateSvr.bEn=1);;fbTCPCreateSvr(&fbTCPSvrCreateSvr);

if((((unsigned long)fbTCPSvrCreateSvr.udiStatus==(unsigned long)0))){
(udiSvrIdent=fbTCPSvrCreateSvr.udiTCPIdent);
(fbTCPSvrCreateSvr.bEn=0);;fbTCPCreateSvr(&fbTCPSvrCreateSvr);

(usiStep=2);

}else if((((unsigned long)fbTCPSvrCreateSvr.udiStatus<(unsigned long)65534))){
(fbTCPSvrCreateSvr.bEn=0);;fbTCPCreateSvr(&fbTCPSvrCreateSvr);

}

if((((unsigned long)(unsigned char)((*(p_bReconnect)))==(unsigned long)(unsigned char)1))){
(fbTCPSvrCreateSvr.bEn=0);;fbTCPCreateSvr(&fbTCPSvrCreateSvr);

(usiStep=4);
}

}break;case 2:{

if((((unsigned long)udiSvrIdent!=(unsigned long)0))){

(fbTCPSvrSvrListenFltr.bFltrIP=((*(p_bFltrIP))));
(fbTCPSvrSvrListenFltr.bFltrPort=((*(p_bFltrPort))));
{int zzIndex; plcstring* zzLValue=(plcstring*)fbTCPSvrSvrListenFltr.a_sConfigIP[1-1]; plcstring* zzRValue=(plcstring*)((*(p_sAllwClntIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbTCPSvrSvrListenFltr.a_uiConfigPort[1-1]=((*(p_uiAllwClntPort))));
(fbTCPSvrSvrListenFltr.udiSvrIdent=udiSvrIdent);
(fbTCPSvrSvrListenFltr.bEn=1);;fbTCPSvrListenFltr(&fbTCPSvrSvrListenFltr);

if((((unsigned long)fbTCPSvrSvrListenFltr.udiStatus==(unsigned long)0))){

if((((unsigned long)(unsigned char)fbTCPSvrSvrListenFltr.bRejected==(unsigned long)(unsigned char)0))){
(udiTCPIdent=fbTCPSvrSvrListenFltr.udiClntIdent);
(fbTCPSvrSvrListenFltr.bEn=0);;fbTCPSvrListenFltr(&fbTCPSvrSvrListenFltr);
(bConnected=1);

(usiStep=3);
}else{
(fbTCPSvrSvrListenFltr.bEn=0);;fbTCPSvrListenFltr(&fbTCPSvrSvrListenFltr);
}

}else if((((unsigned long)fbTCPSvrSvrListenFltr.udiStatus<(unsigned long)65534))){
(fbTCPSvrSvrListenFltr.bEn=0);;fbTCPSvrListenFltr(&fbTCPSvrSvrListenFltr);

}

}else{

(usiStep=0);

}

if((((unsigned long)(unsigned char)((*(p_bReconnect)))==(unsigned long)(unsigned char)1))){
(fbTCPSvrSvrListenFltr.bEn=0);;fbTCPSvrListenFltr(&fbTCPSvrSvrListenFltr);

(usiStep=4);
}

}break;case 3:{

if(((((unsigned long)udiTCPIdent!=(unsigned long)0))&(((unsigned long)(unsigned char)bMsgSnd==(unsigned long)(unsigned char)1)))){

(fbSend.udiTCPIdent=udiTCPIdent);
(fbSend.p_BffrDest=((unsigned long)(&sMsgSnd)));
(fbSend.udiSndSize=LEN(sMsgSnd));
(fbSend.bEn=1);;fbTCPSnd(&fbSend);

if((((unsigned long)fbSend.udiStatus==(unsigned long)0))){
(bMsgSnd=0);
(eSvrStat=0);
(fbSend.bEn=0);;fbTCPSnd(&fbSend);

}else if((((unsigned long)fbSend.udiStatus==(unsigned long)2320))){
(bMsgSnd=0);
(fbSend.bEn=0);;fbTCPSnd(&fbSend);

}else if((((unsigned long)fbSend.udiStatus<(unsigned long)65534))){
(bMsgSnd=0);
(fbSend.bEn=0);;fbTCPSnd(&fbSend);

(usiStep=4);

}

}else{
(fbSend.bEn=0);;fbTCPSnd(&fbSend);

}


if((((unsigned long)udiTCPIdent!=(unsigned long)0))){

(fbRcv.udiTCPIdent=udiTCPIdent);
(fbRcv.p_BffrDest=((unsigned long)(&sMsgRcv)));
(fbRcv.udiBffrSize=65536);
(fbRcv.bEn=1);;fbTCPRcv(&fbRcv);

if((((signed long)eSvrStat!=(signed long)3))){
(eSvrStat=1);
}

if((((unsigned long)fbRcv.udiStatus==(unsigned long)0))){
(bMsgRcv=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sSvrMsgRcv; plcstring* zzRValue=(plcstring*)sMsgRcv; for(zzIndex=0; zzIndex<65535l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2316))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(usiStep=4);

}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2317))){

(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);
__AS__MEMSET(((unsigned long)(&sMsgRcv)),0,65536);

}else if((((unsigned long)fbRcv.udiStatus<(unsigned long)65534))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(usiStep=4);

}

}else{
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

}

if((((unsigned long)udiTCPIdent==(unsigned long)0))){
(usiStep=0);
}

if((((unsigned long)(unsigned char)((*(p_bReconnect)))==(unsigned long)(unsigned char)1))){
(fbSend.bEn=0);;fbTCPSnd(&fbSend);
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(usiStep=4);
}

}break;case 4:{

if((((unsigned long)udiTCPIdent!=(unsigned long)0))){

(fbClose.udiTCPIdent=udiTCPIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(udiTCPIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);
(bConnected=0);

(usiStep=5);

}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(udiTCPIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);
(bConnected=0);

}

}else{
(usiStep=5);

}

}break;case 5:{

if((((unsigned long)udiSvrIdent!=(unsigned long)0))){

(fbClose.udiTCPIdent=udiSvrIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(udiSvrIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

(usiStep=0);

}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(udiSvrIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

}

}else{
(usiStep=0);

}

}break;}

}imp25_case0_5:imp25_endcase0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Server/Act_TCPSvrProcess.st"
static void __AS__Action__Act_TCPSvrProcess(void){
{
switch(eSvrStat){
case 0:{

}break;case 1:{


(eMagAGVStatus[0]=str2usint(LEFT(sSvrMsgRcv,(FIND(sSvrMsgRcv,",")-1))));
(iSeparator=FIND(sSvrMsgRcv,"\r\n"));
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[0]; plcstring* zzRValue=(plcstring*)LEFT(sSvrMsgRcv,(iSeparator-1)); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
for((i=0);i<=(((*(p_usiProjMag)))+(3+(2*((*(p_usiProjMag))))));i+=1){
(iSeparator=FIND(sData[i],","));
if((((signed long)(signed long)(short)iSeparator==(signed long)(signed long)(short)0))){

}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[(i+1)]; plcstring* zzRValue=(plcstring*)DELETE(sData[i],(iSeparator+1),0); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}imp26_endfor1_0:;

if(bSingleMagLine){
(eMagAGVStatus[1]=str2usint(sData[1]));
}else{
(eMagAGVStatus[1]=str2usint(LEFT(sData[1],(FIND(sData[1],",")-1))));
}

(eMagAGVStatus[2]=str2usint(LEFT(sData[2],(FIND(sData[2],",")-1))));
if((((unsigned long)(unsigned char)((*(p_usiProjMag)))==(unsigned long)(unsigned char)0))){
(eMagAGVStatus[3]=str2usint(sData[3]));
}else{
(eMagAGVStatus[3]=str2usint(LEFT(sData[3],(FIND(sData[3],",")-1))));
(eMagAGVStatus[4]=str2usint(LEFT(sData[4],(FIND(sData[4],",")-1))));
(eMagAGVStatus[5]=str2usint(LEFT(sData[5],(FIND(sData[5],",")-1))));
(eMagAGVStatus[6]=str2usint(LEFT(sData[6],(FIND(sData[6],",")-1))));
(eMagAGVStatus[7]=str2usint(sData[7]));
}

if((((unsigned long)(unsigned char)((*(p_usiProjMag)))==(unsigned long)(unsigned char)1))){
(eMagAGVStatus[5]=str2usint(sData[5]));
}else{
(eMagAGVStatus[5]=str2usint(LEFT(sData[5],(FIND(sData[5],",")-1))));
(eMagAGVStatus[6]=str2usint(LEFT(sData[6],(FIND(sData[6],",")-1))));
(eMagAGVStatus[7]=str2usint(sData[7]));
}





if(((((signed long)eMagAGVStatus[0]>(signed long)13))|(((signed long)eMagAGVStatus[1]>(signed long)12))|(((signed long)eMagAGVStatus[2]>(signed long)23))|(((signed long)eMagAGVStatus[3]>(signed long)22))|(((signed long)eMagAGVStatus[4]>(signed long)33))|(((signed long)eMagAGVStatus[5]>(signed long)32))|(((signed long)eMagAGVStatus[6]>(signed long)43))|(((signed long)eMagAGVStatus[7]>(signed long)42))|(((signed long)eMagAGVStatus[0]<(signed long)10))|(((signed long)eMagAGVStatus[1]<(signed long)10))|(((signed long)eMagAGVStatus[2]<(signed long)20))|(((signed long)eMagAGVStatus[3]<(signed long)20))|(((signed long)eMagAGVStatus[4]<(signed long)30))|(((signed long)eMagAGVStatus[5]<(signed long)30))|(((signed long)eMagAGVStatus[6]<(signed long)40))|(((signed long)eMagAGVStatus[7]<(signed long)40)))){
(eSvrStatus=3);
}

}break;case 2:{


(iSeparator=FIND(sSvrMsgRcv,"\r\n"));
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[0]; plcstring* zzRValue=(plcstring*)LEFT(sSvrMsgRcv,(iSeparator-1)); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[3]; plcstring* zzRValue=(plcstring*)DELETE(sSvrMsgRcv,(iSeparator+2),0); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

for((i=0);i<=5;i+=1){
(iSeparator=FIND(sData[i],","));
if((((signed long)(signed long)(short)iSeparator==(signed long)(signed long)(short)0))){

}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[(i+1)]; plcstring* zzRValue=(plcstring*)DELETE(sData[i],(iSeparator+1),0); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}imp26_endfor7_0:;


(iSeparator=FIND(sData[(i-1)],"\r\n"));
if((((signed long)(signed long)(short)iSeparator==(signed long)(signed long)(short)0))){

}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sData[(i-1)]; plcstring* zzRValue=(plcstring*)DELETE(sData[(i-1)],(iSeparator+1),iSeparator); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}


{int zzIndex; plcstring* zzLValue=(plcstring*)tyAGVCurr[1-1].sAGVMag; plcstring* zzRValue=(plcstring*)LEFT(sData[0],(FIND(sData[0],",")-1)); for(zzIndex=0; zzIndex<10l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAGVCurr[1-1].eAGVStatus=str2usint(LEFT(sData[1],(FIND(sData[1],",")-1))));
(tyAGVCurr[1-1].usiAGVReq=str2usint(sData[2]));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAGVCurr[2-1].sAGVMag; plcstring* zzRValue=(plcstring*)LEFT(sData[3],(FIND(sData[3],",")-1)); for(zzIndex=0; zzIndex<10l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAGVCurr[2-1].eAGVStatus=str2usint(LEFT(sData[4],(FIND(sData[4],",")-1))));
(tyAGVCurr[2-1].usiAGVReq=str2usint(sData[5]));

}break;case 3:{


if(tyDTMagToAGV.bCI1Rdy){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[0]; plcstring* zzRValue=(plcstring*)"12"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[0]; plcstring* zzRValue=(plcstring*)"10"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
if(tyDTMagToAGV.bCI1MagazineFull){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[1]; plcstring* zzRValue=(plcstring*)"13"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[1]; plcstring* zzRValue=(plcstring*)"10"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(tyDTMagToAGV.bCI2Rdy){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[2]; plcstring* zzRValue=(plcstring*)"22"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[2]; plcstring* zzRValue=(plcstring*)"20"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
if(tyDTMagToAGV.bCI2MagazineFull){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[3]; plcstring* zzRValue=(plcstring*)"23"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[3]; plcstring* zzRValue=(plcstring*)"20"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(tyDTMagToAGV.bCI3Rdy){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[4]; plcstring* zzRValue=(plcstring*)"32"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[4]; plcstring* zzRValue=(plcstring*)"30"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
if(tyDTMagToAGV.bCI3MagazineFull){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[5]; plcstring* zzRValue=(plcstring*)"33"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[5]; plcstring* zzRValue=(plcstring*)"30"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(tyDTMagToAGV.bCI4Rdy){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[6]; plcstring* zzRValue=(plcstring*)"42"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[6]; plcstring* zzRValue=(plcstring*)"40"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
if(tyDTMagToAGV.bCI4MagazineFull){
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[7]; plcstring* zzRValue=(plcstring*)"43"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)a_sMagMcStatus[7]; plcstring* zzRValue=(plcstring*)"40"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((((unsigned long)(unsigned char)((*(p_usiProjMag)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)bSingleMagLine==(unsigned long)(unsigned char)0)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgSnd; plcstring* zzRValue=(plcstring*)CONCAT(CONCAT(CONCAT(CONCAT(a_sMagMcStatus[0],","),CONCAT(a_sMagMcStatus[1],",")),CONCAT(a_sMagMcStatus[2],",")),CONCAT(a_sMagMcStatus[3],"\r\n")); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bMsgSnd=1);
}else if(bSingleMagLine){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgSnd; plcstring* zzRValue=(plcstring*)CONCAT(CONCAT(a_sMagMcStatus[0],","),CONCAT(a_sMagMcStatus[1],"\r\n")); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bMsgSnd=1);
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgSnd; plcstring* zzRValue=(plcstring*)CONCAT(CONCAT(CONCAT(CONCAT(a_sMagMcStatus[0],","),CONCAT(a_sMagMcStatus[1],",")),CONCAT(a_sMagMcStatus[2],",")),a_sMagMcStatus[3]); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgSnd; plcstring* zzRValue=(plcstring*)CONCAT(CONCAT(CONCAT(CONCAT(CONCAT(sMsgSnd,","),CONCAT(a_sMagMcStatus[4],",")),CONCAT(a_sMagMcStatus[5],",")),CONCAT(a_sMagMcStatus[6],",")),CONCAT(a_sMagMcStatus[7],"\r\n")); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(bMsgSnd=1);
}

}break;}



(bUBA=(((signed long)eMagAGVStatus[0]==(signed long)13)));
(bUBA2=(((signed long)eMagAGVStatus[2]==(signed long)23)));
(bDSB=(((signed long)eMagAGVStatus[1]==(signed long)12)));
(bDSB2=(((signed long)eMagAGVStatus[3]==(signed long)22)));


(tyDTMagToAGV.bCI1Rdy=((*(p_bUSB))));
(tyDTMagToAGV.bCI1MagazineFull=((*(p_bDBA))));
(tyDTMagToAGV.bCI2Rdy=((*(p_bUSB2))));
(tyDTMagToAGV.bCI2MagazineFull=((*(p_bDBA2))));

(fbTrig.CLK=((*(p_bUSB))));;RF_TRIG(&fbTrig);
(fbTrig1.CLK=((*(p_bDBA))));;RF_TRIG(&fbTrig1);
(fbTrig2.CLK=((*(p_bUSB2))));;RF_TRIG(&fbTrig2);
(fbTrig3.CLK=((*(p_bDBA2))));;RF_TRIG(&fbTrig3);

if((fbTrig.Q|fbTrig1.Q|fbTrig2.Q|fbTrig3.Q)){
(eSvrStat=3);
}

}imp26_else19_0:imp26_end19_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Main_Disable.st"
static void __AS__Action__Act_Main_Disable(void){
{
(bConnected=0);

}}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_CombineErr.st"
static void __AS__Action__Act_CombineErr(void){
{

if(((((signed long)eStatus==(signed long)3))|(((signed long)eStatus1==(signed long)3))|(((signed long)eStatus2==(signed long)3)))){
(eMainStatus=3);
}else{
(eMainStatus=eStatus);
}

}imp15_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sTCPProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData.udiCode>(unsigned long)10199)))){
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
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Alarm1.st"
static void __AS__Action__Act_Alarm1(void){
{

if(((((signed long)eStatus1==(signed long)3))&~Edge0000300000&1?((Edge0000300000=(((signed long)eStatus1==(signed long)3))&1),1):((Edge0000300000=(((signed long)eStatus1==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData1.udiCode=udiStatus1);
(tyAlmData1.eSeverity=1);
(tyAlmData1.udiRunTime=(tyAlmData1.udiRunTime+1));
(tyAlmData1.bAlm=1);
(tyAlmData1.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sTCPProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData1.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData1.udiCode>(unsigned long)10199)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData1.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)tyAlmData1.sAlmMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((bRstErr&(((unsigned long)tyAlmData1.udiCode!=(unsigned long)0)))){

(tyAlmData1.udiCode=0);
(tyAlmData1.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData1.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData1.bAlm=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp3_else0_1:imp3_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Alarm2.st"
static void __AS__Action__Act_Alarm2(void){
{

if(((((signed long)eStatus2==(signed long)3))&~Edge0000400000&1?((Edge0000400000=(((signed long)eStatus2==(signed long)3))&1),1):((Edge0000400000=(((signed long)eStatus2==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData2.udiCode=udiStatus2);
(tyAlmData2.eSeverity=1);
(tyAlmData2.udiRunTime=(tyAlmData2.udiRunTime+1));
(tyAlmData2.bAlm=1);
(tyAlmData2.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sTCPProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


if(((((unsigned long)tyAlmData2.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData2.udiCode>(unsigned long)10199)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData2.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData2.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)tyAlmData2.sAlmMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((bRstErr&(((unsigned long)tyAlmData2.udiCode!=(unsigned long)0)))){

(tyAlmData2.udiCode=0);
(tyAlmData2.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData2.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData2.bAlm=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp4_else0_1:imp4_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Act_Alarm3.st"
static void __AS__Action__Act_Alarm3(void){
{

if((((unsigned long)(unsigned char)bConnected==(unsigned long)(unsigned char)0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData3.udiCode=udiStatus3);
(tyAlmData3.eSeverity=2);
(tyAlmData3.udiRunTime=(tyAlmData3.udiRunTime+1));
(tyAlmData3.bWarning=1);
(tyAlmData3.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sTCPProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyAlmData3.udiCode<(unsigned long)10000))|(((unsigned long)tyAlmData3.udiCode>(unsigned long)10199)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)"Unknown"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData3.udiCode-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyAlmData3.udiCode-10000].sRcyText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)tyAlmData3.sAlmMsg; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((bConnected&(((unsigned long)tyAlmData3.udiCode!=(unsigned long)0)))){

(tyAlmData3.udiCode=0);
(tyAlmData3.eSeverity=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sAlmMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData3.sRcyMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData3.bWarning=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp5_else0_1:imp5_end0_0:;}
#line 50 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.nodebug"

void __AS__ImplInitCyclic_st(void){}

signed long __AS__STRING_CMP(char* pstr1, char* pstr2)
{while (*pstr1 != 0 && *pstr1 == *pstr2){ pstr1++;pstr2++; } return (*pstr1 == 0 && *pstr2 != 0) ? -1 : (*pstr1 != 0 && *pstr2 == 0) ? 1 : *pstr1 - *pstr2;}

unsigned long __AS__MEMCPY(unsigned long pDest, unsigned long pSrc, unsigned long length)
{memcpy((char*)pDest, (char*)pSrc, length); return pDest + length;}

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
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCP/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/TCP/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/TCP/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCP/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/23Mag_UL_MagPlatORLifTrav_Estun_laneMag/X20CP0483/TCP/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'a_sMsgSend'\\n\"");
__asm__(".ascii \"plcdata_const 'sMsgRcv'\\n\"");
__asm__(".ascii \"plcdata_const 'sSnd'\\n\"");
__asm__(".ascii \"plcdata_const 'sRcv'\\n\"");
__asm__(".ascii \"plcdata_const 'a_sLogList'\\n\"");
__asm__(".ascii \"plcdata_const 'a_tyHistoryList'\\n\"");
__asm__(".ascii \"plcdata_const 'tyAIVMsgRcvData'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diTCPClntNum'\\n\"");
__asm__(".previous");
