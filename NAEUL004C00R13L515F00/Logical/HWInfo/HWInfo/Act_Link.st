(** 2019-03-29 **)
ACTION Act_Link:
	
	// PLC MAC Address
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr0),(a_usiMacAddr[0]));
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr1),(a_usiMacAddr[1]));
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr2),(a_usiMacAddr[2]));
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr3),(a_usiMacAddr[3]));
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr4),(a_usiMacAddr[4]));
	fConvertUSINTToHex (ADR(sMacAddress.s_PLCMacAddr5),(a_usiMacAddr[5]));	
	
	//Combine PLC MAC Address
	sPLCMacAddress	:= CONCAT(CONCAT(CONCAT(CONCAT(CONCAT(CONCAT(sMacAddress.s_PLCMacAddr0,' - '),CONCAT(sMacAddress.s_PLCMacAddr1,' - ')),CONCAT(sMacAddress.s_PLCMacAddr2,' - ')),CONCAT(sMacAddress.s_PLCMacAddr3,' - ')),CONCAT(sMacAddress.s_PLCMacAddr4,' - ')),sMacAddress.s_PLCMacAddr5);
	
	//HMI Mac Address
	sHMIMacAddress	:= p_sHMIMacAdd;
END_ACTION
