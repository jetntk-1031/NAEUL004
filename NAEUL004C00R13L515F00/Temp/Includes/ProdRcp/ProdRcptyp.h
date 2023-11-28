/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_23_
#define _BUR_1701136544_23_

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






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/ProdRcp/ProdRcp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_23_ */

