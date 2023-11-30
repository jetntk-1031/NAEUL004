#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Hermes/Cyclicst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.st"
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
#line 41 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_InitGlobal.st"
static void __AS__Action__Act_InitGlobal(void){
{



(p_bLinkStartupRun=p_StartupRun);

(pa_tyLinkXMLTableDataBrdAvl1=p_USHermesATableDataBrdAvl);
(p_iLinkXMLTableDataBrdAvlTtlIdx1=p_USHermesATableDataBrdAvlTtlIdx);






(p_eLinkTravLifULPosGo=p_OpsTravLifULPosGo);
(p_bLinkOpsTravLifULInitDone=p_OpsTravLifULInitDone);

(p_bLinkOpsTravLifULEntBrd=p_OpsTravLifULEntBrd);
(p_bLinkOpsTravLifULExitBrd=p_OpsTravLifULExitBrd);
(p_bLinkConvHvBrd=p_PshrConvHvBrd);

(p_bLinkUSHermesTransporting=p_USHermesATransporting);
(p_bLinkUSSMEMATransporting=p_USSMEMAATransporting);









(p_udiRstErr=p_RstErrReset);
(p_bPrep=p_NtParamHermesPrep);
(pa_tyUSParam=p_UIHermesUSParamWr);

(p_tySvyParam=p_UIHermesSvyParamWr);
(p_tyRmtSetConfiguration=p_RmtHermesSetConfiguration);
(p_tySvySetConfiguration=p_SvyHermesSetConfiguration);
(p_bRmtPrep=p_NtParamHermesRmtPrep);
(p_bRmtEn=p_McParamHermesRmtEn);
(p_bSvyPrep=p_NtParamHermesSvyPrep);
(p_bSvyEn=p_McParamHermesSvyEn);
(p_sRetainFileName1=p_NtParamHermesRetainFileNm);



(p_sConfigFileName=p_NtParamHermesConfigFileNm);
(p_sProgNm=p_NtParamHermesProgNm);
(p_bNtSettingsLoadDone=p_StartupNtSettingsLoadDone);
(p_bRmtHermesWriteConfig=p_RmtHermesWriteConfig);
(p_bSvyHermesWriteConfig=p_SvyHermesWriteConfig);
(p_bUISaveHMIConfigure=p_UISaveHMIConfigure);
(p_bUISaveHMISvyConfig=p_UISaveHMISvyConfig);
(p_sMcId=p_McParamMcNm);

(p_bRmtFoundIndexUS1=p_RmtHermesFoundIndexUS1);
(p_bRmtFoundIndexUS2=p_RmtHermesFoundIndexUS2);
(p_bRmtFoundIndexUS3=p_RmtHermesFoundIndexUS3);
(p_bRmtFoundIndexUS4=p_RmtHermesFoundIndexUS4);
(p_bRmtFoundIndexDS1=p_RmtHermesFoundIndexDS1);
(p_bRmtFoundIndexDS2=p_RmtHermesFoundIndexDS2);
(p_bRmtFoundIndexDS3=p_RmtHermesFoundIndexDS3);
(p_bRmtFoundIndexDS4=p_RmtHermesFoundIndexDS4);
(p_udiRmtIndexUS1=p_RmtHermesIndexUS1);
(p_udiRmtIndexUS2=p_RmtHermesIndexUS2);
(p_udiRmtIndexUS3=p_RmtHermesIndexUS3);
(p_udiRmtIndexUS4=p_RmtHermesIndexUS4);
(p_udiRmtIndexDS1=p_RmtHermesIndexDS1);
(p_udiRmtIndexDS2=p_RmtHermesIndexDS2);
(p_udiRmtIndexDS3=p_RmtHermesIndexDS3);
(p_udiRmtIndexDS4=p_RmtHermesIndexDS4);

(p_bSvyFoundIndexUS1=p_SvyHermesFoundIndexUS1);
(p_bSvyFoundIndexUS2=p_SvyHermesFoundIndexUS2);
(p_bSvyFoundIndexUS3=p_SvyHermesFoundIndexUS3);
(p_bSvyFoundIndexUS4=p_SvyHermesFoundIndexUS4);
(p_bSvyFoundIndexDS1=p_SvyHermesFoundIndexDS1);
(p_bSvyFoundIndexDS2=p_SvyHermesFoundIndexDS2);
(p_bSvyFoundIndexDS3=p_SvyHermesFoundIndexDS3);
(p_bSvyFoundIndexDS4=p_SvyHermesFoundIndexDS4);
(p_udiSvyIndexUS1=p_SvyHermesIndexUS1);
(p_udiSvyIndexUS2=p_SvyHermesIndexUS2);
(p_udiSvyIndexUS3=p_SvyHermesIndexUS3);
(p_udiSvyIndexUS4=p_SvyHermesIndexUS4);
(p_udiSvyIndexDS1=p_SvyHermesIndexDS1);
(p_udiSvyIndexDS2=p_SvyHermesIndexDS2);
(p_udiSvyIndexDS3=p_SvyHermesIndexDS3);
(p_udiSvyIndexDS4=p_SvyHermesIndexDS4);


(p_eLinkMcParamUSACommMod=p_McParamUSCommAMod);
(p_eLinkMcParamUSBCommMod=p_McParamUSCommBMod);

(p_bLinkDIRightSen=p_DIConvRgtSen);
(p_bLinkDIClrSen=p_DIConvClrSen);



}}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_LinkAction.st"
static void __AS__Action__Act_LinkAction(void){
{
if((((unsigned long)(unsigned char)((*(p_bLinkStartupRun)))==(unsigned long)(unsigned char)1))){
(p_eAct=p_StartupHermesAct);
}else if(((*(p_bSvyHermesWriteConfig)))){
(p_eAct=p_SvyHermesAct);
}else if(((*(p_bRmtHermesWriteConfig)))){
(p_eAct=p_RmtHermesAct);
}else if((((*(p_bUISaveHMIConfigure)))|((*(p_bUISaveHMISvyConfig))))){
(p_eAct=p_UIHermesAct);
}

}imp8_else0_3:imp8_end0_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_LinkEn.st"
static void __AS__Action__Act_LinkEn(void){
{


}}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Link.st"
static void __AS__Action__Act_Link(void){
{

((*(p_udiRetainDataAddr1))=((unsigned long)(&a_tyHermesBrdAvlData)));
((*(p_udiRetainDataLen1))=10452800);

if((((unsigned long)(unsigned char)((*(p_bLinkStartupRun)))==(unsigned long)(unsigned char)0))){



if(((((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULInitDone)))==(unsigned long)(unsigned char)1))&~Edge0000700000&1?((Edge0000700000=(((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULInitDone)))==(unsigned long)(unsigned char)1))&1),1):((Edge0000700000=(((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULInitDone)))==(unsigned long)(unsigned char)1))&1),0))){

if((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)0))){
(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=1);

(bHermesWriteRetainLane1=1);
}

}


