
ACTION Act_OptP0929RstMnlBtm:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eOutMagConv2Status = Error)) THEN
		
		eOutMagConv2Act	:= MagConvActIdle;
		//Magazine Conv2eyor
		//FB
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.bValue				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExit.bValue				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.bRtLk				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0			:= TRUE;
		
		//Magazine Clamper
		//FB		
		//Remote
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue			:= FALSE;
		
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;

		
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		
		//Remote
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue				:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue				:= FALSE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;
		
		tyP0929MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	
END_ACTION
