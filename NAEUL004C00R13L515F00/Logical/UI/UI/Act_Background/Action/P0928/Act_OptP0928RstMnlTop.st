
ACTION Act_OptP0928RstMnlTop:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eInMagConvStatus = Error)) THEN
		
		eInMagConvAct	:= MagConvActIdle;
		//Magazine Conveyor
		//FB
		tyP0928MagConv.tyTopFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0928MagConv.tyTopFB.tyBtnEnt.bValue				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExit.bValue				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0928MagConv.tyTopFB.tyBtnEnt.bRtLk				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0928MagConv.tyTopFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0928MagConv.tyTopDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0928MagConv.tyTopDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0			:= TRUE;
		
		//Magazine Clamper
		//FB
		//Top
		tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bRtCompl			:= FALSE;
		
		tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue				:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue			:= FALSE;
		
		//Remote
		tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue			:= FALSE;
		
		tyP0928MagConv.tyTopFB.tyBtnEntStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;

		
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
		
		tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue			:= FALSE;
		
		//Remote
		tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl			:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
		
		tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue			:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue			:= FALSE;
		
		//Top
		tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
		
		tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue				:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue				:= FALSE;
		
		tyP0928MagConv.tyTopDC.tyBtnEntStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnEntStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnMidStprExt.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnMidStprRet.uiMaskRtStat.0	:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnExtStprExt.uiMaskRtStat.0		:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnExtStprRet.uiMaskRtStat.0		:= TRUE;
		
		tyP0928MagConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	
END_ACTION
