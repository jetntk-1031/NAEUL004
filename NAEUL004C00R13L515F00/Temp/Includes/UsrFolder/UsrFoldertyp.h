/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_9_
#define _BUR_1703817512_9_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eUsrFolderAction
{	UsrFolderActIdle,
	UsrFolderActCreateUsrDir,
	UsrFolderActCreatePrivateDir,
	UsrFolderActCreateLogDir,
	UsrFolderActCreateLCSDir
} eUsrFolderAction;

typedef struct tyUsrFolderIn1
{	enum eUsrFolderAction eAct;
	unsigned long udiRstErr;
	plcstring sProgNm[16];
} tyUsrFolderIn1;

typedef struct tyUsrFolderOut1
{	enum eUsrFolderAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
	struct tyAlmDat tyAlmData;
} tyUsrFolderOut1;

typedef struct tyUsrFolder
{	struct tyUsrFolderIn1 In;
	struct tyUsrFolderOut1 Out;
} tyUsrFolder;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/UsrFolder/UsrFolder.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_9_ */

