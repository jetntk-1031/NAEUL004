/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225410_236_
#define _BUR_1701225410_236_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bMESTrigSetFull;
_BUR_LOCAL enum eBufferAction eStatOld;
_BUR_LOCAL struct TON fbMagPresentTm;
_BUR_LOCAL struct TON fbMagAbsentTm;
_BUR_LOCAL struct TON fbCoolFanOffChkTm;
_BUR_LOCAL struct TON fbCoolFanOffDlyTm;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite1;
_BUR_LOCAL struct fbFileFullRead fbFileRead1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct tyBffrParam tyBffrParameter;
_BUR_LOCAL plcbit bCoolFanRun;
_BUR_LOCAL plcbit bSetMty;
_BUR_LOCAL plcbit bSetFull;
_BUR_LOCAL signed long diExpectedSlt;
_BUR_LOCAL signed long diCurrSlt;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bUpdtDisplay;
_BUR_LOCAL plcbit bBffrSetFull;
_BUR_LOCAL plcbit bBffrSetMty;
_BUR_LOCAL plcbit bUpdateSensor;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcstring sCurrRcpNm[16];
_BUR_LOCAL plcstring sBarcode2[81];
_BUR_LOCAL plcstring sBarcode1[81];
_BUR_LOCAL plcstring sProdNm[16];
_BUR_LOCAL plcstring sBffrNm[16];
_BUR_LOCAL plcbit bCoolFanTm;
_BUR_LOCAL plcbit bPrepCoolFan;
_BUR_LOCAL plcbit bMagPresentSensor;
_BUR_LOCAL signed long diCoolFanOffDlyTm;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bSkip[60];
#else
/* Variable a_bSkip not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bNxtLoadSeq;
_BUR_LOCAL plcbit bGdBrdReq;
_BUR_LOCAL plcbit bGdBrdIn;
_BUR_LOCAL plcbit bFIFO;
_BUR_LOCAL plcbit bAscending;
_BUR_LOCAL signed long diLifterCurrPosInUM;
_BUR_LOCAL signed long diLifterBtmPosInUM;
_BUR_LOCAL signed long diSltToSltInUM;
_BUR_LOCAL signed long diCoolTm;
_BUR_LOCAL signed long diBffrTtlSlt;
_BUR_LOCAL signed long diSltCap;
_BUR_LOCAL signed long diPitch;
_BUR_LOCAL signed long diMaxSlt;
_BUR_LOCAL signed long diMinSlt;
_BUR_LOCAL plcdt dtCurrDT;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcstring sFileName[81];
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bFIFOOld;
_BUR_LOCAL plcbit bMagRemoved;
_BUR_LOCAL plcbit bParamDiff;
_BUR_LOCAL plcbit bLastProductLeftInBffr;
_BUR_LOCAL plcbit bLastProductUnload;
_BUR_LOCAL plcbit bNewProduct;
_BUR_LOCAL plcdt dtMagPresentTm;
_BUR_LOCAL_RETAIN plcbit bMagPresent;
_BUR_LOCAL plcbit bCoolFanCtrl;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL struct tyBrdUnloadStat tyBoardUnloadStat;
_BUR_LOCAL struct tyBffrStat tyBufferStat;
_BUR_LOCAL struct tyDispBffr tyDispBuffer;
_BUR_LOCAL struct tyBffr tyBuffer;
_BUR_LOCAL plcbit bCoolNotRdy;
_BUR_LOCAL signed long diCoolBrdBad;
_BUR_LOCAL signed long diCoolBrdGd;
_BUR_LOCAL signed long diCoolBrdAny;
_BUR_LOCAL signed long diNxtUnloadSlt;
_BUR_LOCAL signed long diNxtLoadSlt;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eBufferAction eStat;
_BUR_LOCAL enum eBufferAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225410_236_ */

