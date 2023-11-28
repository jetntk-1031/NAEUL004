/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_463_
#define _BUR_1701136131_463_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bCurtainSensorStat;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcbit *p_bUSSOTUSRdy;
_BUR_LOCAL plcbit *p_bUSSOTConvStop;
_BUR_LOCAL plcbit *p_bUSSOTConvStart;
_BUR_LOCAL plcbit *p_bUSSOTTransporting2;
_BUR_LOCAL plcbit *p_bUSSOTTransporting;
_BUR_LOCAL enum eFBStatus *p_eUSSOTStatus2;
_BUR_LOCAL enum eSOTAction *p_eUSSOTStat2;
_BUR_LOCAL enum eFBStatus *p_eUSSOTStatus;
_BUR_LOCAL enum eSOTAction *p_eUSSOTStat;
_BUR_LOCAL plcbit *p_bAGVMagMcRunRdy;
_BUR_LOCAL enum eFBStatus *p_eAGVMagStatus;
_BUR_LOCAL enum eAGVMagAction *p_eAGVMagStat;
_BUR_LOCAL enum eFBStatus *p_eLiftMagConv2Status;
_BUR_LOCAL enum eFBStatus *p_eLiftMagConvStatus;
_BUR_LOCAL plcbit *p_bMagHeightChkSen;
_BUR_LOCAL plcbit *p_bInMagConvExtSen;
_BUR_LOCAL plcbit *p_bMagSelMiniMag;
_BUR_LOCAL plcbit *p_bStepOpsExtMag2;
_BUR_LOCAL plcbit *p_bStepOpsEntMidMag2;
_BUR_LOCAL plcbit *p_bStepOpsEntMag2;
_BUR_LOCAL plcbit *p_bStepOpsExtMag;
_BUR_LOCAL plcbit *p_bStepOpsEntMidMag;
_BUR_LOCAL plcbit *p_bStepOpsEntMag;
_BUR_LOCAL enum eFBStatus *p_eInMagConv2Status;
_BUR_LOCAL enum eMagConvAction *p_eInMagConv2Stat;
_BUR_LOCAL enum eFBStatus *p_eInMagConvStatus;
_BUR_LOCAL enum eMagConvAction *p_eInMagConvStat;
_BUR_LOCAL plcbit *p_bStep;
_BUR_LOCAL plcbit *p_bStop;
_BUR_LOCAL plcbit *p_bRun;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL unsigned long *p_udiRstErr;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsInMagConv/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_463_ */

