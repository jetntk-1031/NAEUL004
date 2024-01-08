/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680535_177_
#define _BUR_1704680535_177_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum ePage
{	UIP0000SSaver = 0,
	UIP0001Startup = 1,
	UIP0002Menu = 2,
	UIP0003MMenu = 3,
	UIP0100Login = 100,
	UIP0200OpsGen = 200,
	UIP0201OpsTravLifter = 201,
	UIP0202OpsMag1 = 202,
	UIP0203OpsMag2 = 203,
	UIP0204OpsMag3 = 204,
	UIP0205OpsAIV = 205,
	UIP0206OpsMagConv1 = 206,
	UIP0207OpsMagConv2 = 207,
	UIP0300McInfo = 300,
	UIP0400ProdSel = 400,
	UIP0410MagSel = 410,
	UIP0600Alm = 600,
	UIP0700LFCtrl = 700,
	UIP0800MagInfo = 800,
	UIP0850OvenInfo = 850,
	UIP0900GenIn = 900,
	UIP0910GenOut = 910,
	UIP0920MtrNPneuCtrl = 920,
	UIP0921Shutter = 921,
	UIP0922Stopper = 922,
	UIP0923SafetyBar = 923,
	UIP0926LifterConv = 926,
	UIP0927LifterConv2 = 927,
	UIP0928MagConv = 928,
	UIP0929MagConv2 = 929,
	UIP0930MagConv1 = 930,
	UIP0931MagConv2 = 931,
	UIP0932MagConv3 = 932,
	UIP0933PusherConv = 933,
	UIP0934AW = 934,
	UIP0935Lifter = 935,
	UIP0936Trav = 936,
	UIP0937AWPushOrPuller = 937,
	UIP0938MagAW = 938,
	UIP0939Lifter2 = 939,
	UIP0940CommCtrl = 940,
	UIP0950Simu = 950,
	UIP1000Lang = 1000,
	UIP1020McSetNavi = 1020,
	UIP1021McSetGen = 1021,
	UIP1022McSetVComm = 1022,
	UIP1023McSetHComm = 1023,
	UIP1024McSetAntiGap = 1024,
	UIP1025McSetScan = 1025,
	UIP1026McSetTeach = 1026,
	UIP1027McSetOpCon = 1027,
	UIP1030MagSet = 1030,
	UIP1031MagSetTeach = 1031,
	UIP1040ProdSet = 1040,
	UIP1050LFSet = 1050,
	UIP1080UsrMgmt = 1080,
	UIP1081UsrMgmtUsrAccessRgt = 1081
} ePage;

typedef struct tyTable
{	plcbit bSliderActive;
	plcbit bTableActive;
	plcstring sVisuNm[81];
	unsigned short uiSelectedRow;
	unsigned short uiSelectedRowOld;
	unsigned short uiTablePos;
} tyTable;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UI/UI/Local.typ\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680535_177_ */

