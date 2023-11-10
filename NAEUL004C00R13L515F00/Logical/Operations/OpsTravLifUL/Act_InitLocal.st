(** 2019-04-16 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bRun ACCESS ADR(bRun);
	p_bStop ACCESS ADR(bStop);
	p_bStep ACCESS ADR(bStep);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
	p_eULMod ACCESS ADR(eULMode);
	p_eULMag ACCESS ADR(eULMagazine);
	p_bNonBffrMod ACCESS ADR(bNonBffrMod);
	p_bBypsGdBadBrd ACCESS ADR(bBypsGdBadBrd);
	p_bUSAllow ACCESS ADR(bUSAllow);
	p_bDSAllow ACCESS ADR(bDSAllow);
	
	p_eUSCommMod1 ACCESS ADR(eUSCommMod1);
	p_eUSCommMod2 ACCESS ADR(eUSCommMod2);
	p_eUSCommMod3 ACCESS ADR(eUSCommMod3);
	p_eDSCommMod1 ACCESS ADR(eDSCommMod1);
	p_eDSCommMod2 ACCESS ADR(eDSCommMod2);
	p_eDSCommMod3 ACCESS ADR(eDSCommMod3);
	
	p_eUSSMEMAStat1 ACCESS ADR(eUSSMEMAStat1);
	p_eUSSMEMAStatus1 ACCESS ADR(eUSSMEMAStatus1);
	p_bUSSMEMAUSRdy1 ACCESS ADR(bUSSMEMAUSRdy1);
	p_bUSSMEMAGdBrdRdy1 ACCESS ADR(bUSSMEMAGdBrdRdy1);
	p_bUSSMEMATransporting1 ACCESS ADR(bUSSMEMATransporting1);
	p_bUSSMEMAConvStart1 ACCESS ADR(bUSSMEMAConvStart1);
	p_bUSSMEMAConvStop1 ACCESS ADR(bUSSMEMAConvStop1);
	
	p_eUSSMEMAStat2 ACCESS ADR(eUSSMEMAStat2);
	p_eUSSMEMAStatus2 ACCESS ADR(eUSSMEMAStatus2);
	p_bUSSMEMAUSRdy2 ACCESS ADR(bUSSMEMAUSRdy2);
	p_bUSSMEMAGdBrdRdy2 ACCESS ADR(bUSSMEMAGdBrdRdy2);
	p_bUSSMEMATransporting2 ACCESS ADR(bUSSMEMATransporting2);
	p_bUSSMEMAConvStart2 ACCESS ADR(bUSSMEMAConvStart2);
	p_bUSSMEMAConvStop2 ACCESS ADR(bUSSMEMAConvStop2);
	
	p_eUSSMEMAStat3 ACCESS ADR(eUSSMEMAStat3);
	p_eUSSMEMAStatus3 ACCESS ADR(eUSSMEMAStatus3);
	p_bUSSMEMAUSRdy3 ACCESS ADR(bUSSMEMAUSRdy3);
	p_bUSSMEMAGdBrdRdy3 ACCESS ADR(bUSSMEMAGdBrdRdy3);
	p_bUSSMEMATransporting3 ACCESS ADR(bUSSMEMATransporting3);
	p_bUSSMEMAConvStart3 ACCESS ADR(bUSSMEMAConvStart3);
	p_bUSSMEMAConvStop3 ACCESS ADR(bUSSMEMAConvStop3);
	
	p_eDSSMEMAStat1 ACCESS ADR(eDSSMEMAStat1);
	p_eDSSMEMAStatus1 ACCESS ADR(eDSSMEMAStatus1);
	p_bDSSMEMADSRdy1 ACCESS ADR(bDSSMEMADSRdy1);
	p_bDSSMEMAConvStart1 ACCESS ADR(bDSSMEMAConvStart1);
	
	p_eDSSMEMAStat2 ACCESS ADR(eDSSMEMAStat2);
	p_eDSSMEMAStatus2 ACCESS ADR(eDSSMEMAStatus2);
	p_bDSSMEMADSRdy2 ACCESS ADR(bDSSMEMADSRdy2);
	p_bDSSMEMAConvStart2 ACCESS ADR(bDSSMEMAConvStart2);
	
	p_eDSSMEMAStat3 ACCESS ADR(eDSSMEMAStat3);
	p_eDSSMEMAStatus3 ACCESS ADR(eDSSMEMAStatus3);
	p_bDSSMEMADSRdy3 ACCESS ADR(bDSSMEMADSRdy3);
	p_bDSSMEMAConvStart3 ACCESS ADR(bDSSMEMAConvStart3);
	
	p_bUSHermesUSRdy1 ACCESS ADR(bUSHermesUSRdy1);
	p_bUSHermesUSGdRdy1 ACCESS ADR(bUSHermesUSGdRdy1);
	p_bUSHermesTransporting1 ACCESS ADR(bUSHermesTransporting1);
	p_bUSHermesStopTransport1 ACCESS ADR(bUSHermesStopTransport1);
	
	p_bUSHermesUSRdy2 ACCESS ADR(bUSHermesUSRdy2);
	p_bUSHermesUSGdRdy2 ACCESS ADR(bUSHermesUSGdRdy2);
	p_bUSHermesTransporting2 ACCESS ADR(bUSHermesTransporting2);
	p_bUSHermesStopTransport2 ACCESS ADR(bUSHermesStopTransport2);
	
	p_bUSHermesUSRdy3 ACCESS ADR(bUSHermesUSRdy3);
	p_bUSHermesUSGdRdy3 ACCESS ADR(bUSHermesUSGdRdy3);
	p_bUSHermesTransporting3 ACCESS ADR(bUSHermesTransporting3);
	p_bUSHermesStopTransport3 ACCESS ADR(bUSHermesStopTransport3);
	
	p_bDSHermesDSRdy1 ACCESS ADR(bDSHermesDSRdy1);
	p_bDSHermesTransporting1 ACCESS ADR(bDSHermesTransporting1);
	p_bDSHermesStopTransport1 ACCESS ADR(bDSHermesStopTransport1);
	
	p_bDSHermesDSRdy2 ACCESS ADR(bDSHermesDSRdy2);
	p_bDSHermesTransporting2 ACCESS ADR(bDSHermesTransporting2);
	p_bDSHermesStopTransport2 ACCESS ADR(bDSHermesStopTransport2);
	
	p_bDSHermesDSRdy3 ACCESS ADR(bDSHermesDSRdy3);
	p_bDSHermesTransporting3 ACCESS ADR(bDSHermesTransporting3);
	p_bDSHermesStopTransport3 ACCESS ADR(bDSHermesStopTransport3);
	
	p_eConvStat	ACCESS ADR(eConvStat);
	p_eConvStatus ACCESS ADR(eConvStatus);
	p_eConvDir ACCESS ADR(eConvDirection);
	p_bConvHvBrd ACCESS ADR(bConvHvBrd);
	p_bConvGdBrd ACCESS ADR(bConvGdBrd);
	
	p_eAWStat ACCESS ADR(eAWStat);
	p_eAWStatus ACCESS ADR(eAWStatus);
	p_bAWWidthPosDiff ACCESS ADR(bAWWidthPosDiff);
	
	p_eTravStat ACCESS ADR(eTravStat);
	p_eTravStatus ACCESS ADR(eTravStatus);
	
	p_eLifStat ACCESS ADR(eLifStat);
	p_eLifStatus ACCESS ADR(eLifStatus);
	p_bLifterBtmPosDiff ACCESS ADR(bLifterBtmPosDiff);
	p_bLifterAPosDiff ACCESS ADR(bLifterAPosDiff);
	p_bLifterBPosDiff ACCESS ADR(bLifterBPosDiff);
	
	p_eInletPneuStat ACCESS ADR(eInletPneuStat);
	p_eInletPneuStatus ACCESS ADR(eInletPneuStatus);
	p_bInletPneuCls ACCESS ADR(bInletPneuCls);
	
	p_eOutletPneuStat ACCESS ADR(eOutletPneuStat);
	p_eOutletPneuStatus ACCESS ADR(eOutletPneuStatus);
	
	p_bConvLftSen ACCESS ADR(bConvLftSen);
	p_bConvRgtSen ACCESS ADR(bConvRgtSen);
	
	p_bMagTransferBrd1 ACCESS ADR(bMagTransferBrd1);
	p_bMagTransferBrd2 ACCESS ADR(bMagTransferBrd2);
	p_bMagTransferBrd3 ACCESS ADR(bMagTransferBrd3);
	p_bBufferMagPresent1 ACCESS ADR(bBufferMagPresent1);
	p_bBufferMagPresent2 ACCESS ADR(bBufferMagPresent2);
	p_bBufferMagPresent3 ACCESS ADR(bBufferMagPresent3);
	
	p_bPneuUnclmpFBDone ACCESS ADR(bPneuUnclmpFBDone);
	
	p_tShutterWaitTmr ACCESS ADR(tShutterWaitTmr);
	p_eNtParamProjMagBuffferActLoad	ACCESS ADR(eMagBuffferActLoad);
	
	p_bScanEn ACCESS ADR(bScanEn);
	p_eTCPTopStat ACCESS ADR(eTCPTopStat);
	p_eTCPTopStatus ACCESS ADR(eTCPTopStatus);
	p_sTopMsgRd ACCESS ADR(sTopMsgRd);
	p_eTCPBtmStat ACCESS ADR(eTCPBtmStat);
	p_eTCPBtmStatus ACCESS ADR(eTCPBtmStatus);
	p_sBtmMsgRd ACCESS ADR(sBtmMsgRd);
	
	p_bPass ACCESS ADR(bPass);
	p_tyPartReceiveRetCode ACCESS ADR(tyPartReceive);
	p_bPLCGrabPic ACCESS ADR (bPLCGrabPic);
	p_eLocalUSCommMod ACCESS ADR(eLocalUSCommMod);
	p_bMagWidthChkDis ACCESS ADR(bMagWidthChkDis);
END_ACTION