if(((((signed long)((*(p_eLinkTravLifULPosGo)))==(signed long)1))&(((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULEntBrd)))==(unsigned long)(unsigned char)1))&((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&~Edge0000700001&1?((Edge0000700001=(((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&1),1):((Edge0000700001=(((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&1),0)))){

if((((signed long)((*(p_eLinkMcParamUSACommMod)))==(signed long)1))){

{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyHermesBrdAvlData[1-1].a_tyXMLTableDataBrdAvl; unsigned char* zzRValue=(unsigned char*)((*(pa_tyLinkXMLTableDataBrdAvl1))); for(zzIndex=0; zzIndex<52260l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
(a_tyHermesBrdAvlData[1-1].iXMLTableDataBrdAvlTtlIdx=((*(p_iLinkXMLTableDataBrdAvlTtlIdx1))));
(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=0);

(bHermesWriteRetainLane1=1);

}else{

(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=1);

(bHermesWriteRetainLane1=1);

}

}


if(((((signed long)((*(p_eLinkTravLifULPosGo)))==(signed long)2))&(((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULEntBrd)))==(unsigned long)(unsigned char)1))&((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&~Edge0000700002&1?((Edge0000700002=(((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&1),1):((Edge0000700002=(((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)1))&1),0)))){

if((((signed long)((*(p_eLinkMcParamUSBCommMod)))==(signed long)1))){

{int zzIndex; unsigned char* zzLValue=(unsigned char*)a_tyHermesBrdAvlData[1-1].a_tyXMLTableDataBrdAvl; unsigned char* zzRValue=(unsigned char*)((*(pa_tyLinkXMLTableDataBrdAvl2))); for(zzIndex=0; zzIndex<52260l; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex];};
(a_tyHermesBrdAvlData[1-1].iXMLTableDataBrdAvlTtlIdx=((*(p_iLinkXMLTableDataBrdAvlTtlIdx2))));
(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=0);

(bHermesWriteRetain=1);

}else{

(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=1);

(bHermesWriteRetain=1);

}

}


if(((((unsigned long)(unsigned char)((*(p_bLinkOpsTravLifULExitBrd)))==(unsigned long)(unsigned char)1))&(((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)0))&(~(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&Edge0000700004&1?((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),1):((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),0)))&~Edge0000700003&1?((Edge0000700003=((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)0))&(~(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&Edge0000700004&1?((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),1):((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),0)))&1),1):((Edge0000700003=((((unsigned long)(unsigned char)((*(p_bLinkConvHvBrd)))==(unsigned long)(unsigned char)0))&(~(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&Edge0000700004&1?((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),1):((Edge0000700004=(((*(p_bLinkDIRightSen)))|((*(p_bLinkDIClrSen))))&1),0)))&1),0)))){
(a_tyHermesBrdAvlData[1-1].bNewBrdAvl=1);
(bHermesWriteRetainLane1=1);
}


if((((unsigned long)(unsigned char)bHermesWriteRetainLane1==(unsigned long)(unsigned char)1))){
((*(p_eAct))=6);

if(((((signed long)eStat==(signed long)6))&(((signed long)eStatus==(signed long)1)))){
((*(p_eAct))=0);
(bHermesWriteRetainLane1=0);
}
}

}

}imp7_else9_0:imp7_end9_0:imp7_else8_0:imp7_end8_0:imp7_else0_0:imp7_end0_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_RstErr.st"
static void __AS__Action__Act_RstErr(void){
{
if((((unsigned long)((*(p_udiRstErr)))!=(unsigned long)udiRstErrOld))){
(bRstErr=1);
(udiRstErrOld=((*(p_udiRstErr))));
}else{
(bRstErr=0);
}

}imp11_end0_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Initial.st"
static void __AS__Action__Act_Initial(void){
{

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDevice; plcstring* zzRValue=(plcstring*)"F"; for(zzIndex=0; zzIndex<1l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate1.sDirName; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate2.sDirName; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate3.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate3.sDirName; plcstring* zzRValue=(plcstring*)"Log"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate3.bEn=0);;fbDirCreate(&fbDirCreate3);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate4.sDevice; plcstring* zzRValue=(plcstring*)"User"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbDirCreate4.sDirName; plcstring* zzRValue=(plcstring*)"MachineParameter"; for(zzIndex=0; zzIndex<16l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbDirCreate4.bEn=0);;fbDirCreate(&fbDirCreate4);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sDevice; plcstring* zzRValue=(plcstring*)"McParam"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead1.sFile; plcstring* zzRValue=(plcstring*)((*(p_sConfigFileName))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead1.udiOffset=0);
(fbFileRead1.p_Dest=((unsigned long)(&tyCurrConfiguration)));
(fbFileRead1.udiLen=1720);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sDevice; plcstring* zzRValue=(plcstring*)"McParam"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite1.sFile; plcstring* zzRValue=(plcstring*)((*(p_sConfigFileName))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite1.udiOffset=0);
(fbFileWrite1.p_Src=((unsigned long)(&tyConfigurationWr)));
(fbFileWrite1.udiLen=1720);
(fbFileWrite1.udiOption=0);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead2.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead2.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName1))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead2.udiOffset=0);
(fbFileRead2.bEn=0);;fbFileFullRead(&fbFileRead2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite2.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite2.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName1))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite2.udiOffset=0);
(fbFileWrite2.udiOption=0);
(fbFileWrite2.bEn=0);;fbFileFullWrite(&fbFileWrite2);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead3.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead3.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName2))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead3.udiOffset=0);
(fbFileRead3.bEn=0);;fbFileFullRead(&fbFileRead3);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite3.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite3.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName2))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite3.udiOffset=0);
(fbFileWrite3.udiOption=0);
(fbFileWrite3.bEn=0);;fbFileFullWrite(&fbFileWrite3);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead4.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead4.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName3))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead4.udiOffset=0);
(fbFileRead4.bEn=0);;fbFileFullRead(&fbFileRead4);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite4.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite4.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName3))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite4.udiOffset=0);
(fbFileWrite4.udiOption=0);
(fbFileWrite4.bEn=0);;fbFileFullWrite(&fbFileWrite4);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead5.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileRead5.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName4))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileRead5.udiOffset=0);
(fbFileRead5.bEn=0);;fbFileFullRead(&fbFileRead5);

