
ACTION Act_OptP0928RstMnlBtm:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eOutMagConvStatus = Error)) THEN
		
		eOutMagConvAct	:= MagConvActIdle;
		//Magazine Conveyor
		//FB
		tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0928MagConv.tyBtmFB.tyBtnEnt.bValue				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExit.bValue				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0928MagConv.tyBtmFB.tyBtnEnt.bRtLk				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0928MagConv.tyBtmFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0			:= TRUE;
		
		//Magazine Clamper
		//FB		
		//Remote
		tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue			:= FALSE;
		
		tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;

		
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		
		//Remote
		tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
		
		tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue				:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue				:= FALSE;
		
		tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;
		
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	
END_ACTION
