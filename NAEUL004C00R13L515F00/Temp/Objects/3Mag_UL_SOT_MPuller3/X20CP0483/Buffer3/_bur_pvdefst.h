#ifndef __AS__TYPE_eCustomer
#define __AS__TYPE_eCustomer
typedef enum eCustomer
{	NA = 0,
	Bosch_China = 1,
	Bosch_Portugal = 2,
	Bosch_America = 3,
	Bosch_Malaysia = 4,
	Siemens = 5,
	We_Fabricate = 6,
	New_Member5 = 7,
	New_Member6 = 8,
	New_Member7 = 9,
	New_Member8 = 10,
	New_Member9 = 11,
	New_Member10 = 12,
} eCustomer;
#endif

#ifndef __AS__TYPE_eBufferAction
#define __AS__TYPE_eBufferAction
typedef enum eBufferAction
{	BufferActIdle = 0,
	BufferActCreateDir = 1,
	BufferActGetRetainBffr = 2,
	BufferActSetFull = 3,
	BufferActSetMty = 4,
	BufferActLoad = 5,
	BufferActLoadSltChk = 6,
	BufferActUnload = 7,
	BufferActUnloadSltChk = 8,
	BufferActUnloadCoolChk = 9,
	BufferActUnloadSltChkCoolChk = 10,
	BufferActNxtLoad = 11,
	BufferActNxtLoadGd = 12,
	BufferActNxtLoadBad = 13,
	BufferActNxtUnload = 14,
	BufferActNxtUnloadGd = 15,
	BufferActNxtUnloadBad = 16,
	BufferActChkCoolTm = 17,
	BufferActChkCoolBrdAny = 18,
	BufferActChkCoolBrdGd = 19,
	BufferActChkCoolBrdBad = 20,
	BufferActRstBffr = 21,
	BufferActSetCoolFan = 22,
	BufferActRstCoolFan = 23,
	BufferActBGStartBffrSetFull = 24,
	BufferActBGStartBffrSetMty = 25,
	BufferActBGStopBffrSet = 26,
	BufferActBGStartUpdtSen = 27,
	BufferActBGStopUpdtSen = 28,
	BufferActBGStartUpdtDisplay = 29,
	BufferActBGStopUpdtDisplay = 30,
	BufferActBGStartCoolFan = 31,
	BufferActBGStopCoolFan = 32,
} eBufferAction;
#endif

#ifndef __AS__TYPE_tyStatPlatformFromMES
#define __AS__TYPE_tyStatPlatformFromMES
typedef struct tyStatPlatformFromMES
{	signed short iAcceptCondition;
	plcbit bError;
	plcbit bSizeLarge;
	plcbit bReady;
	plcbit bAvailable;
	plcbit bRFIDWriteComplete;
	plcbit bTrigMagFull;
} tyStatPlatformFromMES;
#endif

#ifndef __AS__TYPE_tyBffrParam
#define __AS__TYPE_tyBffrParam
typedef struct tyBffrParam
{	plcbit bAscending;
	signed long diMinSlt;
	signed long diMaxSlt;
	signed long diPitch;
	signed long diSltCap;
	signed long diBffrTtlSlt;
	plcbit a_bSkip[60];
} tyBffrParam;
#endif

#ifndef __AS__TYPE_tyBffrStat
#define __AS__TYPE_tyBffrStat
typedef struct tyBffrStat
{	plcbit bBffrFull;
	plcbit bBffrMty;
	signed long diTtlBrdCap;
	signed long diTtlGdBrd;
	signed long diTtlBadBrd;
} tyBffrStat;
#endif

#ifndef __AS__TYPE_tyBrdUnloadStat
#define __AS__TYPE_tyBrdUnloadStat
typedef struct tyBrdUnloadStat
{	plcbit bGdSigBrd;
	plcdt dtSltTm;
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
} tyBrdUnloadStat;
#endif

