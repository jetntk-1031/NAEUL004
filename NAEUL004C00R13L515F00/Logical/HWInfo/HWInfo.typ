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

(*Action*)

TYPE
	tyHWInfo : 	STRUCT 
		In : tyHWInfoIn1;
		Out : tyHWInfoOut1;
	END_STRUCT;
	tyHWInfoIn1 : 	STRUCT 
		eAct : eHWInfoAction; (*Hardware Info's Action*)
		udiRstErr : UDINT := 0; (*Reset Error*)
		sSetIPAddr : STRING[15]; (*Set IP Address*)
		sSetSubnetMask : STRING[15]; (*Set Subnet Mask*)
		sDevice : STRING[3] := 'IF2'; (*Device's Name*)
		sProgNm : STRING[15] := 'HWInfo'; (*Program's Name*)
		bNtSettingsLoadDone : BOOL := TRUE; (*Nutek Parameter Settings Loading is Done*)
		usiNetworkMode : USINT; (*Network Mode*)
		sHMIMacAdd : STRING[27];
		sSetDefaultGW : STRING[15];
	END_STRUCT;
	tyHWInfoOut1 : 	STRUCT 
		eStat : eHWInfoAction := HWInfoActIdle; (*Hardware Info's State*)
		eStatus : eFBStatus := Idle; (*Hardware Info's Status*)
		sStatTxt : STRING[200] := ''; (*Hardware Info's State in Text*)
		tyAlmData : tyAlmDat; (*Alarm Data*)
		sIPAddr : STRING[15]; (*IP Address*)
		sSubnetMask : STRING[15]; (*Subnet Mask*)
		a_usiMacAddr : ARRAY[0..5]OF USINT; (*Mac Address*)
		udiConfigMode : UDINT; (*Configuration Mode*)
	END_STRUCT;
END_TYPE