{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite5.sDevice; plcstring* zzRValue=(plcstring*)"Retain"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)fbFileWrite5.sFile; plcstring* zzRValue=(plcstring*)((*(p_sRetainFileName4))); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(fbFileWrite5.udiOffset=0);
(fbFileWrite5.udiOption=0);
(fbFileWrite5.bEn=0);;fbFileFullWrite(&fbFileWrite5);

}}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_InitLocal.st"
static void __AS__Action__Act_InitLocal(void){
{

(p_eAct=((unsigned long)(&eAct)));
(p_udiRstErr=((unsigned long)(&udiRstErr)));
(p_bPrep=((unsigned long)(&bPrep)));
(p_bEn=((unsigned long)(&bEn)));
(p_bDis=((unsigned long)(&bDis)));
(pa_tyUSParam=((unsigned long)(&a_tyUSParam)));
(pa_tyDSParam=((unsigned long)(&a_tyDSParam)));
(p_tyRmtParam=((unsigned long)(&tyRmtParam)));
(p_tySvyParam=((unsigned long)(&tySvyParam)));
(p_tyRmtSetConfiguration=((unsigned long)(&tyRmtSetConfiguration)));
(p_tySvySetConfiguration=((unsigned long)(&tySvySetConfiguration)));
(p_bRmtPrep=((unsigned long)(&bRmtPrep)));
(p_bRmtEn=((unsigned long)(&bRmtEn)));
(p_bSvyPrep=((unsigned long)(&bSvyPrep)));
(p_bSvyEn=((unsigned long)(&bSvyEn)));
(p_sRetainFileName1=((unsigned long)(&sRetainFileName1)));
(p_sRetainFileName2=((unsigned long)(&sRetainFileName2)));
(p_sRetainFileName3=((unsigned long)(&sRetainFileName3)));
(p_sRetainFileName4=((unsigned long)(&sRetainFileName4)));
(p_udiRetainDataAddr1=((unsigned long)(&udiRetainDataAddr1)));
(p_udiRetainDataLen1=((unsigned long)(&udiRetainDataLen1)));
(p_udiRetainDataAddr2=((unsigned long)(&udiRetainDataAddr2)));
(p_udiRetainDataLen2=((unsigned long)(&udiRetainDataLen2)));
(p_udiRetainDataAddr3=((unsigned long)(&udiRetainDataAddr3)));
(p_udiRetainDataLen3=((unsigned long)(&udiRetainDataLen3)));
(p_udiRetainDataAddr4=((unsigned long)(&udiRetainDataAddr4)));
(p_udiRetainDataLen4=((unsigned long)(&udiRetainDataLen4)));
(p_sConfigFileName=((unsigned long)(&sConfigFileName)));
(p_sProgNm=((unsigned long)(&sProgNm)));
(p_bNtSettingsLoadDone=((unsigned long)(&bNtSettingsLoadDone)));
(p_bRmtHermesWriteConfig=((unsigned long)(&bRmtHermesWriteConfig)));
(p_bSvyHermesWriteConfig=((unsigned long)(&bSvyHermesWriteConfig)));
(p_bUISaveHMIConfigure=((unsigned long)(&bUISaveHMIConfigure)));
(p_bUISaveHMISvyConfig=((unsigned long)(&bUISaveHMISvyConfig)));
(p_sMcId=((unsigned long)(&sMcId)));

(p_bRmtFoundIndexUS1=((unsigned long)(&bRmtFoundIndexUS1)));
(p_bRmtFoundIndexUS2=((unsigned long)(&bRmtFoundIndexUS2)));
(p_bRmtFoundIndexUS3=((unsigned long)(&bRmtFoundIndexUS3)));
(p_bRmtFoundIndexUS4=((unsigned long)(&bRmtFoundIndexUS4)));
(p_bRmtFoundIndexDS1=((unsigned long)(&bRmtFoundIndexDS1)));
(p_bRmtFoundIndexDS2=((unsigned long)(&bRmtFoundIndexDS2)));
(p_bRmtFoundIndexDS3=((unsigned long)(&bRmtFoundIndexDS3)));
(p_bRmtFoundIndexDS4=((unsigned long)(&bRmtFoundIndexDS4)));
(p_udiRmtIndexUS1=((unsigned long)(&udiRmtIndexUS1)));
(p_udiRmtIndexUS2=((unsigned long)(&udiRmtIndexUS2)));
(p_udiRmtIndexUS3=((unsigned long)(&udiRmtIndexUS3)));
(p_udiRmtIndexUS4=((unsigned long)(&udiRmtIndexUS4)));
(p_udiRmtIndexDS1=((unsigned long)(&udiRmtIndexDS1)));
(p_udiRmtIndexDS2=((unsigned long)(&udiRmtIndexDS2)));
(p_udiRmtIndexDS3=((unsigned long)(&udiRmtIndexDS3)));
(p_udiRmtIndexDS4=((unsigned long)(&udiRmtIndexDS4)));

(p_bSvyFoundIndexUS1=((unsigned long)(&bSvyFoundIndexUS1)));
(p_bSvyFoundIndexUS2=((unsigned long)(&bSvyFoundIndexUS2)));
(p_bSvyFoundIndexUS3=((unsigned long)(&bSvyFoundIndexUS3)));
(p_bSvyFoundIndexUS4=((unsigned long)(&bSvyFoundIndexUS4)));
(p_bSvyFoundIndexDS1=((unsigned long)(&bSvyFoundIndexDS1)));
(p_bSvyFoundIndexDS2=((unsigned long)(&bSvyFoundIndexDS2)));
(p_bSvyFoundIndexDS3=((unsigned long)(&bSvyFoundIndexDS3)));
(p_bSvyFoundIndexDS4=((unsigned long)(&bSvyFoundIndexDS4)));
(p_udiSvyIndexUS1=((unsigned long)(&udiSvyIndexUS1)));
(p_udiSvyIndexUS2=((unsigned long)(&udiSvyIndexUS2)));
(p_udiSvyIndexUS3=((unsigned long)(&udiSvyIndexUS3)));
(p_udiSvyIndexUS4=((unsigned long)(&udiSvyIndexUS4)));
(p_udiSvyIndexDS1=((unsigned long)(&udiSvyIndexDS1)));
(p_udiSvyIndexDS2=((unsigned long)(&udiSvyIndexDS2)));
(p_udiSvyIndexDS3=((unsigned long)(&udiSvyIndexDS3)));
(p_udiSvyIndexDS4=((unsigned long)(&udiSvyIndexDS4)));




(p_bSvyHermesWriteConfig=((unsigned long)(&bSvyHermesWriteConfig)));
}}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Action.st"
static void __AS__Action__Act_Action(void){
{

if(((((signed long)eStatus==(signed long)3))&bRstErr)){
((*(p_eAct))=0);
(eStat=0);
}


if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)1)))){
(eStat=((*(p_eAct))));
}

}imp1_else1_0:imp1_end1_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Background.st"
static void __AS__Action__Act_Background(void){
{


if(((((unsigned long)(unsigned char)((*(p_bSvyPrep)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bSvyEn)))==(unsigned long)(unsigned char)1))&((*(p_bSvyHermesWriteConfig))))){

if(((*(p_bSvyFoundIndexUS1)))){
(tyConfigurationWr.a_tyUSParam[0].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS1)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS1)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[0].uiHostPort=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS1)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS1)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexUS2)))){
(tyConfigurationWr.a_tyUSParam[1].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS2)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[1].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS2)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[1].uiHostPort=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS2)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[1].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS2)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexUS3)))){
(tyConfigurationWr.a_tyUSParam[2].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS3)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[2].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS3)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[2].uiHostPort=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS3)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[2].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS3)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexUS4)))){
(tyConfigurationWr.a_tyUSParam[3].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS4)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[3].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS4)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[3].uiHostPort=((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS4)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[3].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiSvyIndexUS4)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexDS1)))){
(tyConfigurationWr.a_tyDSParam[0].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS1)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[0].uiSvrPort=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS1)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[0].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS1)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexDS2)))){
(tyConfigurationWr.a_tyDSParam[1].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS2)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[1].uiSvrPort=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS2)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[1].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS2)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexDS3)))){
(tyConfigurationWr.a_tyDSParam[2].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS3)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[2].uiSvrPort=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS3)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[2].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS3)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bSvyFoundIndexDS4)))){
(tyConfigurationWr.a_tyDSParam[3].iLaneID=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS4)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[3].uiSvrPort=((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS4)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[3].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiSvyIndexDS4)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if((((unsigned long)(unsigned char)((*(p_tySvySetConfiguration)).tyAvl.bMachineId)==(unsigned long)(unsigned char)1))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[0].sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.tySvyParam.sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tySvySetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

if((((unsigned long)(unsigned char)((*(p_tySvySetConfiguration)).tyAvl.bSupervisorySystemPort)==(unsigned long)(unsigned char)1))){

(tyConfigurationWr.tySvyParam.uiSvySvstemPort=((*(p_tySvySetConfiguration)).tyData.uiSupervisorySystemPort));

}



}else if(((((unsigned long)(unsigned char)((*(p_bRmtPrep)))==(unsigned long)(unsigned char)1))&(((unsigned long)(unsigned char)((*(p_bRmtEn)))==(unsigned long)(unsigned char)1))&((*(p_bRmtHermesWriteConfig))))){

if(((*(p_bRmtFoundIndexUS1)))){
(tyConfigurationWr.a_tyUSParam[0].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS1)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS1)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[0].uiHostPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS1)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS1)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexUS2)))){
(tyConfigurationWr.a_tyUSParam[1].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS2)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[1].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS2)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[1].uiHostPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS2)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[1].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS2)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexUS3)))){
(tyConfigurationWr.a_tyUSParam[2].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS3)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[2].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS3)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[2].uiHostPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS3)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[2].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS3)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexUS4)))){
(tyConfigurationWr.a_tyUSParam[3].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS4)))].iUpstreamLaneId));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[3].sHostAddress; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS4)))].sHostAddress); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyConfigurationWr.a_tyUSParam[3].uiHostPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS4)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[3].sUpstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyUpstreamConfigurations[((*(p_udiRmtIndexUS4)))].sUpstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexDS1)))){
(tyConfigurationWr.a_tyDSParam[0].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS1)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[0].uiSvrPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS1)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[0].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS1)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexDS2)))){
(tyConfigurationWr.a_tyDSParam[1].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS2)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[1].uiSvrPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS2)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[1].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS2)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexDS3)))){
(tyConfigurationWr.a_tyDSParam[2].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS3)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[2].uiSvrPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS3)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[2].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS3)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if(((*(p_bRmtFoundIndexDS4)))){
(tyConfigurationWr.a_tyDSParam[3].iLaneID=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS4)))].iDownstreamLaneId));
(tyConfigurationWr.a_tyDSParam[3].uiSvrPort=((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS4)))].uiPort));
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[3].sDownstreamInterfaceId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.a_tyDownstreamConfigurations[((*(p_udiRmtIndexDS4)))].sDownstreamInterfaceId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
}

