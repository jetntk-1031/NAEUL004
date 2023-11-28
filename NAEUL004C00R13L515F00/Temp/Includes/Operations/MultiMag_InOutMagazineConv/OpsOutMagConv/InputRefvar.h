/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_466_
#define _BUR_1701136131_466_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bDSSOTConvStop;
_BUR_LOCAL plcbit *p_bDSSOTConvStart;
_BUR_LOCAL plcbit *p_bDSSOTTransporting2;
_BUR_LOCAL plcbit *p_bDSSOTTransporting;
_BUR_LOCAL enum eFBStatus *p_eDSSOTStatus2;
_BUR_LOCAL enum eSOTAction *p_eDSSOTStat2;
_BUR_LOCAL enum eFBStatus *p_eDSSOTStatus;
_BUR_LOCAL enum eSOTAction *p_eDSSOTStat;
_BUR_LOCAL plcbit *p_bAGVMagMcRunRdy;
_BUR_LOCAL enum eFBStatus *p_eAGVMagStatus;
_BUR_LOCAL enum eAGVMagAction *p_eAGVMagStat;
_BUR_LOCAL plcbit *p_bOpsMnlUnloadMag2;
_BUR_LOCAL plcbit *p_bOpsMnlUnloadMag;
_BUR_LOCAL plcbit *p_bExitSig2;
_BUR_LOCAL plcbit *p_bExitSig;
_BUR_LOCAL plcbit *p_bExtSen2;
_BUR_LOCAL plcbit *p_bMidSen2;
_BUR_LOCAL plcbit *p_bEntSen2;
_BUR_LOCAL plcbit *p_bExtSen;
_BUR_LOCAL plcbit *p_bMidSen;
_BUR_LOCAL plcbit *p_bEntSen;
_BUR_LOCAL plcbit *p_bStepEntMag2;
_BUR_LOCAL plcbit *p_bStepEntMag;
_BUR_LOCAL enum eFBStatus *p_eOutMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConv2Stat;
_BUR_LOCAL enum eFBStatus *p_eOutMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eOutMagConvStat;
_BUR_LOCAL plcbit *p_bStep;
_BUR_LOCAL plcbit *p_bStop;
_BUR_LOCAL plcbit *p_bRun;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL unsigned long *p_udiRstErr;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsOutMagConv/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_466_ */

