#ifndef __AS__TYPE_eAutoRcpPreceded
#define __AS__TYPE_eAutoRcpPreceded
typedef enum eAutoRcpPreceded
{	PrecededBySelf = 0,
	PrecededByF1 = 1,
	PrecededByF2 = 2,
} eAutoRcpPreceded;
#endif

#ifndef __AS__TYPE_eULMag
#define __AS__TYPE_eULMag
typedef enum eULMag
{	ULMagDual = 0,
	ULMagTriple = 1,
	ULMagQuadruple = 2,
} eULMag;
#endif

#ifndef __AS__TYPE_tyBffrStat
#define __AS__TYPE_tyBffrStat
typedef struct tyBffrStat
{	plcbit bBffrFull;
	plcbit bBffrMty;
	signed long diTtlBrdCap;
	signed long diTtlGdBrd;
	signed long diTtlBadBrd;
} tyBffrStat;
#endif

_BUR_LOCAL plcbit(* p_bPrep);
_BUR_LOCAL plcbit(* p_bEn);
_BUR_LOCAL plcbit(* p_bDis);
_BUR_LOCAL eULMag(* p_eNtParamMag);
_BUR_LOCAL unsigned char(* p_usiMcParamProdSelMcMod);
_BUR_LOCAL plcbit(* p_bOpsStatusRun);
_BUR_LOCAL plcbit(* p_bBufferMagPresent1);
_BUR_LOCAL plcbit(* p_bBufferMagPresent2);
_BUR_LOCAL plcbit(* p_bBufferMagPresent3);
_BUR_LOCAL plcbit(* p_bDIMagPresentSen1);
_BUR_LOCAL plcbit(* p_bDIMagPresentSen2);
_BUR_LOCAL plcbit(* p_bDIMagPresentSen3);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat1);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat2);
_BUR_LOCAL struct tyBffrStat(* p_tyBufferStat3);
_BUR_LOCAL plcbit(* p_bNtParamAutoRcpPrep);
_BUR_LOCAL plcbit(* p_bMcParamAutoRcpDis);
_BUR_LOCAL eAutoRcpPreceded(* p_eNtParamAutoRcpPrecededBy);
_BUR_LOCAL signed long diBffrMtySlt;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL eULMag eNtParamMag;
_BUR_LOCAL unsigned char usiMcParamProdSelMcMod;
_BUR_LOCAL plcbit bOpsStatusRun;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL tyBffrStat tyBufferStat1;
_BUR_LOCAL tyBffrStat tyBufferStat2;
_BUR_LOCAL tyBffrStat tyBufferStat3;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL signed long diBffrMtySlt1;
_BUR_LOCAL signed long diBffrMtySlt2;
_BUR_LOCAL signed long diBffrMtySlt3;
