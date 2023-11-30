/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_366_
#define _BUR_1701225410_366_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bLinkUSSMEMA2Transporting;
_BUR_LOCAL plcbit *p_bLinkOpsGConv2StepEntBrd;
_BUR_LOCAL plcbit *p_bLinkOpsGConv2HvBrd;
_BUR_LOCAL plcbit *p_bLinkOpsInitGConv2EndHvBrd;
_BUR_LOCAL plcbit *p_bLinkOpsInitGConv2MidHvBrd;
_BUR_LOCAL plcbit *p_bLinkOpsInitGConv2StepInitDone;
_BUR_LOCAL plcbit *p_bLinkUSSMEMATransporting;
_BUR_LOCAL plcbit *p_bLinkUSHermesTransporting;
_BUR_LOCAL plcbit *p_bLinkOpsGConv1StepEntBrd;
_BUR_LOCAL plcbit *p_bLinkOpsInitGConv1EndHvBrd;
_BUR_LOCAL plcbit *p_bLinkOpsInitGConv1MidHvBrd;
_BUR_LOCAL plcbit *p_bLinkDIClrSen;
_BUR_LOCAL plcbit *p_bLinkDIRightSen;
_BUR_LOCAL plcbit *p_bLinkConvHvBrd;
_BUR_LOCAL plcbit *p_bLinkOpsTravLifULExitBrd;
_BUR_LOCAL plcbit *p_bLinkOpsTravLifULEntBrd;
_BUR_LOCAL plcbit *p_bLinkOpsTravLifULInitDone;
_BUR_LOCAL enum eTravLifULPos *p_eLinkTravLifULPosGo;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyHermesBrdAvlDat a_tyHermesBrdAvlData[200];
#else
/* Variable a_tyHermesBrdAvlData not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyHermesBrdAvlDat tyHermesBrdAvlData;
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx4;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl4)[201];
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx3;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl3)[201];
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx2;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl2)[201];
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx1;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl1)[201];
_BUR_LOCAL enum eMcSetCommMod *p_eLinkMcParamUSBCommMod;
_BUR_LOCAL enum eMcSetCommMod *p_eLinkMcParamUSACommMod;
_BUR_LOCAL plcbit *p_bLinkStartupRun;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_366_ */

