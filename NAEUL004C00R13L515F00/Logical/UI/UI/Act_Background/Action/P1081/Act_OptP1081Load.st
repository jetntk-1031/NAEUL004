
ACTION Act_OptP1081Load:

	IF tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtSel.tyDrpDnLevel.bRtCompl = TRUE THEN
		tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtSel.tyDrpDnLevel.bRtCompl		:= FALSE;
		
		CASE tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtSel.tyDrpDnLevel.usiValueIdx OF 
			0:
				p_tyP1081UsrMgmtUsrAccessRgt ACCESS ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl1);
				
				fUIInRtStatOff(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl1.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl2.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl3.tyLyr.uiRtStat));
				
			1:
				p_tyP1081UsrMgmtUsrAccessRgt ACCESS ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl2);
				
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl1.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl2.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl3.tyLyr.uiRtStat));
				
			2:
				p_tyP1081UsrMgmtUsrAccessRgt ACCESS ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl3);
				
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl1.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl2.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP1081UsrMgmtUsrAccessRgt.tyUsrAccessRgtLvl3.tyLyr.uiRtStat));
			
			
		END_CASE
	END_IF
	
END_ACTION
