/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_130_
#define _BUR_1704680534_130_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eULMod
{	ULModUnloadFrontLnA,
	ULModRejFrontLnA,
	ULModRejFrontLnARev,
	ULModUnloadRearLnB,
	ULModRejRearLnB,
	ULModRejRearLnBRev,
	ULModUnloadDualLnAB,
	ULModRejDualLnA,
	ULModRejDualLnB
} eULMod;

typedef enum eULMag
{	ULMagDual,
	ULMagTriple,
	ULMagQuadruple
} eULMag;

typedef enum eTravLifULStep
{	TravLifULStepNA,
	TravLifULStepInitConv,
	TravLifULStepInitInletPneuCls,
	TravLifULStepInitInOutPneuCls,
	TravLifULStepInitTravLif,
	TravLifULStepInitAWTravLif,
	TravLifULStepAWMov,
	TravLifULStepScanDS,
	TravLifULStepHermesBCode,
	TravLifULStepWaitReturnCode,
	TravLifULStepMagChkReturnCode,
	TravLifULStepTravLifMov,
	TravLifULStepUSSigWait,
	TravLifULStepUSSigRechk,
	TravLifULStepInletPneuOpn,
	TravLifULStepUSSigRechkTwice,
	TravLifULStepUSMagWidthChk,
	TravLifULStepStopperRet,
	TravLifULStepUSComm,
	TravLifULStepEntBrd,
	TravLifULStepInletPneuCls,
	TravLifULStepStopperExt,
	TravLifULStepDSSigWait,
	TravLifULStepDSSigRechk,
	TravLifULStepOutletPneuOpn,
	TravLifULStepDSSigRechkTwice,
	TravLifULStepDSMagWidthChk,
	TravLifULStepDSComm,
	TravLifULStepExitBrd,
	TravLifULStepOutletPneuCls,
	TravLifULStepScanStdBy,
	TravLifULStepTranOutErr,
	TravULStepTranOutBrdStuckErr,
	TravULStepTranInBrdStuckErr,
	TravULStepClrSensorErr,
	TravLifULStepMagWidthErr,
	TravULStepBrdLostInMiddle,
	TravULStepClrSensorErrBefTrav
} eTravLifULStep;

typedef enum eTravLifULPos
{	TravLifULPosInvalid,
	TravLifULPosUS1,
	TravLifULPosUS2,
	TravLifULPosUS3,
	TravLifULPosDS1,
	TravLifULPosDS2,
	TravLifULPosDS3
} eTravLifULPos;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyParamTravLifUL
{	plcbit a_bUSDis[3];
	plcbit a_bDSDis[3];
	unsigned char a_usiUSPriority[3];
	unsigned char a_usiDSPriority[3];
	plcbit a_bMagRej[3];
} tyParamTravLifUL;
#else
/* Data type tyParamTravLifUL not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyMagCoord
{	unsigned char usiMagPos;
	unsigned char usiMagSlot;
} tyMagCoord;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsTravLifUL.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_130_ */

