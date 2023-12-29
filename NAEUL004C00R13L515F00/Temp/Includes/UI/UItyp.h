/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837632_3_
#define _BUR_1703837632_3_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eUIAction
{	UIActIdle,
	UIActInitial
} eUIAction;

typedef enum eUIInitial
{	UIInitialC0005,
	UIInitialC0007,
	UIInitialP0000,
	UIInitialP0002,
	UIInitialP0003,
	UIInitialP0200,
	UIInitialP0201,
	UIInitialP0202,
	UIInitialP0203,
	UIInitialP0204,
	UIInitialP0205,
	UIInitialP0206,
	UIInitialP0207,
	UIInitialP0300,
	UIInitialP0400,
	UIInitialP0410,
	UIInitialP0800,
	UIInitialP0850,
	UIInitialP0900,
	UIInitialP0910,
	UIInitialP0920,
	UIInitialP0921,
	UIInitialP0922,
	UIInitialP0923,
	UIInitialP0928,
	UIInitialP0929,
	UIInitialP0930,
	UIInitialP0931,
	UIInitialP0932,
	UIInitialP0933,
	UIInitialP0934,
	UIInitialP0935,
	UIInitialP0936,
	UIInitialP0937,
	UIInitialP0938,
	UIInitialP0939,
	UIInitialP0940,
	UIInitialP0950,
	UIInitialP1000,
	UIInitialP1020,
	UIInitialP1021,
	UIInitialP1022,
	UIInitialP1023,
	UIInitialP1024,
	UIInitialP1026,
	UIInitialP1027,
	UIInitialP1030,
	UIInitialP1031,
	UIInitialP1040,
	UIInitialP1050,
	UIInitialP1080,
	UIInitialP1081,
	UIInitialDone
} eUIInitial;

typedef struct tyUIAllAlm
{	plcbit bAlm[10000];
	plcbit bWarning[10000];
} tyUIAllAlm;

typedef struct tyIPAddress
{	plcstring sSetIPAddress[16];
	plcstring sSetSubnetMask[16];
	plcstring sSelectedNetworkMode[31];
	plcstring sTempIpAddress[16];
	plcstring sTempSubnetMask[16];
	plcstring sTempNetworkMode[31];
} tyIPAddress;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837632_3_ */

