(*2018-12-11*)
(**)
(*Sequence*)

TYPE
	eLifMagULStep : 
		(
		LifMagULStepNA,
		LifMagULStepMag1ConvInit,
		LifMagULStepMag2ConvInit,
		LifMagULStepInitLif,
		LifMagULStepMagCmp,
		LifMagULStepNxtLoadBffr,
		LifMagULStepLifMov,
		LifMagULStepBffrUSComm,
		LifMagULStepBffrEntBrd,
		LifMagULStepLoadBffr,
		LifMagULStepLifMovUnload,
		LifMagULStepUnload,
		LifMagULStepStandby,
		LiftMagConvInit,
		LiftMagConvIdle,
		LiftMagLifterLoad,
		LiftMagLifterUnload,
		LiftMagConvIN,
		LiftMagConvOUT
		);
	eLifMagULMagNxtLoad : 
		(
		MagNxtLoadInvalid,
		MagNxtLoadMag1,
		MagNxtLoadMag2,
		MagNxtLoadMag3
		);
	eLifterConvStatus : 
		(
		LifterNA := 0,
		LifterLoadPos := 1,
		LifterLoadRdyTrans := 2,
		LifterMagInProgress := 3,
		LifterUnloadPos := 4,
		LifterUnloadRdyTrans := 5
		);
END_TYPE
