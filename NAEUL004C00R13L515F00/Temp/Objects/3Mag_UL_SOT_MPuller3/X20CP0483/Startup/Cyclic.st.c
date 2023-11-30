#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Startup/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.st"
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

}

}imp21_end0_0:;}
#line 24 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{





(p_eAct=p_UIStartupAct);
(p_tyNtParamCurr=p_NtParamCurr);
(p_tyMcParamCurr=p_McParamCurr);

(p_bUIMismatchOverWriteConfig=p_UIMismatchOverWriteConfig);
(p_bUITempAddrFillDone=p_UITempAddrFillDone);
(p_bUIChgConfigDone=p_UIIPConfigChgDone);
(p_bUIOverwriteIP=p_UIOverwriteIP);
(p_bUIOverwriteSubnet=p_UIOverwriteSubnet);
(p_bUIOverwriteEthMode=p_UIOverwriteEthMode);

(p_eUsrFolderStat=p_UsrFolderStat);
(p_eUsrFolderStatus=p_UsrFolderStatus);

(p_eHWInfoStat=p_HWInfoStat);
(p_eHWInfoStatus=p_HWInfoStatus);
(p_sHWInfoIPAddr=p_HWInfoIPAddr);
(p_sHWInfoSubnetMask=p_HWInfoSubnetMask);
(p_udiHWInfoEthMode=p_HWInfoEthMode);

(p_eLibVerStat=p_LibVerStat);
(p_eLibVerStatus=p_LibVerStatus);

(p_eNtParamStat=p_NtParamStat);
(p_eNtParamStatus=p_NtParamStatus);

(p_eMcParamStat=p_McParamStat);
(p_eMcParamStatus=p_McParamStatus);

(p_eProdRcpStat=p_ProdRcpStat);
(p_eProdRcpStatus=p_ProdRcpStatus);

(p_eMpProdRcpStat=p_MpProdRcpStat);
(p_eMpProdRcpStatus=p_MpProdRcpStatus);

(p_eMagRcpStat=p_MagRcpStat);
(p_eMagRcpStatus=p_MagRcpStatus);

(p_eUsrMgmtStat=p_UsrMgmtStat);
(p_eUsrMgmtStatus=p_UsrMgmtStatus);

(p_eBuffer1Stat=p_Buffer1Stat);
(p_eBuffer1Status=p_Buffer1Status);
(p_bMagPresentSensor1=p_DIMagPresentSen1);
(p_bMagPresent1=p_Buffer1MagPresent);

(p_eBuffer2Stat=p_Buffer2Stat);
(p_eBuffer2Status=p_Buffer2Status);
(p_bMagPresentSensor2=p_DIMagPresentSen2);
(p_bMagPresent2=p_Buffer2MagPresent);

(p_eBuffer3Stat=p_Buffer3Stat);
(p_eBuffer3Status=p_Buffer3Status);
(p_bMagPresentSensor3=p_DIMagPresentSen3);
(p_bMagPresent3=p_Buffer3MagPresent);

(p_eAlarmStat=p_AlarmStat);
(p_eAlarmStatus=p_AlarmStatus);

(p_eHermesStat=p_HermesStat);
(p_eHermesStatus=p_HermesStatus);

(p_eRmtHermesStat=p_RmtHermesStat);
(p_eRmtHermesStatus=p_RmtHermesStatus);

(p_eUSHermesAStat=p_USHermesAStat);
(p_eUSHermesAStatus=p_USHermesAStatus);

(p_eUSHermesBStat=p_USHermesBStat);
(p_eUSHermesBStatus=p_USHermesBStatus);

(p_eSvyHermesStat=p_SvyHermesStat);
(p_eSvyHermesStatus=p_SvyHermesStatus);



(p_eAWPushOrPullerStat=p_AWPushOrPullerStat);
(p_eAWPushOrPullerStatus=p_AWPushOrPullerStatus);

(p_eAWStat=p_AWOpenStat);
(p_eAWStatus=p_AWOpenStatus);

(p_eTravStat=p_TravStat);
(p_eTravStatus=p_TravStatus);

(p_eLifterStat=p_LifterBtmStat);
(p_eLifterStatus=p_LifterBtmStatus);

(p_eLifter2Stat=p_Lifter2Stat);
(p_eLifter2Status=p_Lifter2Status);

(p_eUIStat=p_UIStat);
(p_eUIStatus=p_UIStatus);

(p_eMagAW1Stat=p_MagAWOpen1Stat);
(p_eMagAW1Status=p_MagAWOpen1Status);

(p_eMagAW2Stat=p_MagAWOpen2Stat);
(p_eMagAW2Status=p_MagAWOpen2Status);

(p_eMagAW3Stat=p_MagAWOpen3Stat);
(p_eMagAW3Status=p_MagAWOpen3Status);


