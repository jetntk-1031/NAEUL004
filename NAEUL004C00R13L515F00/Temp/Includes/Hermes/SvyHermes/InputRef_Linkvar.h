/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_215_
#define _BUR_1703817513_215_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bManualQueryWO;
_BUR_LOCAL plcbit bRcvWorkBypassOrderInfo;
_BUR_LOCAL plcbit bQueryBypassWorkOrder;
_BUR_LOCAL plcbit bQueryloaderWorkOrder;
_BUR_LOCAL plcstring sUSBarcode[255];
_BUR_LOCAL plcbit bNewIncomingBoard;
_BUR_LOCAL signed short *p_iLinkXMLTableDataBrdAvlTtlIdx1;
_BUR_LOCAL struct tyXMLTableDat (*pa_tyLinkXMLTableDataBrdAvl1)[201];
_BUR_LOCAL plcbit *p_bLinkBrdAvlDataNewBrdAvl1stZ;
_BUR_LOCAL plcbit bClearWorkOrder;
_BUR_LOCAL plcbit bSendBoardForecast;
_BUR_LOCAL plcbit bRetainNewAcc;
_BUR_LOCAL plcbit bRcvBoardInfoOk;
_BUR_LOCAL plcbit bReplyBypassWorkOrderInfo;
_BUR_LOCAL plcbit bReplyWorkOrderInfo;
_BUR_LOCAL plcbit tySendWorkOrderInfoAccPublish;
_BUR_LOCAL plcbit bLifterEmpty;
_BUR_LOCAL plcbit bHermesStop;
_BUR_LOCAL plcbit bHermesRun;
_BUR_LOCAL plcbit *p_bLinkStartupRun;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/SvyHermes/InputRef_Link.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_215_ */

