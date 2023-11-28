#ifndef __AS__TYPE_
#define __AS__TYPE_
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

#ifndef __AS__TYPE_eMagConvAction
#define __AS__TYPE_eMagConvAction
typedef enum eMagConvAction
{	MagConvActIdle = 0,
	MagConvActInit = 1,
	MagConvActInitStopClp = 2,
	MagConvActInitClpStop = 3,
	MagConvActEnt = 4,
	MagConvActEntStopClp = 5,
	MagConvActEntClpStop = 6,
	MagConvActPreExit = 7,
	MagConvActPreExitClpr = 8,
	MagConvActExit = 9,
	MagConvActExit1 = 10,
	MagConvActExitClpr = 11,
	MagConvActExit1Clpr = 12,
	MagConvActClprSetAll = 13,
	MagConvActClprRstAll = 14,
	MagConvActClprSetClamp = 15,
	MagConvActClprSetUnclamp = 16,
	MagConvActClprClamp = 17,
	MagConvActClprUnclamp = 18,
	MagConvActStop = 19,
	MagConvActStopClpr = 20,
	MagConvActSetMtrSigOnOrLToR = 21,
	MagConvActSetMtrDirOrRToL = 22,
	MagConvActRstMtrSigOnOrLToR = 23,
	MagConvActRstMtrDirOrRToL = 24,
	MagConvActSetMtrAll = 25,
	MagConvActRstMtrAll = 26,
} eMagConvAction;
#endif

#ifndef __AS__TYPE_eSOTAction
#define __AS__TYPE_eSOTAction
typedef enum eSOTAction
{	SOTActIdle = 0,
	SOTActRun = 1,
	SOTActSetSig = 2,
	SOTActRstSig = 3,
} eSOTAction;
#endif

#ifndef __AS__TYPE_eAlmSeverity
#define __AS__TYPE_eAlmSeverity
typedef enum eAlmSeverity
{	AlmSeverityNA = 0,
	AlmSeverityError = 1,
	AlmSeverityWarning = 2,
	AlmSeverityInfo = 3,
} eAlmSeverity;
#endif

#ifndef __AS__TYPE_tyAlmDat
#define __AS__TYPE_tyAlmDat
typedef struct tyAlmDat
{	unsigned long udiCode;
	eAlmSeverity eSeverity;
	plcstring sProgNm[16];
	plcstring sAlmMsg[201];
	plcstring sRcyMsg[201];
	unsigned long udiRunTime;
	unsigned long udiModuleNum;
	plcbit bAlm;
	plcbit bWarning;
} tyAlmDat;
#endif

_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcbit bStepInitDone;
_BUR_LOCAL plcbit bStepEnterMag;
_BUR_LOCAL plcbit bStepEnterMidMag;
_BUR_LOCAL plcbit bStepExitMag;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bStepEnterMag2;
_BUR_LOCAL plcbit bStepEnterMidMag2;
_BUR_LOCAL plcbit bStepExitMag2;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl2;
_BUR_LOCAL eMagConvAction eOutMagConvAct;
_BUR_LOCAL eMagConvAction eOutMagConv2Act;
_BUR_LOCAL eSOTAction eDSSOTAct;
_BUR_LOCAL eSOTAction eDSSOTAct2;
_GLOBAL unsigned long p_OpsOutMagConvAlmData;
_GLOBAL unsigned long p_OpsOutMagConvAct;
_GLOBAL unsigned long p_OpsOutMagConv2Act;
_GLOBAL unsigned long p_OpsOutMagConvDSSOTAct;
_GLOBAL unsigned long p_OpsOutMagConv2DSSOTAct;
_GLOBAL unsigned long p_OpsOutMagConvStepTxt;
_GLOBAL unsigned long p_OpsOutMagConvStepTxt1;
_GLOBAL unsigned long p_OpsOutMagConvPaused;
_GLOBAL unsigned long p_OpsOutMagConvStepInitDone;
_GLOBAL unsigned long p_OpsOutMagConvStepEntMag;
_GLOBAL unsigned long p_OpsOutMagConvStepEntMidMag;
_GLOBAL unsigned long p_OpsOutMagConvStepExtMag;
_GLOBAL unsigned long p_OpsOutMagConvStepWaitToRmvMag;
_GLOBAL unsigned long p_OpsOutMagConv2StepInitDone;
_GLOBAL unsigned long p_OpsOutMagConv2StepEntMag;
_GLOBAL unsigned long p_OpsOutMagConv2StepEntMidMag;
_GLOBAL unsigned long p_OpsOutMagConv2StepExtMag;
_GLOBAL unsigned long p_OpsOutMagConv2StepWaitToRmvMag;
