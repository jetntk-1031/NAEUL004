#define _DEFAULT_INCLUDE
#include <bur\plctypes.h>
#include "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/NtOpConXML/fOpConFormPartMissingst.h"
#line 1 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/NtLibraries/NtOpConXML/fOpConFormPartMissing.nodebug"
#line 3 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/NtLibraries/NtOpConXML/fOpConFormPartMissing.st"
signed short fOpConFormPartMissing(struct tyXMLTableDat pa_tyXMLTable[52], struct DTStructure(* tyDTStructure), struct tyEventType(* tyEventParam), struct tyLocationParam(* tyLocationParam), struct tyOpConPartMissing(* tyParam)){signed short __AS__fOpConFormPartMissing=0;signed short iTotalIdxWrite=0;plcstring sTimestamp[24]="";{

__AS__MEMSET(((unsigned long)(pa_tyXMLTable)),0,13520);
(iTotalIdxWrite=0);

fHermesGetTimestamp(((unsigned long)(&sTimestamp)),&((*(tyDTStructure))));
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"DT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"xml"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"version"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"1.0"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"encoding"; for(zzIndex=0; zzIndex<8l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"utf-8"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"standalone"; for(zzIndex=0; zzIndex<10l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"yes"; for(zzIndex=0; zzIndex<3l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ED"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ST"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"root"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ST"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"header"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"eventId"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyEventParam)).tyData.uiEventId),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"version"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyEventParam)).tyData.sVersion); for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"eventName"; for(zzIndex=0; zzIndex<9l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyEventParam)).tyData.sEventName); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"eventSwitch"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
sint2str(((*(tyEventParam)).tyData.siEventSwitch),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"timeStamp"; for(zzIndex=0; zzIndex<9l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)sTimestamp; for(zzIndex=0; zzIndex<23l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"contentType"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
usint2str(((*(tyEventParam)).tyData.usiContentType),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ST"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"location"; for(zzIndex=0; zzIndex<8l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"lineNo"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiLineNo),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"statNo"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiStatNo),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"statIdx"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiStatIdx),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"fuNo"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiFuNo),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"workPos"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiWorkPos),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"toolPos"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiToolPos),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"application"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyLocationParam)).tyData.sApplication); for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"processName"; for(zzIndex=0; zzIndex<11l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyLocationParam)).tyData.sProcessName); for(zzIndex=0; zzIndex<30l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"processNo"; for(zzIndex=0; zzIndex<9l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
uint2str(((*(tyLocationParam)).tyData.uiProcessNo),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ES"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ET"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"header"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));

(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ST"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"event"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ST"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"plcPartsMissingStarted"; for(zzIndex=0; zzIndex<22l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"missingParts"; for(zzIndex=0; zzIndex<12l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
usint2str(((*(tyParam)).tyData.usiMissingPart),pa_tyXMLTable[iTotalIdxWrite].sValue,255);
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"typeNo"; for(zzIndex=0; zzIndex<6l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyParam)).tyData.sTypeNo); for(zzIndex=0; zzIndex<20l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AT"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"typeVar"; for(zzIndex=0; zzIndex<7l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"AV"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)((*(tyParam)).tyData.sTypeVar); for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ES"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ET"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"event"; for(zzIndex=0; zzIndex<5l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"ET"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)"root"; for(zzIndex=0; zzIndex<4l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));

{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sTitle; plcstring* zzRValue=(plcstring*)"EN"; for(zzIndex=0; zzIndex<2l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
{int zzIndex; plcstring* zzLValue=(plcstring*)pa_tyXMLTable[iTotalIdxWrite].sValue; plcstring* zzRValue=(plcstring*)""; for(zzIndex=0; zzIndex<0l && zzRValue[zzIndex]!=0; zzIndex++) zzLValue[zzIndex] = zzRValue[zzIndex]; zzLValue[zzIndex] = 0;};
(pa_tyXMLTable[iTotalIdxWrite].uiSize=LEN(pa_tyXMLTable[iTotalIdxWrite].sValue));
(iTotalIdxWrite=(iTotalIdxWrite+1));



}return __AS__fOpConFormPartMissing;}
#line 356 "C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/NtLibraries/NtOpConXML/fOpConFormPartMissing.nodebug"

void __AS__ImplInitfOpConFormPartMissing_st(void){}

unsigned long __AS__MEMSET(unsigned long pDest, unsigned char value, unsigned long length)
{memset((char*)pDest, value, length); return pDest + length;}

__asm__(".section \".plc\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpComError.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipe.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipeAlarm.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipeError.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Acp10man/Acp10man.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLogFile/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMem/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMessage/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRS232/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSMEMA/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTLBuz/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMotion/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRecipe/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtGeneral/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtUI/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOPCUA/Types.typ\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpRecipe/MpRecipe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/NtBuffer.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/NtConv.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLogFile/NtLogFile.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMem/NtMem.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMessage/NtMessage.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOvenInfo/NtOvenInfo.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRS232/NtRS232.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSMEMA/NtSMEMA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/NtTCP.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTLBuz/NtTLBuz.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/NtVersion.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/NtSOT.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/NtLF.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtMotion/NtMotion.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtRecipe/NtRecipe.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtGeneral/NtGeneral.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtUI/NtUI.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/NtHermes.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/NtOpConXML.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOPCUA/NtOPCUA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/runtime/runtime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/astime/astime.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/asstring/asstring.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/operator/operator.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIecCon/AsIecCon.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsCANopen/AsCANopen.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/visapi/Visapi.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/FileIO/FileIO.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsIODiag/AsIODiag.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMem/AsMem.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/dvframe/dvframe.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsOpcUac/AsOpcUac.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsARCfg/AsARCfg.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/sys_lib/sys_lib.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsTCP/AsTCP.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsFltGen/AsFltGen.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/brsystem/brsystem.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpCom/MpCom.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/MpBase/MpBase.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/Acp10par/Acp10par.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/NcGlobal/NcGlobal.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/AsMath/AsMath.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtBuffer/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtTCP/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtVersion/Constant.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtLF/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtHermes/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOpConXML/Constants.var\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/NtOpConXML/fOpConFormPartMissing.st.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"plcreplace \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Temp/Objects/3Mag_UL_SOT_MPuller3/X20CP0483/NtOpConXML/fOpConFormPartMissing.st.c\\\" \\\"C:/Users/wongjl/Desktop/job/Github/NAEUL004/NAEUL004C00R13L515F00/Logical/NtLibraries/NtOpConXML/fOpConFormPartMissing.st\\\"\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPartReceive\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPartProcessed\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPLCError\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPartMissing\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPLCJam\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConFormPLCGrab\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConAddOneMsgSend\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConRmvOneMsgSend\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fbOpConParseXMLTable\\\" FUB\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConParseEventReceive\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConParsePartReceive\\\" FUN\\n\"");
__asm__(".ascii \"plcexport \\\"fOpConParsePlcGrabReceive\\\" FUN\\n\"");
__asm__(".previous");
