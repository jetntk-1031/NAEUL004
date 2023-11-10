
ACTION Act_OptP0002Mask:
	
	tyP0002Menu.tyMenu.tyBtnOpt.uiMaskRtStat.0 					:= p_tyUsrMgmtCurrAccessRgt.bOpt;
	tyP0002Menu.tyMenu.tyBtnMcInfo.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bMcInfo;
	tyP0002Menu.tyMenu.tyBtnMagInfo.uiMaskRtStat.0				:= p_tyUsrMgmtCurrAccessRgt.bMagInfo;
	tyP0002Menu.tyMenu.tyBtnOvenInfo.uiMaskRtStat.0				:= p_tyUsrMgmtCurrAccessRgt.bOvenInfo;
	tyP0002Menu.tyMenu.tyBtnAlm.uiMaskRtStat.0 					:= p_tyUsrMgmtCurrAccessRgt.bAlm;
	tyP0002Menu.tyMenu.tyBtnLogin.uiMaskRtStat.0				:= p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnLFCtrl.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bLFCtrl;
	tyP0002Menu.tyMenu.tyBtnGenInput.uiMaskRtStat.0				:= p_tyUsrMgmtCurrAccessRgt.bManual AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnGenOutput.uiMaskRtStat.0			:= p_tyUsrMgmtCurrAccessRgt.bManual AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnMovCtrl.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bManual AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnCommCtrl.uiMaskRtStat.0 			:= p_tyUsrMgmtCurrAccessRgt.bManual AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnSimu.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bSimulation AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnProdSet.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bProdSet AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnMagSet.uiMaskRtStat.0				:= p_tyUsrMgmtCurrAccessRgt.bMagSet AND p_bOpsStatusStop; 
	tyP0002Menu.tyMenu.tyBtnMcSet.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bMcSet AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnLang.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bLang AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnUsrMgmt.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bUsrMgmt AND p_bOpsStatusStop;
	tyP0002Menu.tyMenu.tyBtnLFSet.uiMaskRtStat.0 				:= p_tyUsrMgmtCurrAccessRgt.bLFSet AND p_bOpsStatusStop;
	
	tyP0002Menu.tyMenu.tyBitmapMaskProdSetLCS.uiMaskRtStat.0	:= NOT(p_tyNtParamCurr.bLCSManageRcpPrep AND p_tyMcParamCurr.bLCSManageRcpEn);
	
//	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
//		tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0 	:= p_tyUsrMgmtCurrAccessRgt.bProdSel AND p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
//		tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0	:= p_tyUsrMgmtCurrAccessRgt.bMagSel AND p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
//	ELSE
//		tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0 	:= p_tyUsrMgmtCurrAccessRgt.bProdSel AND p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
//		tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0	:= p_tyUsrMgmtCurrAccessRgt.bMagSel AND p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
//	END_IF

	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0 	:= p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
		tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0	:= p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
	ELSE
		tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0 	:= p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
		tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0	:= p_bOpsStatusStop AND NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
	END_IF
	
END_ACTION
