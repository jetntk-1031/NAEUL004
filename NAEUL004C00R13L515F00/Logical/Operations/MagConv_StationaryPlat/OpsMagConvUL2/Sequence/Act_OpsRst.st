(** 2019-03-25 **)
ACTION Act_OpsRst:
	
	udiStatus1	:= 0;
	
	eBufferAct		:= BufferActIdle;
	eMagConv2ClpAct	:= MagConv2ClpActIdle;
	eUSSMEMAAct		:= SMEMAActIdle;
	eAGVMagAct		:= AGVMagActIdle;
	eSelClampCtrl	:= PneuActIdle;
	eSafetyBarAct	:= PneuActIdle;
	eMagAWEngageAct	:= PneuActIdle;
	eMagAWAct		:= MagAWActIdle;
	eDSSOTAct		:= SOTActIdle;
	eUSSOTAct		:= SOTActIdle;
	
	bNewMagVerified := FALSE;
	bNewMagVerifyStarted := FALSE;
	bReadRFID := FALSE;
	bWriteRFID := FALSE;
//	fbWriteRFIDTO(IN:= FALSE);
END_ACTION