#ifndef __AS__TYPE_tySubBffrDat
#define __AS__TYPE_tySubBffrDat
typedef struct tySubBffrDat
{	plcbit bSubForBrd;
	plcbit bBrdAvl;
	plcdt dtSltTm;
	plcstring sProdNm[16];
	plcstring sBarcode1[81];
	plcstring sBarcode2[81];
} tySubBffrDat;
#endif

#ifndef __AS__TYPE_tyBffrDat
#define __AS__TYPE_tyBffrDat
typedef struct tyBffrDat
{	plcbit bSltForBrd;
	plcbit bBrdAvl;
	plcbit bSltFull;
	plcbit bGdSigBrd;
	plcbit bSkip;
	signed long diSltCap;
	signed long diBrdQty;
	struct tySubBffrDat a_tySubBffrDat[2];
} tyBffrDat;
#endif

#ifndef __AS__TYPE_tyBffr
#define __AS__TYPE_tyBffr
typedef struct tyBffr
{	plcstring sName[16];
	struct tyBffrDat a_tyBffrDat[60];
} tyBffr;
#endif

#ifndef __AS__TYPE_tyDispBffrDat
#define __AS__TYPE_tyDispBffrDat
typedef struct tyDispBffrDat
{	plcstring sSltIdx[81];
	plcstring sSltTm[81];
	plcstring sBrdStoreTm[11];
	plcstring sRemainCoolTm[11];
	plcdword dwColor;
} tyDispBffrDat;
#endif

#ifndef __AS__TYPE_tyDispBffr
#define __AS__TYPE_tyDispBffr
typedef struct tyDispBffr
{	signed long diDispIdxSt;
	signed long diDispIdxEnd;
	struct tyDispBffrDat a_tyDispBffrDat[120];
} tyDispBffr;
#endif

