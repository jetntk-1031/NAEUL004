
TYPE
	tyMachine : 	STRUCT 
		In : tyMachineIn1;
		Out : tyMachineOut1;
	END_STRUCT;
	tyMachineIn1 : 	STRUCT 
		udiRstErr : UDINT := 0;
		sProgNm : STRING[15];
		diProdRcpCurrRcpWidth : REFERENCE TO DINT;
		diMagRcpCurrRcpMaxWidth : REFERENCE TO DINT;
	END_STRUCT;
	tyMachineOut1 : 	STRUCT 
		tyAlmData : tyAlmDat;
		tyAlmData1 : tyAlmDat;
	END_STRUCT;
END_TYPE
