(*2018-12-11*)
(**)
(*Configuration*)

TYPE
	eULMod : 
		(
		ULModUnloadFrontLnA,
		ULModRejFrontLnA,
		ULModRejFrontLnARev,
		ULModUnloadRearLnB,
		ULModRejRearLnB,
		ULModRejRearLnBRev,
		ULModUnloadDualLnAB,
		ULModRejDualLnA,
		ULModRejDualLnB
		);
	eULMag : 
		(
		ULMagDual,
		ULMagTriple,
		ULMagQuadruple
		);
END_TYPE

(**)

TYPE
	tyParamTravLifUL : 	STRUCT 
		a_bUSDis : ARRAY[1..3]OF BOOL := [3(FALSE)];
		a_bDSDis : ARRAY[1..3]OF BOOL := [3(FALSE)];
		a_usiUSPriority : ARRAY[1..3]OF USINT := [1,2,3];
		a_usiDSPriority : ARRAY[1..3]OF USINT := [1,2,3];
		a_bMagRej : ARRAY[1..3]OF BOOL := [3(FALSE)];
	END_STRUCT;
END_TYPE

(**)
(*Sequence*)

TYPE
	eTravLifULStep : 
		(
		TravLifULStepNA,
		TravLifULStepInitConv,
		TravLifULStepInitInletPneuCls,
		TravLifULStepInitInOutPneuCls,
		TravLifULStepInitTravLif,
		TravLifULStepInitAWTravLif,
		TravLifULStepAWMov,
		TravLifULStepScanDS,
		TravLifULStepHermesBCode,
		TravLifULStepWaitReturnCode,
		TravLifULStepMagChkReturnCode,
		TravLifULStepTravLifMov,
		TravLifULStepUSSigWait,
		TravLifULStepUSSigRechk,
		TravLifULStepInletPneuOpn,
		TravLifULStepUSSigRechkTwice,
		TravLifULStepUSMagWidthChk,
		TravLifULStepStopperRet,
		TravLifULStepUSComm,
		TravLifULStepEntBrd,
		TravLifULStepInletPneuCls,
		TravLifULStepStopperExt,
		TravLifULStepDSSigWait,
		TravLifULStepDSSigRechk,
		TravLifULStepOutletPneuOpn,
		TravLifULStepDSSigRechkTwice,
		TravLifULStepDSMagWidthChk,
		TravLifULStepDSComm,
		TravLifULStepExitBrd,
		TravLifULStepOutletPneuCls,
		TravLifULStepScanStdBy,
		TravLifULStepTranOutErr,
		TravULStepTranOutBrdStuckErr,
		TravULStepTranInBrdStuckErr,
		TravULStepClrSensorErr,
		TravLifULStepMagWidthErr,
		TravULStepBrdLostInMiddle,
		TravULStepClrSensorErrBefTrav
		);
	eTravLifULPos : 
		(
		TravLifULPosInvalid,
		TravLifULPosUS1,
		TravLifULPosUS2,
		TravLifULPosUS3,
		TravLifULPosDS1,
		TravLifULPosDS2,
		TravLifULPosDS3
		);
	tyMagCoord : 	STRUCT 
		usiMagPos : USINT;
		usiMagSlot : USINT;
	END_STRUCT;
END_TYPE
