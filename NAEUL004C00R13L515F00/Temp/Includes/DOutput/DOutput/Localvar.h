/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_200_
#define _BUR_1703817513_200_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bMag3ExitPCB;
_BUR_LOCAL plcbit bMag2ExitPCB;
_BUR_LOCAL plcbit bMag1ExitPCB;
_BUR_LOCAL plcbit bScanTrigSig;
_BUR_LOCAL plcbit bMagAWSmallLimSen4;
_BUR_LOCAL plcbit bMagAWSmallLimSen3;
_BUR_LOCAL plcbit bMagAWSmallLimSen2;
_BUR_LOCAL plcbit bMagAWSmallLimSen1;
_BUR_LOCAL plcbit bMagAWOpenLimByp4;
_BUR_LOCAL plcbit bMagAWOpenLimByp3;
_BUR_LOCAL plcbit bMagAWOpenLimByp2;
_BUR_LOCAL plcbit bMagAWOpenLimByp1;
_BUR_LOCAL plcbit bBypCurtainPBLED;
_BUR_LOCAL plcbit bRstCurtainSen;
_BUR_LOCAL plcbit bBypCurtainSen;
_BUR_LOCAL plcbit bRequestToGet4;
_BUR_LOCAL plcbit bRequestToBring4;
_BUR_LOCAL plcbit bRequestToGet3;
_BUR_LOCAL plcbit bRequestToBring3;
_BUR_LOCAL plcbit bRequestToGet2;
_BUR_LOCAL plcbit bRequestToBring2;
_BUR_LOCAL plcbit bRequestToGet1;
_BUR_LOCAL plcbit bRequestToBring1;
_BUR_LOCAL plcbit bSOTMagAvailable4;
_BUR_LOCAL plcbit bSOTMagReady4;
_BUR_LOCAL plcbit bSOTMagSLarge4;
_BUR_LOCAL plcbit bSOTMagError4;
_BUR_LOCAL plcbit bSOTMagAvailable3;
_BUR_LOCAL plcbit bSOTMagReady3;
_BUR_LOCAL plcbit bSOTMagSLarge3;
_BUR_LOCAL plcbit bSOTMagError3;
_BUR_LOCAL plcbit bSOTMagAvailable2;
_BUR_LOCAL plcbit bSOTMagReady2;
_BUR_LOCAL plcbit bSOTMagSLarge2;
_BUR_LOCAL plcbit bSOTMagError2;
_BUR_LOCAL plcbit bSOTMagAvailable1;
_BUR_LOCAL plcbit bSOTMagReady1;
_BUR_LOCAL plcbit bSOTMagSLarge1;
_BUR_LOCAL plcbit bSOTMagError1;
_BUR_LOCAL plcbit bAgvComIODisabled;
_BUR_LOCAL struct TON fbShutterTuneClsTim;
_BUR_LOCAL struct TON fbShutterTuneOpnTim;
_BUR_LOCAL plcbit bShutterTuning;
_BUR_LOCAL unsigned char usiShutterTuningStep;
_BUR_LOCAL enum eDOAction eStatOld;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bPhysicalDO[200];
#else
/* Variable a_bPhysicalDO not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL struct tyDigitalOutputSettings tyDOSettings;
_BUR_LOCAL struct tyDigitalOutput tyDOutput;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eDOAction eStat;
_BUR_LOCAL enum eDOAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/DOutput/DOutput/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/DOutput/DOutput.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_200_ */

