/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_174_
#define _BUR_1704680534_174_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eAutoRcpAction
{	AutoRcpActIdle,
	AutoRcpActCreateDir,
	AutoRcpActReadRetain2,
	AutoRcpActWriteRetain2,
	AutoRcpActReadRetain,
	AutoRcpActWriteRetain
} eAutoRcpAction;

typedef struct tyWorkOrderParam
{	plcstring sRcpNm[255];
	signed long diWidthInUM;
	signed long diWidthInUM2;
	signed long diIntvlCntr;
	signed long diMinSltValue;
	signed long diMaxSltValue;
	signed long diPitch;
	signed long diBrdPerSlt;
	unsigned char usiMcMod;
	plcbit bTopToBtm;
	plcbit bGapBwtnBrd;
	plcbit bLongBrd;
	signed long diMinReqFreeBffr;
	plcstring sDisplayInfo[31];
	plcdt dtLastModified;
	signed long diMtrPshrExtSpd;
	signed long diMtrPshrExtTorq;
	signed long diPshrOffset;
} tyWorkOrderParam;

typedef struct tyBoardProperty
{	plcstring sWorkOrderId[81];
	plcstring sBatchId[81];
	plcstring sBoardId[37];
	plcstring sBoardIdCreatedBy[81];
	eHermesFailedBoard eFailedBoard;
	plcstring sProductTypeId[255];
	eHermesFlippedBoard eFlippedBoard;
	plcstring sTopBarcode[255];
	plcstring sBottomBarcode[255];
	float rLength;
	float rWidth;
	float rThickness;
	float rConveyorSpeed;
	float rTopClearanceHeight;
	float rBottomClearanceHeight;
	float rWeight;
} tyBoardProperty;

typedef struct tyMagProperties
{	plcstring sRcpNm[255];
	signed long diWidth;
	signed long diPitch;
	signed long diMinSlt;
	signed long diMaxSlt;
} tyMagProperties;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AutoRcp/AutoRcp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_174_ */

