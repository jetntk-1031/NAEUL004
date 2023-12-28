/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_155_
#define _BUR_1703660021_155_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
 #define c_udiMpProdRcpMax 1999U
#else
 _LOCAL_CONST unsigned long c_udiMpProdRcpMax;
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct MpRecipeXml fbMpRecipeXml;
_BUR_LOCAL struct MpRecipeRegPar fbMpRecipeRegPar;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct tyProdRcpParam a_tyMpProdRcp1[2000];
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcstring sFileName[256];
_BUR_LOCAL plcstring sPVName[101];
_BUR_LOCAL struct MpComIdentType tyMpProdRcpMpLink;
_BUR_LOCAL struct tyProdRcpParam a_tyMpProdRcp[2000];
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL struct tyProdRcpParam (*pa_tyMpProdRcp)[2000];
_BUR_LOCAL struct tyMpProdRcp tylocalMpProdRcp;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MpProdRcp/MpProdRcp/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_155_ */

