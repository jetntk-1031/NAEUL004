#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/TCPBtm/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.st"
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
__AS__Action__Act_Background();
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

}imp12_end0_0:;}
#line 40 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{





(p_bPrep=p_NtParamProjScanPrep);
(p_bEn=p_McParamBtmScannerEn);
(p_udiRstErr=p_RstErrReset);

(p_sClntIP=p_HWInfoIPAddr);
(p_sSvrIP=p_McParamBtmScanIP);
(p_uiSvrPort=p_McParamBtmScanPort);
(p_bRun=p_OpsRun);

(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);



}}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if(((*(p_bRun)))){
(p_eAct=p_OpsTravLifULBtmScan);
}else{
(p_eAct=((unsigned long)(&eAct)));
}

}imp8_end0_0:;}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


}}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Link.st"
static void __AS__Action__Act_Link(void){
{

if((bTest&~Edge0000700000&1?((Edge0000700000=bTest&1),1):((Edge0000700000=bTest&1),0))){
(iStartCodeLen=2);
(siStartCode1=(signed char)((*(p_diStartCode1))));
(siStartCode2=(signed char)((*(p_diStartCode2))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode1)),1);
memmove((((unsigned long)(&sStartCode))+1),((unsigned long)(&siStartCode2)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));
}

}imp7_else0_0:imp7_end0_0:;}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

if(((bRstConnection&(((signed long)eStat==(signed long)0)))|((bRstErr|(((unsigned long)(unsigned char)fbClose.bEn==(unsigned long)(unsigned char)1)))&(((unsigned long)udiTCPIdent1!=(unsigned long)0))&(((signed long)eStat==(signed long)0))))){
(fbClose.udiTCPIdent=udiTCPIdent1);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(udiTCPIdent=0);
(fbClose.bEn=0);;fbTCPClose(&fbClose);
(bRstConnection=0);
(udiTCPIdent1=0);
}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(udiTCPIdent=0);
(eStatus=3);

if((((unsigned long)fbClose.udiStatus==(unsigned long)2300))){
(udiStatus=10146);
}else if((((unsigned long)fbClose.udiStatus==(unsigned long)2310))){
(udiStatus=10147);
}else{
(udiStatus=fbClose.udiStatus);
}

}
}


}imp11_end3_0:imp11_else2_1:imp11_end2_0:imp11_else1_0:imp11_end1_0:;}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));

(p_sClntIP=((unsigned long)(&sClntIP)));
(p_sSvrIP=((unsigned long)(&sSvrIP)));
(p_uiClntPort=((unsigned long)(&uiClntPort)));
(p_uiSvrPort=((unsigned long)(&uiSvrPort)));
(p_bRun=((unsigned long)(&bRun)));
(p_udiSndBffrSize=((unsigned long)(&udiSndBffrSize)));
(p_udiRcvBffrSize=((unsigned long)(&udiRcvBffrSize)));
(p_udiAliveIdleTmInSec=((unsigned long)(&udiAliveIdleTmInSec)));
(p_tConnectTO=((unsigned long)(&tConnectTO)));
(p_sMsgWr=((unsigned long)(&sMsgWr)));
(p_diStartCode1=((unsigned long)(&diStartCode1)));
(p_diStartCode2=((unsigned long)(&diStartCode2)));
(p_diEndCode1=((unsigned long)(&diEndCode1)));
(p_diEndCode2=((unsigned long)(&diEndCode2)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

}}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(fbClntConnect.udiSndBffrSize=((*(p_udiSndBffrSize))));
(fbClntConnect.udiRcvBffrSize=((*(p_udiRcvBffrSize))));
(fbClntConnect.udiAliveIdleTmInSec=((*(p_udiAliveIdleTmInSec))));
(fbClntConnect.tConnectTO=((*(p_tConnectTO))));
(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);

(fbSnd.bEn=0);;fbTCPSnd(&fbSnd);

