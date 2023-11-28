/* Automation Studio generated header file */
/* Do not edit ! */
/* NtOpConXML 5.00.0 */

#ifndef _NTOPCONXML_
#define _NTOPCONXML_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _NtOpConXML_VERSION
#define _NtOpConXML_VERSION 5.00.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
/* Datatypes and datatypes of function blocks */
typedef enum eOpConMsgType
{	OpConMsgTypeNA,
	OpConMsgTypeEventReceived,
	OpConMsgTypePartReceived,
	OpConMsgTypePlcGrabReceived,
	OpConMsgTypePartProcessed,
	OpConMsgTypePLCError,
	OpConMsgTypePartMissingStarted,
	OpConMsgTypePartMissing,
	OpConMsgTypePLCJamStarted,
	OpConMsgTypePLCJam,
	OpConMsgTypePLCGrab
} eOpConMsgType;

typedef struct tyOpConMsgType
{	plcbit bEventRcv;
	plcbit bPlcGrabRcv;
	plcbit bPartRcvRetCode;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit reserve1;
	plcbit reserve2;
} tyOpConMsgType;

typedef struct tyEventTypeData
{	unsigned short uiEventId;
	plcstring sVersion[6];
	plcstring sEventName[31];
	signed char siEventSwitch;
	unsigned char usiContentType;
} tyEventTypeData;

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

typedef struct tyEventType
{	struct tyEventTypeData tyData;
	struct tyEventTypeAvl tyAvl;
} tyEventType;

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

typedef struct tyLocationParam
{	struct tyLocationParamData tyData;
	struct tyLocationParamAvl tyAvl;
} tyLocationParam;

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

typedef struct tyOpConPartReceive
{	struct tyPartReceiveData tyData;
	struct tyPartReceiveAvl tyAvl;
} tyOpConPartReceive;

typedef struct tyPlcGrabReceiveData
{	signed short iReturnCode;
	plcstring sTraceTxt[255];
	plcstring sLevel[21];
	unsigned char reserve1;
	unsigned char reserve2;
	unsigned char reserve3;
} tyPlcGrabReceiveData;

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

typedef struct tyOpConPlcGrabReceive
{	struct tyPlcGrabReceiveData tyData;
	struct tyPlcGrabReceiveAvl tyAvl;
} tyOpConPlcGrabReceive;

typedef struct tyPartProcessedData
{	plcstring sIdentifier[255];
	unsigned char usiResult;
	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
	unsigned char usiWorkingCode;
	unsigned char usiNioBits;
	unsigned char uiBatch;
	plcstring sMachineID[6];
	plcstring sName[5][31];
	plcstring sDataType[5][3];
	plcstring sValue[5][255];
} tyPartProcessedData;

typedef struct tyPartProcessedAvl
{	plcbit bIdentifier;
	plcbit bResult;
	plcbit bTypeNo;
	plcbit bTypeVar;
	plcbit bWorkingCode;
	plcbit bNioBits;
	plcbit bBatch;
	plcbit bMachineID;
	plcbit bName[5];
	plcbit bDataType[5];
	plcbit bValue[5];
} tyPartProcessedAvl;

typedef struct tyOpConPartProcessed
{	struct tyPartProcessedData tyData;
	struct tyPartProcessedAvl tyAvl;
} tyOpConPartProcessed;

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

typedef struct tyOpConPLCError
{	struct tyPLCErrorData tyData;
	struct tyPLCErrorAvl tyAvl;
} tyOpConPLCError;

typedef struct tyPartMissingData
{	unsigned char usiMissingPart;
	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
} tyPartMissingData;

typedef struct tyPartMissingAvl
{	plcbit bMissingPart;
	plcbit bTypeNo;
	plcbit bTypeVar;
} tyPartMissingAvl;

typedef struct tyOpConPartMissing
{	struct tyPartMissingData tyData;
	struct tyPartMissingAvl tyAvl;
} tyOpConPartMissing;

typedef struct tyPLCJamData
{	plcstring sTypeNo[21];
	plcstring sTypeVar[5];
} tyPLCJamData;

typedef struct tyPLCJamAvl
{	plcbit bTypeNo;
	plcbit bTypeVar;
} tyPLCJamAvl;

typedef struct tyOpConPLCJam
{	struct tyPLCJamData tyData;
	struct tyPLCJamAvl tyAvl;
} tyOpConPLCJam;

