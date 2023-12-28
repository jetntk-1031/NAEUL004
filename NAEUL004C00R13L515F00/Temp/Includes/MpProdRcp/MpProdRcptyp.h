/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_25_
#define _BUR_1703660020_25_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMpProdRcpAction
{	MpProdRcpActIdle,
	MpProdRcpActCreateDir,
	MpProdRcpActLoad,
	MpProdRcpActSave
} eMpProdRcpAction;

typedef struct tyMpProdRcpIn1
{	enum eMpProdRcpAction eAct;
	struct MpComIdentType tyMpProdRcpMpLink;
	plcstring sPVName[101];
	plcstring sFileName[256];
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
	unsigned long udiRstErr;
} tyMpProdRcpIn1;

typedef struct tyMpProdRcpOut1
{	enum eMpProdRcpAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
} tyMpProdRcpOut1;

typedef struct tyMpProdRcp
{	struct tyMpProdRcpIn1 In;
	struct tyMpProdRcpOut1 Out;
} tyMpProdRcp;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MpProdRcp/MpProdRcp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_25_ */

