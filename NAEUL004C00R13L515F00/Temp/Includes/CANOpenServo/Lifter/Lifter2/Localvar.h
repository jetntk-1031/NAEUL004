/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_389_
#define _BUR_1701136131_389_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct fbCANSDOWriteArrayParam fbSDOWrite;
_BUR_LOCAL struct fbMotionCANModuleOK fbModuleOK;
_BUR_LOCAL struct fbMotionCANFullMovAbs fbFullMovAbs;
_BUR_LOCAL struct fbMotionCANFullMovRel fbFullMovRel;
_BUR_LOCAL struct fbMotionCANFullHm fbFullHm;
_BUR_LOCAL struct fbMotionCANPwrOn fbPwrOn;
_BUR_LOCAL struct fbMotionCANPwrOff fbPwrOff;
_BUR_LOCAL struct fbMotionCANHoming fbHoming;
_BUR_LOCAL struct fbMotionCANMovAbs fbMovAbs;
_BUR_LOCAL struct fbMotionCANMovRel fbMovRel;
_BUR_LOCAL struct fbMotionCANJog fbJog;
_BUR_LOCAL struct fbMotionCANRstAxisErr fbRstAxisErr;
_BUR_LOCAL struct fbMotionCANStop fbStop;
_BUR_LOCAL struct tyMotionCANDriverOut tyParamOutDriver;
_BUR_LOCAL struct tyMotionCANDriverIn tyParamInDriver;
_BUR_LOCAL struct tyMotionCANParamInMove tyParamInMove;
_BUR_LOCAL struct TON fbRstNodeTimer;
_BUR_LOCAL struct TON fbServoModuleOk;
_BUR_LOCAL struct TON fbServoModuleNotOk;
_BUR_LOCAL struct TON fbTm;
_BUR_LOCAL unsigned char usiCount;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL unsigned char usiRstStep;
_BUR_LOCAL signed long diActualPosInUMOld;
_BUR_LOCAL signed long diExpectPosInUM;
_BUR_LOCAL signed long diExpectSlt;
_BUR_LOCAL plcbit bNotInterruptible;
_BUR_LOCAL plcbit bModuleNotOKLock;
_BUR_LOCAL plcbit bModuleNotOK;
_BUR_LOCAL plcbit bModuleOK;
_BUR_LOCAL plcbit bModuleOKChk;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL enum eServoMotorType eMotorType;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL struct tyMotionCANParamInConvert tyParamInConvert;
_BUR_LOCAL struct tyMotionCANParamInHm tyParamInHm;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcstring sDevice[4];
_BUR_LOCAL unsigned char usiNode;
_BUR_LOCAL plcbit bNoIndexPulse;
_BUR_LOCAL plcbit bDir;
_BUR_LOCAL plcbit bInterruptSensor5;
_BUR_LOCAL plcbit bInterruptSensor4;
_BUR_LOCAL plcbit bInterruptSensor3;
_BUR_LOCAL plcbit bInterruptSensor2;
_BUR_LOCAL plcbit bInterruptSensor1;
_BUR_LOCAL signed long diMaxAbsPosInUM;
_BUR_LOCAL signed long diMinAbsPosInUM;
_BUR_LOCAL signed long diMoveDec;
_BUR_LOCAL signed long diMoveAcc;
_BUR_LOCAL signed long diMoveVelInUMPS;
_BUR_LOCAL signed long diMoveDistInUM;
_BUR_LOCAL signed long diMovePosInUM;
_BUR_LOCAL signed long diJogVelInUMPS;
_BUR_LOCAL struct tyMotionCANTuning tyTuning;
_BUR_LOCAL signed long diHPos;
_BUR_LOCAL signed long diGPos;
_BUR_LOCAL signed long diFPos;
_BUR_LOCAL signed long diEPos;
_BUR_LOCAL signed long diDPos;
_BUR_LOCAL signed long diCPos;
_BUR_LOCAL signed long diBPos;
_BUR_LOCAL signed long diAPos;
_BUR_LOCAL signed long diDSlt1Pos;
_BUR_LOCAL signed long diDSltToSltDist;
_BUR_LOCAL signed long diGoDSlt;
_BUR_LOCAL signed long diCSlt1Pos;
_BUR_LOCAL signed long diCSltToSltDist;
_BUR_LOCAL signed long diGoCSlt;
_BUR_LOCAL signed long diBSlt1Pos;
_BUR_LOCAL signed long diBSltToSltDist;
_BUR_LOCAL signed long diGoBSlt;
_BUR_LOCAL signed long diASlt1Pos;
_BUR_LOCAL signed long diASltToSltDist;
_BUR_LOCAL signed long diGoASlt;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bOps;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bDownSen;
_BUR_LOCAL plcbit bUpSen;
_BUR_LOCAL plcbit bJogging;
_BUR_LOCAL plcbit bHPosDiff;
_BUR_LOCAL plcbit bGPosDiff;
_BUR_LOCAL plcbit bFPosDiff;
_BUR_LOCAL plcbit bEPosDiff;
_BUR_LOCAL plcbit bDPosDiff;
_BUR_LOCAL plcbit bCPosDiff;
_BUR_LOCAL plcbit bBPosDiff;
_BUR_LOCAL plcbit bAPosDiff;
_BUR_LOCAL signed long diCurrSltD;
_BUR_LOCAL signed long diCurrSltC;
_BUR_LOCAL signed long diCurrSltB;
_BUR_LOCAL signed long diCurrSltA;
_BUR_LOCAL plcbit bSltDPosDiff;
_BUR_LOCAL plcbit bSltCPosDiff;
_BUR_LOCAL plcbit bSltBPosDiff;
_BUR_LOCAL plcbit bSltAPosDiff;
_BUR_LOCAL plcstring sAxisErrTxt[81];
_BUR_LOCAL struct tyMotionCANParamOut tyParamOut;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[300];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData3;
_BUR_LOCAL struct tyAlmDat tyAlmData2;
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus3;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus3;
_BUR_LOCAL enum eFBStatus eStatus2;
_BUR_LOCAL enum eFBStatus eStatus1;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eFBStatus eMainStatus;
_BUR_LOCAL enum eLifterAction eStat;
_BUR_LOCAL enum eLifterAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Lifter/Lifter2/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMotion/NtMotion.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_389_ */

