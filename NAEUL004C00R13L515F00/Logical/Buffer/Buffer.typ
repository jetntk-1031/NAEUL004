(*2019-02-18*)
(**)
(*Action*)

TYPE
	eBufferAction : 
		(
		BufferActIdle,
		BufferActCreateDir,
		BufferActGetRetainBffr,
		BufferActSetFull,
		BufferActSetMty,
		BufferActLoad,
		BufferActLoadSltChk,
		BufferActUnload,
		BufferActUnloadSltChk,
		BufferActUnloadCoolChk,
		BufferActUnloadSltChkCoolChk,
		BufferActNxtLoad,
		BufferActNxtLoadGd,
		BufferActNxtLoadBad,
		BufferActNxtUnload,
		BufferActNxtUnloadGd,
		BufferActNxtUnloadBad,
		BufferActChkCoolTm,
		BufferActChkCoolBrdAny,
		BufferActChkCoolBrdGd,
		BufferActChkCoolBrdBad,
		BufferActRstBffr,
		BufferActSetCoolFan,
		BufferActRstCoolFan,
		BufferActBGStartBffrSetFull,
		BufferActBGStartBffrSetMty,
		BufferActBGStopBffrSet,
		BufferActBGStartUpdtSen,
		BufferActBGStopUpdtSen,
		BufferActBGStartUpdtDisplay,
		BufferActBGStopUpdtDisplay,
		BufferActBGStartCoolFan,
		BufferActBGStopCoolFan
		);
END_TYPE
