(** 2019-01-08 **)
ACTION Act_Background:
	
	//Resetting Physical Output
	memset(ADR(a_bPhysicalDO), 0, SIZEOF(a_bPhysicalDO));
	
	//Digital Output Mapping Physical Output With Config
	IF p_tyDOSettings.diSafetyRlyRst > 0 AND p_tyDOSettings.diSafetyRlyRst <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diSafetyRlyRst]	:= p_bSafetyRlyRst;
	END_IF
	
	IF p_tyDOSettings.diTLRed > 0 AND p_tyDOSettings.diTLRed <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diTLRed]	:= p_bTLRed;
	END_IF
	
	IF p_tyDOSettings.diTLAmber > 0 AND p_tyDOSettings.diTLAmber <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diTLAmber]	:= p_bTLAmber;
	END_IF
	
	IF p_tyDOSettings.diTLGreen > 0 AND p_tyDOSettings.diTLGreen <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diTLGreen]	:= p_bTLGreen;
	END_IF
	
	IF p_tyDOSettings.diBuzzer > 0 AND p_tyDOSettings.diBuzzer <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diBuzzer]	:= p_bBuzzer;
	END_IF
	
	IF p_tyDOSettings.diUSBA > 0 AND p_tyDOSettings.diUSBA <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diUSBA]	:= p_bUSBA;
	END_IF
	
	IF p_tyDOSettings.diUSBB > 0 AND p_tyDOSettings.diUSBB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diUSBB]	:= p_bUSBB;
	END_IF
	
	IF p_tyDOSettings.diOvenInfoSigA > 0 AND p_tyDOSettings.diOvenInfoSigA <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diOvenInfoSigA]	:= p_bOvenInfoSigA;
	END_IF
	
	IF p_tyDOSettings.diOvenInfoSigB > 0 AND p_tyDOSettings.diOvenInfoSigB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diOvenInfoSigB]	:= p_bOvenInfoSigB;
	END_IF
	
	IF p_tyDOSettings.diPusherExtCtrl > 0 AND p_tyDOSettings.diPusherExtCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diPusherExtCtrl]	:= p_bPusherExtCtrl;
	END_IF
	
	IF p_tyDOSettings.diStopperUnblkCtrlA > 0 AND p_tyDOSettings.diStopperUnblkCtrlA <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diStopperUnblkCtrlA]	:= p_bStopperUnblkCtrlA;
	END_IF
	
	IF p_tyDOSettings.diStopperUnblkCtrlB > 0 AND p_tyDOSettings.diStopperUnblkCtrlB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diStopperUnblkCtrlB]	:= p_bStopperUnblkCtrlB;
	END_IF
	
	IF p_tyDOSettings.diInletStopperRetCtrl > 0 AND p_tyDOSettings.diInletStopperRetCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diInletStopperRetCtrl]	:= p_bInletStopperRetCtrl;
	END_IF
	
	IF p_tyDOSettings.diInletStopperExtCtrl > 0 AND p_tyDOSettings.diInletStopperExtCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diInletStopperExtCtrl]	:= p_bInletStopperExtCtrl;
	END_IF
	
	
	IF p_tyDOSettings.diMag1FixedClampCtrl > 0 AND p_tyDOSettings.diMag1FixedClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1FixedClampCtrl]	:= p_bMag1FixedClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag1RemoteClampCtrl > 0 AND p_tyDOSettings.diMag1RemoteClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1RemoteClampCtrl]	:= p_bMag1RemoteClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2FixedClampCtrl > 0 AND p_tyDOSettings.diMag2FixedClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2FixedClampCtrl]	:= p_bMag2FixedClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2RemoteClampCtrl > 0 AND p_tyDOSettings.diMag2RemoteClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2RemoteClampCtrl]	:= p_bMag2RemoteClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3FixedClampCtrl > 0 AND p_tyDOSettings.diMag3FixedClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3FixedClampCtrl]	:= p_bMag3FixedClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3RemoteClampCtrl > 0 AND p_tyDOSettings.diMag3RemoteClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3RemoteClampCtrl]	:= p_bMag3RemoteClampCtrl;
	END_IF
	
	
	IF bShutterTuning = FALSE THEN
		
			IF p_tyDOSettings.diInShutterOpenCtrl > 0 AND p_tyDOSettings.diInShutterOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diInShutterOpenCtrl]	:= p_bInShutterOpenCtrl;
			END_IF
			
			IF p_tyDOSettings.diInShutterCloseCtrl > 0 AND p_tyDOSettings.diInShutterCloseCtrl <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diInShutterCloseCtrl]	:= p_bInShutterCloseCtrl;
			END_IF
			
			IF p_tyDOSettings.diOutShutterOpenCtrl > 0 AND p_tyDOSettings.diOutShutterOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl]	:= p_bOutShutterOpenCtrl;
			END_IF
			
			IF p_tyDOSettings.diOutShutterCloseCtrl > 0 AND p_tyDOSettings.diOutShutterCloseCtrl <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl]	:= p_bOutShutterCloseCtrl;
			END_IF
		
			IF p_tyDOSettings.diOutShutterOpenCtrl2 > 0 AND p_tyDOSettings.diOutShutterOpenCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl2]	:= p_bOutShutterOpenCtrl2;
			END_IF
				
			IF p_tyDOSettings.diOutShutterCloseCtrl2 > 0 AND p_tyDOSettings.diOutShutterCloseCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl2]	:= p_bOutShutterCloseCtrl2;
			END_IF
			
			IF p_tyDOSettings.diOutShutterOpenCtrl3 > 0 AND p_tyDOSettings.diOutShutterOpenCtrl3 <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl3]	:= p_bOutShutterOpenCtrl3;
			END_IF
					
			IF p_tyDOSettings.diOutShutterCloseCtrl3 > 0 AND p_tyDOSettings.diOutShutterCloseCtrl3 <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl3]	:= p_bOutShutterCloseCtrl3;
			END_IF
		
	
	ELSE
		
		CASE usiShutterTuningStep OF
			0:
				a_bPhysicalDO[p_tyDOSettings.diInShutterOpenCtrl]	:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl]	:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl2]	:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl3]	:= TRUE;
				
				fbShutterTuneOpnTim(IN:= TRUE);
				IF fbShutterTuneOpnTim.Q THEN
					usiShutterTuningStep := 10;
					fbShutterTuneOpnTim(IN:= FALSE);
					a_bPhysicalDO[p_tyDOSettings.diInShutterOpenCtrl]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl2]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterOpenCtrl3]	:= FALSE;
				END_IF
			10:
				
				a_bPhysicalDO[p_tyDOSettings.diInShutterCloseCtrl]	:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl]	:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl2]:= TRUE;
				a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl3]:= TRUE;
				
				fbShutterTuneClsTim(IN:= TRUE);
				IF fbShutterTuneClsTim.Q THEN
					usiShutterTuningStep := 0;
					fbShutterTuneClsTim(IN:= FALSE);
					a_bPhysicalDO[p_tyDOSettings.diInShutterCloseCtrl]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl2]	:= FALSE;
					a_bPhysicalDO[p_tyDOSettings.diOutShutterCloseCtrl3]	:= FALSE;
				END_IF
				
		END_CASE		
	END_IF
	
	IF p_tyDOSettings.diMag1ConvMtrIn > 0 AND p_tyDOSettings.diMag1ConvMtrIn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1ConvMtrIn]	:= p_bMag1ConvMtrIn;
	END_IF
	
	IF p_tyDOSettings.diMag1ConvMtrOut > 0 AND p_tyDOSettings.diMag1ConvMtrOut <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1ConvMtrOut]	:= p_bMag1ConvMtrOut;
	END_IF
	
	IF p_tyDOSettings.diMag2ConvMtrIn > 0 AND p_tyDOSettings.diMag2ConvMtrIn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2ConvMtrIn]	:= p_bMag2ConvMtrIn;
	END_IF
	
	IF p_tyDOSettings.diMag2ConvMtrOut > 0 AND p_tyDOSettings.diMag2ConvMtrOut <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2ConvMtrOut]	:= p_bMag2ConvMtrOut;
	END_IF
	
	IF p_tyDOSettings.diMag3ConvMtrIn > 0 AND p_tyDOSettings.diMag3ConvMtrIn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3ConvMtrIn]	:= p_bMag3ConvMtrIn;
	END_IF
	
	IF p_tyDOSettings.diMag3ConvMtrOut > 0 AND p_tyDOSettings.diMag3ConvMtrOut <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3ConvMtrOut]	:= p_bMag3ConvMtrOut;
	END_IF
	
	IF p_tyDOSettings.diMag1SelClampCtrl > 0 AND p_tyDOSettings.diMag1SelClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1SelClampCtrl]	:= p_bMag1SelClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2SelClampCtrl > 0 AND p_tyDOSettings.diMag2SelClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2SelClampCtrl]	:= p_bMag2SelClampCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3SelClampCtrl > 0 AND p_tyDOSettings.diMag3SelClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3SelClampCtrl]	:= p_bMag3SelClampCtrl;
	END_IF
	
	
	
	IF p_tyDOSettings.diMag1SelUnClampCtrl > 0 AND p_tyDOSettings.diMag1SelUnClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1SelUnClampCtrl]	:= p_bMag1SelUnclampCtrl;
	END_IF
	