if((((unsigned long)(unsigned char)((*(p_tyRmtSetConfiguration)).tyAvl.bMachineId)==(unsigned long)(unsigned char)1))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyUSParam[0].sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.a_tyDSParam[0].sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)tyConfigurationWr.tySvyParam.sMachineId; plcstring* zzRValue=(plcstring*)((*(p_tyRmtSetConfiguration)).tyData.sMachineId); for(zzIndex=0; zzIndex<80l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

}

if((((unsigned long)(unsigned char)((*(p_tyRmtSetConfiguration)).tyAvl.bSupervisorySystemPort)==(unsigned long)(unsigned char)1))){

(tyConfigurationWr.tySvyParam.uiSvySvstemPort=((*(p_tyRmtSetConfiguration)).tyData.uiSupervisorySystemPort));

}


}else if(((*(p_bUISaveHMIConfigure)))){

(tyConfigurationWr.a_tyUSParam[0]=*(struct tyHermesUSParam*)&((*(pa_tyUSParam))[0]));
(tyConfigurationWr.a_tyDSParam[0]=*(struct tyHermesDSParam*)&((*(pa_tyDSParam))[0]));
(tyConfigurationWr.a_tyUSParam[1]=*(struct tyHermesUSParam*)&((*(pa_tyUSParam))[1]));
(tyConfigurationWr.a_tyDSParam[1]=*(struct tyHermesDSParam*)&((*(pa_tyDSParam))[1]));
(tyConfigurationWr.a_tyUSParam[2]=*(struct tyHermesUSParam*)&((*(pa_tyUSParam))[2]));
(tyConfigurationWr.a_tyDSParam[2]=*(struct tyHermesDSParam*)&((*(pa_tyDSParam))[2]));
(tyConfigurationWr.a_tyUSParam[3]=*(struct tyHermesUSParam*)&((*(pa_tyUSParam))[3]));
(tyConfigurationWr.a_tyDSParam[3]=*(struct tyHermesDSParam*)&((*(pa_tyDSParam))[3]));


}else if(((*(p_bUISaveHMISvyConfig)))){

(tyConfigurationWr.tySvyParam=*(struct tyHermesSvyParam*)&((*(p_tySvyParam))));

}

}imp3_else0_3:imp3_end0_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Main.st"
static void __AS__Action__Act_Main(void){
{
if((((signed long)eStatOld!=(signed long)eStat))){
(fbDirCreate1.bEn=0);;fbDirCreate(&fbDirCreate1);
(fbDirCreate2.bEn=0);;fbDirCreate(&fbDirCreate2);
(fbDirCreate3.bEn=0);;fbDirCreate(&fbDirCreate3);
(fbDirCreate4.bEn=0);;fbDirCreate(&fbDirCreate4);
(fbFileRead1.bEn=0);;fbFileFullRead(&fbFileRead1);
(fbFileWrite1.bEn=0);;fbFileFullWrite(&fbFileWrite1);
(fbFileRead2.bEn=0);;fbFileFullRead(&fbFileRead2);
(fbFileWrite2.bEn=0);;fbFileFullWrite(&fbFileWrite2);
(fbFileRead3.bEn=0);;fbFileFullRead(&fbFileRead3);
(fbFileWrite3.bEn=0);;fbFileFullWrite(&fbFileWrite3);
(fbFileRead4.bEn=0);;fbFileFullRead(&fbFileRead4);
(fbFileWrite4.bEn=0);;fbFileFullWrite(&fbFileWrite4);
(fbFileRead5.bEn=0);;fbFileFullRead(&fbFileRead5);
(fbFileWrite5.bEn=0);;fbFileFullWrite(&fbFileWrite5);
(usiStep=0);
(bFileNotFound=0);

{int zzIndex; plcstring* zzLValue=(plcstring*)sStatTxt; plcstring* zzRValue=(plcstring*)a_sStatText[eStat]; for(zzIndex=0; zzIndex<200l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

(eStatOld=eStat);

(eStatus=2);
}


switch(eStat){

case 0:{
(eStatus=0);

}break;case 4:{
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
(usiStep=2);
}else if((((unsigned long)fbDirCreate2.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbDirCreate2.udiStatus==(unsigned long)1908))){
(udiStatus=10001);
}else{
(udiStatus=fbDirCreate2.udiStatus);
}
}

}break;case 2:{
(fbDirCreate3.bEn=1);;fbDirCreate(&fbDirCreate3);
if((((unsigned long)fbDirCreate3.udiStatus==(unsigned long)0))){
(usiStep=3);
}else if((((unsigned long)fbDirCreate3.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbDirCreate3.udiStatus==(unsigned long)1908))){
(udiStatus=10010);
}else{
(udiStatus=fbDirCreate3.udiStatus);
}
}

}break;case 3:{
(fbDirCreate4.bEn=1);;fbDirCreate(&fbDirCreate4);
if((((unsigned long)fbDirCreate4.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbDirCreate4.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbDirCreate4.udiStatus==(unsigned long)1908))){
(udiStatus=10011);
}else{
(udiStatus=fbDirCreate4.udiStatus);
}
}

}break;}

}

}break;case 14:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileRead2.p_Dest=((*(p_udiRetainDataAddr1))));
(fbFileRead2.udiLen=((*(p_udiRetainDataLen1))));
(fbFileRead2.bEn=1);;fbFileFullRead(&fbFileRead2);

