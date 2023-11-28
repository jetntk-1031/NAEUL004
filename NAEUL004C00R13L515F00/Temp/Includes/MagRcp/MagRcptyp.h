/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_27_
#define _BUR_1701136544_27_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagRcpAction
{	MagRcpActIdle,
	MagRcpActCreateDir,
	MagRcpActAddEdit,
	MagRcpActDel,
	MagRcpActGetInfo,
	MagRcpActGetList,
	MagRcpActFilter,
	MagRcpActReadCurrRcp,
	MagRcpActLoadRcp,
	MagRcpActWriteCurrRcpParam,
	MagRcpActSaveList,
	MagRcpActSort
} eMagRcpAction;

typedef struct tyMagRcpParam
{	plcstring sRcpNm[31];
	signed long diTtlSlt;
	signed long diSltToSltInUM;
	signed long diMag1Slt1PosInUM;
	signed long diMag2Slt1PosInUM;
	signed long diMag3Slt1PosInUM;
	signed long diMag1TravPosInUM;
	signed long diMag2TravPosInUM;
	signed long diMag3TravPosInUM;
	unsigned char usiMagModel;
	plcstring sDisplayInfo[31];
	signed long diMagMaxBrdWidth;
	plcdt dtLastModified;
	plcbit bSafetyBarDisabled;
	plcbit bMagHeightChkEn;
} tyMagRcpParam;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagRcp/MagRcp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_27_ */

