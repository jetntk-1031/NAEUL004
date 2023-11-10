
ACTION Act_OptP0937RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eAWPushOrPullerStatus = Error)) THEN
		
		eAWPushOrPullerAct	:= AWActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
	
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl					:= FALSE;
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.bValue					:= FALSE;
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtLk					:= FALSE;
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtCompl			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtCompl		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtCompl			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtCompl		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtCompl	:= FALSE;
			
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bValue			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue			:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bValue		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bValue			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bValue		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bValue		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue		:= FALSE;
				
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtLk			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtLk		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtLk		:= FALSE;
		
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.uiMaskRtStat		:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.uiMaskRtStat		:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat	:= FALSE;
	
	END_IF
	
END_ACTION