if((((unsigned long)fbFileRead2.udiStatus==(unsigned long)0))){
(eStatus=1);
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

}break;case 6:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileWrite2.p_Src=((*(p_udiRetainDataAddr1))));
(fbFileWrite2.udiLen=((*(p_udiRetainDataLen1))));
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

}break;case 15:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileRead3.p_Dest=((*(p_udiRetainDataAddr2))));
(fbFileRead3.udiLen=((*(p_udiRetainDataLen2))));
(fbFileRead3.bEn=1);;fbFileFullRead(&fbFileRead3);

if((((unsigned long)fbFileRead3.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileRead3.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead3.udiStatus==(unsigned long)1900))){
(udiStatus=10032);
}else if((((unsigned long)fbFileRead3.udiStatus==(unsigned long)1902))){
(udiStatus=10033);
}else if((((unsigned long)fbFileRead3.udiStatus==(unsigned long)1904))){
(udiStatus=10034);
}else if((((unsigned long)fbFileRead3.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead3.udiStatus);
}
}

}

}break;case 7:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileWrite3.p_Src=((*(p_udiRetainDataAddr2))));
(fbFileWrite3.udiLen=((*(p_udiRetainDataLen2))));
(fbFileWrite3.bEn=1);;fbFileFullWrite(&fbFileWrite3);

