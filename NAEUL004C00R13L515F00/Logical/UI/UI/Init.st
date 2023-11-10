(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_UIStat	:= ADR(eStat);
	p_UIStatus	:= ADR(eStatus);
	p_UIStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	
	//Output
	p_UIStartupAct 					:= ADR(eStartupAct);
	p_UISimuAct						:= ADR(eSimuAct);
	p_UIHWInfoAct 					:= ADR(eHWInfoAct);
	p_UITLBuzAct 					:= ADR(eTLBuzAct);
	p_UIRstErrAct 					:= ADR(eRstErrAct);
	p_UIProdRcpAct 					:= ADR(eProdRcpAct);
	p_UIMpProdRcpAct				:= ADR(eMpProdRcpAct);
	p_UIMagRcpAct 					:= ADR(eMagRcpAct);
	p_UIMcParamAct 					:= ADR(eMcParamAct);
	p_UIUsrMgmtAct 					:= ADR(eUsrMgmtAct);
	p_UIOvenInfoAAct 				:= ADR(eOvenInfoAAct);
	p_UIOvenInfoBAct 				:= ADR(eOvenInfoBAct);
	p_UIBuffer1Act 					:= ADR(eBuffer1Act);
	p_UIBuffer2Act 					:= ADR(eBuffer2Act);
	p_UIBuffer3Act 					:= ADR(eBuffer3Act);
	p_UIUSSMEMAAAct 				:= ADR(eUSSMEMAAAct);
	p_UIUSSMEMABAct 				:= ADR(eUSSMEMABAct);
	p_UIInShutterAct 				:= ADR(eInShutterAct);
	p_UIOutShutterAct 				:= ADR(eOutShutterAct);
	p_UIOutShutterAct2				:= ADR(eOutShutterAct2);
	p_UIOutShutterAct3				:= ADR(eOutShutterAct3);
	p_UIStopperAAct 				:= ADR(eStopperAAct);
	p_UIStopperBAct 				:= ADR(eStopperBAct);
	p_UIInStopperAct 				:= ADR(eInStopperAct);
	p_UIMag1SafetyBarAct			:= ADR(eMag1SafetyBarAct);
	p_UIMag2SafetyBarAct			:= ADR(eMag2SafetyBarAct);
	p_UIMag3SafetyBarAct			:= ADR(eMag3SafetyBarAct);
	p_UIMag1AWEngageAct				:= ADR(eMag1AWEngageAct);
	p_UIMag2AWEngageAct				:= ADR(eMag2AWEngageAct);
	p_UIMag3AWEngageAct				:= ADR(eMag3AWEngageAct);
	p_UIPshrConvAct 				:= ADR(ePshrConvAct);

	p_UIMagConvSelClp1Act 			:= ADR(eMagConvSelClp1Act);
	p_UIMagConvSelClp2Act 			:= ADR(eMagConvSelClp2Act);
	p_UIMagConvSelClp3Act 			:= ADR(eMagConvSelClp3Act);
	p_UIMagConv2Clp1Act 			:= ADR(eMagConv2Clp1Act);
	p_UIMagConv2Clp2Act 			:= ADR(eMagConv2Clp2Act);
	p_UIMagConv2Clp3Act 			:= ADR(eMagConv2Clp3Act);
	
	p_UIAWPushOrPullerAct 			:= ADR(eAWPushOrPullerAct);
	p_UIAWOpenAct 					:= ADR(eAWOpenAct);
	p_UILifterBtmAct 				:= ADR(eLifterBtmAct);
	p_UILifter2Act 					:= ADR(eLifter2Act);
	p_UITravAct 					:= ADR(eTravAct);
	
	p_UIMagAWOpen1Act				:= ADR(eMagAWOpen1Act);
	p_UIMagAWOpen2Act				:= ADR(eMagAWOpen2Act);
	p_UIMagAWOpen3Act				:= ADR(eMagAWOpen3Act);
	
	p_UIDOAct 						:= ADR(eDOAct);
	p_UIHermesAct					:= ADR(eHermesAct);
	p_UILFLeaderAct					:= ADR(eLFLeaderAct);
	p_UIOpsAct						:= ADR(eOpsAct);
	
	p_UIMcParamWr					:= ADR(tyMcParamWr);	
	
	p_UIProdRcpInfoIn				:= ADR(tyProdRcpInfoIn);
	p_UIProdRcpSearch				:= ADR(sProdRcpSearch);
	p_UIProdRcpScan					:= ADR(sProdRcpScan);
	p_UIProdRcpCurrRcpWr			:= ADR(tyProdRcpCurrRcpWr);
	
	p_UIMagRcpInfoIn				:= ADR(tyMagRcpInfoIn);
	p_UIMagRcpSearch				:= ADR(sMagRcpSearch);
	p_UIMagRcpCurrRcpWr				:= ADR(tyMagRcpCurrRcpWr);
	
	p_UIUsrMgmtInfoIn				:= ADR(tyUsrMgmtInfoIn);
	p_UIUsrMgmtAccessRightLvl1Wr	:= ADR(tyUsrMgmtAccessRightLvl1Wr);
	p_UIUsrMgmtAccessRightLvl2Wr	:= ADR(tyUsrMgmtAccessRightLvl2Wr);
	p_UIUsrMgmtAccessRightLvl3Wr	:= ADR(tyUsrMgmtAccessRightLvl3Wr);
	
	p_UIHermesUSParamWr				:= ADR(a_tyHermesUSParamWr);
	
	p_UISectionLdr					:= ADR(tyP1022McSetVComm.tyLF.tyBtnSectionLdr.bValue);
	
	p_UISetIPAddr					:= ADR(sSetIPAddr);
	p_UISetSubnetMask				:= ADR(sSetSubnetMask);
	p_UINetworkMode					:= ADR(usiNetworkModeSelected);
	
	p_UIMnlMod						:= ADR(bManualMod);
	p_UIUIMnlMod					:= ADR(bUIManualMod);
	p_UIMuteBuz						:= ADR(bMuteBuz);
	p_UISimuMod						:= ADR(bSimuMod);
	p_UINtWr						:= ADR(eNtWr);	
	
	p_UIMnlMtrPshrExtSpd			:= ADR(diMnlMtrPshrExtSpd);
	p_UIMnlMtrPshrExtTorq			:= ADR(diMnlMtrPshrExtTorq);
		
	p_UIMnlAWPushOrPullerGoWidth	:= ADR(diMnlAWPushOrPullerGoWidth);
	p_UIMnlAWPushOrPullerNomSpd		:= ADR(diMnlAWPushOrPullerNomSpd);
	p_UIMnlAWPushOrPullerTargetPos	:= ADR(diMnlAWPushOrPullerTargetPos);
	p_UIMnlAWPushOrPullerStepSize	:= ADR(diMnlAWPushOrPullerStepSize);
	p_UIMnlAWPushOrPullerJogSpd		:= ADR(diMnlAWPushOrPullerJogSpd);
	
	p_UIMnlAWGoWidth				:= ADR(diMnlAWGoWidth);
	p_UIMnlAWNomSpd					:= ADR(diMnlAWNomSpd);
	p_UIMnlAWTargetPos				:= ADR(diMnlAWTargetPos);
	p_UIMnlAWStepSize				:= ADR(diMnlAWStepSize);
	p_UIMnlAWJogSpd					:= ADR(diMnlAWJogSpd);
	
	p_UIMnlLifterBtmGoSlt1Pos		:= ADR(diMnlLifterGoSlt1Pos);
	p_UIMnlLifterBtmMag1GoSlt		:= ADR(diMnlLifterMag1GoSlt);
	p_UIMnlLifterBtmMag2GoSlt		:= ADR(diMnlLifterMag2GoSlt);
	p_UIMnlLifterBtmMag3GoSlt		:= ADR(diMnlLifterMag3GoSlt);
	p_UIMnlLifterBtmNomSpd			:= ADR(diMnlLifterNomSpd);
	p_UIMnlLifterBtmTargetPos		:= ADR(diMnlLifterTargetPos);
	p_UIMnlLifterBtmStepSize		:= ADR(diMnlLifterStepSize);
	p_UIMnlLifterBtmJogSpd			:= ADR(diMnlLifterJogSpd);
		
	p_UIMnlLifter2GoSlt1Pos		:= ADR(diMnlLifterGoSlt1Pos2);
	p_UIMnlLifter2Mag1GoSlt		:= ADR(diMnlLifterMag1GoSlt2);
	p_UIMnlLifter2Mag2GoSlt		:= ADR(diMnlLifterMag2GoSlt2);
	p_UIMnlLifter2Mag3GoSlt		:= ADR(diMnlLifterMag3GoSlt2);
	p_UIMnlLifter2NomSpd		:= ADR(diMnlLifterNomSpd2);
	p_UIMnlLifter2TargetPos		:= ADR(diMnlLifterTargetPos2);
	p_UIMnlLifter2StepSize		:= ADR(diMnlLifterStepSize2);
	p_UIMnlLifter2JogSpd		:= ADR(diMnlLifterJogSpd2);

	p_UIMnlTravNomSpd				:= ADR(diMnlTravNomSpd);
	p_UIMnlTravTargetPos			:= ADR(diMnlTravTargetPos);
	p_UIMnlTravStepSize				:= ADR(diMnlTravStepSize);
	p_UIMnlTravJogSpd				:= ADR(diMnlTravJogSpd);
	
	p_UIMnlMagAW1GoWidth			:= ADR(diMnlMagAW1GoWidth);
	p_UIMnlMagAW1NomSpd				:= ADR(diMnlMagAW1NomSpd);
	p_UIMnlMagAW1TargetPos			:= ADR(diMnlMagAW1TargetPos);
	p_UIMnlMagAW1StepSize			:= ADR(diMnlMagAW1StepSize);
	p_UIMnlMagAW1JogSpd				:= ADR(diMnlMagAW1JogSpd);
	
	p_UIMnlMagAW2GoWidth			:= ADR(diMnlMagAW2GoWidth);
	p_UIMnlMagAW2NomSpd				:= ADR(diMnlMagAW2NomSpd);
	p_UIMnlMagAW2TargetPos			:= ADR(diMnlMagAW2TargetPos);
	p_UIMnlMagAW2StepSize			:= ADR(diMnlMagAW2StepSize);
	p_UIMnlMagAW2JogSpd				:= ADR(diMnlMagAW2JogSpd);
	
	p_UIMnlMagAW3GoWidth			:= ADR(diMnlMagAW3GoWidth);
	p_UIMnlMagAW3NomSpd				:= ADR(diMnlMagAW3NomSpd);
	p_UIMnlMagAW3TargetPos			:= ADR(diMnlMagAW3TargetPos);
	p_UIMnlMagAW3StepSize			:= ADR(diMnlMagAW3StepSize);
	p_UIMnlMagAW3JogSpd				:= ADR(diMnlMagAW3JogSpd);
	
	p_UIVSMEMAUSAEn					:= ADR(bVSMEMAUSAEn);
	p_UIVSMEMAUSBEn					:= ADR(bVSMEMAUSBEn);
	p_UIVSMEMAUBAA					:= ADR(bVSMEMAUBAA);
	p_UIVSMEMAUBAAStat				:= ADR(bVSMEMAUBAAStat);
	p_UIVSMEMAUBAB					:= ADR(bVSMEMAUBAB);
	p_UIVSMEMAUBABStat				:= ADR(bVSMEMAUBABStat);
	
	p_UIOvenInfoSetBrdInOvenA		:= ADR(diSetBrdInOvenA);
	p_UIOvenInfoSetBrdInOvenB		:= ADR(diSetBrdInOvenB);
	
	p_UILeaderRun					:= ADR(bLeaderRun);
	
	p_UIProdAccData					:= ADR(bProdAccData);
	
	p_UIOpsBypsInitConv				:= ADR(bOpsBypsInitConv);
	
	p_UINewMag1						:= ADR(bNewMag1);
	p_UINewMag2						:= ADR(bNewMag2);
	p_UINewMag3						:= ADR(bNewMag3);
	p_UIRlsMag1						:= ADR(bRlsMag1);
	p_UIRlsMag2						:= ADR(bRlsMag2);
	p_UIRlsMag3						:= ADR(bRlsMag3);
	
	p_UIAGVSimulateSig		:= ADR(tyAGVSimulateSig);
	p_UIAGVSimulateOnline 	:= ADR(bAGVSimulateOnline);
	p_UIAGVSimulationOn 	:= ADR(bAGVSimulationOn);
	
	p_UIMismatchOverWriteConfig		:= ADR(bMismatchOverWriteConfig);
	p_UITempAddrFillDone			:= ADR(bTempAddrFillDone);
	p_UIIPConfigChgDone				:= ADR(bIPConfigChgDone);
	p_UIOverwriteIP					:= ADR(bOverwriteIP);
	p_UIOverwriteSubnet				:= ADR(bOverwriteSubnet);
	p_UIOverwriteEthMode			:= ADR(bOverwriteEthMode);

	//Hermes 1.3
	p_UIHermesSvyParamWr			:= ADR(tyHermesSvyParamWr); 
	p_UIQueryBoardInfo				:= ADR(bQueryBoardInfo);
	p_UIQueryWorkOrderInfo			:= ADR(bQueryWorkOrderInfo);
	p_UISaveHMIConfigure            := ADR(bSaveHMIConfigure);
	p_UISaveHMISvyConfig            := ADR(bSaveHMISvyConfig);
	//Trav Lif
	p_UITravLifTopBarcode             := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringTopBarcode.sValue);
	p_UITravLifBottomBarcode          := ADR(tyP0201OpsTravLifter.tyQueryBoardInfo.tyStringBottomBarcode.sValue);
	p_UITravLifPCBBarcode             := ADR(tyP0201OpsTravLifter.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	//Mag Conv
	p_UIMagazine1Id                  := ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine1PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	p_UIMagazine2Id                  := ADR(tyP0203OpsMag2.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine2PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	p_UIMagazine3Id                 := 	ADR(tyP0204OpsMag3.tyQueryWorkOrderInfo.tyStringMagazineId.sValue);
	p_UIMagazine3PCBBarcode			:=  ADR(tyP0202OpsMag1.tyQueryWorkOrderInfo.tyStringBarcode.sValue);
	
	p_UIMagazineSlotId              := ADR(iSlotId);
	p_UISkipWorkOrder		    	:= ADR(bSkipWorkOrder);
	p_UIReadWorkOrder		    	:= ADR(bReadWorkOrder);
	p_UIDeleteWorkOrder		    	:= ADR(bDeleteWorkOrder);
	
	//AIV Comm
	p_UISOTMagErr1		:= ADR(bSOTMagErr1);
	p_UISOTMagErr2		:= ADR(bSOTMagErr2);
	p_UISOTMagErr3		:= ADR(bSOTMagErr3);
	p_UISOTMagErr4		:= ADR(bSOTMagErr4);
	p_UISOTMagRdy1		:= ADR(bSOTMagRdy1);
	p_UISOTMagRdy2		:= ADR(bSOTMagRdy2);
	p_UISOTMagRdy3		:= ADR(bSOTMagRdy3);
	p_UISOTMagRdy4		:= ADR(bSOTMagRdy4);
	p_UISOTMagAvail1	:= ADR(bSOTMagAvail1);
	p_UISOTMagAvail2	:= ADR(bSOTMagAvail2);
	p_UISOTMagAvail3	:= ADR(bSOTMagAvail3);
	p_UISOTMagAvail4	:= ADR(bSOTMagAvail4);
	p_UISOTMagSLarge1	:= ADR(bSOTMagSLarge1);
	p_UISOTMagSLarge2	:= ADR(bSOTMagSLarge2);
	p_UISOTMagSLarge3	:= ADR(bSOTMagSLarge3);
	p_UISOTMagSLarge4	:= ADR(bSOTMagSLarge4);
	
	p_UIAIVReqBring1	:= ADR(bAIVReqBring1);
	p_UIAIVReqBring2	:= ADR(bAIVReqBring2);
	p_UIAIVReqBring3	:= ADR(bAIVReqBring3);
	p_UIAIVReqBring4	:= ADR(bAIVReqBring4);
	p_UIAIVReqGet1		:= ADR(bAIVReqGet1);
	p_UIAIVReqGet2		:= ADR(bAIVReqGet2);
	p_UIAIVReqGet3		:= ADR(bAIVReqGet3);
	p_UIAIVReqGet4		:= ADR(bAIVReqGet4);
	
	//Mag Autowidth open limit sensor control
	p_UIMagAWOpenLimByp1 := ADR(bMagAWOpenLimByp1);
	p_UIMagAWOpenLimByp2 := ADR(bMagAWOpenLimByp2);
	p_UIMagAWOpenLimByp3 := ADR(bMagAWOpenLimByp3);
	p_UIMagAWOpenLimByp4 := ADR(bMagAWOpenLimByp4);
	p_UIMagAWSmallLimSen1 := ADR(bSmallMagLimSen1);
	p_UIMagAWSmallLimSen2 := ADR(bSmallMagLimSen2);
	p_UIMagAWSmallLimSen3 := ADR(bSmallMagLimSen3);
	p_UIMagAWSmallLimSen4 := ADR(bSmallMagLimSen4);
	
	p_UISOTSimulationSig1 := ADR(tySOTSimulateSig1);
	p_UISOTSimulationSig2 := ADR(tySOTSimulateSig2);
	p_UISOTSimulationSig3 := ADR(tySOTSimulateSig3);
	
	
	p_UIUnloadMag					:= ADR(bUnloadMag);			//mag platform
	p_UIOpsMnlUnloadMag				:= ADR(bOpsMnlUnloadMag); 	//magazine lane1 unload
	p_UIOpsMnlUnloadMag2			:= ADR(bOpsMnlUnloadMag2); 	//magazine lane2 unload

	//MagConv 
	p_UIInMagConvAct		:= ADR(eInMagConvAct);
	p_UIOutMagConvAct		:= ADR(eOutMagConvAct);
	p_UIInMagConv2Act		:= ADR(eInMagConv2Act);
	p_UIOutMagConv2Act		:= ADR(eOutMagConv2Act);
	p_UILifterMagConvAct			:= ADR(eLifterMagConvAct);
	p_UILifterMagConv2Act			:= ADR(eLifterMagConv2Act);
	p_UIStopper1Act			:= ADR(eStopper1Act);
	p_UIStopper2Act			:= ADR(eStopper2Act);
	p_UIStopper3Act			:= ADR(eStopper3Act);
	p_UIStopper4Act			:= ADR(eStopper4Act);
	p_UIStopper5Act			:= ADR(eStopper5Act);
	p_UIStopper1Act2		:= ADR(eStopper1Act2);
	p_UIStopper2Act2		:= ADR(eStopper2Act2);
	p_UIStopper3Act2		:= ADR(eStopper3Act2);
	p_UIStopper4Act2		:= ADR(eStopper4Act2);
	p_UIStopper5Act2		:= ADR(eStopper5Act2);
	
	p_UIMnlPPNomSpd				:= ADR(diMnlPPNomSpd);
	p_UIMnlPPTargetPos			:= ADR(diMnlPPTargetPos);
	p_UIMnlPPStepSize			:= ADR(diMnlPPStepSize);
	p_UIMnlPPJogSpd				:= ADR(diMnlPPJogSpd);
	
	p_UISafetyCurtainReset		:= ADR(bSafetyCurtainReset); //Curtain Safety Sensor Reset
	p_UIMnlBypCurtainPBLED		:= ADR(bBypCurtainPBLED);
	p_UIMnlBypCurtainSen		:= ADR(bBypCurtainSen);
	
	
	p_SelProdRcpStep                := ADR(usiSelProdRcpStep);
	
	
	p_UIHcomModchanged			:= ADR(usiHComModChaged);

	//DMC RFID
	p_UIStartScanSig 			:= ADR(bStartScanSig);
	p_UIMag1TransOut 			:= ADR(bPCBExitMag1);
	p_UIMag2TransOut 			:= ADR(bPCBExitMag2);
	p_UIMag3TransOut 			:= ADR(bPCBExitMag3);
	
	//Add
	p_UISetHMIIPAddr				:= ADR(sSetHMIIPAddr);
	p_UIUpdtHMIIPAddr				:= ADR(bUpdtHMIIPAddr);
END_PROGRAM