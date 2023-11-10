(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 1;
	bInfoEn		:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvUL1AlmData	:= ADR(tyAlmData);
	p_OpsMagConvUL1AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvUL1StepTxt	:= ADR(sStepTxt);
	p_OpsMagConvUL1Paused	:= ADR(bPaused);
	
	p_OpsMagConvUL1BufferAct		:= ADR(eBufferAct);
	p_OpsMagConvUL1MagConv2ClpAct	:= ADR(eMagConv2ClpAct);
	p_OpsMagConvUL1USSMEMAAct		:= ADR(eUSSMEMAAct);
	p_OpsMagConvUL1AGVMagAct		:= ADR(eAGVMagAct);
	
	p_OpsMagConvUL1InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvUL1MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvUL1NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvUL1RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvUL1EjectMESStep			:= ADR(bEjectMESStep); //MES
	p_OpsMagConvUL1EjectMagNotAllw		:= ADR(bEjectMagNotAllw); //MES
	p_OpsMagConvUL1StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvUL1StepUSCom			:= ADR(bStepMagUSCom);
	p_OpsMagConvUL1StepBffrLoad			:= ADR(bStepMagBffrLoad);
	p_OpsMagConvUL1StepPLCGrab			:= ADR(bStepPLCGrab);
	
	p_OpsMagConvUL1StepSelClampCtrl		:= ADR(eSelClampCtrl);
	p_OpsMagConvUL1NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvUL1MagFullExit			:= ADR(bStepMagFullExit);
	p_OpsMagConvUL1IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvUL1MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvUL1SafetyBarAct			:= ADR(eSafetyBarAct);
	p_OpsMagConvUL1MagAWEngageAct		:= ADR(eMagAWEngageAct);
	p_OpsMagConvUL1MagAWAct				:= ADR(eMagAWAct);
		
	p_OpsMagConvUL1USSOTAct				:= ADR(eUSSOTAct);
	p_OpsMagConvUL1DSSOTAct				:= ADR(eDSSOTAct);
	
	p_OpsAGVCommRdy1					:= ADR(bAGVComm1Rdy);
	
	p_OpsMagConvUL1MsgReq				:= ADR(tyOpConMsgReq);

	p_OpsMagConvUL1UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvUL1MagAllwGo			:= ADR(udiMagAllwGo);
	
	
	p_OpsMagConvUL1ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvUL1WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvUL1AWDone			 	:= ADR(bStepOpsMagAWDone);
	p_OpsMagConvUL1SlotUpdtDone			:= ADR(bStepOpsPitchUpdated);
	(* Always Change If Project Change *)
	
	p_OpsMagConvUL1AcptTm				:= ADR(dtMagConvAcptTm);
	p_OpsMagConvUL1MESAcptCond 			:= ADR(iMagMESAcptCond);
	p_OpsMagConvUL1MagExitedWait 		:= ADR(bMagExitedWait);
	
	//Mute Buzzer for Bosch China
	p_OpsMagConvUL1TLMuteBuzz			:= ADR(bTLMuteBuzzer);
	p_OpsMagConvUL1MagFullInfo			:=ADR(bMagFullInfo);

END_PROGRAM