#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/LCS/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.st"
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

__AS__Action__Act_LinkEn();

if(((((unsigned long)(unsigned char)((*(p_bPrep)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bEn)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bDis)))==(unsigned long)(unsigned char)0)))){
__AS__Action__Act_Link();
__AS__Action__Act_Background();
}else{
__AS__Action__Act_Main_Disable();

(tyTagNm.udiStatus=10000);
}

}

}imp9_end2_0:imp9_end0_0:;}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkStartupRun=p_StartupRun);
(p_bLinkNtParamProjLaneBPrep=p_NtParamProjLaneBPrep);
(p_bLinkNtParamLCSLFPrep=p_NtParamLCSLFPrep);
(p_bLinkNtParamLCSManageRcpPrep=p_NtParamLCSManageRcpPrep);
(p_bLinkNtParamLCSReqRcpPrep=p_NtParamLCSReqRcpPrep);
(p_bLinkNtParamLCSLiveDatPrep=p_NtParamLCSLiveDatPrep);
(p_bLinkMcParamLCSLFEn=p_McParamLCSLFEn);
(p_bLinkMcParamLCSManageRcpEn=p_McParamLCSManageRcpEn);
(p_bLinkMcParamLCSReqRcpEn=p_McParamLCSReqRcpEn);
(p_bLinkMcParamLCSLiveDatEn=p_McParamLCSLiveDatEn);
(p_tyLinkMcParamMagParamSelected=p_MagRcpCurrRcp);
(p_bLinkPshrConvHvBrd=p_PshrConvHvBrd);
(p_eLinkNtParamProjMag=p_NtParamProjMag);
(p_bLinkBffr1MagRemoved=p_Buffer1MagRemoved);
(p_bLinkBffr2MagRemoved=p_Buffer2MagRemoved);
(p_bLinkBffr3MagRemoved=p_Buffer3MagRemoved);
(p_tyLinkAlarmCurrList=p_AlarmCurrList);


(p_eLCSMngRcp_PLCStat=p_LCSMngRcpStat);
(p_udiLCSMngRcp_PLCStatus=p_LCSMngRcp_PLCStatus);
(p_iLCSMngRcp_PLCIdxAct=p_LCSMngRcp_PLCIdxAct);
(p_iLCSMngRcp_PLCIdxStat=p_LCSMngRcp_PLCIdxStat);
(p_tyLCSMngRcp_PLCProdRcpInfo=p_LCSMngRcp_PLCProdRcpInfo);
(p_eLCSLF_PLCStat=p_LCSLFStat);
(p_udiLCSLF_PLCStatus=p_LCSLF_PLCStatus);
(p_bLCSMngRcpChkLmt=p_LCSMngRcpChkLmt);
(p_bLCSLFChkLmt=p_LCSLFChkLmt);
(p_bOpsRun=p_OpsRun);
(p_bError=p_AlarmErr);
(p_bWarning=p_AlarmWarning);
(p_bInfo=p_AlarmInfo);
(p_bUIManual=p_UIUIMnlMod);
(p_tyProdRcpCurrRcp=p_Follower2UpdtProdRcp);
(p_tyNtParamCurr=p_NtParamCurr);
(p_sProgNm=p_NtParamLCSProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);

