#ifndef __AS__TYPE_
#define __AS__TYPE_
static signed long __AS__STRING_CMP(char* pstr1, char* pstr2);
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

#ifndef __AS__TYPE_tyXMLTableDat
#define __AS__TYPE_tyXMLTableDat
typedef struct tyXMLTableDat
{	plcstring sTitle[3];
	plcstring sValue[255];
	unsigned short uiSize;
} tyXMLTableDat;
#endif

#ifndef __AS__TYPE_tyOpConMsgType
#define __AS__TYPE_tyOpConMsgType
typedef struct tyOpConMsgType
{	plcbit bEventRcv;
	plcbit bPlcGrabRcv;
	plcbit bPartRcvRetCode;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit reserve1;
	plcbit reserve2;
} tyOpConMsgType;
#endif

#ifndef __AS__TYPE_eOpConMsgType
#define __AS__TYPE_eOpConMsgType
typedef enum eOpConMsgType
{	OpConMsgTypeNA = 0,
	OpConMsgTypeEventReceived = 1,
	OpConMsgTypePartReceived = 2,
	OpConMsgTypePlcGrabReceived = 3,
	OpConMsgTypePartProcessed = 4,
	OpConMsgTypePLCError = 5,
	OpConMsgTypePartMissingStarted = 6,
	OpConMsgTypePartMissing = 7,
	OpConMsgTypePLCJamStarted = 8,
	OpConMsgTypePLCJam = 9,
	OpConMsgTypePLCGrab = 10,
} eOpConMsgType;
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

#ifndef __AS__TYPE_tyPartReceiveData
#define __AS__TYPE_tyPartReceiveData
typedef struct tyPartReceiveData
{	plcstring sIdentifier[255];
	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
	plcstring asName[31];
	plcstring asDataType[3];
	plcstring asValue[255];
	signed short iReturnCode;
	plcstring sTraceTxt[255];
	unsigned char reserve2;
} tyPartReceiveData;
#endif

#ifndef __AS__TYPE_tyPartReceiveAvl
#define __AS__TYPE_tyPartReceiveAvl
typedef struct tyPartReceiveAvl
{	plcbit bIdentifier;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bName;
	plcbit bDataType;
	plcbit bValue;
	plcbit bReturnCode;
	plcbit bTraceTxt;
	plcbit reserve2;
} tyPartReceiveAvl;
#endif

#ifndef __AS__TYPE_tyOpConPartReceive
#define __AS__TYPE_tyOpConPartReceive
typedef struct tyOpConPartReceive
{	tyPartReceiveData tyData;
	tyPartReceiveAvl tyAvl;
} tyOpConPartReceive;
#endif

#ifndef __AS__TYPE_tyPlcGrabReceiveData
#define __AS__TYPE_tyPlcGrabReceiveData
typedef struct tyPlcGrabReceiveData
{	signed short iReturnCode;
	plcstring sTraceTxt[255];
	plcstring sLevel[21];
	unsigned char reserve1;
	unsigned char reserve2;
	unsigned char reserve3;
} tyPlcGrabReceiveData;
#endif

#ifndef __AS__TYPE_tyPlcGrabReceiveAvl
#define __AS__TYPE_tyPlcGrabReceiveAvl
typedef struct tyPlcGrabReceiveAvl
{	plcbit bIdentifier;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bName;
	plcbit bDataType;
	plcbit bValue;
	plcbit bReturnCode;
	plcbit bTraceTxt;
	plcbit reserve2;
} tyPlcGrabReceiveAvl;
#endif

#ifndef __AS__TYPE_tyOpConPlcGrabReceive
#define __AS__TYPE_tyOpConPlcGrabReceive
typedef struct tyOpConPlcGrabReceive
{	tyPlcGrabReceiveData tyData;
	tyPlcGrabReceiveAvl tyAvl;
} tyOpConPlcGrabReceive;
#endif

_BUR_PUBLIC unsigned long memset(unsigned long pDest, unsigned char value, unsigned long length);
_BUR_PUBLIC plcbit fConvertToLower_254(plcstring p_sOutput[255], plcstring sInput[255]);
struct fbOpConParseXMLTable
{	unsigned long p_XMLTable;
	signed short iTotalIdxWrite;
	tyOpConMsgType tyMsgType;
	tyEventType tyEventReceive;
	signed short iEventReceiveFirstIdx;
	signed short iEventReceiveLastIdx;
	tyOpConPartReceive tyPartReceive;
	signed short iPartReceiveFirstIdx;
	signed short iPartReceiveLastIdx;
	tyOpConPlcGrabReceive tyPlcGrabReceive;
	signed short iPlcGrabFirstIdx1;
	signed short iPlcGrabLastIdx1;
	struct tyXMLTableDat(* p_tyXMLTable);
	struct tyXMLTableDat(* p_tyXMLTable1);
	unsigned long udi;
	signed short iOpConIdx;
	eOpConMsgType eMsgType;
	plcstring sLowerCase[255];
	plcstring sEventLowerCase[255];
};
_BUR_PUBLIC void fbOpConParseXMLTable(struct fbOpConParseXMLTable* inst);
_BUR_PUBLIC plcbit fOpConParseEventReceive(struct tyEventType(* p_tyEventTypeReceive), struct tyXMLTableDat(* tyXMLTableCurr), struct tyXMLTableDat(* tyXMLTableNxt), plcstring sCurrValueLowerCase[255]);
_BUR_PUBLIC plcbit fOpConParsePartReceive(struct tyOpConPartReceive(* p_tyPartReceive), struct tyXMLTableDat(* tyXMLTableCurr), struct tyXMLTableDat(* tyXMLTableNxt), plcstring sCurrValueLowerCase[255]);
_BUR_PUBLIC plcbit fOpConParsePlcGrabReceive(struct tyOpConPlcGrabReceive(* p_tyPlcGrabReceive), struct tyXMLTableDat(* tyXMLTableCurr), struct tyXMLTableDat(* tyXMLTableNxt), plcstring sCurrValueLowerCase[255]);