if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite3.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)1900))){
(udiStatus=10035);
}else if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)1901))){
(udiStatus=10036);
}else if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)1903))){
(udiStatus=10037);
}else if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)1904))){
(udiStatus=10038);
}else if((((unsigned long)fbFileWrite3.udiStatus==(unsigned long)1914))){
(udiStatus=10039);
}else{
(udiStatus=fbFileWrite3.udiStatus);
}
}

}

}break;case 16:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileRead4.p_Dest=((*(p_udiRetainDataAddr3))));
(fbFileRead4.udiLen=((*(p_udiRetainDataLen3))));
(fbFileRead4.bEn=1);;fbFileFullRead(&fbFileRead4);

if((((unsigned long)fbFileRead4.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileRead4.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead4.udiStatus==(unsigned long)1900))){
(udiStatus=10042);
}else if((((unsigned long)fbFileRead4.udiStatus==(unsigned long)1902))){
(udiStatus=10043);
}else if((((unsigned long)fbFileRead4.udiStatus==(unsigned long)1904))){
(udiStatus=10044);
}else if((((unsigned long)fbFileRead4.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead4.udiStatus);
}
}

}

}break;case 8:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileWrite4.p_Src=((*(p_udiRetainDataAddr3))));
(fbFileWrite4.udiLen=((*(p_udiRetainDataLen3))));
(fbFileWrite4.bEn=1);;fbFileFullWrite(&fbFileWrite4);

