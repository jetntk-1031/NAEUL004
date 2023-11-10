(*Form XML Table Data*)

FUNCTION fOpConFormPartReceive : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..71] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyLocationParam : tyLocationParam; (*location, identifier*)
		tyParam : tyOpConPartReceive; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION

FUNCTION fOpConFormPartProcessed : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..83] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyLocationParam : tyLocationParam; (*location, identifier*)
		tyParam : tyOpConPartProcessed; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION

FUNCTION fOpConFormPLCError : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..63] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyLocationParam : tyLocationParam; (*location, identifier*)
		tyParam : tyOpConPLCError; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION

FUNCTION fOpConFormPartMissing : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..51] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyLocationParam : tyLocationParam; (*location, identifier*)
		tyParam : tyOpConPartMissing; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION

FUNCTION fOpConFormPLCJam : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..49] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyLocationParam : tyLocationParam; (*location, identifier*)
		tyParam : tyOpConPLCJam; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION

FUNCTION fOpConFormPLCGrab : INT
	VAR_INPUT
		pa_tyXMLTable : REFERENCE TO ARRAY[0..51] OF tyXMLTableDat; (*Output - XML Table Data*)
		tyDTStructure : DTStructure; (*Date And Time Structure*)
		tyEventParam : tyEventType; (*Event *)
		tyParam : tyOpConPLCGrab; (*Specific Param*)
	END_VAR
	VAR
		sTimestamp : STRING[23]; (*Time Stamp*)
		iTotalIdxWrite : INT; (*Total Index Written*)
	END_VAR
END_FUNCTION
(**)

FUNCTION fOpConAddOneMsgSend : BOOL (*Add One Message Send Buffer*)
	VAR_INPUT
		pa_eMsgSend : REFERENCE TO ARRAY[0..50] OF eOpConMsgType; (*Message Send Buffer*)
		p_udiIdx : REFERENCE TO UDINT; (*Index*)
		eMsgType : eOpConMsgType; (*New Message Type*)
	END_VAR
END_FUNCTION

FUNCTION fOpConRmvOneMsgSend : BOOL (*Remove One Message Send Buffer*)
	VAR_INPUT
		pa_eMsgSend : REFERENCE TO ARRAY[0..50] OF eOpConMsgType; (*Message Send Buffer*)
		p_udiIdx : REFERENCE TO UDINT; (*Index*)
	END_VAR
END_FUNCTION
(**)
(*Function block*)

FUNCTION_BLOCK fbOpConParseXMLTable (*OpCon Parse XML Table Data*)
	VAR_INPUT
		p_XMLTable : UDINT; (*Pointer To XML Table*)
		iTotalIdxWrite : INT; (*Total Index Written In Table*)
	END_VAR
	VAR_OUTPUT
		tyMsgType : tyOpConMsgType;
		tyEventReceive : tyEventType;
		iEventReceiveFirstIdx : INT;
		iEventReceiveLastIdx : INT;
		tyPartReceive : tyOpConPartReceive;
		iPartReceiveFirstIdx : INT;
		iPartReceiveLastIdx : INT;
		tyPlcGrabReceive : tyOpConPlcGrabReceive;
		iPlcGrabFirstIdx1 : INT;
		iPlcGrabLastIdx1 : INT;
	END_VAR
	VAR
		p_tyXMLTable : REFERENCE TO tyXMLTableDat; (*XML Table Data*)
		p_tyXMLTable1 : REFERENCE TO tyXMLTableDat; (*XML Table Data*)
		udi : UDINT;
		iOpConIdx : INT;
		eMsgType : eOpConMsgType;
		sLowerCase : {REDUND_UNREPLICABLE} STRING[254];
		sEventLowerCase : {REDUND_UNREPLICABLE} STRING[254];
	END_VAR
END_FUNCTION_BLOCK

FUNCTION fOpConParseEventReceive : BOOL (*Hermes Parse XML Table Data For Check Alive*)
	VAR_INPUT
		p_tyEventTypeReceive : REFERENCE TO tyEventType; (*Check Alive*)
		tyXMLTableCurr : tyXMLTableDat; (*Pointer To XML Table Current Index*)
		tyXMLTableNxt : tyXMLTableDat; (*Pointer To XML Table Next Index*)
		sCurrValueLowerCase : STRING[254]; (*Current Table Value In Upper Case*)
	END_VAR
END_FUNCTION

FUNCTION fOpConParsePartReceive : BOOL (*Hermes Parse XML Table Data For Check Alive*)
	VAR_INPUT
		p_tyPartReceive : REFERENCE TO tyOpConPartReceive; (*Check Alive*)
		tyXMLTableCurr : tyXMLTableDat; (*Pointer To XML Table Current Index*)
		tyXMLTableNxt : tyXMLTableDat; (*Pointer To XML Table Next Index*)
		sCurrValueLowerCase : STRING[254]; (*Current Table Value In Upper Case*)
	END_VAR
END_FUNCTION

FUNCTION fOpConParsePlcGrabReceive : BOOL (*Hermes Parse XML Table Data For Check Alive*)
	VAR_INPUT
		p_tyPlcGrabReceive : REFERENCE TO tyOpConPlcGrabReceive; (*Check Alive*)
		tyXMLTableCurr : tyXMLTableDat; (*Pointer To XML Table Current Index*)
		tyXMLTableNxt : tyXMLTableDat; (*Pointer To XML Table Next Index*)
		sCurrValueLowerCase : STRING[254]; (*Current Table Value In Upper Case*)
	END_VAR
END_FUNCTION