//	IF p_tyDOSettings.diMag2SelUnClampCtrl > 0 AND p_tyDOSettings.diMag2SelUnClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
//		a_bPhysicalDO[p_tyDOSettings.diMag2SelUnClampCtrl]	:= p_bMag2SelUnclampCtrl;
//	END_IF
//	
//	IF p_tyDOSettings.diMag3SelUnClampCtrl > 0 AND p_tyDOSettings.diMag3SelUnClampCtrl <= UDINT_TO_DINT(p_udiMax) THEN
//		a_bPhysicalDO[p_tyDOSettings.diMag3SelUnClampCtrl]	:= p_bMag3SelUnclampCtrl;
//	END_IF
	
	
	IF p_tyDOSettings.diPushConvMtrOn > 0 AND p_tyDOSettings.diPushConvMtrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diPushConvMtrOn]	:= p_bPushConvMtrOn;
	END_IF
	
	IF p_tyDOSettings.diMag1SafetyBarRetCtrl > 0 AND p_tyDOSettings.diMag1SafetyBarRetCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1SafetyBarRetCtrl]	:= p_bMag1SafetyBarRetCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2SafetyBarRetCtrl > 0 AND p_tyDOSettings.diMag2SafetyBarRetCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2SafetyBarRetCtrl]	:= p_bMag2SafetyBarRetCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3SafetyBarRetCtrl > 0 AND p_tyDOSettings.diMag3SafetyBarRetCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3SafetyBarRetCtrl]	:= p_bMag3SafetyBarRetCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag1WallEngageCtrl > 0 AND p_tyDOSettings.diMag1WallEngageCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1WallEngageCtrl]	:= p_bMag1WallEngageCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2WallEngageCtrl > 0 AND p_tyDOSettings.diMag2WallEngageCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2WallEngageCtrl]	:= p_bMag2WallEngageCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3WallEngageCtrl > 0 AND p_tyDOSettings.diMag3WallEngageCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3WallEngageCtrl]	:= p_bMag3WallEngageCtrl;
	END_IF
	
	IF bAgvComIODisabled = FALSE THEN
			//SOT Configuration
			IF p_tyDOSettings.diSOT1MagError > 0 AND p_tyDOSettings.diSOT1MagError <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT1MagError]				:= p_bSOTMagError1;
			END_IF
			
			IF p_tyDOSettings.diSOT1MagSizeLarge > 0 AND p_tyDOSettings.diSOT1MagSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT1MagSizeLarge]				:= p_bSOTMagSizeLarge1;
			END_IF
			
			IF p_tyDOSettings.diSOT1MagReady > 0 AND p_tyDOSettings.diSOT1MagReady <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT1MagReady]				:= p_bSOTMagReady1;
			END_IF
			
			IF p_tyDOSettings.diSOT1MagAvailable > 0 AND p_tyDOSettings.diSOT1MagAvailable <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT1MagAvailable]				:= p_bSOTMagAvailable1;
			END_IF
			
			IF p_tyDOSettings.diSOT2MagError > 0 AND p_tyDOSettings.diSOT2MagError <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT2MagError]				:= p_bSOTMagError2;
			END_IF
			
			IF p_tyDOSettings.diSOT2MagSizeLarge > 0 AND p_tyDOSettings.diSOT2MagSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT2MagSizeLarge]				:= p_bSOTMagSizeLarge2;
			END_IF
			
			IF p_tyDOSettings.diSOT2MagReady > 0 AND p_tyDOSettings.diSOT2MagReady <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT2MagReady]				:= p_bSOTMagReady2;
			END_IF
			
			IF p_tyDOSettings.diSOT2MagAvailable > 0 AND p_tyDOSettings.diSOT2MagAvailable <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT2MagAvailable]				:= p_bSOTMagAvailable2;
			END_IF
			
			IF p_tyDOSettings.diSOT3MagError > 0 AND p_tyDOSettings.diSOT3MagError <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT3MagError]				:= p_bSOTMagError3;
			END_IF
			
			IF p_tyDOSettings.diSOT3MagSizeLarge > 0 AND p_tyDOSettings.diSOT3MagSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT3MagSizeLarge]				:= p_bSOTMagSizeLarge3;
			END_IF
			
			IF p_tyDOSettings.diSOT3MagReady > 0 AND p_tyDOSettings.diSOT3MagReady <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT3MagReady]				:= p_bSOTMagReady3;
			END_IF
			
			IF p_tyDOSettings.diSOT3MagAvailable > 0 AND p_tyDOSettings.diSOT3MagAvailable <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT3MagAvailable]				:= p_bSOTMagAvailable3;
			END_IF
			
			IF p_tyDOSettings.diSOT4MagError > 0 AND p_tyDOSettings.diSOT4MagError <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT4MagError]				:= p_bSOTMagError4;
			END_IF
			
			IF p_tyDOSettings.diSOT4MagSizeLarge > 0 AND p_tyDOSettings.diSOT4MagSizeLarge <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT4MagSizeLarge]				:= p_bSOTMagSizeLarge4;
			END_IF
			
			IF p_tyDOSettings.diSOT4MagReady > 0 AND p_tyDOSettings.diSOT4MagReady <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT4MagReady]				:= p_bSOTMagReady4;
			END_IF
			
			IF p_tyDOSettings.diSOT4MagAvailable > 0 AND p_tyDOSettings.diSOT4MagAvailable <= UDINT_TO_DINT(p_udiMax) THEN
				a_bPhysicalDO[p_tyDOSettings.diSOT4MagAvailable]				:= p_bSOTMagAvailable4;
			END_IF
	ELSE
			a_bPhysicalDO[p_tyDOSettings.diSOT1MagError] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT2MagError] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT3MagError] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT4MagError] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT1MagSizeLarge] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT2MagSizeLarge] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT3MagSizeLarge] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT4MagSizeLarge] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT1MagReady] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT2MagReady] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT3MagReady] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT4MagReady] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT1MagAvailable] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT2MagAvailable] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT3MagAvailable] := FALSE;
			a_bPhysicalDO[p_tyDOSettings.diSOT4MagAvailable] := FALSE;
	END_IF	
	
	IF p_tyDOSettings.diMagAWOpenLimByp1 > 0 AND p_tyDOSettings.diMagAWOpenLimByp1 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWOpenLimByp1]				:= p_bMagAWOpenLimByp1;
	END_IF
	
	IF p_tyDOSettings.diMagAWOpenLimByp2 > 0 AND p_tyDOSettings.diMagAWOpenLimByp2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWOpenLimByp2]				:= p_bMagAWOpenLimByp2;
	END_IF
	
	IF p_tyDOSettings.diMagAWOpenLimByp3 > 0 AND p_tyDOSettings.diMagAWOpenLimByp3 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWOpenLimByp3]				:= p_bMagAWOpenLimByp3;
	END_IF
	
	IF p_tyDOSettings.diMagAWOpenLimByp4 > 0 AND p_tyDOSettings.diMagAWOpenLimByp4 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWOpenLimByp4]				:= p_bMagAWOpenLimByp4;
	END_IF
	
		
	IF p_tyDOSettings.diMagAWSmallLimSen1 > 0 AND p_tyDOSettings.diMagAWSmallLimSen1 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWSmallLimSen1]				:= p_bMagAWSmallLimSen1;
	END_IF
	
	IF p_tyDOSettings.diMagAWSmallLimSen2 > 0 AND p_tyDOSettings.diMagAWSmallLimSen2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWSmallLimSen2]				:= p_bMagAWSmallLimSen2;
	END_IF
	
	IF p_tyDOSettings.diMagAWSmallLimSen3 > 0 AND p_tyDOSettings.diMagAWSmallLimSen3 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWSmallLimSen3]				:= p_bMagAWSmallLimSen3;
	END_IF
	
	IF p_tyDOSettings.diMagAWSmallLimSen4 > 0 AND p_tyDOSettings.diMagAWSmallLimSen4 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMagAWSmallLimSen4]				:= p_bMagAWSmallLimSen4;
	END_IF
	
	
	IF p_eLinkAGVComProtocol = McSetAGVCommHardIO THEN
		//AIV signals Get/Bring Magazine
		IF p_tyDOSettings.diMag1ReqToBring > 0 AND p_tyDOSettings.diMag1ReqToBring <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag1ReqToBring]				:= p_bRequestToBring1;
		END_IF
		
		IF p_tyDOSettings.diMag1ReqToGet > 0 AND p_tyDOSettings.diMag1ReqToGet <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag1ReqToGet]				:= p_bRequestToGet1;
		END_IF
			
		IF p_tyDOSettings.diMag2ReqToBring > 0 AND p_tyDOSettings.diMag2ReqToBring <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag2ReqToBring]				:= p_bRequestToBring2;
		END_IF
			
		IF p_tyDOSettings.diMag2ReqToGet > 0 AND p_tyDOSettings.diMag2ReqToGet <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag2ReqToGet]				:= p_bRequestToGet2;
		END_IF
			
		IF p_tyDOSettings.diMag3ReqToBring > 0 AND p_tyDOSettings.diMag3ReqToBring <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag3ReqToBring]				:= p_bRequestToBring3;
		END_IF
			
		IF p_tyDOSettings.diMag3ReqToGet > 0 AND p_tyDOSettings.diMag3ReqToGet <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag3ReqToGet]				:= p_bRequestToGet3;
		END_IF
			
		IF p_tyDOSettings.diMag4ReqToBring > 0 AND p_tyDOSettings.diMag4ReqToBring <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag4ReqToBring]				:= p_bRequestToBring4;
		END_IF
			
		IF p_tyDOSettings.diMag4ReqToGet > 0 AND p_tyDOSettings.diMag4ReqToGet <= UDINT_TO_DINT(p_udiMax) THEN
			a_bPhysicalDO[p_tyDOSettings.diMag4ReqToGet]				:= p_bRequestToGet4;
		END_IF
	ELSE
		a_bPhysicalDO[p_tyDOSettings.diMag1ReqToBring] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag1ReqToGet] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag2ReqToBring] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag2ReqToGet] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag3ReqToBring] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag3ReqToGet] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag4ReqToBring] := FALSE;
		a_bPhysicalDO[p_tyDOSettings.diMag4ReqToGet] := FALSE;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrExt > 0 AND p_tyDOSettings.diMtrPshrExt <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrExt]	:= p_bMtrPshrExt;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrRet > 0 AND p_tyDOSettings.diMtrPshrRet <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrRet]	:= p_bMtrPshrRet;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrOn > 0 AND p_tyDOSettings.diMtrPshrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrOn]	:= p_bMtrPshrOn;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrBrakeRls > 0 AND p_tyDOSettings.diMtrPshrBrakeRls <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrBrakeRls]	:= p_bMtrPshrBrakeRls;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrSpdBinBit0 > 0 AND p_tyDOSettings.diMtrPshrSpdBinBit0 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrSpdBinBit0]	:= p_bMtrPshrSpdBinBit0;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrSpdBinBit1 > 0 AND p_tyDOSettings.diMtrPshrSpdBinBit1 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrSpdBinBit1]	:= p_bMtrPshrSpdBinBit1;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrSpdBinBit2 > 0 AND p_tyDOSettings.diMtrPshrSpdBinBit2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrSpdBinBit2]	:= p_bMtrPshrSpdBinBit2;
	END_IF
	
	IF p_tyDOSettings.diMtrPshrAlmRst > 0 AND p_tyDOSettings.diMtrPshrAlmRst <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPshrAlmRst]	:= p_bMtrPshrAlmRst;
	END_IF
	
	IF p_tyDOSettings.diInMagConvMtrOn > 0 AND p_tyDOSettings.diInMagConvMtrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diInMagConvMtrOn]	:= p_bInMagConvMtrOn;
	END_IF
		
	IF p_tyDOSettings.diOutMagConvMtrOn > 0 AND p_tyDOSettings.diOutMagConvMtrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diOutMagConvMtrOn]	:= p_bOutMagConvMtrOn;
	END_IF
	
	IF p_tyDOSettings.diInMagConv2MtrOn > 0 AND p_tyDOSettings.diInMagConv2MtrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diInMagConv2MtrOn]	:= p_bInMagConv2MtrOn;
	END_IF
	
	IF p_tyDOSettings.diOutMagConv2MtrOn > 0 AND p_tyDOSettings.diOutMagConv2MtrOn <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diOutMagConv2MtrOn]	:= p_bOutMagConv2MtrOn;
	END_IF

	IF p_tyDOSettings.diEntTopStprUnblkCtrl > 0 AND p_tyDOSettings.diEntTopStprUnblkCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diEntTopStprUnblkCtrl]	:= p_bEntTopStprUnblkCtrl;
	END_IF
	IF p_tyDOSettings.diMidTopStprUnblkCtrl > 0 AND p_tyDOSettings.diMidTopStprUnblkCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMidTopStprUnblkCtrl]	:= p_bMidTopStprUnblkCtrl;
	END_IF
	IF p_tyDOSettings.diExtTopStprUnblkCtrl > 0 AND p_tyDOSettings.diExtTopStprUnblkCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diExtTopStprUnblkCtrl]	:= p_bExtTopStprUnblkCtrl;
	END_IF
	IF p_tyDOSettings.diMidBtmStprUnblkCtrl > 0 AND p_tyDOSettings.diMidBtmStprUnblkCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMidBtmStprUnblkCtrl]	:= p_bMidBtmStprUnblkCtrl;
	END_IF
	IF p_tyDOSettings.diExtBtmStprUnblkCtrl > 0 AND p_tyDOSettings.diExtBtmStprUnblkCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diExtBtmStprUnblkCtrl]	:= p_bExtBtmStprUnblkCtrl;
	END_IF
	
	IF p_tyDOSettings.diEntTopStprUnblkCtrl2 > 0 AND p_tyDOSettings.diEntTopStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diEntTopStprUnblkCtrl2]	:= p_bEntTopStprUnblkCtrl2;
	END_IF
	IF p_tyDOSettings.diMidTopStprUnblkCtrl2 > 0 AND p_tyDOSettings.diMidTopStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMidTopStprUnblkCtrl2]	:= p_bMidTopStprUnblkCtrl2;
	END_IF
	IF p_tyDOSettings.diExtTopStprUnblkCtrl2 > 0 AND p_tyDOSettings.diExtTopStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diExtTopStprUnblkCtrl2]	:= p_bExtTopStprUnblkCtrl2;
	END_IF
	IF p_tyDOSettings.diMidBtmStprUnblkCtrl2 > 0 AND p_tyDOSettings.diMidBtmStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMidBtmStprUnblkCtrl2]	:= p_bMidBtmStprUnblkCtrl2;
	END_IF
	IF p_tyDOSettings.diExtBtmStprUnblkCtrl2 > 0 AND p_tyDOSettings.diExtBtmStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diExtBtmStprUnblkCtrl2]	:= p_bExtBtmStprUnblkCtrl2;
	END_IF

	IF p_tyDOSettings.diExtBtmStprUnblkCtrl2 > 0 AND p_tyDOSettings.diExtBtmStprUnblkCtrl2 <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diExtBtmStprUnblkCtrl2]	:= p_bExtBtmStprUnblkCtrl2;
	END_IF
	
	IF p_tyDOSettings.diMtrPwrRly > 0 AND p_tyDOSettings.diMtrPwrRly <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMtrPwrRly]						:= p_bMtrPwrRly;
	END_IF
	
	IF p_tyDOSettings.diMag1FixedClampOpenCtrl > 0 AND p_tyDOSettings.diMag1FixedClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1FixedClampOpenCtrl]	:= NOT p_bMag1FixedClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag1RemoteClampOpenCtrl > 0 AND p_tyDOSettings.diMag1RemoteClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1RemoteClampOpenCtrl]	:= NOT p_bMag1RemoteClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2FixedClampOpenCtrl > 0 AND p_tyDOSettings.diMag2FixedClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2FixedClampOpenCtrl]	:= NOT p_bMag2FixedClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag2RemoteClampOpenCtrl > 0 AND p_tyDOSettings.diMag2RemoteClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2RemoteClampOpenCtrl]	:= NOT p_bMag2RemoteClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3FixedClampOpenCtrl > 0 AND p_tyDOSettings.diMag3FixedClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3FixedClampOpenCtrl]	:= NOT p_bMag3FixedClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diMag3RemoteClampOpenCtrl > 0 AND p_tyDOSettings.diMag3RemoteClampOpenCtrl <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3RemoteClampOpenCtrl]	:= NOT  p_bMag3RemoteClampOpenCtrl;
	END_IF
	
	IF p_tyDOSettings.diBypCurtainSen > 0 AND p_tyDOSettings.diBypCurtainSen <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diBypCurtainSen]	:= p_bBypCurtainSen;	
	END_IF
	
	IF p_tyDOSettings.diRstCurtainSen > 0 AND p_tyDOSettings.diRstCurtainSen <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diRstCurtainSen]	:= p_bRstCurtainSen;
	END_IF
	
	IF p_tyDOSettings.diBypCurtainPBLED > 0 AND p_tyDOSettings.diBypCurtainPBLED <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diBypCurtainPBLED]	:= p_bBypCurtainPBLED;	
	END_IF
	
	IF p_tyDOSettings.diScanTrigSig > 0 AND p_tyDOSettings.diScanTrigSig <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diScanTrigSig]	:= p_bScanTrigSig;	
	END_IF
	
	IF p_tyDOSettings.diMag1ExitPCB > 0 AND p_tyDOSettings.diMag1ExitPCB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag1ExitPCB]	:= p_bMag1ExitPCB;	
	END_IF
	
	IF p_tyDOSettings.diMag2ExitPCB > 0 AND p_tyDOSettings.diMag2ExitPCB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag2ExitPCB]	:= p_bMag2ExitPCB;	
	END_IF
	
	IF p_tyDOSettings.diMag3ExitPCB > 0 AND p_tyDOSettings.diMag3ExitPCB <= UDINT_TO_DINT(p_udiMax) THEN
		a_bPhysicalDO[p_tyDOSettings.diMag3ExitPCB]	:= p_bMag3ExitPCB;	
	END_IF
	
	
	
	//Update Output
	tyDOutput.bSafetyRlyRst			:= p_bSafetyRlyRst;
	tyDOutput.bTLRed				:= p_bTLRed;
	tyDOutput.bTLAmber				:= p_bTLAmber;
	tyDOutput.bTLGreen				:= p_bTLGreen;
	tyDOutput.bBuzzer				:= p_bBuzzer;
	tyDOutput.bUSBA					:= p_bUSBA;
	tyDOutput.bUSBB					:= p_bUSBB;
	tyDOutput.bOvenInfoSigA			:= p_bOvenInfoSigA;
	tyDOutput.bOvenInfoSigB			:= p_bOvenInfoSigB;
	tyDOutput.bPusherExtCtrl		:= p_bPusherExtCtrl;
	tyDOutput.bStopperUnBlkCtrlA	:= p_bStopperUnblkCtrlA;
	tyDOutput.bStopperUnBlkCtrlB	:= p_bStopperUnblkCtrlB;
	tyDOutput.bMag1FixedClampCtrl	:= p_bMag1FixedClampCtrl;
	tyDOutput.bMag1RemoteClampCtrl	:= p_bMag1RemoteClampCtrl;
	tyDOutput.bMag2FixedClampCtrl	:= p_bMag2FixedClampCtrl;
	tyDOutput.bMag2RemoteClampCtrl	:= p_bMag2RemoteClampCtrl;
	tyDOutput.bMag3FixedClampCtrl	:= p_bMag3FixedClampCtrl;
	tyDOutput.bMag3RemoteClampCtrl	:= p_bMag3RemoteClampCtrl;
	tyDOutput.bInShutterOpenCtrl	:= p_bInShutterOpenCtrl;
	tyDOutput.bInShutterCloseCtrl	:= p_bInShutterCloseCtrl;
	tyDOutput.bOutShutterOpenCtrl	:= p_bOutShutterOpenCtrl;
	tyDOutput.bOutShutterCloseCtrl	:= p_bOutShutterCloseCtrl;
	tyDOutput.bMag1ConvMtrIn		:= p_bMag1ConvMtrIn;
	tyDOutput.bMag1ConvMtrOut		:= p_bMag1ConvMtrOut;
	tyDOutput.bMag2ConvMtrIn		:= p_bMag2ConvMtrIn;
	tyDOutput.bMag2ConvMtrOut		:= p_bMag2ConvMtrOut;
	tyDOutput.bMag3ConvMtrIn		:= p_bMag3ConvMtrIn;
	tyDOutput.bMag3ConvMtrOut		:= p_bMag3ConvMtrOut;
	tyDOutput.bMag1SelClampCtrl		:= p_bMag1SelClampCtrl;
	tyDOutput.bMag2SelClampCtrl		:= p_bMag2SelClampCtrl;
	tyDOutput.bMag3SelClampCtrl		:= p_bMag3SelClampCtrl;
	tyDOutput.bMag1SelUnClampCtrl	:= p_bMag1SelUnclampCtrl;