(p_tyMagRcpCurrRcp=p_MagRcpCurrRcp);
(p_tyLCSMngRcp_PLCMagRcpInfo=p_LCSMngRcp_PLCMagRcpInfo);
(p_bLCSMngMagRcpChkLmt=p_LCSMngMagRcpChkLmt);

}}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{

((*(p_bPrep))=(((*(p_bLinkNtParamLCSLFPrep)))|((*(p_bLinkNtParamLCSManageRcpPrep)))|((*(p_bLinkNtParamLCSReqRcpPrep)))|((*(p_bLinkNtParamLCSLiveDatPrep)))));
((*(p_bEn))=(((*(p_bLinkMcParamLCSLFEn)))|((*(p_bLinkMcParamLCSManageRcpEn)))|((*(p_bLinkMcParamLCSReqRcpEn)))|((*(p_bLinkMcParamLCSLiveDatEn)))));
((*(p_bDis))=((*(p_bLinkStartupRun))));

}}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_Link.st"
static void __AS__Action__Act_Link(void){
{

if((((*(p_bLCSMngRcpChkLmt)))|((*(p_bLCSLFChkLmt))))){

if(((__AS__STRING_CMP(tyTagNm.tyProdRcpInfo.sRcpNm,"")==0))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Recipe Name Empty "; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diWidthInUM<(signed long)((*(p_tyNtParamCurr)).tyProdRcpWidth.diMin)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Width Lower Limit "; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diWidthInUM>(signed long)((*(p_tyNtParamCurr)).tyProdRcpWidth.diMax)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Width Upper Limit "; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if(((((*(p_bLinkNtParamProjLaneBPrep))^1))&(((unsigned long)(unsigned char)tyTagNm.tyProdRcpInfo.usiMcMod<(unsigned long)(unsigned char)((*(p_tyNtParamCurr)).tyProdRcpMcModA.diMin))))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Machine Mode Lower Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if(((((*(p_bLinkNtParamProjLaneBPrep))^1))&(((unsigned long)(unsigned char)tyTagNm.tyProdRcpInfo.usiMcMod>(unsigned long)(unsigned char)((*(p_tyNtParamCurr)).tyProdRcpMcModA.diMax))))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Machine Mode Upper Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((*(p_bLinkNtParamProjLaneBPrep)))&(((unsigned long)(unsigned char)tyTagNm.tyProdRcpInfo.usiMcMod<(unsigned long)(unsigned char)((*(p_tyNtParamCurr)).tyProdRcpMcModAB.diMin))))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Machine Mode Lower Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((*(p_bLinkNtParamProjLaneBPrep)))&(((unsigned long)(unsigned char)tyTagNm.tyProdRcpInfo.usiMcMod>(unsigned long)(unsigned char)((*(p_tyNtParamCurr)).tyProdRcpMcModAB.diMax))))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Machine Mode Upper Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMaxSltValue<(signed long)tyTagNm.tyProdRcpInfo.diMinSltValue))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Max Slot Lower Limit "; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMaxSltValue>(signed long)((*(p_tyLinkMcParamMagParamSelected)).diTtlSlt)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Max Slot Upper Limit "; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMinSltValue<(signed long)((*(p_tyNtParamCurr)).diProjMagMinSlt)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Min Slot Lower Limit "; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMinSltValue>(signed long)tyTagNm.tyProdRcpInfo.diMaxSltValue))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Min Slot Upper Limit "; for(zzIndex=0; zzIndex<21l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diPitch<(signed long)((*(p_tyNtParamCurr)).tyProdRcpPitch.diMin)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Pitch Lower Limit "; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diPitch>(signed long)((tyTagNm.tyProdRcpInfo.diMaxSltValue-tyTagNm.tyProdRcpInfo.diMinSltValue)+1)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Pitch Upper Limit "; for(zzIndex=0; zzIndex<18l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMinReqFreeBffr<(signed long)((*(p_tyNtParamCurr)).tyProdRcpOvenMinReqFreeBffr.diMin)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Minimum Required Free Buffer Lower Limit "; for(zzIndex=0; zzIndex<41l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyProdRcpInfo.diMinReqFreeBffr>(signed long)((*(p_tyNtParamCurr)).tyProdRcpOvenMinReqFreeBffr.diMax)))){

(bChkLmtOK=0);
(bChkLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Minimum Required Free Buffer Upper Limit "; for(zzIndex=0; zzIndex<41l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else{

(bChkLmtOK=1);
(bChkLmtNG=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}else{

(bChkLmtOK=0);
(bChkLmtNG=0);

}

if(((*(p_bLCSMngMagRcpChkLmt)))){
if(((__AS__STRING_CMP(tyTagNm.tyMagRcpInfo.sRcpNm,"")==0))){

(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Magazine Recipe Name Empty "; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}


else if(((((signed long)tyTagNm.tyMagRcpInfo.diMag1Slt1PosInUM<(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMin)))|(((signed long)tyTagNm.tyMagRcpInfo.diMag2Slt1PosInUM<(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMin)))|(((signed long)tyTagNm.tyMagRcpInfo.diMag3Slt1PosInUM<(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMin))))){

(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Magazine Slot 1 Lower Limit "; for(zzIndex=0; zzIndex<28l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}


else if(((((signed long)tyTagNm.tyMagRcpInfo.diMag1Slt1PosInUM>(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMax)))|(((signed long)tyTagNm.tyMagRcpInfo.diMag2Slt1PosInUM>(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMax)))|(((signed long)tyTagNm.tyMagRcpInfo.diMag3Slt1PosInUM>(signed long)((*(p_tyNtParamCurr)).tyUILifterTargetPos.diMax))))){

(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Magazine Slot 1 Upper Limit "; for(zzIndex=0; zzIndex<28l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyMagRcpInfo.diSltToSltInUM<(signed long)((*(p_tyNtParamCurr)).tyUISltToSltDist.diMin)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Slot to Slot Lower Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyMagRcpInfo.diSltToSltInUM>(signed long)((*(p_tyNtParamCurr)).tyUISltToSltDist.diMax)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Slot to Slot Upper Limit "; for(zzIndex=0; zzIndex<25l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};


}else if((((signed long)tyTagNm.tyMagRcpInfo.diTtlSlt<(signed long)((*(p_tyNtParamCurr)).diProjMagMinSlt)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Total Slot Lower Limit "; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else if((((signed long)tyTagNm.tyMagRcpInfo.diTtlSlt>(signed long)((*(p_tyNtParamCurr)).diProjMagMaxSlt)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Total Slot Upper Limit "; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((unsigned long)(unsigned char)tyTagNm.tyMagRcpInfo.usiMagModel<(unsigned long)(unsigned char)0))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Magazine Model Lower Limit "; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((unsigned long)(unsigned char)tyTagNm.tyMagRcpInfo.usiMagModel>(unsigned long)(unsigned char)2))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Magazine Model Upper Limit "; for(zzIndex=0; zzIndex<27l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)tyTagNm.tyMagRcpInfo.diMagMaxBrdWidth<(signed long)((*(p_tyNtParamCurr)).tyProdRcpWidth.diMin)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Maximum Board Width Upper Limit "; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)tyTagNm.tyMagRcpInfo.diMagMaxBrdWidth>(signed long)((*(p_tyNtParamCurr)).tyProdRcpWidth.diMax)))){
(bChkMagLmtOk=0);
(bChkMagLmtNG=1);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)"Maximum Board Width Upper Limit "; for(zzIndex=0; zzIndex<32l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else{

(bChkMagLmtOk=1);
(bChkMagLmtNG=0);
{int zzIndex; plcstring* zzLValue=(plcstring*)sAddMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}
}else{

(bChkMagLmtOk=0);
(bChkMagLmtNG=0);
}


(tyTagNm.bMngRcpEn=(((*(p_bLinkNtParamLCSManageRcpPrep)))&((*(p_bLinkMcParamLCSManageRcpEn)))));
(tyTagNm.bLFEn=(((*(p_bLinkNtParamLCSLFPrep)))&((*(p_bLinkMcParamLCSLFEn)))));
(tyTagNm.bLiveData=(((*(p_bLinkNtParamLCSLiveDatPrep)))&((*(p_bLinkMcParamLCSLiveDatEn)))));



if((((signed long)((*(p_eLinkNtParamProjMag)))==(signed long)0))){
(tyTagNm.usiBrdStatus=(unsigned char)((((((unsigned long)(unsigned char)((*(p_bLinkPshrConvHvBrd)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkBffr1MagRemoved)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLinkBffr2MagRemoved)))==(unsigned long)(unsigned char)1)))^1)&1));
}else if((((signed long)((*(p_eLinkNtParamProjMag)))==(signed long)1))){
(tyTagNm.usiBrdStatus=(unsigned char)((((((unsigned long)(unsigned char)((*(p_bLinkPshrConvHvBrd)))==(unsigned long)(unsigned char)0))&(((unsigned long)(unsigned char)((*(p_bLinkBffr1MagRemoved)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLinkBffr2MagRemoved)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bLinkBffr3MagRemoved)))==(unsigned long)(unsigned char)1)))^1)&1));
}


if((((signed long)tyTagNm.eAct==(signed long)9))){

(bLFRun=1);
(bMngRcpRun=0);

}












else if(((((signed long)tyTagNm.eAct==(signed long)1))|(((signed long)tyTagNm.eAct==(signed long)2))|(((signed long)tyTagNm.eAct==(signed long)3))|(((signed long)tyTagNm.eAct==(signed long)4))|(((signed long)tyTagNm.eAct==(signed long)5))|(((signed long)tyTagNm.eAct==(signed long)6))|(((signed long)tyTagNm.eAct==(signed long)7))|(((signed long)tyTagNm.eAct==(signed long)8))|(((signed long)tyTagNm.eAct==(signed long)10))|(((signed long)tyTagNm.eAct==(signed long)11))|(((signed long)tyTagNm.eAct==(signed long)12))|(((signed long)tyTagNm.eAct==(signed long)13))|(((signed long)tyTagNm.eAct==(signed long)14)))){

(bLFRun=0);
(bMngRcpRun=1);

}else if((((signed long)tyTagNm.eAct==(signed long)0))){

(bLFRun=0);
(bMngRcpRun=0);

}

if((((unsigned long)(unsigned char)bLFRun==(unsigned long)(unsigned char)1))){
(eLCSLF_LCSAct=tyTagNm.eAct);
(tyLCSLF_LCSProdRcpInfo=*(struct tyProdRcpParam*)&tyTagNm.tyProdRcpInfo);

(tyLCSLF_LCSProdRcpInfo.bTopToBtm=(plcbit)(tyTagNm.iTopToBtm!=0?1:0));

{int zzIndex; plcstring* zzLValue=(plcstring*)sLastModifiedTemp; plcstring* zzRValue=(plcstring*)CONCAT("DT#",tyTagNm.sLastModified); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyLCSLF_LCSProdRcpInfo.dtLastModified=str2dt(sLastModifiedTemp));

(tyTagNm.eStat=((*(p_eLCSLF_PLCStat))));
(tyTagNm.udiStatus=((*(p_udiLCSLF_PLCStatus))));

if(((((unsigned long)tyTagNm.udiStatus>(unsigned long)0))&(((unsigned long)tyTagNm.udiStatus<(unsigned long)65534)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sErrMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyTagNm.udiStatus-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyTagNm.udiStatus==(unsigned long)10010))|(((unsigned long)tyTagNm.udiStatus==(unsigned long)10011)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sErrMsg; plcstring* zzRValue=(plcstring*)CONCAT(sAddMsg,tyTagNm.sErrMsg); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}

}else if((((unsigned long)(unsigned char)bMngRcpRun==(unsigned long)(unsigned char)1))){
(eLCSMngRcp_LCSAct=tyTagNm.eAct);
if((((signed long)tyTagNm.tyProdRcpInfo.diBrdPerSlt<(signed long)1))){
(tyTagNm.tyProdRcpInfo.diBrdPerSlt=1);
}
(tyTagNm.eStat=((*(p_eLCSMngRcp_PLCStat))));
(tyTagNm.udiStatus=((*(p_udiLCSMngRcp_PLCStatus))));

if(((((unsigned long)tyTagNm.udiStatus>(unsigned long)0))&(((unsigned long)tyTagNm.udiStatus<(unsigned long)65534)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sErrMsg; plcstring* zzRValue=(plcstring*)a_tyAlmText[tyTagNm.udiStatus-10000].sAlmText; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

if(((((unsigned long)tyTagNm.udiStatus==(unsigned long)10010))|(((unsigned long)tyTagNm.udiStatus==(unsigned long)10011)))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sErrMsg; plcstring* zzRValue=(plcstring*)CONCAT(sAddMsg,tyTagNm.sErrMsg); for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}
}

if((((signed long)tyTagNm.eAct==(signed long)10))){
if((((unsigned long)tyTagNm.udiStatus==(unsigned long)0))){
(tyTagNm.tyProdRcpInfo=*(struct tyProdRcpParam*)&((*(p_tyLCSMngRcp_PLCProdRcpInfo))));

(tyTagNm.iTopToBtm=(signed short)(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm&1));

dt2str(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified,tyTagNm.sLastModified,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sLastModified; plcstring* zzRValue=(plcstring*)RIGHT(tyTagNm.sLastModified,(LEN(tyTagNm.sLastModified)-3)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else{
(tyLCSMngRcp_LCSProdRcpInfo=*(struct tyProdRcpParam*)&tyTagNm.tyProdRcpInfo);

(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm=(plcbit)(tyTagNm.iTopToBtm!=0?1:0));
(tyLCSMngRcp_LCSProdRcpInfo.diWidthInUM2=tyTagNm.tyProdRcpInfo.diWidthInUM);

{int zzIndex; plcstring* zzLValue=(plcstring*)sLastModifiedTemp; plcstring* zzRValue=(plcstring*)CONCAT("DT#",tyTagNm.sLastModified); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified=str2dt(sLastModifiedTemp));

}

}else if((((signed long)tyTagNm.eAct==(signed long)11))){
(iLCSMngRcp_LCSIdxStat=tyTagNm.iIdxAct);

(tyTagNm.iIdxStat=((*(p_iLCSMngRcp_PLCIdxAct))));

(tyTagNm.tyProdRcpInfo=*(struct tyProdRcpParam*)&((*(p_tyLCSMngRcp_PLCProdRcpInfo))));

(tyTagNm.iTopToBtm=(signed short)(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm&1));

dt2str(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified,tyTagNm.sLastModified,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sLastModified; plcstring* zzRValue=(plcstring*)RIGHT(tyTagNm.sLastModified,(LEN(tyTagNm.sLastModified)-3)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((signed long)tyTagNm.eAct==(signed long)14))){
if((((unsigned long)tyTagNm.udiStatus==(unsigned long)0))){
(tyTagNm.tyMagRcpInfo=*(struct tyMagRcpParam*)&((*(p_tyLCSMngRcp_PLCMagRcpInfo))));

(tyTagNm.iTopToBtm=(signed short)(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm&1));

dt2str(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified,tyTagNm.sLastModified,81);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sLastModified; plcstring* zzRValue=(plcstring*)RIGHT(tyTagNm.sLastModified,(LEN(tyTagNm.sLastModified)-3)); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}else{
(tyLCSMngRcp_LCSMagRcpInfo=*(struct tyMagRcpParam*)&tyTagNm.tyMagRcpInfo);

{int zzIndex; plcstring* zzLValue=(plcstring*)sLastModifiedTemp; plcstring* zzRValue=(plcstring*)CONCAT("DT#",tyTagNm.sLastModified); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyLCSMngRcp_LCSMagRcpInfo.dtLastModified=str2dt(sLastModifiedTemp));

}
}else{
(iLCSMngRcp_LCSIdxAct=tyTagNm.iIdxAct);
(tyLCSMngRcp_LCSProdRcpInfo=*(struct tyProdRcpParam*)&tyTagNm.tyProdRcpInfo);
(tyLCSMngRcp_LCSMagRcpInfo=*(struct tyMagRcpParam*)&tyTagNm.tyMagRcpInfo);

(tyLCSMngRcp_LCSProdRcpInfo.bTopToBtm=(plcbit)(tyTagNm.iTopToBtm!=0?1:0));
(tyLCSMngRcp_LCSProdRcpInfo.diWidthInUM2=tyTagNm.tyProdRcpInfo.diWidthInUM);

{int zzIndex; plcstring* zzLValue=(plcstring*)sLastModifiedTemp; plcstring* zzRValue=(plcstring*)CONCAT("DT#",tyTagNm.sLastModified); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyLCSMngRcp_LCSProdRcpInfo.dtLastModified=str2dt(sLastModifiedTemp));

(tyTagNm.iIdxStat=((*(p_iLCSMngRcp_PLCIdxStat))));

}

}else{

(eLCSLF_LCSAct=0);
(eLCSMngRcp_LCSAct=0);
(tyTagNm.eStat=0);
(tyTagNm.udiStatus=65534);
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sErrMsg; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

}imp6_end6_0:;}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(p_eLCSMngRcp_PLCStat=((unsigned long)(&eLCSMngRcp_PLCStat)));
(p_udiLCSMngRcp_PLCStatus=((unsigned long)(&udiLCSMngRcp_PLCStatus)));
(p_iLCSMngRcp_PLCIdxAct=((unsigned long)(&iLCSMngRcp_PLCIdxAct)));
(p_iLCSMngRcp_PLCIdxStat=((unsigned long)(&iLCSMngRcp_PLCIdxStat)));
(p_tyLCSMngRcp_PLCProdRcpInfo=((unsigned long)(&tyLCSMngRcp_PLCProdRcpInfo)));
(p_eLCSLF_PLCStat=((unsigned long)(&eLCSLF_PLCStat)));
(p_udiLCSLF_PLCStatus=((unsigned long)(&udiLCSLF_PLCStatus)));
(p_bLCSMngRcpChkLmt=((unsigned long)(&bLCSMngRcpChkLmt)));
(p_bLCSLFChkLmt=((unsigned long)(&bLCSLFChkLmt)));
(p_bOpsRun=((unsigned long)(&bOpsRun)));
(p_bError=((unsigned long)(&bError)));
(p_bWarning=((unsigned long)(&bWarning)));
(p_bInfo=((unsigned long)(&bInfo)));
(p_bUIManual=((unsigned long)(&bUIManual)));
(p_tyProdRcpCurrRcp=((unsigned long)(&tyProdRcpCurrRcp)));
(p_tyNtParamCurr=((unsigned long)(&tyNtParamCurr)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));

}}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{


}}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_Background.st"
static void __AS__Action__Act_Background(void){
{
__AS__Action__Act_Background_LiveData();

if((((unsigned long)udiFlagNo==(unsigned long)0))){
__AS__MEMSET(((unsigned long)(&tyTagNm.sMcAlmMsg)),0,51200);
for((udi=1);udi<=c_udiAlarmCurrMax;udi+=1){
if(((__AS__STRING_CMP(((*(p_tyLinkAlarmCurrList))[udi-1].sMsg),"")!=0))){
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sMcAlmMsg[udi-1]; plcstring* zzRValue=(plcstring*)((*(p_tyLinkAlarmCurrList))[udi-1].sMsg); for(zzIndex=0; zzIndex<255l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}else if((((unsigned long)udi==(unsigned long)1))){
goto imp1_endfor1_0;
}else{
(udiFlagNo=udi);
goto imp1_endfor1_0;
}
}imp1_endfor1_0:;
}else{
for((udi=1);udi<=c_udiAlarmCurrMax;udi+=1){
if(((__AS__STRING_CMP(((*(p_tyLinkAlarmCurrList))[udi-1].sMsg),"")!=0))){
}else{
if((((unsigned long)udiFlagNo!=(unsigned long)udi))){
(udiFlagNo=0);
}
goto imp1_endfor3_0;
}
}imp1_endfor3_0:;
}

if((~((*(p_bError)))&Edge0000100000&1?((Edge0000100000=((*(p_bError)))&1),1):((Edge0000100000=((*(p_bError)))&1),0))){
(udiFlagNo=0);
__AS__MEMSET(((unsigned long)(&tyTagNm.sMcAlmMsg)),0,51200);
}

}imp1_else6_0:imp1_end6_0:;}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_Background_LiveData.st"
static void __AS__Action__Act_Background_LiveData(void){
{
if((((*(p_bLinkNtParamLCSLiveDatPrep)))&((*(p_bLinkMcParamLCSLiveDatEn))))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sCurrRcpNm; plcstring* zzRValue=(plcstring*)((*(p_tyProdRcpCurrRcp)).sRcpNm); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyTagNm.rCurrWidth=((float)((*(p_tyProdRcpCurrRcp)).diWidthInUM)/1000));
(tyTagNm.usiMode=(unsigned char)((((*(p_bLinkNtParamLCSLFPrep)))&((*(p_bLinkMcParamLCSLFEn))))&1));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyTagNm.sCurrMagRcpNm; plcstring* zzRValue=(plcstring*)((*(p_tyMagRcpCurrRcp)).sRcpNm); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyTagNm.tyCurrMagRcpParam=*(struct tyMagRcpParam*)&((*(p_tyMagRcpCurrRcp))));

if((((unsigned long)(unsigned char)((*(p_bError)))==(unsigned long)(unsigned char)1))){
(tyTagNm.eCurrOpsStatus=3);
}else if(((((unsigned long)(unsigned char)((*(p_bWarning)))==(unsigned long)(unsigned char)1))|(((unsigned long)(unsigned char)((*(p_bInfo)))==(unsigned long)(unsigned char)1)))){
(tyTagNm.eCurrOpsStatus=4);
}else if((((unsigned long)(unsigned char)((*(p_bOpsRun)))==(unsigned long)(unsigned char)1))){
(tyTagNm.eCurrOpsStatus=0);
}else if((((unsigned long)(unsigned char)((*(p_bUIManual)))==(unsigned long)(unsigned char)1))){
(tyTagNm.eCurrOpsStatus=1);
}else{
(tyTagNm.eCurrOpsStatus=2);
}

}

}imp2_end1_0:imp2_else0_0:imp2_end0_0:;}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Act_Main_Disable.st"
static void __AS__Action__Act_Main_Disable(void){
{
}}
#line 32 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCS/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCS/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/LCS/LCS/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/LCS/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_MagPlat/X20CP0483/LCS/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/LCS/LCS/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/3Mag_UL_MagPlat/X20CP0483/LCS/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'tyTagNm'\\n\"");
__asm__(".ascii \"plcdata_const 'c_udiAlarmCurrMax'\\n\"");
__asm__(".previous");
