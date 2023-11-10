
ACTION Act_Main_P0921:
	
	//Display
	tyP0921InletNOutletShutter.tyInletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	tyP0921InletNOutletShutter.tyInletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0921InletNOutletShutter.tyInletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep);
	
	tyP0921InletNOutletShutter.tyOutletShutterCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);
	tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjOutletShutPrep);

	
END_ACTION