//	tyDOutput.bMag2SelUnClampCtrl	:= p_bMag2SelUnclampCtrl;
//	tyDOutput.bMag3SelUnClampCtrl	:= p_bMag3SelUnclampCtrl;
	tyDOutput.bPusherConvMtrOn		:= p_bPushConvMtrOn;
	tyDOutput.bMag1WallEngageCtrl	:= p_bMag1WallEngageCtrl;
	tyDOutput.bMag2WallEngageCtrl	:= p_bMag2WallEngageCtrl;
	tyDOutput.bMag3WallEngageCtrl	:= p_bMag3WallEngageCtrl;
	tyDOutput.bMag1SafetyBarRetCtrl	:= p_bMag1SafetyBarRetCtrl;
	tyDOutput.bMag2SafetyBarRetCtrl	:= p_bMag2SafetyBarRetCtrl;
	tyDOutput.bMag3SafetyBarRetCtrl	:= p_bMag3SafetyBarRetCtrl;
	tyDOutput.bSOT1MagAvailable		:= p_bSOTMagAvailable1;
	tyDOutput.bSOT2MagAvailable		:= p_bSOTMagAvailable2;
	tyDOutput.bSOT3MagAvailable		:= p_bSOTMagAvailable3;
	tyDOutput.bSOT4MagAvailable		:= p_bSOTMagAvailable4;
	tyDOutput.bSOT1MagError			:= p_bSOTMagError1;
	tyDOutput.bSOT2MagError			:= p_bSOTMagError2;
	tyDOutput.bSOT3MagError			:= p_bSOTMagError3;
	tyDOutput.bSOT4MagError			:= p_bSOTMagError4;
	tyDOutput.bSOT1MagReady			:= p_bSOTMagReady1;
	tyDOutput.bSOT2MagReady			:= p_bSOTMagReady2;
	tyDOutput.bSOT3MagReady			:= p_bSOTMagReady3;
	tyDOutput.bSOT4MagReady			:= p_bSOTMagReady4;
	tyDOutput.bSOT1MagSizeLarge		:= p_bSOTMagSizeLarge1;
	tyDOutput.bSOT2MagSizeLarge		:= p_bSOTMagSizeLarge2;
	tyDOutput.bSOT3MagSizeLarge		:= p_bSOTMagSizeLarge3;
	tyDOutput.bSOT4MagSizeLarge		:= p_bSOTMagSizeLarge4;
	tyDOutput.bMagAWOpenLimByp1		:= p_bMagAWOpenLimByp1;
	tyDOutput.bMagAWOpenLimByp2		:= p_bMagAWOpenLimByp2;
	tyDOutput.bMagAWOpenLimByp3		:= p_bMagAWOpenLimByp3;
	tyDOutput.bMagAWOpenLimByp4		:= p_bMagAWOpenLimByp4;
	tyDOutput.bMagAWSmallLimSen1	:= p_bMagAWSmallLimSen1;
	tyDOutput.bMagAWSmallLimSen2	:= p_bMagAWSmallLimSen2;
	tyDOutput.bMagAWSmallLimSen3	:= p_bMagAWSmallLimSen3;
	tyDOutput.bMagAWSmallLimSen4	:= p_bMagAWSmallLimSen4;
	tyDOutput.bMag1ReqToBring		:= a_bPhysicalDO[p_tyDOSettings.diMag1ReqToBring];
	tyDOutput.bMag1ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag1ReqToGet];
	tyDOutput.bMag2ReqToBring		:= a_bPhysicalDO[p_tyDOSettings.diMag2ReqToBring];
	tyDOutput.bMag2ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag2ReqToGet];
	tyDOutput.bMag3ReqToBring		:= a_bPhysicalDO[p_tyDOSettings.diMag3ReqToBring];
	tyDOutput.bMag3ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag3ReqToGet];
	tyDOutput.bMag4ReqToBring		:= a_bPhysicalDO[p_tyDOSettings.diMag4ReqToBring];
	tyDOutput.bMag4ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag4ReqToGet];
	tyDOutput.bMtrPshrExt			:= p_bMtrPshrExt;
	tyDOutput.bMtrPshrRet			:= p_bMtrPshrRet;
	tyDOutput.bMtrPshrOn			:= p_bMtrPshrOn;
	tyDOutput.bMtrPshrBrakeRls		:= p_bMtrPshrBrakeRls;
	tyDOutput.bMtrPshrSpdBinBit0	:= p_bMtrPshrSpdBinBit0;
	tyDOutput.bMtrPshrSpdBinBit1	:= p_bMtrPshrSpdBinBit1;
	tyDOutput.bMtrPshrSpdBinBit2	:= p_bMtrPshrSpdBinBit2;
	tyDOutput.bMtrPshrAlmRst		:= p_bMtrPshrAlmRst;
	IF p_bLinkProjMagConvLane1Prep THEN
		tyDOutput.bEntTopStprUnblkCtrl	:= p_bEntTopStprUnblkCtrl;
		tyDOutput.bMidTopStprUnblkCtrl	:= p_bMidTopStprUnblkCtrl;
		tyDOutput.bExtTopStprUnblkCtrl	:= p_bExtTopStprUnblkCtrl;
		tyDOutput.bMidBtmStprUnblkCtrl	:= p_bMidBtmStprUnblkCtrl;
		tyDOutput.bExtBtmStprUnblkCtrl	:= p_bExtBtmStprUnblkCtrl;
	END_IF
	IF p_bLinkProjMagConvLane1Prep THEN
		tyDOutput.bEntTopStprUnblkCtrl2	:= p_bEntTopStprUnblkCtrl2;
		tyDOutput.bMidTopStprUnblkCtrl2	:= p_bMidTopStprUnblkCtrl2;
		tyDOutput.bExtTopStprUnblkCtrl2	:= p_bExtTopStprUnblkCtrl2;
		tyDOutput.bMidBtmStprUnblkCtrl2	:= p_bMidBtmStprUnblkCtrl2;
		tyDOutput.bExtBtmStprUnblkCtrl2	:= p_bExtBtmStprUnblkCtrl2;
	END_IF
	tyDOutput.bMtrPwrRly			:= p_bMtrPwrRly;
	
	tyDOutput.bMag1FixedClampOpenCtrl		:= p_bMag1FixedClampOpenCtrl;
	tyDOutput.bMag1RemoteClampOpenCtrl		:= p_bMag1RemoteClampOpenCtrl;
	tyDOutput.bMag2FixedClampOpenCtrl		:= p_bMag2FixedClampOpenCtrl;
	tyDOutput.bMag2RemoteClampOpenCtrl		:= p_bMag2RemoteClampOpenCtrl;
	tyDOutput.bMag3FixedClampOpenCtrl		:= p_bMag3FixedClampOpenCtrl;
	tyDOutput.bMag3RemoteClampOpenCtrl		:= p_bMag3RemoteClampOpenCtrl;
	
	tyDOutput.bOutShutterOpenCtrl2	:= p_bOutShutterOpenCtrl2;
	tyDOutput.bOutShutterCloseCtrl2	:= p_bOutShutterCloseCtrl2;
	
	tyDOutput.bOutShutterOpenCtrl3	:= p_bOutShutterOpenCtrl3;
	tyDOutput.bOutShutterCloseCtrl3	:= p_bOutShutterCloseCtrl3;
	
	tyDOutput.bBypCurtainSen		:= p_bBypCurtainSen;
	tyDOutput.bRstCurtainSen		:= p_bRstCurtainSen;
	tyDOutput.bBypCurtainPBLED		:= p_bBypCurtainPBLED;

	tyDOutput.diMag1ExitPCB		:=	p_bMag1ExitPCB;
	tyDOutput.diMag2ExitPCB 	:= 	p_bMag2ExitPCB;
	tyDOutput.diMag3ExitPCB 	:=	p_bMag3ExitPCB;
	tyDOutput.diScanTrigSig		:=	p_bScanTrigSig;
END_ACTION
