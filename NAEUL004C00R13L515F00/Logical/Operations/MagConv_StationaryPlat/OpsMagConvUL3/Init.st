(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	usiMagConv	:= 3;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsMagConvUL3AlmData	:= ADR(tyAlmData);
	p_OpsMagConvUL3AlmData1	:= ADR(tyAlmData1);
	
	//Output
	p_OpsMagConvUL3StepTxt			:= ADR(sStepTxt);
	p_OpsMagConvUL3Paused			:= ADR(bPaused);
	
	p_OpsMagConvUL3BufferAct		:= ADR(eBufferAct);
	p_OpsMagConvUL3MagConv2ClpAct	:= ADR(eMagConv2ClpAct);
	p_OpsMagConvUL3USSMEMAAct		:= ADR(eUSSMEMAAct);
	p_OpsMagConvUL3AGVMagAct		:= ADR(eAGVMagAct);
	
	p_OpsMagConvUL3InitDone				:= ADR(bOpsInitDone);
	p_OpsMagConvUL3MagBffrAvl			:= ADR(bMagBffrAvl);
	p_OpsMagConvUL3NewMagAllw			:= ADR(bNewMagAllw);
	p_OpsMagConvUL3RlsMagAllw			:= ADR(bRlsMagAllw);
	p_OpsMagConvUL3EjectMESStep			:= ADR(bEjectMESStep); //MES
	p_OpsMagConvUL3EjectMagNotAllw		:= ADR(bEjectMagNotAllw); //MES
	p_OpsMagConvUL3StepMagExitedWait	:= ADR(bStepMagExitedWait);
	p_OpsMagConvUL3StepUSCom			:= ADR(bStepMagUSCom);
	p_OpsMagConvUL3StepPLCGrab			:= ADR(bStepPLCGrab);
	
	p_OpsMagConvUL3StepSelClampCtrl		:= ADR(eSelClampCtrl);
	p_OpsMagConvUL3NewMagVerified		:= ADR(bNewMagVerified);
	p_OpsMagConvUL3MagFullExit			:= ADR(bStepMagFullExit);
	p_OpsMagConvUL3IncorrectMagModel    := ADR(bIncorrectMagazineModel);
	p_OpsMagConvUL3MagSizeL    			:= ADR(bMagSizeLarge);
	
	p_OpsMagConvUL3SafetyBarAct			:= ADR(eSafetyBarAct);
	p_OpsMagConvUL3MagAWEngageAct		:= ADR(eMagAWEngageAct);
	p_OpsMagConvUL3MagAWAct				:= ADR(eMagAWAct);
	
		
	p_OpsMagConvUL3USSOTAct				:= ADR(eUSSOTAct);
	p_OpsMagConvUL3DSSOTAct				:= ADR(eDSSOTAct);
	
	p_OpsAGVCommRdy3					:= ADR(bAGVComm3Rdy);
	
	p_OpsMagConvUL3UnclmpDone			:= ADR(bPneuUnclmpDone);
	p_OpsMagConvUL3MagAllwGo			:= ADR(udiMagAllwGo);
	
	
	p_OpsMagConvUL3ReadRFID				:= ADR(bReadRFID);
	p_OpsMagConvUL3WriteRFID			:= ADR(bWriteRFID);
	p_OpsMagConvUL3AWDone			 	:= ADR(bStepOpsMagAWDone);
	p_OpsMagConvUL3SlotUpdtDone			:= ADR(bStepOpsPitchUpdated);
	(* Always Change If Project Change *)
	
	p_OpsMagConvUL3AcptTm				:= ADR(dtMagConvAcptTm);
	p_OpsMagConvUL3MESAcptCond 			:= ADR(iMagMESAcptCond);
	p_OpsMagConvUL3MagExitedWait 		:= ADR(bMagExitedWait);
END_PROGRAM