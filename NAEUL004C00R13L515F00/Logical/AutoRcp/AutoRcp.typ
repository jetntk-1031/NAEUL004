(*2019-04-25*)
(*Action*)
(*input WorkOrder/Board available/boardforecast  to output ProdRcp*)
(*change Rcp for individual Magazine *)

TYPE
	tyWorkOrderParam : 	STRUCT 
		sRcpNm : STRING[254];
		diWidthInUM : DINT;
		diWidthInUM2 : DINT;
		diIntvlCntr : DINT;
		diMinSltValue : DINT;
		diMaxSltValue : DINT;
		diPitch : DINT;
		diBrdPerSlt : DINT;
		usiMcMod : USINT;
		bTopToBtm : BOOL;
		bGapBwtnBrd : BOOL;
		bLongBrd : BOOL;
		diMinReqFreeBffr : DINT;
		sDisplayInfo : STRING[30];
		dtLastModified : DATE_AND_TIME;
		diMtrPshrExtSpd : DINT;
		diMtrPshrExtTorq : DINT;
		diPshrOffset : DINT;
	END_STRUCT;
END_TYPE

(*Loader , Input  -> Board Property*)
(*Unloader, Board Property -> Input*)

TYPE
	tyBoardProperty : 	STRUCT 
		sWorkOrderId : STRING[80]; (*The work order for the production of PCB.*)
		sBatchId : STRING[80]; (*The batch id of a splitted work order.*)
		sBoardId : STRING[36]; (*Indicating the ID of the available board*)
		sBoardIdCreatedBy : STRING[80]; (*MachineId of the machine which created the BoardId (the first machine in a consecutive row of machines implementing this protocol). The MachineId is part of the Hermes Configuration.*)
		eFailedBoard : eHermesFailedBoard; (*A value of Unknown Board, Good Board & Failed Board*)
		sProductTypeId : STRING[254]; (*Identifies a collection of PCBs sharing common properties.*)
		eFlippedBoard : eHermesFlippedBoard; (*A value of Unknown Side, Top Side Up & Bottom Side Up.*)
		sTopBarcode : STRING[254]; (*The barcode of the top side of the PCB*)
		sBottomBarcode : STRING[254]; (*The barcode of the bottom side of the PCB*)
		rLength : REAL; (*The length of the PCB in millimeter.*)
		rWidth : REAL; (*The width of the PCB in millimeter.*)
		rThickness : REAL; (*The thickness of the PCB in millimeter.*)
		rConveyorSpeed : REAL; (*The conveyor speed preferred by the upstream machine in millimeter per second.*)
		rTopClearanceHeight : REAL; (*The clearance height for the top side of the PCB in millimeter.*)
		rBottomClearanceHeight : REAL; (*The clearance height for the bottom side of the PCB in millimeter.*)
		rWeight : REAL; (*The weight of the PCB in grams.*)
	END_STRUCT;
	tyMagProperties : 	STRUCT 
		sRcpNm : STRING[254]; (*//Only used for We Fab*)
		diWidth : DINT;
		diPitch : DINT;
		diMinSlt : DINT;
		diMaxSlt : DINT;
	END_STRUCT;
END_TYPE

(**)

TYPE
	eAutoRcpAction : 
		(
		AutoRcpActIdle,
		AutoRcpActCreateDir,
		AutoRcpActReadRetain2, (*for Traverser*)
		AutoRcpActWriteRetain2, (*for Traverser*)
		AutoRcpActReadRetain,
		AutoRcpActWriteRetain
		);
END_TYPE