struct FileClose
{	unsigned long ident;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileClose(struct FileClose* inst);
#ifndef __AS__TYPE_tyFileCloseInternal
#define __AS__TYPE_tyFileCloseInternal
typedef struct tyFileCloseInternal
{	struct FileClose fbFileClose;
} tyFileCloseInternal;
#endif

struct fbFileClose
{	unsigned long udiIdent;
	unsigned long udiStatus;
	tyFileCloseInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileClose(struct fbFileClose* inst);
struct FileCreate
{	unsigned long pDevice;
	unsigned long pFile;
	unsigned short status;
	unsigned long ident;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileCreate(struct FileCreate* inst);
struct FileOpen
{	unsigned long pDevice;
	unsigned long pFile;
	unsigned char mode;
	unsigned short status;
	unsigned long ident;
	unsigned long filelen;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileOpen(struct FileOpen* inst);
#ifndef __AS__TYPE_tyFileOpenCreateInternal
#define __AS__TYPE_tyFileOpenCreateInternal
typedef struct tyFileOpenCreateInternal
{	struct FileCreate fbFileCreate;
	struct FileOpen fbFileOpen;
	unsigned char usiStep;
} tyFileOpenCreateInternal;
#endif

struct fbFileOpenCreate
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned char usiMode;
	unsigned long udiIdent;
	unsigned long udiStatus;
	tyFileOpenCreateInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileOpenCreate(struct fbFileOpenCreate* inst);
struct FileWriteEx
{	unsigned long ident;
	unsigned long offset;
	unsigned long pSrc;
	unsigned long len;
	unsigned long option;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileWriteEx(struct FileWriteEx* inst);
#ifndef __AS__TYPE_tyFileWriteInternal
#define __AS__TYPE_tyFileWriteInternal
typedef struct tyFileWriteInternal
{	struct FileWriteEx fbFileWrite;
} tyFileWriteInternal;
#endif

struct fbFileWrite
{	unsigned long udiIdent;
	unsigned long udiOffset;
	unsigned long p_Src;
	unsigned long udiLen;
	unsigned long udiOption;
	unsigned long udiStatus;
	tyFileWriteInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileWrite(struct fbFileWrite* inst);
#ifndef __AS__TYPE_tyFileFullWriteInternal
#define __AS__TYPE_tyFileFullWriteInternal
typedef struct tyFileFullWriteInternal
{	struct fbFileClose fbFileClose;
	struct fbFileOpenCreate fbFileOpenCreate;
	struct fbFileWrite fbFileWrite;
	unsigned long udiIdent;
	unsigned char usiStep;
} tyFileFullWriteInternal;
#endif

#ifndef __AS__TYPE_tyFileOpenInternal
#define __AS__TYPE_tyFileOpenInternal
typedef struct tyFileOpenInternal
{	struct FileOpen fbFileOpen;
} tyFileOpenInternal;
#endif

struct fbFileOpen
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned char usiMode;
	unsigned long udiIdent;
	unsigned long udiStatus;
	tyFileOpenInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileOpen(struct fbFileOpen* inst);
struct FileReadEx
{	unsigned long ident;
	unsigned long offset;
	unsigned long pDest;
	unsigned long len;
	unsigned short status;
	unsigned long bytesread;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void FileReadEx(struct FileReadEx* inst);
#ifndef __AS__TYPE_tyFileReadInternal
#define __AS__TYPE_tyFileReadInternal
typedef struct tyFileReadInternal
{	struct FileReadEx fbFileRead;
} tyFileReadInternal;
#endif

struct fbFileRead
{	unsigned long udiIdent;
	unsigned long udiOffset;
	unsigned long p_Dest;
	unsigned long udiLen;
	unsigned long udiBytesRead;
	unsigned long udiStatus;
	tyFileReadInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileRead(struct fbFileRead* inst);
#ifndef __AS__TYPE_tyFileFullReadInternal
#define __AS__TYPE_tyFileFullReadInternal
typedef struct tyFileFullReadInternal
{	struct fbFileClose fbFileClose;
	struct fbFileOpen fbFileOpen;
	struct fbFileRead fbFileRead;
	unsigned long udiIdent;
	unsigned char usiStep;
} tyFileFullReadInternal;
#endif

struct DirCreate
{	unsigned long pDevice;
	unsigned long pName;
	unsigned short status;
	unsigned short i_state;
	unsigned short i_result;
	unsigned long i_tmp;
	plcbit enable;
};
_BUR_PUBLIC void DirCreate(struct DirCreate* inst);
#ifndef __AS__TYPE_tyDirCreateInternal
#define __AS__TYPE_tyDirCreateInternal
typedef struct tyDirCreateInternal
{	struct DirCreate fbDirCreate;
} tyDirCreateInternal;
#endif

#ifndef __AS__TYPE_eFBStatus
#define __AS__TYPE_eFBStatus
typedef enum eFBStatus
{	Idle = 0,
	Done = 1,
	Busy = 2,
	Error = 3,
} eFBStatus;
#endif

#ifndef __AS__TYPE_tyAlmTxt
#define __AS__TYPE_tyAlmTxt
typedef struct tyAlmTxt
{	plcstring sAlmText[201];
	plcstring sRcyText[201];
} tyAlmTxt;
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

struct TON
{	plctime PT;
	plctime ET;
	plctime StartTime;
	unsigned long Restart;
	plcbit IN;
	plcbit Q;
	plcbit M;
};
_BUR_PUBLIC void TON(struct TON* inst);
struct fbFileFullWrite
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned long udiOffset;
	unsigned long p_Src;
	unsigned long udiLen;
	unsigned long udiOption;
	unsigned long udiStatus;
	tyFileFullWriteInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileFullWrite(struct fbFileFullWrite* inst);
struct fbFileFullRead
{	plcstring sDevice[81];
	plcstring sFile[81];
	unsigned long udiOffset;
	unsigned long p_Dest;
	unsigned long udiLen;
	unsigned long udiBytesRead;
	unsigned long udiStatus;
	tyFileFullReadInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbFileFullRead(struct fbFileFullRead* inst);
struct fbDirCreate
{	plcstring sDevice[81];
	plcstring sDirName[81];
	unsigned long udiStatus;
	tyDirCreateInternal tyInternal;
	plcbit bEn;
};
_BUR_PUBLIC void fbDirCreate(struct fbDirCreate* inst);
_BUR_LOCAL plcbit(* p_bLinkStartupRun);
_BUR_LOCAL plcbit(* p_bLinkNtParamProjMagConvPrep);
_BUR_LOCAL eBufferAction(* p_eLinkOpsMagULBufferAct);
_BUR_LOCAL eBufferAction(* p_eLinkOpsMagConvULBufferAct);
_BUR_LOCAL eBufferAction(* p_eLinkUIBufferAct);
_BUR_LOCAL signed long(* p_diLinkSltToSltDist);
_BUR_LOCAL plcbit(* p_bLinkMcParamProdSelTopToBtm);
_BUR_LOCAL plcbit(* p_bLinkPresentSen1);
_BUR_LOCAL plcbit(* p_bLinkPresentSen2);
_BUR_LOCAL plcbit(* p_bLinkProjLifterMagPlatform);
_BUR_LOCAL eBufferAction(* p_eLinkOpsLifMagULBufferAct);
_BUR_LOCAL plcbit(* p_bLinkOpsTravLifULExitBrd);
_BUR_LOCAL eBufferAction(* p_eAct);
_BUR_LOCAL unsigned long(* p_udiRstErr);
_BUR_LOCAL plcstring(* p_sFileName)[81];
_BUR_LOCAL plcbit(* p_bManual);
_BUR_LOCAL plcdt(* p_dtCurrDT);
_BUR_LOCAL signed long(* p_diMinSlt);
_BUR_LOCAL signed long(* p_diMaxSlt);
_BUR_LOCAL signed long(* p_diPitch);
_BUR_LOCAL signed long(* p_diSltCap);
_BUR_LOCAL signed long(* p_diBffrTtlSlt);
_BUR_LOCAL signed long(* p_diCoolTm);
_BUR_LOCAL signed long(* p_diSltToSltInUM);
_BUR_LOCAL signed long(* p_diLifterBtmPosInUM);
_BUR_LOCAL signed long(* p_diLifterCurrPosInUM);
_BUR_LOCAL plcbit(* p_bAscending);
_BUR_LOCAL plcbit(* p_bFIFO);
_BUR_LOCAL plcbit(* p_bGdBrdIn);
_BUR_LOCAL plcbit(* p_bGdBrdReq);
_BUR_LOCAL plcbit(* p_bNxtLoadSeq);
_BUR_LOCAL plcbit(* pa_bSkip)[60];
_BUR_LOCAL signed long(* p_diCoolFanOffDlyTm);
_BUR_LOCAL plcbit(* p_bMagPresentSensor);
_BUR_LOCAL plcbit(* p_bPrepCoolFan);
_BUR_LOCAL plcbit(* p_bCoolFanTm);
_BUR_LOCAL struct tyBffr(* p_tyBuffer);
_BUR_LOCAL struct tyDispBffr(* p_tyDispBuffer);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat);
_BUR_LOCAL plcstring(* p_sBffrNm)[16];
_BUR_LOCAL plcstring(* p_sProdNm)[16];
_BUR_LOCAL plcstring(* p_sBarcode1)[81];
_BUR_LOCAL plcstring(* p_sBarcode2)[81];
_BUR_LOCAL plcstring(* p_sCurrRcpNm)[16];
_BUR_LOCAL plcstring(* p_sProgNm)[16];
_BUR_LOCAL plcbit(* p_bNtSettingsLoadDone);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL plcbit(* p_bOpsMagConvULRlsMagAllw);
_BUR_LOCAL eCustomer(* p_eNtParamCustomerReq);
_BUR_LOCAL struct tyStatPlatformFromMES(* p_tyResponseFromMES1);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpF1ArbitraryType);
_BUR_LOCAL struct tyStatPlatformFromMES(* p_tyResponseFromMES);
_BUR_LOCAL eBufferAction eAct;
_BUR_LOCAL eBufferAction eStat;
_BUR_LOCAL eFBStatus eStatus;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL tyAlmDat tyAlmData;
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
_BUR_LOCAL signed long diNxtLoadSlt;
_BUR_LOCAL signed long diNxtUnloadSlt;
_BUR_LOCAL signed long diCoolBrdAny;
_BUR_LOCAL signed long diCoolBrdGd;
_BUR_LOCAL signed long diCoolBrdBad;
_BUR_LOCAL plcbit bCoolNotRdy;
_BUR_LOCAL tyBffr tyBuffer;
_BUR_LOCAL tyDispBffr tyDispBuffer;
_BUR_LOCAL tyBffrStat tyBufferStat;
_BUR_LOCAL tyBrdUnloadStat tyBoardUnloadStat;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL plcbit bCoolFanCtrl;
_BUR_LOCAL_RETAIN plcbit bMagPresent;
_BUR_LOCAL plcdt dtMagPresentTm;
_BUR_LOCAL plcbit bNewProduct;
_BUR_LOCAL plcbit bLastProductUnload;
_BUR_LOCAL plcbit bLastProductLeftInBffr;
_BUR_LOCAL plcbit bParamDiff;
_BUR_LOCAL plcbit bMagRemoved;
_BUR_LOCAL plcbit bFIFOOld;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcstring sFileName[81];
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcdt dtCurrDT;
_BUR_LOCAL signed long diMinSlt;
_BUR_LOCAL signed long diMaxSlt;
_BUR_LOCAL signed long diPitch;
_BUR_LOCAL signed long diSltCap;
_BUR_LOCAL signed long diBffrTtlSlt;
_BUR_LOCAL signed long diCoolTm;
_BUR_LOCAL signed long diSltToSltInUM;
_BUR_LOCAL signed long diLifterBtmPosInUM;
_BUR_LOCAL signed long diLifterCurrPosInUM;
_BUR_LOCAL plcbit bAscending;
_BUR_LOCAL plcbit bFIFO;
_BUR_LOCAL plcbit bGdBrdIn;
_BUR_LOCAL plcbit bGdBrdReq;
_BUR_LOCAL plcbit bNxtLoadSeq;
_BUR_LOCAL plcbit a_bSkip[60];
_BUR_LOCAL signed long diCoolFanOffDlyTm;
_BUR_LOCAL plcbit bMagPresentSensor;
_BUR_LOCAL plcbit bPrepCoolFan;
_BUR_LOCAL plcbit bCoolFanTm;
_BUR_LOCAL plcstring sBffrNm[16];
_BUR_LOCAL plcstring sProdNm[16];
_BUR_LOCAL plcstring sBarcode1[81];
_BUR_LOCAL plcstring sBarcode2[81];
_BUR_LOCAL plcstring sCurrRcpNm[16];
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bUpdateSensor;
_BUR_LOCAL plcbit bBffrSetMty;
_BUR_LOCAL plcbit bBffrSetFull;
_BUR_LOCAL plcbit bUpdtDisplay;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL signed long diCurrSlt;
_BUR_LOCAL signed long diExpectedSlt;
_BUR_LOCAL plcbit bSetFull;
_BUR_LOCAL plcbit bSetMty;
_BUR_LOCAL plcbit bCoolFanRun;
_BUR_LOCAL tyBffrParam tyBffrParameter;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbFileFullRead fbFileRead1;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite1;
_BUR_LOCAL struct TON fbCoolFanOffDlyTm;
_BUR_LOCAL struct TON fbCoolFanOffChkTm;
_BUR_LOCAL struct TON fbMagAbsentTm;
_BUR_LOCAL struct TON fbMagPresentTm;
_BUR_LOCAL eBufferAction eStatOld;
_BUR_LOCAL plcbit bMESTrigSetFull;
_BUR_LOCAL unsigned long udiModuleNum;
_GLOBAL signed long c_diBffrSize;
_GLOBAL signed long c_diBffrSubSize;
_GLOBAL signed long c_diDispBffrSize;