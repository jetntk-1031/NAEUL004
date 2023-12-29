/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_103_
#define _BUR_1703817512_103_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagConvULStep
{	MagConvULStepNA,
	MagConvULStepInitMag,
	MagConvULStepSafetyBarExtCtrl,
	MagConvULStepMagUSComm,
	MagConvULStepInitAWPneu,
	MagConvULStepInitMagEnt,
	MagConvULStepInitMagFixClp,
	MagConvULStepInitMagConv,
	MagConvULStepMagEnt,
	MagConvULStepMagEntMnl,
	MagConvULStepSelClampCtrl,
	MagConvULStepVerifyMag,
	MagConvULStepChkMag,
	MagConvULStepSafetyBarExt,
	MagConvULStepSafetyBarRet,
	MagConvULStepMagAWEngage,
	MagConvULStepMagAWDisengage,
	MagConvULStepMagAWHm,
	MagConvULStepMagAWMov,
	MagConvULStepMagEntMESStdByChk,
	MagConvULStepBffrStatChk,
	MagConvULStepMagCmp,
	MagConvULStepMtyBffr,
	MagConvULStepNxtLoadBffr,
	MagConvULStepBffrUSComm,
	MagConvULStepBffrEntBrd,
	MagConvULStepUpdateBffr,
	MagConvULStepLoadBffr,
	MagConvULStepMagExtMESStdByChk,
	MagConvULStepMagExitClampCtrl,
	MagConvULStepMagExitSafeBarCtrl,
	MagConvULStepMagFullDSComm,
	MagConvULStepMagFullExit,
	MagConvULStepMagExitMnl,
	MagConvULStepMagHalfExitMnl,
	MagConvULStepMagExitedWait,
	MagConvULStepMagExitedAGVWait
} eMagConvULStep;

typedef enum eLifMagULUpdateData
{	BufferActLoadWhenStarted,
	BufferActLoadWhenCompleted
} eLifMagULUpdateData;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_103_ */

