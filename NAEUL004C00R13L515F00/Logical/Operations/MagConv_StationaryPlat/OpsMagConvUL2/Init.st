(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 2;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvUL2AlmData	:= ADR(tyAlmData);
	p_OpsMagConvUL2AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvUL2StepTxt	:= ADR(sStepTxt);
	p_OpsMagConvUL2Paused	:= ADR(bPaused);
	
	p_OpsMagConvUL2BufferAct		:= ADR(eBufferAct);
	p_OpsMagConvUL2MagConv2ClpAct	:= ADR(eMagConv2ClpAct);
	p_OpsMagConvUL2USSMEMAAct		:= ADR(eUSSMEMAAct);
	p_OpsMagConvUL2AGVMagAct		:= ADR(eAGVMagAct);
	
	p_OpsMagConvUL2InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvUL2MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvUL2NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvUL2RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvUL2EjectMESStep			:= ADR(bEjectMESStep); //MES
	p_OpsMagConvUL2EjectMagNotAllw		:= ADR(bEjectMagNotAllw); //MES
	p_OpsMagConvUL2StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvUL2StepUSCom			:= ADR(bStepMagUSCom);
	p_OpsMagConvUL2StepPLCGrab			:= ADR(bStepPLCGrab);
	
	p_OpsMagConvUL2StepSelClampCtrl		:= ADR(eSelClampCtrl);
	p_OpsMagConvUL2NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvUL2MagFullExit			:= ADR(bStepMagFullExit);
	p_OpsMagConvUL2IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvUL2MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvUL2SafetyBarAct			:= ADR(eSafetyBarAct);
	p_OpsMagConvUL2MagAWEngageAct		:= ADR(eMagAWEngageAct);
	p_OpsMagConvUL2MagAWAct				:= ADR(eMagAWAct);
	
		
	p_OpsMagConvUL2USSOTAct				:= ADR(eUSSOTAct);
	p_OpsMagConvUL2DSSOTAct				:= ADR(eDSSOTAct);
	
	p_OpsAGVCommRdy2					:= ADR(bAGVComm2Rdy);
	
	p_OpsMagConvUL2UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvUL2MagAllwGo			:= ADR(udiMagAllwGo);
	
	p_OpsMagConvUL2ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvUL2WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvUL2AWDone			 	:= ADR(bStepOpsMagAWDone);
	p_OpsMagConvUL2SlotUpdtDone			:= ADR(bStepOpsPitchUpdated);
	(* Always Change If Project Change *)
	
	p_OpsMagConvUL2AcptTm				:= ADR(dtMagConvAcptTm);
	p_OpsMagConvUL2MESAcptCond 			:= ADR(iMagMESAcptCond);
	p_OpsMagConvUL2MagExitedWait 		:= ADR(bMagExitedWait);
END_PROGRAM