/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_20_
#define _BUR_1703817512_20_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
 #define c_udiAlarmHistoryMax 300U
 #define c_udiAlarmCurrMax 200U
#else
 _GLOBAL_CONST unsigned long c_udiAlarmHistoryMax;
 _GLOBAL_CONST unsigned long c_udiAlarmCurrMax;
#endif


/* Variables */
_GLOBAL struct tyAlmOut1 g_tyAlm;
_GLOBAL struct tyAlmProgNm g_tyAlmProgNm;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_20_ */

