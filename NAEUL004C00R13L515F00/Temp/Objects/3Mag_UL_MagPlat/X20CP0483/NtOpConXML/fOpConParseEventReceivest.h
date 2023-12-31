#ifndef __AS__TYPE_
#define __AS__TYPE_
static signed long __AS__STRING_CMP(char* pstr1, char* pstr2);
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

_BUR_PUBLIC signed char str2sint(plcstring IN[81]);
_BUR_PUBLIC unsigned char str2usint(plcstring IN[81]);
_BUR_PUBLIC unsigned short str2uint(plcstring IN[81]);
_BUR_PUBLIC plcbit fOpConParseEventReceive(struct tyEventType(* p_tyEventTypeReceive), struct tyXMLTableDat(* tyXMLTableCurr), struct tyXMLTableDat(* tyXMLTableNxt), plcstring sCurrValueLowerCase[255]);
