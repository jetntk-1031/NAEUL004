(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	
	//Alarm
	p_OpsLifMagULAlmData	:= ADR(tyAlmData);
	p_OpsLifMagULAlmData1	:= ADR(tyAlmData1);
	p_OpsLifMagULAlmData2	:= ADR(tyAlmData2);	
	//Output
	p_OpsLifMagULStepTxt	:= ADR(sStepTxt);
	p_OpsLifMagULStepTxt1	:= ADR(sStepTxt1);
	p_OpsLifMagULPaused		:= ADR(bPaused);
	
	p_OpsLifMagULLifterAct		:= ADR(eLifterAct);
	p_OpsLifMagULBufferAct1		:= ADR(eBufferAct1);
	p_OpsLifMagULBufferAct2		:= ADR(eBufferAct2);
	p_OpsLifMagULBufferAct3		:= ADR(eBufferAct3);
	p_OpsLifMagULUSSMEMAAct1	:= ADR(eUSSMEMAAct1);
	p_OpsLifMagULUSSMEMAAct2	:= ADR(eUSSMEMAAct2);
	p_OpsLifMagULUSSMEMAAct3	:= ADR(eUSSMEMAAct3);
	
	p_OpsLifMagULMagNxtLoad	:= ADR(eMagNxtLoad);
	p_OpsLifMagULUnloading	:= ADR(bUnloading);
	
	p_OpsLifMagULLifter2Act		:= ADR(eLifter2Act);
	p_OpsLifMagULLifterConvAct		:= ADR(eLifterConvAct);
	p_OpsLifMagULLifterConv2Act		:= ADR(eLifterConv2Act);
	
	p_OpsLifMagULStepInitDone1			:= ADR(bStepInitDone1);
	p_OpsLifMagULStepInitDone2			:= ADR(bStepInitDone2);
	p_OpsLifMagULStepEntMag1			:= ADR(bStepEntMag1);
	p_OpsLifMagULStepExtMag1			:= ADR(bStepExtMag1);
	p_OpsLifMagULStepEntMag2			:= ADR(bStepEntMag2);
	p_OpsLifMagULStepExtMag2			:= ADR(bStepExtMag2);
	p_OpsLifMagULStepIdle2				:= ADR(bStepLiftMagIdle2);
	
	(* Always Change If Project Change *)
	
END_PROGRAM