
ACTION Act_OptP0950SimuMod: 
	
//	IF EDGEPOS(tyOpsProgData.bSimuCtrl) THEN
//		g_tyP0950Simu.tySimu.tyBtnEngageTest.bRtLk		:= TRUE;
//	ELSIF EDGENEG(tyOpsProgData.bSimuCtrl) THEN
//		g_tyP0950Simu.tySimu.tyBtnEngageTest.bRtLk		:= g_tyP0950Simu.tySimu.tyBtnEngageTest.bValue;
//	END_IF
//
//	IF g_tyP0950Simu.tySimu.tyBtnEngageTest.bRtCompl THEN
//		g_tyP0950Simu.tySimu.tyBtnEngageTest.bRtCompl 	:= FALSE;
//		g_tyP0950Simu.tySimu.tyBtnEngageTest.bValue	  	:= TRUE;
//		g_tyP0950Simu.tySimu.tyBtnEngageTest.bRtLk	  	:= TRUE;
//			
//		usiSimuMod				:= 0;
//	END_IF

	IF p_bSimuStatusRun THEN
		tyP0950Simu.tySimu.tyBtnSimu.bRtLk				:= TRUE;
	ELSE
		tyP0950Simu.tySimu.tyBtnSimu.bRtLk				:= tyP0950Simu.tySimu.tyBtnSimu.bValue;
	END_IF

	IF tyP0950Simu.tySimu.tyBtnSimu.bRtCompl THEN
		tyP0950Simu.tySimu.tyBtnSimu.bRtCompl 			:= FALSE;
		tyP0950Simu.tySimu.tyBtnSimu.bValue	  			:= TRUE;
		tyP0950Simu.tySimu.tyBtnSimu.bRtLk	  			:= TRUE;
	END_IF
	
END_ACTION
