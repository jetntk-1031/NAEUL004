/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_23_
#define _BUR_1703817512_23_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eProdRcpAction
{	ProdRcpActIdle,
	ProdRcpActCreateDir,
	ProdRcpActAddEdit,
	ProdRcpActDel,
	ProdRcpActGetInfo,
	ProdRcpActGetList,
	ProdRcpActFilter,
	ProdRcpActLoadRcp,
	ProdRcpActAdd,
	ProdRcpActEdit,
	ProdRcpActReadCurrRcp,
	ProdRcpActWriteCurrRcpParam,
	ProdRcpActSaveList,
	ProdRcpActSort,
	ProdRcpActEndCharFilter
} eProdRcpAction;

typedef struct tyProdRcpParam
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
} tyProdRcpParam;

typedef struct tyProdRcpIn1
{	unsigned long udiRstErr;
	plcstring sSearch[255];
	plcstring sScan[255];
	struct tyProdRcpParam tyInfoIn;
	struct tyProdRcpParam tyCurrRcpWr;
	plcstring sProgNm[16];
	plcbit bWidth2Prep;
} tyProdRcpIn1;

typedef struct tyProdRcpOut1
{	enum eProdRcpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
} tyProdRcpOut1;

typedef struct tyProdRcp
{	struct tyProdRcpIn1 In;
	struct tyProdRcpOut1 Out;
} tyProdRcp;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/ProdRcp/ProdRcp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_23_ */

