(*Message Type*)

TYPE
	tyOpConMsgType : 	STRUCT 
		bEventRcv : BOOL;
		bPlcGrabRcv : BOOL;
		bPartRcvRetCode : BOOL; (*Check Alive*)
		bTypeNo : BOOL; (*Check Alive Ping*)
		bTypeVar : BOOL; (*Check Alive Pong*)
		reserve1 : BOOL; (*Service Description*)
		reserve2 : BOOL; (*Notification*)
	END_STRUCT;
	eOpConMsgType : 
		(
		OpConMsgTypeNA, (*NA*)
		OpConMsgTypeEventReceived,
		OpConMsgTypePartReceived,
		OpConMsgTypePlcGrabReceived,
		OpConMsgTypePartProcessed,
		OpConMsgTypePLCError,
		OpConMsgTypePartMissingStarted,
		OpConMsgTypePartMissing,
		OpConMsgTypePLCJamStarted,
		OpConMsgTypePLCJam,
		OpConMsgTypePLCGrab
		);
END_TYPE

(**)
(*opCon Full Data*)

TYPE
	tyEventType : 	STRUCT 
		tyData : tyEventTypeData;
		tyAvl : tyEventTypeAvl;
	END_STRUCT;
	tyLocationParam : 	STRUCT 
		tyData : tyLocationParamData;
		tyAvl : tyLocationParamAvl;
	END_STRUCT;
	tyOpConPartReceive : 	STRUCT 
		tyData : tyPartReceiveData;
		tyAvl : tyPartReceiveAvl;
	END_STRUCT;
	tyOpConPlcGrabReceive : 	STRUCT 
		tyData : tyPlcGrabReceiveData;
		tyAvl : tyPlcGrabReceiveAvl;
	END_STRUCT;
	tyOpConPartProcessed : 	STRUCT 
		tyData : tyPartProcessedData;
		tyAvl : tyPartProcessedAvl;
	END_STRUCT;
	tyOpConPLCError : 	STRUCT 
		tyData : tyPLCErrorData;
		tyAvl : tyPLCErrorAvl;
	END_STRUCT;
	tyOpConPartMissing : 	STRUCT 
		tyData : tyPartMissingData;
		tyAvl : tyPartMissingAvl;
	END_STRUCT;
	tyOpConPLCJam : 	STRUCT 
		tyData : tyPLCJamData;
		tyAvl : tyPLCJamAvl;
	END_STRUCT;
	tyOpConPLCGrab : 	STRUCT 
		tyData : tyPLCGrabData;
		tyAvl : tyPLCGrabAvl;
	END_STRUCT;
END_TYPE

(**)
(*opCon Message Data*)

TYPE
	tyEventTypeData : 	STRUCT 
		uiEventId : UINT;
		sVersion : STRING[5];
		sEventName : STRING[30];
		siEventSwitch : SINT;
		usiContentType : USINT;
	END_STRUCT;
	tyLocationParamData : 	STRUCT 
		uiLineNo : UINT;
		uiStatNo : UINT;
		uiStatIdx : UINT;
		uiFuNo : UINT;
		uiWorkPos : UINT;
		uiToolPos : UINT;
		sProcessName : STRING[30];
		uiProcessNo : UINT;
		sApplication : STRING[5];
	END_STRUCT;
	tyPlcGrabReceiveData : 	STRUCT 
		iReturnCode : INT;
		sTraceTxt : STRING[254];
		sLevel : STRING[20];
		reserve1 : USINT;
		reserve2 : USINT;
		reserve3 : USINT;
	END_STRUCT;
	tyPartReceiveData : 	STRUCT 
		sIdentifier : STRING[254];
		sTypeNo : STRING[20];
		sTypeVar : STRING[4];
		asName : STRING[30];
		asDataType : STRING[2];
		asValue : STRING[254];
		iReturnCode : INT;
		sTraceTxt : STRING[254];
		reserve2 : USINT;
	END_STRUCT;
	tyPartProcessedData : 	STRUCT 
		sIdentifier : STRING[254];
		usiResult : USINT;
		sTypeNo : STRING[20];
		sTypeVar : STRING[4];
		usiWorkingCode : USINT;
		usiNioBits : USINT;
		uiBatch : USINT;
		sMachineID : STRING[5];
		sName : ARRAY[0..4]OF STRING[30];
		sDataType : ARRAY[0..4]OF STRING[2];
		sValue : ARRAY[0..4]OF STRING[254];
	END_STRUCT;
	tyPLCErrorData : 	STRUCT 
		sTypeNo : STRING[20];
		sTypeVar : STRING[4];
		uiErrorNo : UINT;
		sErrorText : STRING[254];
		usiErrorType : USINT;
		usiErrorState : USINT;
		usiOperationMode : USINT;
		bModeOn : BOOL;
		iChainNo : INT;
	END_STRUCT;
	tyPartMissingData : 	STRUCT 
		usiMissingPart : USINT;
		sTypeNo : STRING[20];
		sTypeVar : STRING[4];
	END_STRUCT;
	tyPLCJamData : 	STRUCT 
		sTypeNo : STRING[20];
		sTypeVar : STRING[4];
	END_STRUCT;
	tyPLCGrabData : 	STRUCT 
		sMagazineNm : ARRAY[0..4]OF STRING[30];
		sValue : ARRAY[0..4]OF STRING[10];
		sDataType : ARRAY[0..4]OF STRING[2];
	END_STRUCT;
