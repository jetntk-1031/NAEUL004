/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726037_15_
#define _BUR_1703726037_15_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eHWInfoAction
{	HWInfoActIdle,
	HWInfoActGetIPAddr,
	HWInfoActGetSubnetMask,
	HWInfoActGetMacAddr,
	HWInfoActSetIPAddr,
	HWInfoActSetSubnetMask,
	HWInfoActGetEthConfigMode,
	HWInfoActSetEthConfigMode,
	HWInfoActSetDefaultGateway
} eHWInfoAction;

typedef enum eNetworkConfigMod
{	SetIPManually = 0,
	IPFromDHCPServer = 1
} eNetworkConfigMod;

typedef struct tysMacAddress
{	plcstring s_PLCMacAddr0[3];
	plcstring s_PLCMacAddr1[3];
	plcstring s_PLCMacAddr2[3];
	plcstring s_PLCMacAddr3[3];
	plcstring s_PLCMacAddr4[3];
	plcstring s_PLCMacAddr5[3];
} tysMacAddress;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/HWInfo/HWInfo.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726037_15_ */

