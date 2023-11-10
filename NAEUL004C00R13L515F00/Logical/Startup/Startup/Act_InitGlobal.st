(** 2020-09-22 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_UIStartupAct;
	p_tyNtParamCurr ACCESS p_NtParamCurr;
	p_tyMcParamCurr ACCESS p_McParamCurr;
	
	p_bUIMismatchOverWriteConfig ACCESS p_UIMismatchOverWriteConfig;
	p_bUITempAddrFillDone ACCESS p_UITempAddrFillDone;
	p_bUIChgConfigDone ACCESS p_UIIPConfigChgDone;
	p_bUIOverwriteIP ACCESS p_UIOverwriteIP;
	p_bUIOverwriteSubnet ACCESS p_UIOverwriteSubnet;
	p_bUIOverwriteEthMode ACCESS p_UIOverwriteEthMode;
	
	p_eUsrFolderStat ACCESS p_UsrFolderStat;
	p_eUsrFolderStatus ACCESS p_UsrFolderStatus;
	
	p_eHWInfoStat ACCESS p_HWInfoStat;
	p_eHWInfoStatus ACCESS p_HWInfoStatus;
	p_sHWInfoIPAddr ACCESS p_HWInfoIPAddr;
	p_sHWInfoSubnetMask ACCESS p_HWInfoSubnetMask;
	p_udiHWInfoEthMode ACCESS p_HWInfoEthMode;
	
	p_eLibVerStat ACCESS p_LibVerStat;
	p_eLibVerStatus ACCESS p_LibVerStatus;
	
	p_eNtParamStat ACCESS p_NtParamStat;
	p_eNtParamStatus ACCESS p_NtParamStatus;
	
	p_eMcParamStat ACCESS p_McParamStat;
	p_eMcParamStatus ACCESS p_McParamStatus;
	
	p_eProdRcpStat ACCESS p_ProdRcpStat;
	p_eProdRcpStatus ACCESS p_ProdRcpStatus;
	
	p_eMpProdRcpStat ACCESS p_MpProdRcpStat;
	p_eMpProdRcpStatus ACCESS p_MpProdRcpStatus;
	
	p_eMagRcpStat ACCESS p_MagRcpStat;
	p_eMagRcpStatus ACCESS p_MagRcpStatus;
	
	p_eUsrMgmtStat ACCESS p_UsrMgmtStat;
	p_eUsrMgmtStatus ACCESS p_UsrMgmtStatus;
	
	p_eBuffer1Stat ACCESS p_Buffer1Stat;
	p_eBuffer1Status ACCESS p_Buffer1Status;
	p_bMagPresentSensor1 ACCESS p_DIMagPresentSen1;
	p_bMagPresent1 ACCESS p_Buffer1MagPresent;
	
	p_eBuffer2Stat ACCESS p_Buffer2Stat;
	p_eBuffer2Status ACCESS p_Buffer2Status;
	p_bMagPresentSensor2 ACCESS p_DIMagPresentSen2;
	p_bMagPresent2 ACCESS p_Buffer2MagPresent;
	
	p_eBuffer3Stat ACCESS p_Buffer3Stat;
	p_eBuffer3Status ACCESS p_Buffer3Status;
	p_bMagPresentSensor3 ACCESS p_DIMagPresentSen3;
	p_bMagPresent3 ACCESS p_Buffer3MagPresent;
	
	p_eAlarmStat ACCESS p_AlarmStat;
	p_eAlarmStatus ACCESS p_AlarmStatus;
	
	p_eHermesStat ACCESS p_HermesStat;
	p_eHermesStatus ACCESS p_HermesStatus;
	
	p_eRmtHermesStat ACCESS p_RmtHermesStat;
	p_eRmtHermesStatus ACCESS p_RmtHermesStatus;
	
	p_eUSHermesAStat ACCESS p_USHermesAStat;
	p_eUSHermesAStatus ACCESS p_USHermesAStatus;
	
	p_eUSHermesBStat ACCESS p_USHermesBStat;
	p_eUSHermesBStatus ACCESS p_USHermesBStatus;
	
	p_eSvyHermesStat ACCESS p_SvyHermesStat;//new for Hermes 1.3
	p_eSvyHermesStatus ACCESS p_SvyHermesStatus;//new for Hermes 1.3
	
	
	
	p_eAWPushOrPullerStat ACCESS p_AWPushOrPullerStat;
	p_eAWPushOrPullerStatus ACCESS p_AWPushOrPullerStatus;
	
	p_eAWStat ACCESS p_AWOpenStat;
	p_eAWStatus ACCESS p_AWOpenStatus;
	
	p_eTravStat ACCESS p_TravStat;
	p_eTravStatus ACCESS p_TravStatus;
	
	p_eLifterStat ACCESS p_LifterBtmStat;
	p_eLifterStatus ACCESS p_LifterBtmStatus;
		
	p_eLifter2Stat ACCESS p_Lifter2Stat;
	p_eLifter2Status ACCESS p_Lifter2Status;

	p_eUIStat ACCESS p_UIStat;
	p_eUIStatus ACCESS p_UIStatus;
	
	p_eMagAW1Stat ACCESS p_MagAWOpen1Stat;
	p_eMagAW1Status ACCESS p_MagAWOpen1Status;
	
	p_eMagAW2Stat ACCESS p_MagAWOpen2Stat;
	p_eMagAW2Status ACCESS p_MagAWOpen2Status;
	
	p_eMagAW3Stat ACCESS p_MagAWOpen3Stat;
	p_eMagAW3Status ACCESS p_MagAWOpen3Status;
	
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;		
	p_bMcParamAutoRcpDis ACCESS p_McParamAutoRcpDisable;
	p_eAutoRcpStat ACCESS p_AutoRcpStat;
	p_eAutoRcpStatus ACCESS p_AutoRcpStatus;
	
	(* Always Change If Project Change *)
	
END_ACTION