END_TYPE

(**)
(*opCon Data Availability*)

TYPE
	tyEventTypeAvl : 	STRUCT 
		bEventId : BOOL;
		bVersion : BOOL;
		bEventName : BOOL;
		bEventSwitch : BOOL;
		bContentType : BOOL;
		bIdentifier : BOOL;
		bTypeNo : BOOL;
		bTypeVar : BOOL;
		bName : BOOL;
		bValue : BOOL;
		reserve1 : BOOL;
		reserve2 : BOOL;
		reserve3 : BOOL;
		reserve4 : BOOL;
	END_STRUCT;
	tyLocationParamAvl : 	STRUCT 
		bLineNo : BOOL;
		bStatNo : BOOL;
		bStatIdx : BOOL;
		bFuNo : BOOL;
		bWorkPos : BOOL;
		bToolPos : BOOL;
		bProcessName : BOOL;
		bProcessNo : BOOL;
		bApplication : BOOL;
	END_STRUCT;
	tyPlcGrabReceiveAvl : 	STRUCT 
		bIdentifier : BOOL;
		bTypeNo : BOOL;
		bTypeVar : BOOL;
		bName : BOOL;
		bDataType : BOOL;
		bValue : BOOL;
		bReturnCode : BOOL;
		bTraceTxt : BOOL;
		reserve2 : BOOL;
	END_STRUCT;
	tyPartReceiveAvl : 	STRUCT 
		bIdentifier : BOOL;
		bTypeNo : BOOL;
		bTypeVar : BOOL;
		bName : BOOL;
		bDataType : BOOL;
		bValue : BOOL;
		bReturnCode : BOOL;
		bTraceTxt : BOOL;
		reserve2 : BOOL;
	END_STRUCT;
	tyPartProcessedAvl : 	STRUCT 
		bIdentifier : BOOL;
		bResult : BOOL;
		bTypeNo : BOOL;
		bTypeVar : BOOL;
		bWorkingCode : BOOL;
		bNioBits : BOOL;
		bBatch : BOOL;
		bMachineID : BOOL;
		bName : ARRAY[0..4]OF BOOL;
		bDataType : ARRAY[0..4]OF BOOL;
		bValue : ARRAY[0..4]OF BOOL;
	END_STRUCT;
	tyPLCErrorAvl : 	STRUCT 
		bTypeNo : BOOL;
		bTypeVar : BOOL;
		bErrorNo : BOOL;
		bErrorText : BOOL;
		bErrorType : BOOL;
		bErrorState : BOOL;
		bOperationMode : BOOL;
		bModeOn : BOOL;
		bChainNo : BOOL;
	END_STRUCT;
	tyPartMissingAvl : 	STRUCT 
		bMissingPart : BOOL;
		bTypeNo : BOOL;
		bTypeVar : BOOL;
	END_STRUCT;
	tyPLCJamAvl : 	STRUCT 
		bTypeNo : BOOL;
		bTypeVar : BOOL;
	END_STRUCT;
	tyPLCGrabAvl : 	STRUCT 
		bMagazineNm : ARRAY[0..4]OF BOOL;
		bValue : ARRAY[0..4]OF BOOL;
		bDataType : ARRAY[0..4]OF BOOL;
	END_STRUCT;
END_TYPE
