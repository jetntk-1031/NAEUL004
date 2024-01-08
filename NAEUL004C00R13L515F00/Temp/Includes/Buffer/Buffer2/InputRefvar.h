/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680536_238_
#define _BUR_1704680536_238_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyStatPlatformFromMES *p_tyResponseFromMES;
_BUR_LOCAL enum eCustomer *p_eNtParamCustomerReq;
_BUR_LOCAL plcbit *p_bOpsMagConvULRlsMagAllw;
_BUR_LOCAL plcbit *p_bMcParamAutoRcpDis;
_BUR_LOCAL plcbit *p_bNtParamAutoRcpPrep;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcstring (*p_sCurrRcpNm)[16];
_BUR_LOCAL plcstring (*p_sBarcode2)[81];
_BUR_LOCAL plcstring (*p_sBarcode1)[81];
_BUR_LOCAL plcstring (*p_sProdNm)[16];
_BUR_LOCAL plcstring (*p_sBffrNm)[16];
_BUR_LOCAL struct tyBffrStat *p_tyBufferStat;
_BUR_LOCAL struct tyDispBffr *p_tyDispBuffer;
_BUR_LOCAL struct tyBffr *p_tyBuffer;
_BUR_LOCAL plcbit *p_bCoolFanTm;
_BUR_LOCAL plcbit *p_bPrepCoolFan;
_BUR_LOCAL plcbit *p_bMagPresentSensor;
_BUR_LOCAL signed long *p_diCoolFanOffDlyTm;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit (*pa_bSkip)[60];
#else
/* Variable pa_bSkip not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit *p_bNxtLoadSeq;
_BUR_LOCAL plcbit *p_bGdBrdReq;
_BUR_LOCAL plcbit *p_bGdBrdIn;
_BUR_LOCAL plcbit *p_bFIFO;
_BUR_LOCAL plcbit *p_bAscending;
_BUR_LOCAL signed long *p_diLifterCurrPosInUM;
_BUR_LOCAL signed long *p_diLifterBtmPosInUM;
_BUR_LOCAL signed long *p_diSltToSltInUM;
_BUR_LOCAL signed long *p_diCoolTm;
_BUR_LOCAL signed long *p_diBffrTtlSlt;
_BUR_LOCAL signed long *p_diSltCap;
_BUR_LOCAL signed long *p_diPitch;
_BUR_LOCAL signed long *p_diMaxSlt;
_BUR_LOCAL signed long *p_diMinSlt;
_BUR_LOCAL plcdt *p_dtCurrDT;
_BUR_LOCAL plcbit *p_bManual;
_BUR_LOCAL plcstring (*p_sFileName)[81];
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eBufferAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer2/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680536_238_ */

