#ifndef __AS__TYPE_
#define __AS__TYPE_
typedef struct {
	unsigned char bit0  : 1;
	unsigned char bit1  : 1;
	unsigned char bit2  : 1;
	unsigned char bit3  : 1;
	unsigned char bit4  : 1;
	unsigned char bit5  : 1;
	unsigned char bit6  : 1;
	unsigned char bit7  : 1;
} _1byte_bit_field_;

typedef struct {
	unsigned short bit0  : 1;
	unsigned short bit1  : 1;
	unsigned short bit2  : 1;
	unsigned short bit3  : 1;
	unsigned short bit4  : 1;
	unsigned short bit5  : 1;
	unsigned short bit6  : 1;
	unsigned short bit7  : 1;
	unsigned short bit8  : 1;
	unsigned short bit9  : 1;
	unsigned short bit10 : 1;
	unsigned short bit11 : 1;
	unsigned short bit12 : 1;
	unsigned short bit13 : 1;
	unsigned short bit14 : 1;
	unsigned short bit15 : 1;
} _2byte_bit_field_;

typedef struct {
	unsigned long bit0  : 1;
	unsigned long bit1  : 1;
	unsigned long bit2  : 1;
	unsigned long bit3  : 1;
	unsigned long bit4  : 1;
	unsigned long bit5  : 1;
	unsigned long bit6  : 1;
	unsigned long bit7  : 1;
	unsigned long bit8  : 1;
	unsigned long bit9  : 1;
	unsigned long bit10 : 1;
	unsigned long bit11 : 1;
	unsigned long bit12 : 1;
	unsigned long bit13 : 1;
	unsigned long bit14 : 1;
	unsigned long bit15 : 1;
	unsigned long bit16 : 1;
	unsigned long bit17 : 1;
	unsigned long bit18 : 1;
	unsigned long bit19 : 1;
	unsigned long bit20 : 1;
	unsigned long bit21 : 1;
	unsigned long bit22 : 1;
	unsigned long bit23 : 1;
	unsigned long bit24 : 1;
	unsigned long bit25 : 1;
	unsigned long bit26 : 1;
	unsigned long bit27 : 1;
	unsigned long bit28 : 1;
	unsigned long bit29 : 1;
	unsigned long bit30 : 1;
	unsigned long bit31 : 1;
} _4byte_bit_field_;
#endif

#ifndef __AS__TYPE_eULMod
#define __AS__TYPE_eULMod
typedef enum eULMod
{	ULModUnloadFrontLnA = 0,
	ULModRejFrontLnA = 1,
	ULModRejFrontLnARev = 2,
	ULModUnloadRearLnB = 3,
	ULModRejRearLnB = 4,
	ULModRejRearLnBRev = 5,
	ULModUnloadDualLnAB = 6,
	ULModRejDualLnA = 7,
	ULModRejDualLnB = 8,
} eULMod;
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
_GLOBAL unsigned long p_ProdRcpCurrRcp0McMod;
_GLOBAL unsigned long p_ProdRcpCurrRcp1McMod;
_GLOBAL unsigned long p_McParamAutoRcpDisable;
_GLOBAL unsigned long p_NtParamProjMag;
_GLOBAL unsigned long p_NtParamAutoRcpPrep;
_GLOBAL unsigned long p_Buffer1BffrStat;
_GLOBAL unsigned long p_Buffer1MagPresent;
_GLOBAL unsigned long p_Buffer2BffrStat;
_GLOBAL unsigned long p_Buffer2MagPresent;
_GLOBAL unsigned long p_Buffer3BffrStat;
_GLOBAL unsigned long p_Buffer3MagPresent;
_GLOBAL unsigned long p_DIMagPresentSen1;
_GLOBAL unsigned long p_DIMagPresentSen2;
_GLOBAL unsigned long p_DIMagPresentSen3;
_GLOBAL unsigned long p_OpsStatusRun;
static void __AS__Action__Act_InitGlobal(void);
static void __AS__Action__Act_LinkEn(void);
static void __AS__Action__Act_Link(void);
static void __AS__Action__Act_InitLocal(void);
static void __AS__Action__Act_Initial(void);
static void __AS__Action__Act_Action(void);
static void __AS__Action__Act_Main(void);
static void __AS__Action__Act_Main_Disable(void);
static void __AS__Action__Act_Background(void);
