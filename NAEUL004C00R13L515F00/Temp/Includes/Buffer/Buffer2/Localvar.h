/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_160_
#define _BUR_1703817513_160_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bLastProductLeftInBffr;
_BUR_LOCAL plcbit bLastProductUnload;
_BUR_LOCAL plcbit bNewProduct;
_BUR_LOCAL plcbit bFileNotFound;
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

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eBufferAction eAct;
_BUR_LOCAL struct tyBuffer1 tylocalBuffer;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Buffer/Buffer2/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_160_ */