(fbRcv.udiBffrSize=81);
(fbRcv.p_BffrDest=((unsigned long)(&sFullMsgRd)));
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);

(fbClose.bEn=0);;fbTCPClose(&fbClose);

}}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Action.st"
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
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Main.st"
static void __AS__Action__Act_Main(void){
{

switch(eStat){

case 0:{
if((((signed long)eStatus!=(signed long)0))){

(fbClntConnect.bEn=0);;fbTCPClntConnect(&fbClntConnect);
(fbSnd.bEn=0);;fbTCPSnd(&fbSnd);
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);
(fbClose.bEn=0);;fbTCPClose(&fbClose);

(udiTCPIdent=0);
(usiStep=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(usiStep){
case 0:{
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sClntIP; plcstring* zzRValue=(plcstring*)((*(p_sClntIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sSvrIP; plcstring* zzRValue=(plcstring*)((*(p_sSvrIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbClntConnect.uiClntPort=((*(p_uiClntPort))));
(fbClntConnect.uiSvrPort=((*(p_uiSvrPort))));
(fbClntConnect.bEn=1);;fbTCPClntConnect(&fbClntConnect);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)0))){
(udiTCPIdent=fbClntConnect.udiTCPIdent);
(usiStep=1);
}else if((((unsigned long)fbClntConnect.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2309))){
(udiStatus=10000);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2300))){
(udiStatus=10001);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2307))){
(udiStatus=10002);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2306))){
(udiStatus=10003);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2308))){
(udiStatus=10004);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2305))){
(udiStatus=10005);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2304))){
(udiStatus=10006);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2303))){
(udiStatus=10007);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2302))){
(udiStatus=10008);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2313))){
(udiStatus=10009);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2314))){
(udiStatus=10010);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2315))){
(udiStatus=10011);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2323))){
(udiStatus=10012);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2310))){
(udiStatus=10013);
}
}

}break;case 1:{
(fbSnd.udiTCPIdent=udiTCPIdent);
(fbSnd.udiSndSize=LEN(((*(p_sMsgWr)))));
(fbSnd.p_BffrDest=((unsigned long)(&((*(p_sMsgWr))))));
(fbSnd.bEn=1);;fbTCPSnd(&fbSnd);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)0))){
(usiStep=2);
}else if((((unsigned long)fbSnd.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)2320))){
(udiStatus=10014);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2300))){
(udiStatus=10015);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2321))){
(udiStatus=10016);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2322))){
(udiStatus=10017);
}
}

}break;case 2:{
(fbRcv.udiTCPIdent=udiTCPIdent);
(fbRcv.bEn=1);;fbTCPRcv(&fbRcv);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)0))){
(bMsgRdValid=1);
(uiMsgRdLen=(unsigned short)fbRcv.udiDataSizeRcv);


if(((((signed long)((*(p_diStartCode1)))!=(signed long)-1))&(((signed long)((*(p_diStartCode2)))!=(signed long)-1)))){

(iStartCodeLen=2);
(siStartCode1=(signed char)((*(p_diStartCode1))));
(siStartCode2=(signed char)((*(p_diStartCode2))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode1)),1);
memmove((((unsigned long)(&sStartCode))+1),((unsigned long)(&siStartCode2)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))!=(signed long)-1))&(((signed long)((*(p_diStartCode2)))==(signed long)-1)))){

(iStartCodeLen=1);
(siStartCode1=(signed char)((*(p_diStartCode1))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode1)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))==(signed long)-1))&(((signed long)((*(p_diStartCode2)))!=(signed long)-1)))){

(iStartCodeLen=1);
(siStartCode2=(signed char)((*(p_diStartCode2))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode2)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))==(signed long)-1))&(((signed long)((*(p_diStartCode2)))==(signed long)-1)))){

(iStartCodeLen=0);
(iStartCodePos=0);

}


