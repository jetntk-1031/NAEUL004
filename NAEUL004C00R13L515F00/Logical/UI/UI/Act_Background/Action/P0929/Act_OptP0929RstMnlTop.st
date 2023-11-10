
ACTION Act_OptP0929RstMnlTop:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eInMagConv2Status = Error)) THEN
		
		eInMagConv2Act	:= MagConvActIdle;
		//Magazine Conv2eyor
		//FB
		tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0929MagConv2.tyTopFB.tyBtnEnt.bValue				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExit.bValue				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0929MagConv2.tyTopFB.tyBtnEnt.bRtLk				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0929MagConv2.tyTopFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0			:= TRUE;
		
		//Magazine Clamper
		//FB
		//Top
		tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bRtCompl			:= FALSE;
		
		tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue				:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue			:= FALSE;
		
		//Remote
		tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue			:= FALSE;
		
		tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;

		
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
		
		tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue			:= FALSE;
		
		//Remote
		tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
		
		tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue				:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue				:= FALSE;
		
		tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;
		
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	
END_ACTION
