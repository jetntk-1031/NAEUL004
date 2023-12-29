/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837635_362_
#define _BUR_1703837635_362_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL enum eMidSenParam eMidSenNcNoType;
_BUR_LOCAL struct TON fbCurtainSafetyRstTm;
_BUR_LOCAL signed long diOutMagConv2MidSenOffTm;
_BUR_LOCAL signed long diOutMagConv2MidSenOnTm;
_BUR_LOCAL signed long diOutMagConv2ExtSenOffTm;
_BUR_LOCAL signed long diOutMagConv2ExtSenOnTm;
_BUR_LOCAL signed long diOutMagConv2EntSenOffTm;
_BUR_LOCAL signed long diOutMagConv2EntSenOnTm;
_BUR_LOCAL signed long diInMagConv2MidSenOffTm;
_BUR_LOCAL signed long diInMagConv2MidSenOnTm;
_BUR_LOCAL signed long diInMagConv2ExtSenOffTm;
_BUR_LOCAL signed long diInMagConv2ExtSenOnTm;
_BUR_LOCAL signed long diInMagConv2EntSenOffTm;
_BUR_LOCAL signed long diInMagConv2EntSenOnTm;
_BUR_LOCAL signed long diOutMagConvMidSenOffTm;
_BUR_LOCAL signed long diOutMagConvMidSenOnTm;
_BUR_LOCAL signed long diOutMagConvExtSenOffTm;
_BUR_LOCAL signed long diOutMagConvExtSenOnTm;
_BUR_LOCAL signed long diOutMagConvEntSenOffTm;
_BUR_LOCAL signed long diOutMagConvEntSenOnTm;
_BUR_LOCAL signed long diInMagConvMidSenOffTm;
_BUR_LOCAL signed long diInMagConvMidSenOnTm;
_BUR_LOCAL signed long diInMagConvExtSenOffTm;
_BUR_LOCAL signed long diInMagConvExtSenOnTm;
_BUR_LOCAL signed long diInMagConvEntSenOffTm;
_BUR_LOCAL signed long diInMagConvEntSenOnTm;
_BUR_LOCAL struct fbSenFltr fbOutMagConv2MidSigFltr;
_BUR_LOCAL struct fbSenFltr fbOutMagConv2ExtSigFltr;
_BUR_LOCAL struct fbSenFltr fbOutMagConv2EntSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConv2MidSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConv2ExtSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConv2EntSigFltr;
_BUR_LOCAL struct fbSenFltr fbOutMagConvMidSigFltr;
_BUR_LOCAL struct fbSenFltr fbOutMagConvExtSigFltr;
_BUR_LOCAL struct fbSenFltr fbOutMagConvEntSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConvMidSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConvExtSigFltr;
_BUR_LOCAL struct fbSenFltr fbInMagConvEntSigFltr;
_BUR_LOCAL struct TON fbInitializedTm;
_BUR_LOCAL struct TON fbSafetyRlyRstTm;
_BUR_LOCAL struct TON fbSelfTestTm3;
_BUR_LOCAL struct TON fbSelfTestTm2;
_BUR_LOCAL struct TON fbSelfTestTm1;
_BUR_LOCAL struct tySOTSigmulateSig tySOTSimulate1;
_BUR_LOCAL struct TON fbConvLftSenTm;
_BUR_LOCAL struct fbSenFltr fbMag1Sen;
_BUR_LOCAL struct fbSenFltr fbMag2Sen;
_BUR_LOCAL struct fbSenFltr fbMag3Sen;
_BUR_LOCAL struct fbSenFltr fbConvUSWidthSenSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvLineBInletSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvLineAInletSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv3PresentSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv2PresentSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv1PresentSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv3EntSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv2EntSigFltr;
_BUR_LOCAL struct fbSenFltr fbMagConv1EntSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvClrSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvRgtSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvMidSigFltr;
_BUR_LOCAL struct fbSenFltr fbConvLftSigFltr;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bPhysicalDI[200];
#else
/* Variable a_bPhysicalDI not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bSafetySigErrNoBuz;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL signed long diMagConvPresentSenOffTm;
_BUR_LOCAL signed long diMagConvPresentSenOnTm;
_BUR_LOCAL signed long diMagConvEntSenOffTm;
_BUR_LOCAL signed long diMagConvEntSenOnTm;
_BUR_LOCAL signed long diConvClrSenOffTm;
_BUR_LOCAL signed long diConvClrSenOnTm;
_BUR_LOCAL signed long diConvRgtSenOffTm;
_BUR_LOCAL signed long diConvRgtSenOnTm;
_BUR_LOCAL signed long diConvMidSenOffTm;
_BUR_LOCAL signed long diConvMidSenOnTm;
_BUR_LOCAL signed long diConvLftSenOffTm;
_BUR_LOCAL signed long diConvLftSenOnTm;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL struct tyDigitalInputSettings tyDISettings;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL struct tyDigitalInput tyDInput;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData6;
_BUR_LOCAL struct tyAlmDat tyAlmData5;
_BUR_LOCAL struct tyAlmDat tyAlmData4;
_BUR_LOCAL struct tyAlmDat tyAlmData3;
_BUR_LOCAL struct tyAlmDat tyAlmData2;
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL unsigned long udiStatus6;
_BUR_LOCAL unsigned long udiStatus5;
_BUR_LOCAL unsigned long udiStatus4;
_BUR_LOCAL unsigned long udiStatus3;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL enum eFBStatus eStatus6;
_BUR_LOCAL enum eFBStatus eStatus5;
_BUR_LOCAL enum eFBStatus eStatus4;
_BUR_LOCAL enum eFBStatus eStatus3;
_BUR_LOCAL enum eFBStatus eStatus2;
_BUR_LOCAL enum eFBStatus eStatus1;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/DInput/DInput/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtGeneral/NtGeneral.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/DInput/DInput.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837635_362_ */