if(((((signed long)((*(p_diEndCode1)))!=(signed long)-1))&(((signed long)((*(p_diEndCode2)))!=(signed long)-1)))){

(iEndCodeLen=2);
(siEndCode1=(signed char)((*(p_diEndCode1))));
(siEndCode2=(signed char)((*(p_diEndCode2))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode1)),1);
memmove((((unsigned long)(&sEndCode))+1),((unsigned long)(&siEndCode2)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))!=(signed long)-1))&(((signed long)((*(p_diEndCode2)))==(signed long)-1)))){

(iEndCodeLen=1);
(siEndCode1=(signed char)((*(p_diEndCode1))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode1)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))==(signed long)-1))&(((signed long)((*(p_diEndCode2)))!=(signed long)-1)))){

(iEndCodeLen=1);
(siEndCode2=(signed char)((*(p_diEndCode2))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode2)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))==(signed long)-1))&(((signed long)((*(p_diEndCode2)))==(signed long)-1)))){

(iEndCodeLen=0);
(iEndCodePos=0);

}

if((((signed long)(signed long)(short)iStartCodePos==(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)(signed long)(short)iEndCodePos==(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)RIGHT(sFullMsgRd,(LEN(sFullMsgRd)-((iStartCodePos+iStartCodeLen)-1))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)(signed long)(short)iEndCodePos!=(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)MID(sFullMsgRd,((iEndCodePos-iStartCodePos)-iStartCodeLen),(iStartCodePos+iStartCodeLen)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

(usiStep=3);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2317))){
(bMsgRdValid=0);
(uiMsgRdLen=0);

(usiStep=3);
}else if((((unsigned long)fbRcv.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)2316))){
(udiStatus=10018);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2300))){
(udiStatus=10019);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2318))){
(udiStatus=10020);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2319))){
(udiStatus=10021);
}
}

}break;case 3:{
(fbClose.udiTCPIdent=udiTCPIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClose.udiStatus==(unsigned long)2300))){
(udiStatus=10022);
}else if((((unsigned long)fbClose.udiStatus==(unsigned long)2310))){
(udiStatus=10023);
}
}

}break;}

}

}break;case 2:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(usiStep){
case 0:{
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sClntIP; plcstring* zzRValue=(plcstring*)((*(p_sClntIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sSvrIP; plcstring* zzRValue=(plcstring*)((*(p_sSvrIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbClntConnect.uiClntPort=((*(p_uiClntPort))));
(fbClntConnect.uiSvrPort=((*(p_uiSvrPort))));
(fbClntConnect.bEn=1);;fbTCPClntConnect(&fbClntConnect);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)0))){
(udiTCPIdent=fbClntConnect.udiTCPIdent);
(udiTCPIdent1=fbClntConnect.udiTCPIdent);

(usiStep=1);
}else if((((unsigned long)fbClntConnect.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2309))){
(udiStatus=10024);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2300))){
(udiStatus=10025);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2307))){
(udiStatus=10026);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2306))){
(udiStatus=10027);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2308))){
(udiStatus=10028);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2305))){
(udiStatus=10029);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2304))){
(udiStatus=10030);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2303))){
(udiStatus=10031);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2302))){
(udiStatus=10032);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2313))){
(udiStatus=10033);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2314))){
(udiStatus=10034);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2315))){
(udiStatus=10035);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2323))){
(udiStatus=10036);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2310))){
(udiStatus=10037);
}
}

}break;case 1:{
(fbSnd.udiTCPIdent=udiTCPIdent);
(fbSnd.udiSndSize=LEN(((*(p_sMsgWr)))));
(fbSnd.p_BffrDest=((unsigned long)(&((*(p_sMsgWr))))));
(fbSnd.bEn=1);;fbTCPSnd(&fbSnd);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)0))){
(usiStep=2);
}else if((((unsigned long)fbSnd.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)2320))){
(udiStatus=10038);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2300))){
(udiStatus=10039);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2321))){
(udiStatus=10040);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2322))){
(udiStatus=10041);
}
}

}break;case 2:{
(fbRcv.udiTCPIdent=udiTCPIdent);
(fbRcv.bEn=1);;fbTCPRcv(&fbRcv);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)0))){
(bMsgRdValid=1);
(uiMsgRdLen=(unsigned short)fbRcv.udiDataSizeRcv);


if(((((signed long)((*(p_diStartCode1)))!=(signed long)-1))&(((signed long)((*(p_diStartCode2)))!=(signed long)-1)))){

(iStartCodeLen=2);
(siStartCode1=(signed char)((*(p_diStartCode1))));
(siStartCode2=(signed char)((*(p_diStartCode2))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode1)),1);
memmove((((unsigned long)(&sStartCode))+1),((unsigned long)(&siStartCode2)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))!=(signed long)-1))&(((signed long)((*(p_diStartCode2)))==(signed long)-1)))){

(iStartCodeLen=1);
(siStartCode1=(signed char)((*(p_diStartCode1))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode1)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))==(signed long)-1))&(((signed long)((*(p_diStartCode2)))!=(signed long)-1)))){

(iStartCodeLen=1);
(siStartCode2=(signed char)((*(p_diStartCode2))));
memmove(((unsigned long)(&sStartCode)),((unsigned long)(&siStartCode2)),1);

(iStartCodePos=FIND(sFullMsgRd,sStartCode));

}else if(((((signed long)((*(p_diStartCode1)))==(signed long)-1))&(((signed long)((*(p_diStartCode2)))==(signed long)-1)))){

(iStartCodeLen=0);
(iStartCodePos=0);

}


