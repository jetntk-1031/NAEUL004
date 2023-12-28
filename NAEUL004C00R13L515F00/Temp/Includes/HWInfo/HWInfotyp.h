/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_15_
#define _BUR_1703660020_15_

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

typedef struct tyHWInfoIn1
{	enum eHWInfoAction eAct;
	unsigned long udiRstErr;
	plcstring sSetIPAddr[16];
	plcstring sSetSubnetMask[16];
	plcstring sDevice[4];
	plcstring sProgNm[16];
	plcbit bNtSettingsLoadDone;
	unsigned char usiNetworkMode;
	plcstring sHMIMacAdd[28];
	plcstring sSetDefaultGW[16];
} tyHWInfoIn1;

typedef struct tyHWInfoOut1
{	enum eHWInfoAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
	plcstring sIPAddr[16];
	plcstring sSubnetMask[16];
	unsigned char a_usiMacAddr[6];
	unsigned long udiConfigMode;
} tyHWInfoOut1;

typedef struct tyHWInfo
{	struct tyHWInfoIn1 In;
	struct tyHWInfoOut1 Out;
} tyHWInfo;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/HWInfo/HWInfo.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_15_ */