if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite4.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)1900))){
(udiStatus=10045);
}else if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)1901))){
(udiStatus=10046);
}else if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)1903))){
(udiStatus=10047);
}else if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)1904))){
(udiStatus=10048);
}else if((((unsigned long)fbFileWrite4.udiStatus==(unsigned long)1914))){
(udiStatus=10049);
}else{
(udiStatus=fbFileWrite4.udiStatus);
}
}

}

}break;case 17:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileRead5.p_Dest=((*(p_udiRetainDataAddr4))));
(fbFileRead5.udiLen=((*(p_udiRetainDataLen4))));
(fbFileRead5.bEn=1);;fbFileFullRead(&fbFileRead5);

if((((unsigned long)fbFileRead5.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileRead5.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead5.udiStatus==(unsigned long)1900))){
(udiStatus=10052);
}else if((((unsigned long)fbFileRead5.udiStatus==(unsigned long)1902))){
(udiStatus=10053);
}else if((((unsigned long)fbFileRead5.udiStatus==(unsigned long)1904))){
(udiStatus=10054);
}else if((((unsigned long)fbFileRead5.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead5.udiStatus);
}
}

}

}break;case 9:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileWrite5.p_Src=((*(p_udiRetainDataAddr4))));
(fbFileWrite5.udiLen=((*(p_udiRetainDataLen4))));
(fbFileWrite5.bEn=1);;fbFileFullWrite(&fbFileWrite5);