if(((((signed long)((*(p_diEndCode1)))!=(signed long)-1))&(((signed long)((*(p_diEndCode2)))!=(signed long)-1)))){

(iEndCodeLen=2);
(siEndCode1=(signed char)((*(p_diEndCode1))));
(siEndCode2=(signed char)((*(p_diEndCode2))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode1)),1);
memmove((((unsigned long)(&sEndCode))+1),((unsigned long)(&siEndCode2)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))!=(signed long)-1))&(((signed long)((*(p_diEndCode2)))==(signed long)-1)))){

(iEndCodeLen=1);
(siEndCode1=(signed char)((*(p_diEndCode1))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode1)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))==(signed long)-1))&(((signed long)((*(p_diEndCode2)))!=(signed long)-1)))){

(iEndCodeLen=1);
(siEndCode2=(signed char)((*(p_diEndCode2))));
memmove(((unsigned long)(&sEndCode)),((unsigned long)(&siEndCode2)),1);

(iEndCodePos=FIND(sFullMsgRd,sEndCode));

}else if(((((signed long)((*(p_diEndCode1)))==(signed long)-1))&(((signed long)((*(p_diEndCode2)))==(signed long)-1)))){

(iEndCodeLen=0);
(iEndCodePos=0);

}

if((((signed long)(signed long)(short)iStartCodePos==(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)(signed long)(short)iEndCodePos==(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)RIGHT(sFullMsgRd,(LEN(sFullMsgRd)-((iStartCodePos+iStartCodeLen)-1))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)(signed long)(short)iEndCodePos!=(signed long)(signed long)(short)0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)MID(sFullMsgRd,((iEndCodePos-iStartCodePos)-iStartCodeLen),(iStartCodePos+iStartCodeLen)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

(usiStep=3);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2317))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);
}else if((((unsigned long)fbRcv.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)2316))){
(udiStatus=10042);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2300))){
(udiStatus=10043);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2318))){
(bRstConnection=1);
(udiStatus=10044);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2319))){
(udiStatus=10045);
}
}

}break;case 3:{
(fbClose.udiTCPIdent=udiTCPIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClose.udiStatus==(unsigned long)2300))){
(udiStatus=10046);
}else if((((unsigned long)fbClose.udiStatus==(unsigned long)2310))){
(udiStatus=10047);
}
}

}break;}

}

}break;case 3:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

