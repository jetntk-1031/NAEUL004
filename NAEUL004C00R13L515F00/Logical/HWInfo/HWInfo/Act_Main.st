(** 2020-10-05 **)
ACTION Act_Main:
	
	//Main
	CASE eStat OF
		
		HWInfoActIdle:
			IF eStatus <> Idle THEN	//Reset Data
				//Private
				fbGetIPAddr(enable := FALSE);
				fbGetMacAddr(enable := FALSE);
				fbSetIPAddr(enable := FALSE);
				fbSetSubnetMask(enable := FALSE);
				fbGetETHConfigMode(enable := FALSE);
				fbSetETHConfigMode(enable := FALSE);
		
				sStatTxt	:= a_sStatText[eStat];
		
			END_IF
			
			eStatus	:= Idle;
		
		HWInfoActGetIPAddr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetIPAddr(enable := TRUE);
					IF fbGetIPAddr.status = 0 THEN
						eStatus	:= Done;
					ELSIF fbGetIPAddr.status < 65534 THEN
						udiStatus	:= 10000;	//Get IP Address Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					sIPAddr	:= '127.0.0.1';
					
				END_IF
				
			END_IF
		
		HWInfoActGetSubnetMask:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetSubnetMask(enable := TRUE);
					IF fbGetSubnetMask.status = 0 THEN
						eStatus	:= Done;
					ELSIF fbGetSubnetMask.status < 65534 THEN
						udiStatus	:= 10001;	//Get Subnet Mask Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus		:= Done;
					sSubnetMask	:= '255.255.0.0';
					
				END_IF
				
			END_IF
		
		HWInfoActGetMacAddr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetMacAddr(enable := TRUE);
					IF fbGetMacAddr.status = 0 THEN
						eStatus	:= Done;
					ELSIF fbGetMacAddr.status < 65534 THEN
						udiStatus	:= 10002;	//Get Mac Address Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetIPAddr:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetIPAddr(enable := TRUE);
					IF fbSetIPAddr.status = 0 THEN
						sIPAddr	:= p_sSetIPAddr;
						eStatus	:= Done;
					ELSIF fbSetIPAddr.status < 65534 THEN
						udiStatus	:= 10003;	//Set IP Address Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetSubnetMask:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
		
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetSubnetMask(enable := TRUE);
					IF fbSetSubnetMask.status = 0 THEN
						sSubnetMask	:= p_sSetSubnetMask;
						eStatus		:= Done;
					ELSIF fbSetSubnetMask.status < 65534 THEN
						udiStatus	:= 10004;	//Set Subnet Mask Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					
				END_IF
				
			END_IF
			
		HWInfoActGetEthConfigMode:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
				IF DiagCpuIsSimulated() = FALSE THEN
					fbGetETHConfigMode(enable := TRUE);
					IF fbGetETHConfigMode.status = 0 THEN
						udiConfigMode := fbGetETHConfigMode.ConfigMode;
						eStatus	:= Done;
					ELSIF fbGetETHConfigMode.status < 65534 THEN
						udiStatus	:= 10005;	//Get Network Configuration  Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					
				END_IF
				
			END_IF
		
		HWInfoActSetEthConfigMode:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
				
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetETHConfigMode.ConfigMode := USINT_TO_UDINT(p_usiNetworkMod);
					fbSetETHConfigMode(enable := TRUE);
					
					IF fbSetETHConfigMode.status = 0 THEN
						eStatus	:= Done;
					ELSIF fbSetETHConfigMode.status < 65534 THEN
						udiStatus	:= 10006;	//Set Network Configuration  Error
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
					
				END_IF
				
			END_IF
			
		HWInfoActSetDefaultGateway:
			IF eStatus = Idle OR eStatus = Busy THEN
				
				eStatus	:= Busy;
		
				sStatTxt	:= a_sStatText[eStat];
				
				IF DiagCpuIsSimulated() = FALSE THEN
					fbSetDefaultGateway.pGateway := ADR(p_sSetDefaultGW);
					fbSetDefaultGateway(enable := TRUE);
					
					IF fbSetDefaultGateway.status = 0 THEN
						eStatus	:= Done;
					ELSIF fbSetDefaultGateway.status < 65534 THEN
						udiStatus	:= 10007;	//'Set Default Gateway IP Error' 
						eStatus		:= Error;
					END_IF
					
				ELSE
					eStatus	:= Done;
				END_IF
				
			END_IF
		
	END_CASE
	
	//Generate file
//	IF a_usiMacAddr[3] <> 0 AND usiInitialFile <2 THEN
//		CASE usi OF 
//			0:
//				FOR usi:= 0 TO 5 DO
//					//a_sMacAddr[usi] := USINT_TO_STRING(a_usiMacAddr[usi]);
//					sprintf1(ADR(a_sMacAddr[usi]), ADR('%+02x'), a_usiMacAddr[usi]);
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
