#ifndef __AS__TYPE_
#define __AS__TYPE_
static unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length);
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

#ifndef __AS__TYPE_DTStructure
#define __AS__TYPE_DTStructure
typedef struct DTStructure
{	unsigned short year;
	unsigned char month;
	unsigned char day;
	unsigned char wday;
	unsigned char hour;
	unsigned char minute;
	unsigned char second;
	unsigned short millisec;
	unsigned short microsec;
} DTStructure;
#endif

#ifndef __AS__TYPE_tyXMLTableDat
#define __AS__TYPE_tyXMLTableDat
typedef struct tyXMLTableDat
{	plcstring sTitle[3];
	plcstring sValue[255];
	unsigned short uiSize;
} tyXMLTableDat;
#endif

#ifndef __AS__TYPE_tyEventTypeData
#define __AS__TYPE_tyEventTypeData
typedef struct tyEventTypeData
{	unsigned short uiEventId;
	plcstring sVersion[6];
	plcstring sEventName[31];
	signed char siEventSwitch;
	unsigned char usiContentType;
} tyEventTypeData;
#endif

#ifndef __AS__TYPE_tyEventTypeAvl
#define __AS__TYPE_tyEventTypeAvl
typedef struct tyEventTypeAvl
{	plcbit bEventId;
	plcbit bVersion;
	plcbit bEventName;
	plcbit bEventSwitch;
	plcbit bContentType;
	plcbit bIdentifier;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bName;
	plcbit bValue;
	plcbit reserve1;
	plcbit reserve2;
	plcbit reserve3;
	plcbit reserve4;
} tyEventTypeAvl;
#endif

#ifndef __AS__TYPE_tyEventType
#define __AS__TYPE_tyEventType
typedef struct tyEventType
{	tyEventTypeData tyData;
	tyEventTypeAvl tyAvl;
} tyEventType;
#endif

#ifndef __AS__TYPE_tyLocationParamData
#define __AS__TYPE_tyLocationParamData
typedef struct tyLocationParamData
{	unsigned short uiLineNo;
	unsigned short uiStatNo;
	unsigned short uiStatIdx;
	unsigned short uiFuNo;
	unsigned short uiWorkPos;
	unsigned short uiToolPos;
	plcstring sProcessName[31];
	unsigned short uiProcessNo;
	plcstring sApplication[6];
} tyLocationParamData;
#endif

#ifndef __AS__TYPE_tyLocationParamAvl
#define __AS__TYPE_tyLocationParamAvl
typedef struct tyLocationParamAvl
{	plcbit bLineNo;
	plcbit bStatNo;
	plcbit bStatIdx;
	plcbit bFuNo;
	plcbit bWorkPos;
	plcbit bToolPos;
	plcbit bProcessName;
	plcbit bProcessNo;
	plcbit bApplication;
} tyLocationParamAvl;
#endif

#ifndef __AS__TYPE_tyLocationParam
#define __AS__TYPE_tyLocationParam
typedef struct tyLocationParam
{	tyLocationParamData tyData;
	tyLocationParamAvl tyAvl;
} tyLocationParam;
#endif

#ifndef __AS__TYPE_tyPLCErrorData
#define __AS__TYPE_tyPLCErrorData
typedef struct tyPLCErrorData
{	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
	unsigned short uiErrorNo;
	plcstring sErrorText[255];
	unsigned char usiErrorType;
	unsigned char usiErrorState;
	unsigned char usiOperationMode;
	plcbit bModeOn;
	signed short iChainNo;
} tyPLCErrorData;
#endif

#ifndef __AS__TYPE_tyPLCErrorAvl
#define __AS__TYPE_tyPLCErrorAvl
typedef struct tyPLCErrorAvl
{	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bErrorNo;
	plcbit bErrorText;
	plcbit bErrorType;
	plcbit bErrorState;
	plcbit bOperationMode;
	plcbit bModeOn;
	plcbit bChainNo;
} tyPLCErrorAvl;
#endif

#ifndef __AS__TYPE_tyOpConPLCError
#define __AS__TYPE_tyOpConPLCError
typedef struct tyOpConPLCError
{	tyPLCErrorData tyData;
	tyPLCErrorAvl tyAvl;
} tyOpConPLCError;
#endif

_BUR_PUBLIC signed short LEN(plcstring IN[32768]);
_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC plcstring* bool2str(plcbit IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcstring* sint2str(signed char IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcstring* int2str(signed short IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcstring* usint2str(unsigned char IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcstring* uint2str(unsigned short IN, plcstring pStr[81], unsigned long len);
_BUR_PUBLIC plcbit fHermesGetTimestamp(plcstring p_sTimestamp[24], struct DTStructure(* tyDTStructure));
_BUR_PUBLIC signed short fOpConFormPLCError(struct tyXMLTableDat pa_tyXMLTable[64], struct DTStructure(* tyDTStructure), struct tyEventType(* tyEventParam), struct tyLocationParam(* tyLocationParam), struct tyOpConPLCError(* tyParam));