if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)0))){
(eStatus=1);
}else if((((unsigned long)fbFileWrite5.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)1900))){
(udiStatus=10055);
}else if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)1901))){
(udiStatus=10056);
}else if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)1903))){
(udiStatus=10057);
}else if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)1904))){
(udiStatus=10058);
}else if((((unsigned long)fbFileWrite5.udiStatus==(unsigned long)1914))){
(udiStatus=10059);
}else{
(udiStatus=fbFileWrite5.udiStatus);
}
}

}

}break;case 22:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileRead1.bEn=1);;fbFileFullRead(&fbFileRead1);

if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)0))){
(eStatus=1);
(tyConfigurationWr=*(struct tyHermesConfiguration*)&tyCurrConfiguration);
}else if((((unsigned long)fbFileRead1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1900))){
(udiStatus=10012);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1902))){
(udiStatus=10013);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1904))){
(udiStatus=10014);
}else if((((unsigned long)fbFileRead1.udiStatus==(unsigned long)1915))){
(eStatus=1);
(bFileNotFound=1);
}else{
(udiStatus=fbFileRead1.udiStatus);
}
}

}

}break;case 21:{
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){

(eStatus=2);

(fbFileWrite1.bEn=1);;fbFileFullWrite(&fbFileWrite1);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)0))){
(eStatus=1);
(tyCurrConfiguration=*(struct tyHermesConfiguration*)&tyConfigurationWr);
}else if((((unsigned long)fbFileWrite1.udiStatus<(unsigned long)65534))){
(eStatus=3);

if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1900))){
(udiStatus=10015);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1901))){
(udiStatus=10016);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1903))){
(udiStatus=10017);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1904))){
(udiStatus=10018);
}else if((((unsigned long)fbFileWrite1.udiStatus==(unsigned long)1914))){
(udiStatus=10019);
}else{
(udiStatus=fbFileWrite1.udiStatus);
}
}

}



}break;default: {
if(((((signed long)eStatus==(signed long)0))|(((signed long)eStatus==(signed long)2)))){
(eStatus=1);
}

}break;}

}imp10_else42_0:imp10_end42_0:imp10_endcase1_0:;}
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"
#line 2 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Act_Alarm.st"
static void __AS__Action__Act_Alarm(void){
{

if(((((signed long)eStatus==(signed long)3))&~Edge0000200000&1?((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),1):((Edge0000200000=(((signed long)eStatus==(signed long)3))&1),0))){

{int zzIndex; plcstring* zzLValue=(plcstring*)tyAlmData.sProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(tyAlmData.udiCode=udiStatus);
(tyAlmData.eSeverity=1);
(tyAlmData.udiRunTime=(tyAlmData.udiRunTime+1));
(tyAlmData.bAlm=1);
(tyAlmData.udiModuleNum=udiModuleNum);
{int zzIndex; plcstring* zzLValue=(plcstring*)g_sHermesProgNm; plcstring* zzRValue=(plcstring*)((*(p_sProgNm))); for(zzIndex=0; zzIndex<15l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};

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
#line 42 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.nodebug"

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
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes/InputRef.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Hermes/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/Demo/X20CP0483/Hermes/Cyclic.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/Hermes/Hermes/Cyclic.st\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Temp/Objects/Demo/X20CP0483/Hermes/Cyclic.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".previous");

__asm__(".section \".plciec\"");
__asm__(".ascii \"plcdata_const 'a_tyHermesBrdAvlData'\\n\"");
__asm__(".ascii \"plcdata_const 'tyCurrConfiguration'\\n\"");
__asm__(".ascii \"plcdata_const 'tyConfigurationWr'\\n\"");
__asm__(".ascii \"plcdata_const 'c_diHermesConfigMaxIdx'\\n\"");
__asm__(".previous");