(p_bNtParamAutoRcpPrep=p_NtParamAutoRcpPrep);
(p_eNtParamAutoRcpPrecededBy=p_NtParamAutoRcpPrecededBy);
(p_bMcParamAutoRcpDis=p_McParamAutoRcpDisable);
(p_eAutoRcpStat=p_AutoRcpStat);
(p_eAutoRcpStatus=p_AutoRcpStatus);



}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Link.st"
static void __AS__Action__Act_Link(void){
{


}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_tyNtParamCurr=((unsigned long)(&tyNtParamCurr)));
(p_tyMcParamCurr=((unsigned long)(&tyMcParamCurr)));

(p_bUIMismatchOverWriteConfig=((unsigned long)(&bMismatchOverWriteConfig)));
(p_bUITempAddrFillDone=((unsigned long)(&bTempAddrFillDone)));
(p_bUIChgConfigDone=((unsigned long)(&bChgConfigDone)));
(p_bUIOverwriteIP=((unsigned long)(&bOverwriteIP)));
(p_bUIOverwriteSubnet=((unsigned long)(&bOverwriteSubnet)));
(p_bUIOverwriteEthMode=((unsigned long)(&bOverwriteEthMode)));

}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Action.st"
static void __AS__Action__Act_Action(void){
{

if(((((signed long)eStatus==(signed long)1))&(((signed long)((*(p_eAct)))==(signed long)0)))){
(eStat=0);
}


if((((signed long)eStatus==(signed long)0))){
(eStat=((*(p_eAct))));
}

}imp1_else1_0:imp1_end1_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main.st"
static void __AS__Action__Act_Main(void){
{

switch(eStat){

case 0:{
if((((signed long)eStatus!=(signed long)0))){

(eStartupStep1=0);
(bRun=0);
(usiStep=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

(eStatus=0);

}break;case 1:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(bRun=1);

switch(eStartupStep1){

case 0:{
__AS__Action__Act_Main_UsrFolder();

}break;case 1:{
__AS__Action__Act_Main_Parameter();

}break;case 2:{
__AS__Action__Act_Main_GetHWInfo();

}break;case 3:{
__AS__Action__Act_Main_LibVer();

}break;case 4:{
__AS__Action__Act_Main_Recipe();

}break;case 5:{
if((((*(p_bNtParamAutoRcpPrep)))&(((*(p_bMcParamAutoRcpDis))^1)))){
__AS__Action__Act_Main_AutoRcp();
}else{
(eStartupStep1=6);
}
}break;case 6:{
__AS__Action__Act_Main_UsrMgmt();

}break;case 7:{
__AS__Action__Act_Main_Bffr();

}break;case 8:{
__AS__Action__Act_Main_Alarm();

}break;case 9:{
__AS__Action__Act_Main_Hermes();

}break;case 10:{
if((((unsigned long)DiagCpuIsSimulated()==(unsigned long)(unsigned char)0))){
__AS__Action__Act_Main_SDOWrite();
}else{
(eStartupStep1=11);
}

}break;case 11:{
__AS__Action__Act_Main_SetupUI();

}break;case 12:{
__AS__Action__Act_Main_Done();

}break;}

{int zzIndex; plcstring* zzLValue=(plcstring*)sStepTxt; plcstring* zzRValue=(plcstring*)a_sStepText[eStartupStep1]; for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}break;}

}imp7_case0_1:imp7_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_UsrFolder.st"
static void __AS__Action__Act_Main_UsrFolder(void){
{
switch(usiStep){
case 0:{
(eUsrFolderAct=1);

if(((((signed long)((*(p_eUsrFolderStatus)))==(signed long)1))&(((signed long)((*(p_eUsrFolderStat)))==(signed long)1)))){

(eUsrFolderAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eUsrFolderStatus)))==(signed long)3))){

(eUsrFolderAct=0);
(eStartupStep1=1);

}

}break;case 1:{
(eUsrFolderAct=2);

if(((((signed long)((*(p_eUsrFolderStatus)))==(signed long)1))&(((signed long)((*(p_eUsrFolderStat)))==(signed long)2)))){

(eUsrFolderAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eUsrFolderStatus)))==(signed long)3))){

(eUsrFolderAct=0);
(usiStep=0);
(eStartupStep1=1);

}

}break;case 2:{
(eUsrFolderAct=3);

if(((((signed long)((*(p_eUsrFolderStatus)))==(signed long)1))&(((signed long)((*(p_eUsrFolderStat)))==(signed long)3)))){

(eUsrFolderAct=0);
(usiStep=3);

}else if((((signed long)((*(p_eUsrFolderStatus)))==(signed long)3))){

(eUsrFolderAct=0);
(usiStep=0);
(eStartupStep1=1);

}

}break;case 3:{
(eUsrFolderAct=4);

if(((((signed long)((*(p_eUsrFolderStatus)))==(signed long)1))&(((signed long)((*(p_eUsrFolderStat)))==(signed long)4)))){

(eUsrFolderAct=0);
(usiStep=0);
(eStartupStep1=1);

}else if((((signed long)((*(p_eUsrFolderStatus)))==(signed long)3))){

(eUsrFolderAct=0);
(usiStep=0);
(eStartupStep1=1);

}

}break;}

}imp19_case0_3:imp19_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_GetHWInfo.st"
static void __AS__Action__Act_Main_GetHWInfo(void){
{
switch(usiStep){
case 0:{
(eHWInfoAct=1);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)1)))){

(eHWInfoAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(eStartupStep1=3);

}

}break;case 1:{
(eHWInfoAct=3);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)3)))){

(eHWInfoAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 2:{
(eHWInfoAct=2);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)2)))){

(eHWInfoAct=0);

if((((unsigned long)DiagCpuIsSimulated()==(unsigned long)(unsigned char)1))){
(usiStep=0);
(eStartupStep1=3);
}else{
(usiStep=3);
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 3:{
(eHWInfoAct=6);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)6)))){

(eHWInfoAct=0);

(bGetConfigDone=1);

if((((signed long)((*(p_tyMcParamCurr)).eNetworkMod)==(signed long)(signed long)((*(p_udiHWInfoEthMode)))))){
if((((unsigned long)((*(p_udiHWInfoEthMode)))==(unsigned long)(unsigned long)1))){
(usiStep=0);
(eStartupStep1=3);
}else{
if((((__AS__STRING_CMP(((*(p_tyMcParamCurr)).sIPAddr),((*(p_sHWInfoIPAddr))))!=0))|((__AS__STRING_CMP(((*(p_tyMcParamCurr)).sSubnetMask),((*(p_sHWInfoSubnetMask))))!=0)))){
if((((*(p_bUITempAddrFillDone)))&((*(p_bUIMismatchOverWriteConfig))))){
if(((__AS__STRING_CMP(((*(p_tyMcParamCurr)).sIPAddr),((*(p_sHWInfoIPAddr))))!=0))){
(usiStep=5);
}else{
(usiStep=6);
}
}
}else{
(usiStep=0);
(eStartupStep1=3);
}
}

}else{
if((((*(p_bUITempAddrFillDone)))&((*(p_bUIMismatchOverWriteConfig))))){
(usiStep=4);
}
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 4:{
(eHWInfoAct=7);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)7)))){

(eHWInfoAct=0);

if((((signed long)((*(p_tyMcParamCurr)).eNetworkMod)==(signed long)1))){
(usiStep=7);
(bMismatchSetConfigDone=1);
}else{
(usiStep=5);
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}


}break;case 5:{
(eHWInfoAct=4);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)4)))){

(eHWInfoAct=0);

if(((__AS__STRING_CMP(((*(p_tyMcParamCurr)).sSubnetMask),((*(p_sHWInfoSubnetMask))))!=0))){
(usiStep=6);
}else{
(usiStep=7);
(bMismatchSetConfigDone=1);
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 6:{
(eHWInfoAct=5);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)5)))){

(eHWInfoAct=0);
(usiStep=7);

(bMismatchSetConfigDone=1);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 7:{
if(((*(p_bUIChgConfigDone)))){
if(((*(p_bUIOverwriteEthMode)))){
(usiStep=8);
}else if(((*(p_bUIOverwriteIP)))){
(usiStep=9);
}else if(((*(p_bUIOverwriteSubnet)))){
(usiStep=10);
}else{
(usiStep=12);
}
}

}break;case 8:{
(eHWInfoAct=7);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)7)))){

(eHWInfoAct=0);

if(((*(p_bUIOverwriteIP)))){
(usiStep=9);
}else if(((*(p_bUIOverwriteSubnet)))){
(usiStep=10);
}else{
(usiStep=11);
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}


}break;case 9:{
(eHWInfoAct=4);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)4)))){

(eHWInfoAct=0);

if(((*(p_bUIOverwriteSubnet)))){
(usiStep=10);
}else{
(usiStep=11);
}

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 10:{
(eHWInfoAct=5);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)5)))){

(eHWInfoAct=0);
(usiStep=11);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 11:{

(eMcParamAct=3);

if(((((signed long)((*(p_eMcParamStatus)))==(signed long)1))&(((signed long)((*(p_eMcParamStat)))==(signed long)3)))){

(eMcParamAct=0);

(usiStep=12);

}else if((((signed long)((*(p_eMcParamStatus)))==(signed long)3))){

(eMcParamAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 12:{
(eHWInfoAct=1);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)1)))){

(eHWInfoAct=0);
(usiStep=13);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}

}break;case 13:{
(eHWInfoAct=2);

if(((((signed long)((*(p_eHWInfoStatus)))==(signed long)1))&(((signed long)((*(p_eHWInfoStat)))==(signed long)2)))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}else if((((signed long)((*(p_eHWInfoStatus)))==(signed long)3))){

(eHWInfoAct=0);
(usiStep=0);
(eStartupStep1=3);

}


}break;}


}imp12_case0_13:imp12_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_LibVer.st"
static void __AS__Action__Act_Main_LibVer(void){
{
switch(usiStep){
case 0:{
(eLibVerAct=1);

if(((((signed long)((*(p_eLibVerStatus)))==(signed long)1))&(((signed long)((*(p_eLibVerStat)))==(signed long)1)))){

(eLibVerAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eLibVerStatus)))==(signed long)3))){

(eLibVerAct=0);
(eStartupStep1=4);

}

}break;case 1:{
(eLibVerAct=4);

if(((((signed long)((*(p_eLibVerStatus)))==(signed long)1))&(((signed long)((*(p_eLibVerStat)))==(signed long)4)))){

(eLibVerAct=0);
(usiStep=0);
(eStartupStep1=4);

}else if((((signed long)((*(p_eLibVerStatus)))==(signed long)3))){

(eLibVerAct=0);
(usiStep=0);
(eStartupStep1=4);

}

}break;}

}imp14_case0_1:imp14_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Parameter.st"
static void __AS__Action__Act_Main_Parameter(void){
{
switch(usiStep){
case 0:{
(eNtParamAct=1);

if(((((signed long)((*(p_eNtParamStatus)))==(signed long)1))&(((signed long)((*(p_eNtParamStat)))==(signed long)1)))){

(eNtParamAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eNtParamStatus)))==(signed long)3))){

(bNtSettingsLoadDone=1);
(eNtParamAct=0);
(usiStep=2);

}

}break;case 1:{
(eNtParamAct=2);

if(((((signed long)((*(p_eNtParamStatus)))==(signed long)1))&(((signed long)((*(p_eNtParamStat)))==(signed long)2)))){

(bNtSettingsLoadDone=1);
(eNtParamAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eNtParamStatus)))==(signed long)3))){

(bNtSettingsLoadDone=1);
(eNtParamAct=0);
(usiStep=2);

}

}break;case 2:{
(eMcParamAct=1);

if(((((signed long)((*(p_eMcParamStatus)))==(signed long)1))&(((signed long)((*(p_eMcParamStat)))==(signed long)1)))){

(eMcParamAct=0);
(usiStep=3);

}else if((((signed long)((*(p_eMcParamStatus)))==(signed long)3))){

(eMcParamAct=0);
(usiStep=0);
(eStartupStep1=2);

}

}break;case 3:{
(eMcParamAct=2);

if(((((signed long)((*(p_eMcParamStatus)))==(signed long)1))&(((signed long)((*(p_eMcParamStat)))==(signed long)2)))){

(eMcParamAct=0);
(usiStep=0);
(eStartupStep1=2);

}else if((((signed long)((*(p_eMcParamStatus)))==(signed long)3))){

(eMcParamAct=0);
(usiStep=0);
(eStartupStep1=2);

}

}break;}

}imp15_case0_3:imp15_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_AutoRcp.st"
static void __AS__Action__Act_Main_AutoRcp(void){
{
switch(usiStep){
case 0:{
(eAutoRcpAct=1);

if(((((signed long)((*(p_eAutoRcpStatus)))==(signed long)1))&(((signed long)((*(p_eAutoRcpStat)))==(signed long)1)))){

(eAutoRcpAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eAutoRcpStatus)))==(signed long)3))){

(eAutoRcpAct=0);
(usiStep=1);

}

}break;case 1:{
(eAutoRcpAct=4);

if(((((signed long)((*(p_eAutoRcpStatus)))==(signed long)1))&(((signed long)((*(p_eAutoRcpStat)))==(signed long)4)))){
(eAutoRcpAct=0);
if((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)0))){
(usiStep=2);
}else if((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)1))){
(usiStep=0);
(eStartupStep1=6);
}
}else if((((signed long)((*(p_eAutoRcpStatus)))==(signed long)3))){
(eAutoRcpAct=0);

if(((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)0))|((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)1))&((*(p_tyNtParamCurr)).bAutoRcpF1ArbitratryType)))){
(usiStep=2);
}else if((((signed long)((*(p_eNtParamAutoRcpPrecededBy)))==(signed long)1))){
(usiStep=0);
(eStartupStep1=6);
}
}

}break;case 2:{
(eAutoRcpAct=2);

if(((((signed long)((*(p_eAutoRcpStatus)))==(signed long)1))&(((signed long)((*(p_eAutoRcpStat)))==(signed long)2)))){

(eAutoRcpAct=0);
(usiStep=0);
(eStartupStep1=6);

}else if((((signed long)((*(p_eAutoRcpStatus)))==(signed long)3))){

(eAutoRcpAct=0);
(usiStep=0);
(eStartupStep1=6);

}

}break;}

}imp9_case0_2:imp9_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Recipe.st"
static void __AS__Action__Act_Main_Recipe(void){
{
switch(usiStep){
case 0:{
(eProdRcpAct=1);

if(((((signed long)((*(p_eProdRcpStatus)))==(signed long)1))&(((signed long)((*(p_eProdRcpStat)))==(signed long)1)))){

(eProdRcpAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eProdRcpStatus)))==(signed long)3))){

(eProdRcpAct=0);
(usiStep=10);

}

}break;case 1:{
(eProdRcpAct=5);

if(((((signed long)((*(p_eProdRcpStatus)))==(signed long)1))&(((signed long)((*(p_eProdRcpStat)))==(signed long)5)))){

(eProdRcpAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eProdRcpStatus)))==(signed long)3))){

(eProdRcpAct=0);
(usiStep=10);

}

}break;case 2:{
(eProdRcpAct=10);

if(((((signed long)((*(p_eProdRcpStatus)))==(signed long)1))&(((signed long)((*(p_eProdRcpStat)))==(signed long)10)))){

(eProdRcpAct=0);
(usiStep=10);

}else if((((signed long)((*(p_eProdRcpStatus)))==(signed long)3))){

(eProdRcpAct=0);
(usiStep=10);

}

}break;case 10:{
(eMpProdRcpAct=1);

if(((((signed long)((*(p_eMpProdRcpStatus)))==(signed long)1))&(((signed long)((*(p_eMpProdRcpStat)))==(signed long)1)))){

(eMpProdRcpAct=0);
(usiStep=20);

}else if((((signed long)((*(p_eProdRcpStatus)))==(signed long)3))){

(eMpProdRcpAct=0);
(usiStep=20);

}

}break;case 20:{
(eMagRcpAct=1);

if(((((signed long)((*(p_eMagRcpStatus)))==(signed long)1))&(((signed long)((*(p_eMagRcpStat)))==(signed long)1)))){

(eMagRcpAct=0);
(usiStep=21);

}else if((((signed long)((*(p_eMagRcpStatus)))==(signed long)3))){

(eMagRcpAct=0);
(usiStep=0);
(eStartupStep1=5);

}

}break;case 21:{
(eMagRcpAct=5);

if(((((signed long)((*(p_eMagRcpStatus)))==(signed long)1))&(((signed long)((*(p_eMagRcpStat)))==(signed long)5)))){

(eMagRcpAct=0);
(usiStep=22);

}else if((((signed long)((*(p_eMagRcpStatus)))==(signed long)3))){

(eMagRcpAct=0);
(usiStep=0);
(eStartupStep1=5);

}

}break;case 22:{
(eMagRcpAct=7);

if(((((signed long)((*(p_eMagRcpStatus)))==(signed long)1))&(((signed long)((*(p_eMagRcpStat)))==(signed long)7)))){

(eMagRcpAct=0);
(usiStep=0);
(eStartupStep1=5);

}else if((((signed long)((*(p_eMagRcpStatus)))==(signed long)3))){

(eMagRcpAct=0);
(usiStep=0);
(eStartupStep1=5);

}

}break;}

}imp16_case0_6:imp16_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_UsrMgmt.st"
static void __AS__Action__Act_Main_UsrMgmt(void){
{
switch(usiStep){
case 0:{
(eUsrMgmtAct=1);

if(((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)1))&(((signed long)((*(p_eUsrMgmtStat)))==(signed long)1)))){

(eUsrMgmtAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)3))){

(eUsrMgmtAct=0);
(eStartupStep1=7);

}

}break;case 1:{
(eUsrMgmtAct=9);

if(((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)1))&(((signed long)((*(p_eUsrMgmtStat)))==(signed long)9)))){

(eUsrMgmtAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)3))){

(eUsrMgmtAct=0);
(usiStep=0);
(eStartupStep1=7);

}

}break;case 2:{
(eUsrMgmtAct=4);

if(((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)1))&(((signed long)((*(p_eUsrMgmtStat)))==(signed long)4)))){

(eUsrMgmtAct=0);
(usiStep=0);
(eStartupStep1=7);

}else if((((signed long)((*(p_eUsrMgmtStatus)))==(signed long)3))){

(eUsrMgmtAct=0);
(usiStep=0);
(eStartupStep1=7);

}

}break;}

}imp20_case0_2:imp20_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Bffr.st"
static void __AS__Action__Act_Main_Bffr(void){
{
switch(usiStep){

case 0:{
(eBuffer1Act=1);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)1)))){

(eBuffer1Act=0);
(usiStep=1);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 1:{
(eBuffer1Act=25);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)25)))){

(eBuffer1Act=0);
(usiStep=2);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 2:{
if(((((unsigned long)(unsigned char)((*(p_bMagPresent1)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bMagPresentSensor1)))==(unsigned long)(unsigned char)1)))){
(usiStep=4);
}else{
(usiStep=3);
}

}break;case 3:{
(eBuffer1Act=27);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)27)))){

(eBuffer1Act=0);
(usiStep=5);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 4:{
(eBuffer1Act=27);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)27)))){

(eBuffer1Act=0);
(usiStep=6);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 5:{
(eBuffer1Act=2);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)2)))){

(eBuffer1Act=0);
(usiStep=7);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 6:{
(eBuffer1Act=4);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)4)))){

(eBuffer1Act=0);
(usiStep=7);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}

}break;case 7:{
(eBuffer1Act=31);

if(((((signed long)((*(p_eBuffer1Status)))==(signed long)1))&(((signed long)((*(p_eBuffer1Stat)))==(signed long)31)))){

(eBuffer1Act=0);
(usiStep=10);

}else if((((signed long)((*(p_eBuffer1Status)))==(signed long)3))){

(eBuffer1Act=0);
(usiStep=10);

}




}break;case 10:{
(eBuffer2Act=1);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)1)))){

(eBuffer2Act=0);
(usiStep=11);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 11:{
(eBuffer2Act=25);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)25)))){

(eBuffer2Act=0);
(usiStep=12);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 12:{
if(((((unsigned long)(unsigned char)((*(p_bMagPresent2)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bMagPresentSensor2)))==(unsigned long)(unsigned char)1)))){
(usiStep=14);
}else{
(usiStep=13);
}

}break;case 13:{
(eBuffer2Act=27);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)27)))){

(eBuffer2Act=0);
(usiStep=15);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 14:{
(eBuffer2Act=27);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)27)))){

(eBuffer2Act=0);
(usiStep=16);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 15:{
(eBuffer2Act=2);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)2)))){

(eBuffer2Act=0);
(usiStep=17);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 16:{
(eBuffer2Act=4);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)4)))){

(eBuffer2Act=0);
(usiStep=17);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}

}break;case 17:{
(eBuffer2Act=31);

if(((((signed long)((*(p_eBuffer2Status)))==(signed long)1))&(((signed long)((*(p_eBuffer2Stat)))==(signed long)31)))){

(eBuffer2Act=0);
(usiStep=20);

}else if((((signed long)((*(p_eBuffer2Status)))==(signed long)3))){

(eBuffer2Act=0);
(usiStep=20);

}




}break;case 20:{
(eBuffer3Act=1);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)1)))){

(eBuffer3Act=0);
(usiStep=21);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 21:{
(eBuffer3Act=25);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)25)))){

(eBuffer3Act=0);
(usiStep=22);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 22:{
if(((((unsigned long)(unsigned char)((*(p_bMagPresent3)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bMagPresentSensor3)))==(unsigned long)(unsigned char)1)))){
(usiStep=24);
}else{
(usiStep=23);
}

}break;case 23:{
(eBuffer3Act=27);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)27)))){

(eBuffer3Act=0);
(usiStep=25);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 24:{
(eBuffer3Act=27);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)27)))){

(eBuffer3Act=0);
(usiStep=26);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 25:{
(eBuffer3Act=2);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)2)))){

(eBuffer3Act=0);
(usiStep=27);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 26:{
(eBuffer3Act=4);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)4)))){

(eBuffer3Act=0);
(usiStep=27);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;case 27:{
(eBuffer3Act=31);

if(((((signed long)((*(p_eBuffer3Status)))==(signed long)1))&(((signed long)((*(p_eBuffer3Stat)))==(signed long)31)))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}else if((((signed long)((*(p_eBuffer3Status)))==(signed long)3))){

(eBuffer3Act=0);
(usiStep=0);
(eStartupStep1=8);

}

}break;}

}imp10_case0_23:imp10_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Alarm.st"
static void __AS__Action__Act_Main_Alarm(void){
{
switch(usiStep){
case 0:{
(eAlarmAct=1);

if(((((signed long)((*(p_eAlarmStatus)))==(signed long)1))&(((signed long)((*(p_eAlarmStat)))==(signed long)1)))){

(eAlarmAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eAlarmStatus)))==(signed long)3))){

(eAlarmAct=0);
(usiStep=0);
(eStartupStep1=9);

}

}break;case 1:{
(eAlarmAct=2);

if(((((signed long)((*(p_eAlarmStatus)))==(signed long)1))&(((signed long)((*(p_eAlarmStat)))==(signed long)2)))){

(eAlarmAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eAlarmStatus)))==(signed long)3))){

(eAlarmAct=0);
(usiStep=0);
(eStartupStep1=9);

}

}break;case 2:{
(eAlarmAct=3);

if(((((signed long)((*(p_eAlarmStatus)))==(signed long)1))&(((signed long)((*(p_eAlarmStat)))==(signed long)3)))){

(eAlarmAct=0);
(usiStep=3);

}else if((((signed long)((*(p_eAlarmStatus)))==(signed long)3))){

(eAlarmAct=0);
(usiStep=0);
(eStartupStep1=9);

}

}break;case 3:{
(eAlarmAct=8);

if(((((signed long)((*(p_eAlarmStatus)))==(signed long)1))&(((signed long)((*(p_eAlarmStat)))==(signed long)8)))){

(eAlarmAct=0);
(usiStep=0);
(eStartupStep1=9);

}else if((((signed long)((*(p_eAlarmStatus)))==(signed long)3))){

(eAlarmAct=0);
(usiStep=0);
(eStartupStep1=9);

}

}break;}

}imp8_case0_3:imp8_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Hermes.st"
static void __AS__Action__Act_Main_Hermes(void){
{
switch(usiStep){
case 0:{
(eHermesAct=4);

if(((((signed long)((*(p_eHermesStatus)))==(signed long)1))&(((signed long)((*(p_eHermesStat)))==(signed long)4)))){

(eHermesAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eHermesStatus)))==(signed long)3))){

(eHermesAct=0);
(usiStep=10);

}

}break;case 1:{
(eHermesAct=14);

if(((((signed long)((*(p_eHermesStatus)))==(signed long)1))&(((signed long)((*(p_eHermesStat)))==(signed long)14)))){

(eHermesAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eHermesStatus)))==(signed long)3))){

(eHermesAct=0);
(usiStep=10);

}

}break;case 2:{
(eHermesAct=22);

if(((((signed long)((*(p_eHermesStatus)))==(signed long)1))&(((signed long)((*(p_eHermesStat)))==(signed long)22)))){

(eHermesAct=0);
(usiStep=10);

}else if((((signed long)((*(p_eHermesStatus)))==(signed long)3))){

(eHermesAct=0);
(usiStep=10);

}

}break;case 10:{
(eUSHermesAAct=3);

if(((((signed long)((*(p_eUSHermesAStatus)))==(signed long)1))&(((signed long)((*(p_eUSHermesAStat)))==(signed long)3)))){

(eUSHermesAAct=0);
(usiStep=11);

}else if((((signed long)((*(p_eUSHermesAStatus)))==(signed long)3))){

(eUSHermesAAct=0);
(usiStep=11);

}
}break;case 11:{
(eUSHermesBAct=3);

if(((((signed long)((*(p_eUSHermesBStatus)))==(signed long)1))&(((signed long)((*(p_eUSHermesBStat)))==(signed long)3)))){

(eUSHermesBAct=0);
(usiStep=30);

}else if((((signed long)((*(p_eUSHermesBStatus)))==(signed long)3))){

(eUSHermesBAct=0);
(usiStep=30);

}


}break;case 30:{
(eRmtHermesAct=3);

if(((((signed long)((*(p_eRmtHermesStatus)))==(signed long)1))&(((signed long)((*(p_eRmtHermesStat)))==(signed long)3)))){

(eRmtHermesAct=0);
(usiStep=40);



}else if((((signed long)((*(p_eRmtHermesStatus)))==(signed long)3))){

(eRmtHermesAct=0);
(usiStep=40);



}


}break;case 40:{
(eSvyHermesAct=3);

if(((((signed long)((*(p_eSvyHermesStatus)))==(signed long)1))&(((signed long)((*(p_eSvyHermesStat)))==(signed long)3)))){

(eSvyHermesAct=0);
(usiStep=42);

}else if((((signed long)((*(p_eSvyHermesStatus)))==(signed long)3))){

(eSvyHermesAct=0);
(usiStep=42);

}

}break;case 42:{
(eSvyHermesAct=18);

if(((((signed long)((*(p_eSvyHermesStatus)))==(signed long)1))&(((signed long)((*(p_eSvyHermesStat)))==(signed long)18)))){

(eSvyHermesAct=0);
(usiStep=43);

}else if((((signed long)((*(p_eSvyHermesStatus)))==(signed long)3))){

(eSvyHermesAct=0);
(usiStep=43);
}
}break;case 43:{
(eSvyHermesAct=19);

if(((((signed long)((*(p_eSvyHermesStatus)))==(signed long)1))&(((signed long)((*(p_eSvyHermesStat)))==(signed long)19)))){

(eSvyHermesAct=0);
(usiStep=44);

}else if((((signed long)((*(p_eSvyHermesStatus)))==(signed long)3))){

(eSvyHermesAct=0);
(usiStep=44);
}

}break;case 44:{
(eSvyHermesAct=20);

if(((((signed long)((*(p_eSvyHermesStatus)))==(signed long)1))&(((signed long)((*(p_eSvyHermesStat)))==(signed long)20)))){

(eSvyHermesAct=0);
(usiStep=0);
(eStartupStep1=11);
}else if((((signed long)((*(p_eSvyHermesStatus)))==(signed long)3))){

(eSvyHermesAct=0);

(usiStep=0);
(eStartupStep1=11);
}
}break;}

}imp13_case0_9:imp13_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_SDOWrite.st"
static void __AS__Action__Act_Main_SDOWrite(void){
{
switch(usiStep){

case 0:{
(eAWPushPulAct=14);

if(((((signed long)((*(p_eAWPushOrPullerStatus)))==(signed long)1))&(((signed long)((*(p_eAWPushOrPullerStat)))==(signed long)14)))){

(eAWPushPulAct=0);
(usiStep=1);

}else if((((signed long)((*(p_eAWPushOrPullerStatus)))==(signed long)3))){

(eAWPushPulAct=0);
(usiStep=1);

}

}break;case 1:{
(eAWAct=14);

if(((((signed long)((*(p_eAWStatus)))==(signed long)1))&(((signed long)((*(p_eAWStat)))==(signed long)14)))){

(eAWAct=0);
(usiStep=2);

}else if((((signed long)((*(p_eAWStatus)))==(signed long)3))){

(eAWAct=0);
(usiStep=2);

}

}break;case 2:{
(eMagAW1Act=14);

if(((((signed long)((*(p_eMagAW1Status)))==(signed long)1))&(((signed long)((*(p_eMagAW1Stat)))==(signed long)14)))){

(eMagAW1Act=0);
(usiStep=4);

}else if((((signed long)((*(p_eMagAW1Status)))==(signed long)3))){

(eMagAW1Act=0);
(usiStep=4);

}

}break;case 4:{
(eMagAW2Act=14);

if(((((signed long)((*(p_eMagAW2Status)))==(signed long)1))&(((signed long)((*(p_eMagAW2Stat)))==(signed long)14)))){

(eMagAW2Act=0);
(usiStep=6);

}else if((((signed long)((*(p_eMagAW2Status)))==(signed long)3))){

(eMagAW2Act=0);
(usiStep=6);

}

}break;case 6:{
(eMagAW3Act=14);

if(((((signed long)((*(p_eMagAW3Status)))==(signed long)1))&(((signed long)((*(p_eMagAW3Stat)))==(signed long)14)))){

(eMagAW3Act=0);
(usiStep=10);

}else if((((signed long)((*(p_eMagAW3Status)))==(signed long)3))){

(eMagAW3Act=0);
(usiStep=10);

}

}break;case 10:{
(eTravAct=21);

if(((((signed long)((*(p_eTravStatus)))==(signed long)1))&(((signed long)((*(p_eTravStat)))==(signed long)21)))){

(eTravAct=0);
(usiStep=20);

}else if((((signed long)((*(p_eTravStatus)))==(signed long)3))){

(eTravAct=0);
(usiStep=20);

}

}break;case 20:{
(eLifterAct=33);

if(((((signed long)((*(p_eLifterStatus)))==(signed long)1))&(((signed long)((*(p_eLifterStat)))==(signed long)33)))){

(eLifterAct=0);
(usiStep=21);
(eStartupStep1=11);

}else if((((signed long)((*(p_eLifterStatus)))==(signed long)3))){

(eLifterAct=0);
(usiStep=21);
(eStartupStep1=11);

}
}break;case 21:{
(eLifter2Act=33);

if(((((signed long)((*(p_eLifter2Status)))==(signed long)1))&(((signed long)((*(p_eLifter2Stat)))==(signed long)33)))){

(eLifter2Act=0);
(usiStep=0);
(eStartupStep1=11);

}else if((((signed long)((*(p_eLifter2Status)))==(signed long)3))){

(eLifter2Act=0);
(usiStep=0);
(eStartupStep1=11);

}


}break;}

}imp17_case0_7:imp17_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_SetupUI.st"
static void __AS__Action__Act_Main_SetupUI(void){
{
switch(usiStep){
case 0:{
(eUIAct=1);

if(((((signed long)((*(p_eUIStatus)))==(signed long)1))&(((signed long)((*(p_eUIStat)))==(signed long)1)))){

(eUIAct=0);
(eStartupStep1=12);
(bUISettingsLoadDone=1);
}else if((((signed long)((*(p_eUIStatus)))==(signed long)3))){

(eUIAct=0);
(eStartupStep1=12);
(bUISettingsLoadDone=1);
}

}break;}

}imp18_case0_0:imp18_endcase0_0:;}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Act_Main/Act_Main_Done.st"
static void __AS__Action__Act_Main_Done(void){
{
(eStatus=1);

}}
#line 25 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.nodebug"

void __AS__ImplInitCyclic_st(void){}

signed long __AS__STRING_CMP(char* pstr1, char* pstr2)
{while (*pstr1 != 0 && *pstr1 == *pstr2){ pstr1++;pstr2++; } return (*pstr1 == 0 && *pstr2 != 0) ? -1 : (*pstr1 != 0 && *pstr2 == 0) ? 1 : *pstr1 - *pstr2;}

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
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Startup/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/Startup/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Startup/Startup/Cyclic.st\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'c_diLFClntNum'\\n\"");
__asm__(".previous");
