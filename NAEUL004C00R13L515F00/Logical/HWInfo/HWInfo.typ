(*2020-09-22*)
(**)
(*Action*)

TYPE
	eHWInfoAction : 
		(
		HWInfoActIdle,
		HWInfoActGetIPAddr,
		HWInfoActGetSubnetMask,
		HWInfoActGetMacAddr,
		HWInfoActSetIPAddr,
		HWInfoActSetSubnetMask,
		HWInfoActGetEthConfigMode,
		HWInfoActSetEthConfigMode,
		HWInfoActSetDefaultGateway
		);
	eNetworkConfigMod : 
		(
		SetIPManually := 0,
		IPFromDHCPServer := 1
		);
	tysMacAddress : 	STRUCT 
		s_PLCMacAddr0 : STRING[2];
		s_PLCMacAddr1 : STRING[2];
		s_PLCMacAddr2 : STRING[2];
		s_PLCMacAddr3 : STRING[2];
		s_PLCMacAddr4 : STRING[2];
		s_PLCMacAddr5 : STRING[2];
	END_STRUCT;
END_TYPE