switch(usiStep){
case 0:{
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sClntIP; plcstring* zzRValue=(plcstring*)((*(p_sClntIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbClntConnect.sSvrIP; plcstring* zzRValue=(plcstring*)((*(p_sSvrIP))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbClntConnect.uiClntPort=((*(p_uiClntPort))));
(fbClntConnect.uiSvrPort=((*(p_uiSvrPort))));
(fbClntConnect.bEn=1);;fbTCPClntConnect(&fbClntConnect);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)0))){
(udiTCPIdent=fbClntConnect.udiTCPIdent);


}else if((((unsigned long)fbClntConnect.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2309))){
(udiStatus=10024);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2300))){
(udiStatus=10025);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2307))){
(udiStatus=10026);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2306))){
(udiStatus=10027);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2308))){
(udiStatus=10028);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2305))){
(udiStatus=10029);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2304))){
(udiStatus=10030);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2303))){
(udiStatus=10031);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2302))){
(udiStatus=10032);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2313))){
(udiStatus=10033);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2314))){
(udiStatus=10034);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2315))){
(udiStatus=10035);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2323))){
(udiStatus=10036);
}else if((((unsigned long)fbClntConnect.udiStatus==(unsigned long)2310))){
(udiStatus=10037);
}
}

}break;case 1:{
(fbSnd.udiTCPIdent=udiTCPIdent);
(fbSnd.udiSndSize=LEN(((*(p_sMsgWr)))));
(fbSnd.p_BffrDest=((unsigned long)(&((*(p_sMsgWr))))));
(fbSnd.bEn=1);;fbTCPSnd(&fbSnd);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)0))){

}else if((((unsigned long)fbSnd.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbSnd.udiStatus==(unsigned long)2320))){
(udiStatus=10038);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2300))){
(udiStatus=10039);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2321))){
(udiStatus=10040);
}else if((((unsigned long)fbSnd.udiStatus==(unsigned long)2322))){
(udiStatus=10041);
}
}

}break;case 2:{
(fbRcv.udiTCPIdent=udiTCPIdent);
(fbRcv.bEn=1);;fbTCPRcv(&fbRcv);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)0))){
(bMsgRdValid=1);
(uiMsgRdLen=(unsigned short)fbRcv.udiDataSizeRcv);

{int zzIndex; plcstring* zzLValue=(plcstring*)sMsgRd; plcstring* zzRValue=(plcstring*)MID(sFullMsgRd,((iEndCodePos-iStartCodePos)-iStartCodeLen),(iStartCodePos+iStartCodeLen)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};



}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2317))){
(fbRcv.bEn=0);;fbTCPRcv(&fbRcv);
}else if((((unsigned long)fbRcv.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbRcv.udiStatus==(unsigned long)2316))){
(udiStatus=10042);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2300))){
(udiStatus=10043);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2318))){
(udiStatus=10044);
}else if((((unsigned long)fbRcv.udiStatus==(unsigned long)2319))){
(udiStatus=10045);
}
}

}break;case 3:{
(fbClose.udiTCPIdent=udiTCPIdent);
(fbClose.bEn=1);;fbTCPClose(&fbClose);

if((((unsigned long)fbClose.udiStatus==(unsigned long)0))){

}else if((((unsigned long)fbClose.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbClose.udiStatus==(unsigned long)2300))){
(udiStatus=10046);
}else if((((unsigned long)fbClose.udiStatus==(unsigned long)2310))){
(udiStatus=10047);
}
}


}break;}
}
}break;}

}imp10_case0_3:imp10_endcase0_0:;}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
}}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));


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

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp2_else0_1:imp2_end0_0:;}
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPBtm/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPBtm/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/TCP/TCPBtm/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/TCPBtm/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/TCPBtm/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/TCP/TCPBtm/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/TCPBtm/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'sFullMsgRd'\\n\"");
__asm__(".previous");
