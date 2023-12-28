/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726039_343_
#define _BUR_1703726039_343_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit *p_bDIConvClrSen;
_BUR_LOCAL plcbit *p_bDIConvLftSen;
_BUR_LOCAL plcbit *p_bPusherExtSen;
_BUR_LOCAL plcbit *p_bPusherRetSen;
_BUR_LOCAL plcbit *p_bInletShutterCloseRS;
_BUR_LOCAL plcbit *p_bProjOutletShutPrep;
_BUR_LOCAL plcbit *p_bInShutterDis;
_BUR_LOCAL plcbit *p_bProjInletShutPrep;
_BUR_LOCAL plcbit *p_bOutletShutterCloseRS2;
_BUR_LOCAL plcbit *p_bOutletShutterCloseRS3;
_BUR_LOCAL plcbit *p_bOutletShutterCloseRS;
_BUR_LOCAL enum eServoMotorType *p_eNtParamMotorType;
_BUR_LOCAL plcbit *p_bNtSettingsLoadDone;
_BUR_LOCAL struct tyMotionCANParamInConvert *p_tyParamInConvert;
_BUR_LOCAL struct tyMotionCANParamInHm *p_tyParamInHm;
_BUR_LOCAL plcstring (*p_sProgNm)[16];
_BUR_LOCAL plcstring (*p_sDevice)[4];
_BUR_LOCAL unsigned char *p_usiNode;
_BUR_LOCAL plcbit *p_bNoIndexPulse;
_BUR_LOCAL plcbit *p_bDir;
_BUR_LOCAL plcbit *p_bInterruptSensor5;
_BUR_LOCAL plcbit *p_bInterruptSensor4;
_BUR_LOCAL plcbit *p_bInterruptSensor3;
_BUR_LOCAL plcbit *p_bInterruptSensor2;
_BUR_LOCAL plcbit *p_bInterruptSensor1;
_BUR_LOCAL signed long *p_diMaxAbsPosInUM;
_BUR_LOCAL signed long *p_diMinAbsPosInUM;
_BUR_LOCAL signed long *p_diMoveDec;
_BUR_LOCAL signed long *p_diMoveAcc;
_BUR_LOCAL signed long *p_diMoveVelInUMPS;
_BUR_LOCAL signed long *p_diMoveDistInUM;
_BUR_LOCAL signed long *p_diMovePosInUM;
_BUR_LOCAL signed long *p_diJogVelInUMPS;
_BUR_LOCAL struct tyMotionCANTuning *p_tyTuning;
_BUR_LOCAL signed long *p_diHPos;
_BUR_LOCAL signed long *p_diGPos;
_BUR_LOCAL signed long *p_diFPos;
_BUR_LOCAL signed long *p_diEPos;
_BUR_LOCAL signed long *p_diDPos;
_BUR_LOCAL signed long *p_diCPos;
_BUR_LOCAL signed long *p_diBPos;
_BUR_LOCAL signed long *p_diAPos;
_BUR_LOCAL plcbit *p_bManual;
_BUR_LOCAL plcbit *p_bOps;
_BUR_LOCAL plcbit *p_bDis;
_BUR_LOCAL plcbit *p_bEn;
_BUR_LOCAL plcbit *p_bPrep;
_BUR_LOCAL unsigned long *p_udiRstErr;
_BUR_LOCAL enum eTravAction *p_eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Trav/Trav/InputRef.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726039_343_ */

