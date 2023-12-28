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
	g_tyDOutput.bSafetyRlyRst			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSafetyRlyRst];
	g_tyDOutput.bTLRed					:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diTLRed];
	g_tyDOutput.bTLAmber				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diTLAmber];
	g_tyDOutput.bTLGreen				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diTLGreen];
	g_tyDOutput.bBuzzer					:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diBuzzer];
	g_tyDOutput.bUSBA					:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diUSBA];
	g_tyDOutput.bUSBB					:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diUSBB];
	g_tyDOutput.bOvenInfoSigA			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOvenInfoSigA];
	g_tyDOutput.bOvenInfoSigB			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOvenInfoSigB];
	g_tyDOutput.bPusherExtCtrl			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diPusherExtCtrl];
	g_tyDOutput.bStopperUnBlkCtrlA		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diStopperUnblkCtrlA];
	g_tyDOutput.bStopperUnBlkCtrlB		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diStopperUnblkCtrlB];
	g_tyDOutput.bMag1FixedClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1FixedClampCtrl];
	g_tyDOutput.bMag1RemoteClampCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1RemoteClampCtrl];
	g_tyDOutput.bMag2FixedClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2FixedClampCtrl];
	g_tyDOutput.bMag2RemoteClampCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2RemoteClampCtrl];
	g_tyDOutput.bMag3FixedClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3FixedClampCtrl];
	g_tyDOutput.bMag3RemoteClampCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3RemoteClampCtrl];
	g_tyDOutput.bInShutterOpenCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diInShutterOpenCtrl];
	g_tyDOutput.bInShutterCloseCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diInShutterCloseCtrl];
	g_tyDOutput.bOutShutterOpenCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterOpenCtrl];
	g_tyDOutput.bOutShutterCloseCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl];
	g_tyDOutput.bMag1ConvMtrIn			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1ConvMtrIn];
	g_tyDOutput.bMag1ConvMtrOut			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1ConvMtrOut];
	g_tyDOutput.bMag2ConvMtrIn			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2ConvMtrIn];
	g_tyDOutput.bMag2ConvMtrOut			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2ConvMtrOut];
	g_tyDOutput.bMag3ConvMtrIn			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3ConvMtrIn];
	g_tyDOutput.bMag3ConvMtrOut			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3ConvMtrOut];
	g_tyDOutput.bMag1SelClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1SelClampCtrl];
	g_tyDOutput.bMag2SelClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2SelClampCtrl];
	g_tyDOutput.bMag3SelClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3SelClampCtrl];
	g_tyDOutput.bMag1SelUnClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1SelUnclampCtrl];
	g_tyDOutput.bMag2SelUnClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2SelUnclampCtrl];
	g_tyDOutput.bMag3SelUnClampCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3SelUnclampCtrl];
	g_tyDOutput.bPusherConvMtrOn		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diPushConvMtrOn];
	g_tyDOutput.bMag1WallEngageCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1WallEngageCtrl];
	g_tyDOutput.bMag2WallEngageCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2WallEngageCtrl];
	g_tyDOutput.bMag3WallEngageCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3WallEngageCtrl];
	g_tyDOutput.bMag1SafetyBarRetCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1SafetyBarRetCtrl];
	g_tyDOutput.bMag2SafetyBarRetCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2SafetyBarRetCtrl];
	g_tyDOutput.bMag3SafetyBarRetCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3SafetyBarRetCtrl];
	g_tyDOutput.bSOT1MagAvailable		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT1MagAvailable];
	g_tyDOutput.bSOT2MagAvailable		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT2MagAvailable];
	g_tyDOutput.bSOT3MagAvailable		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT3MagAvailable];
	g_tyDOutput.bSOT4MagAvailable		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT4MagAvailable];
	g_tyDOutput.bSOT1MagError			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT1MagError];
	g_tyDOutput.bSOT2MagError			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT2MagError];
	g_tyDOutput.bSOT3MagError			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT3MagError];
	g_tyDOutput.bSOT4MagError			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT4MagError];
	g_tyDOutput.bSOT1MagReady			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT1MagReady];
	g_tyDOutput.bSOT2MagReady			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT2MagReady];
	g_tyDOutput.bSOT3MagReady			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT3MagReady];
	g_tyDOutput.bSOT4MagReady			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOT4MagReady];
	g_tyDOutput.bSOT1MagSizeLarge		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOTMagSizeLarge1];
	g_tyDOutput.bSOT2MagSizeLarge		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOTMagSizeLarge2];
	g_tyDOutput.bSOT3MagSizeLarge		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOTMagSizeLarge3];
	g_tyDOutput.bSOT4MagSizeLarge		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diSOTMagSizeLarge4];
	g_tyDOutput.bMagAWOpenLimByp1		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWOpenLimByp1];
	g_tyDOutput.bMagAWOpenLimByp2		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWOpenLimByp2];
	g_tyDOutput.bMagAWOpenLimByp3		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWOpenLimByp3];
	g_tyDOutput.bMagAWOpenLimByp4		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWOpenLimByp4];
	g_tyDOutput.bMagAWSmallLimSen1		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWSmallLimSen1];
	g_tyDOutput.bMagAWSmallLimSen2		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWSmallLimSen2];
	g_tyDOutput.bMagAWSmallLimSen3		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWSmallLimSen3];
	g_tyDOutput.bMagAWSmallLimSen4		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMagAWSmallLimSen4];
	g_tyDOutput.bMag1ReqToBring			:= a_bPhysicalDO[p_tyDOSettings.diMag1ReqToBring];
	g_tyDOutput.bMag1ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag1ReqToGet];
	g_tyDOutput.bMag2ReqToBring			:= a_bPhysicalDO[p_tyDOSettings.diMag2ReqToBring];
	g_tyDOutput.bMag2ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag2ReqToGet];
	g_tyDOutput.bMag3ReqToBring			:= a_bPhysicalDO[p_tyDOSettings.diMag3ReqToBring];
	g_tyDOutput.bMag3ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag3ReqToGet];
	g_tyDOutput.bMag4ReqToBring			:= a_bPhysicalDO[p_tyDOSettings.diMag4ReqToBring];
	g_tyDOutput.bMag4ReqToGet			:= a_bPhysicalDO[p_tyDOSettings.diMag4ReqToGet];
	g_tyDOutput.bMtrPshrExt				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrExt];
	g_tyDOutput.bMtrPshrRet				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrRet];
	g_tyDOutput.bMtrPshrOn				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrOn];
	g_tyDOutput.bMtrPshrBrakeRls		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrBrakeRls];
	g_tyDOutput.bMtrPshrSpdBinBit0		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrSpdBinBit0];
	g_tyDOutput.bMtrPshrSpdBinBit1		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrSpdBinBit1];
	g_tyDOutput.bMtrPshrSpdBinBit2		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrSpdBinBit2];
	g_tyDOutput.bMtrPshrAlmRst			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPshrAlmRst];
	IF a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diLinkProjMagConvLane1Prep THEN
		g_tyDOutput.bEntTopStprUnblkCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl];
		g_tyDOutput.bMidTopStprUnblkCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMidTopStprUnblkCtrl];
		g_tyDOutput.bExtTopStprUnblkCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diExtTopStprUnblkCtrl];
		g_tyDOutput.bMidBtmStprUnblkCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMidBtmStprUnblkCtrl];
		g_tyDOutput.bExtBtmStprUnblkCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diExtBtmStprUnblkCtrl];
	END_IF
	IF a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diLinkProjMagConvLane1Prep THEN
		g_tyDOutput.bEntTopStprUnblkCtrl2	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl2];
		g_tyDOutput.bMidTopStprUnblkCtrl2	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMidTopStprUnblkCtrl2];
		g_tyDOutput.bExtTopStprUnblkCtrl2	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diExtTopStprUnblkCtrl2];
		g_tyDOutput.bMidBtmStprUnblkCtrl2	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMidBtmStprUnblkCtrl2];
		g_tyDOutput.bExtBtmStprUnblkCtrl2	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diExtBtmStprUnblkCtrl2];
	END_IF
	g_tyDOutput.bMtrPwrRly			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMtrPwrRly];
	
	g_tyDOutput.bMag1FixedClampOpenCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1FixedClampOpenCtrl];
	g_tyDOutput.bMag1RemoteClampOpenCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1RemoteClampOpenCtrl];
	g_tyDOutput.bMag2FixedClampOpenCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2FixedClampOpenCtrl];
	g_tyDOutput.bMag2RemoteClampOpenCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2RemoteClampOpenCtrl];
	g_tyDOutput.bMag3FixedClampOpenCtrl		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3FixedClampOpenCtrl];
	g_tyDOutput.bMag3RemoteClampOpenCtrl	:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3RemoteClampOpenCtrl];
	
	g_tyDOutput.bOutShutterOpenCtrl2		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterOpenCtrl2];
	g_tyDOutput.bOutShutterCloseCtrl2		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl2];
	
	g_tyDOutput.bOutShutterOpenCtrl3		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterOpenCtrl3];
	g_tyDOutput.bOutShutterCloseCtrl3		:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl3];
	
	g_tyDOutput.bBypCurtainSen				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diBypCurtainSen];
	g_tyDOutput.bRstCurtainSen				:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diRstCurtainSen];
	g_tyDOutput.bBypCurtainPBLED			:= a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diBypCurtainPBLED];

	g_tyDOutput.diMag1ExitPCB				:=	a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag1ExitPCB];
	g_tyDOutput.diMag2ExitPCB 				:= 	a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag2ExitPCB];
	g_tyDOutput.diMag3ExitPCB 				:=	a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diMag3ExitPCB];
	g_tyDOutput.diScanTrigSig				:=	a_bPhysicalDO[g_tyNtParamCurr.tyDOSettings.diScanTrigSig];
END_ACTION