typedef struct tyPLCGrabData
{	plcstring sMagazineNm[5][31];
	plcstring sValue[5][11];
	plcstring sDataType[5][3];
} tyPLCGrabData;

typedef struct tyPLCGrabAvl
{	plcbit bMagazineNm[5];
	plcbit bValue[5];
	plcbit bDataType[5];
} tyPLCGrabAvl;

typedef struct tyOpConPLCGrab
{	struct tyPLCGrabData tyData;
	struct tyPLCGrabAvl tyAvl;
} tyOpConPLCGrab;

typedef struct fbOpConParseXMLTable
{
	/* VAR_INPUT (analog) */
	unsigned long p_XMLTable;
	signed short iTotalIdxWrite;
	/* VAR_OUTPUT (analog) */
	struct tyOpConMsgType tyMsgType;
	struct tyEventType tyEventReceive;
	signed short iEventReceiveFirstIdx;
	signed short iEventReceiveLastIdx;
	struct tyOpConPartReceive tyPartReceive;
	signed short iPartReceiveFirstIdx;
	signed short iPartReceiveLastIdx;
	struct tyOpConPlcGrabReceive tyPlcGrabReceive;
	signed short iPlcGrabFirstIdx1;
	signed short iPlcGrabLastIdx1;
	/* VAR (analog) */
	struct tyXMLTableDat* p_tyXMLTable;
	struct tyXMLTableDat* p_tyXMLTable1;
	unsigned long udi;
	signed short iOpConIdx;
	enum eOpConMsgType eMsgType;
	plcstring sLowerCase[255];
	plcstring sEventLowerCase[255];
} fbOpConParseXMLTable_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void fbOpConParseXMLTable(struct fbOpConParseXMLTable* inst);
_BUR_PUBLIC signed short fOpConFormPartReceive(struct tyXMLTableDat (*pa_tyXMLTable)[72], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyLocationParam* tyLocationParam, struct tyOpConPartReceive* tyParam);
_BUR_PUBLIC signed short fOpConFormPartProcessed(struct tyXMLTableDat (*pa_tyXMLTable)[84], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyLocationParam* tyLocationParam, struct tyOpConPartProcessed* tyParam);
_BUR_PUBLIC signed short fOpConFormPLCError(struct tyXMLTableDat (*pa_tyXMLTable)[64], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyLocationParam* tyLocationParam, struct tyOpConPLCError* tyParam);
_BUR_PUBLIC signed short fOpConFormPartMissing(struct tyXMLTableDat (*pa_tyXMLTable)[52], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyLocationParam* tyLocationParam, struct tyOpConPartMissing* tyParam);
_BUR_PUBLIC signed short fOpConFormPLCJam(struct tyXMLTableDat (*pa_tyXMLTable)[50], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyLocationParam* tyLocationParam, struct tyOpConPLCJam* tyParam);
_BUR_PUBLIC signed short fOpConFormPLCGrab(struct tyXMLTableDat (*pa_tyXMLTable)[52], struct DTStructure* tyDTStructure, struct tyEventType* tyEventParam, struct tyOpConPLCGrab* tyParam);
_BUR_PUBLIC plcbit fOpConAddOneMsgSend(enum eOpConMsgType (*pa_eMsgSend)[51], unsigned long* p_udiIdx, enum eOpConMsgType eMsgType);
_BUR_PUBLIC plcbit fOpConRmvOneMsgSend(enum eOpConMsgType (*pa_eMsgSend)[51], unsigned long* p_udiIdx);
_BUR_PUBLIC plcbit fOpConParseEventReceive(struct tyEventType** p_tyEventTypeReceive, struct tyXMLTableDat* tyXMLTableCurr, struct tyXMLTableDat* tyXMLTableNxt, plcstring* sCurrValueLowerCase);
_BUR_PUBLIC plcbit fOpConParsePartReceive(struct tyOpConPartReceive** p_tyPartReceive, struct tyXMLTableDat* tyXMLTableCurr, struct tyXMLTableDat* tyXMLTableNxt, plcstring* sCurrValueLowerCase);
_BUR_PUBLIC plcbit fOpConParsePlcGrabReceive(struct tyOpConPlcGrabReceive** p_tyPlcGrabReceive, struct tyXMLTableDat* tyXMLTableCurr, struct tyXMLTableDat* tyXMLTableNxt, plcstring* sCurrValueLowerCase);


#ifdef __cplusplus
};
#endif
#endif /* _NTOPCONXML_ */

