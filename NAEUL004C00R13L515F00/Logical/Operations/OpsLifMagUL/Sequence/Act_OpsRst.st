(** 2019-03-25 **)
ACTION Act_OpsRst:
	
	udiStatus1	:= 0;
	
	eLifterAct		:= LifterActIdle;
	eLifter2Act		:= LifterActIdle;
	eLifterConvAct		:= MagConvActIdle;
	eLifterConv2Act		:= MagConvActIdle;
	eBufferAct1		:= BufferActIdle;
	eBufferAct2		:= BufferActIdle;
	eBufferAct3		:= BufferActIdle;
	eUSSMEMAAct1	:= SMEMAActIdle;
	eUSSMEMAAct2	:= SMEMAActIdle;
	eUSSMEMAAct3	:= SMEMAActIdle;
	
	usiMag1Rdy 	:= LifterNA;
	usiMag2Rdy	:= LifterNA;
END_ACTION
