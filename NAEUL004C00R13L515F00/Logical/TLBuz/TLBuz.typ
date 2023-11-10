(*2020-02-19*)
(**)
(*Action*)

TYPE
	eTLBuzAction : 
		(
		TLBuzActIdle,
		TLBuzActSetGreen,
		TLBuzActSetWhite,
		TLBuzActSetRed,
		TLBuzActSetAmber,
		TLBuzActSetBlue,
		TLBuzActSetBuz,
		TLBuzActRstGreen,
		TLBuzActRstWhite,
		TLBuzActRstRed,
		TLBuzActRstAmber,
		TLBuzActRstBlue,
		TLBuzActRstBuz,
		TLBuzActSetAll,
		TLBuzActRstAll
		);
	eTLBuzMod : 
		(
		TLBuzModNutek,
		TLBuzModAptiv,
		TLBuzModMEK,
		TLBuzModBHTC,
		TLBuzModSiemens_2Colour
		);
END_TYPE
