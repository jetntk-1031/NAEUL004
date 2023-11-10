(** 2019-04-16 **)
ACTION Act_InitGlobal:
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bRun ACCESS p_OpsRun;
	p_bStop ACCESS p_OpsStop;
	p_bStep ACCESS p_OpsStep;
	p_sProgNm ACCESS p_NtParamOpsMagConvStprProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_eUSCommMod1 ACCESS p_McParamUSCommAMod;
	p_eUSCommMod2 ACCESS p_McParamUSCommBMod;

	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	
	p_dtBufferMagPresentTm1 ACCESS p_Buffer1MagPresentTm;
	p_dtBufferMagPresentTm2 ACCESS p_Buffer2MagPresentTm;
	p_dtBufferMagPresentTm3 ACCESS p_Buffer3MagPresentTm;
	
	p_bUSHermesUSRdy1 ACCESS p_USHermesAUSRdy;
	p_bUSHermesUSGdRdy1 ACCESS p_USHermesAUSGdRdy;
	
	p_bUSHermesUSRdy2 ACCESS p_USHermesBUSRdy;
	p_bUSHermesUSGdRdy2 ACCESS p_USHermesBUSGdRdy;
	
	
	p_bUSSMEMAUSRdy1 ACCESS p_USSMEMAAUSRdy;
	p_bUSSMEMAGdBrdRdy1 ACCESS p_USSMEMAAUSGdBrdRdy;
	p_bUSSMEMAUSRdy2 ACCESS p_USSMEMABUSRdy;
	p_bUSSMEMAGdBrdRdy2 ACCESS p_USSMEMABUSGdBrdRdy;
	
	p_bDSSMEMADSRdy1 ACCESS p_DSSMEMA1DSRdy;
	p_bDSSMEMADSRdy2 ACCESS p_DSSMEMA2DSRdy;
	p_bDSSMEMADSRdy3 ACCESS p_DSSMEMA3DSRdy;
		
	p_tyParamTravLif ACCESS p_OpsTravLifParamTravLif;
	p_bConvGdBrd ACCESS p_PshrConvGdBrd;
	
	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
	
	p_bOpsModGoneThrough ACCESS p_OpsTravLifOpsModGonethrough;
END_ACTION
