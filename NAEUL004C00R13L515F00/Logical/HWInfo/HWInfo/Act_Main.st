(** 2020-10-05 **)
ACTION Act_Main:
	//Reset Done
	IF tylocalHWInfo.Out.eStatus = Done AND tylocalHWInfo.In.eAct = HWInfoActIdle THEN
		tylocalHWInfo.Out.eStat	:= HWInfoActIdle;
	END_IF
	
	//Set tylocalHWInfo.In.eAct
	IF tylocalHWInfo.Out.eStatus = Idle THEN
		tylocalHWInfo.Out.eStat	:= tylocalHWInfo.In.eAct;
	END_IF
	
	//Main
	CASE tylocalHWInfo.Out.eStat OF
		
		HWInfoActIdle:
			IF tylocalHWInfo.Out.eStatus <> Idle THEN	//Reset Data
				//Private
				fbGetIPAddr(enable := FALSE);
				fbGetMacAddr(enable := FALSE);
				fbSetIPAddr(enable := FALSE);
				fbSetSubnetMask(enable := FALSE);
				fbGetETHConfigMode(enable := FALSE);
				fbSetETHConfigMode(enable := FALSE);
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
			END_IF
			
			tylocalHWInfo.Out.eStatus	:= Idle;
		
		HWInfoActGetIPAddr:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetIPAddr(enable := TRUE);
					IF fbGetIPAddr.status = 0 THEN
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbGetIPAddr.status < 65534 THEN
						udiStatus	:= 10000;	//Get IP Address Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					tylocalHWInfo.Out.sIPAddr	:= '127.0.0.1';
					
				END_IF
				
			END_IF
		
		HWInfoActGetSubnetMask:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetSubnetMask(enable := TRUE);
					IF fbGetSubnetMask.status = 0 THEN
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbGetSubnetMask.status < 65534 THEN
						udiStatus	:= 10001;	//Get Subnet Mask Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus		:= Done;
					tylocalHWInfo.Out.sSubnetMask	:= '255.255.0.0';
					
				END_IF
				
			END_IF
		
		HWInfoActGetMacAddr:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetMacAddr(enable := TRUE);
					IF fbGetMacAddr.status = 0 THEN
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbGetMacAddr.status < 65534 THEN
						udiStatus	:= 10002;	//Get Mac Address Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetIPAddr:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetIPAddr(enable := TRUE);
					IF fbSetIPAddr.status = 0 THEN
						tylocalHWInfo.Out.sIPAddr	:= p_sSetIPAddr;
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbSetIPAddr.status < 65534 THEN
						udiStatus	:= 10003;	//Set IP Address Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetSubnetMask:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetSubnetMask(enable := TRUE);
					IF fbSetSubnetMask.status = 0 THEN
						tylocalHWInfo.Out.sSubnetMask	:= p_sSetSubnetMask;
						tylocalHWInfo.Out.eStatus		:= Done;
					ELSIF fbSetSubnetMask.status < 65534 THEN
						udiStatus	:= 10004;	//Set Subnet Mask Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
			
		HWInfoActGetEthConfigMode:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetETHConfigMode(enable := TRUE);
					IF fbGetETHConfigMode.status = 0 THEN
						tylocalHWInfo.Out.udiConfigMode := fbGetETHConfigMode.ConfigMode;
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbGetETHConfigMode.status < 65534 THEN
						udiStatus	:= 10005;	//Get Network Configuration  Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetEthConfigMode:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
				
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetETHConfigMode.ConfigMode := USINT_TO_UDINT(p_usiNetworkMod);
					fbSetETHConfigMode(enable := TRUE);
					
					IF fbSetETHConfigMode.status = 0 THEN
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbSetETHConfigMode.status < 65534 THEN
						udiStatus	:= 10006;	//Set Network Configuration  Error
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
					
				END_IF
				
			END_IF
			
		HWInfoActSetDefaultGateway:
			IF tylocalHWInfo.Out.eStatus = Idle OR tylocalHWInfo.Out.eStatus = Busy THEN
				
				tylocalHWInfo.Out.eStatus	:= Busy;
		
				tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
				
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetDefaultGateway.pGateway := ADR(p_sSetDefaultGW);
					fbSetDefaultGateway(enable := TRUE);
					
					IF fbSetDefaultGateway.status = 0 THEN
						tylocalHWInfo.Out.eStatus	:= Done;
					ELSIF fbSetDefaultGateway.status < 65534 THEN
						udiStatus	:= 10007;	//'Set Default Gateway IP Error' 
						tylocalHWInfo.Out.eStatus		:= Error;
					END_IF
					
				ELSE
					tylocalHWInfo.Out.eStatus	:= Done;
				END_IF
				
			END_IF
		
	END_CASE
	
	//Generate file
//	IF tylocalHWInfo.Out.a_usiMacAddr[3] <> 0 AND usiInitialFile <2 THEN
//		CASE usi OF 
//			0:
//				FOR usi:= 0 TO 5 DO
//					//a_sMacAddr[usi] := USINT_TO_STRING(tylocalHWInfo.Out.a_usiMacAddr[usi]);
//					sprintf1(ADR(a_sMacAddr[usi]), ADR('%+02x'), tylocalHWInfo.Out.a_usiMacAddr[usi]);
//				END_FOR
//				sMacAddr := CONCAT('PLC= ',CONCAT(a_sMacAddr[0],'-'));
//				FOR usi := 1 TO 5 DO
//					sMacAddr := CONCAT(CONCAT(sMacAddr,a_sMacAddr[usi]),'-');
//				END_FOR
//				sMacAddr := DELETE(sMacAddr,1,LEN(sMacAddr));
//				usi := 1;
//			1:
//				fbFileFullWrite_0(bEn := TRUE, sDevice := 'Log', sFile := 'PLC_MacAddress.txt', udiOffset := 0, p_Src := ADR(sMacAddr), udiLen := SIZEOF(sMacAddr), udiOption := 0);
//				IF fbFileFullWrite_0.udiStatus = 0 THEN
//					fbFileFullWrite_0(bEn := FALSE);
//					IF usiInitialFile = 1 THEN
//						usi := 0;
//					END_IF
//					usiInitialFile := usiInitialFile +1;
//				END_IF
//				
//		END_CASE
//	END_IF
END_ACTION
