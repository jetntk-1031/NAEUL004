
ACTION Act_OptP0002ChgPage:
	
	//General
	IF tyP0002Menu.tyMenu.tyBtnOpt.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnOpt.bRtCompl				:= FALSE;
		eChgPage											:= UIP0200OpsGen;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnProdSel.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnProdSel.bRtCompl			:= FALSE;
		eChgPage											:= UIP0400ProdSel;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMagSel.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMagSel.bRtCompl				:= FALSE;
		eChgPage											:= UIP0410MagSel;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMcInfo.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMcInfo.bRtCompl				:= FALSE;
		eChgPage											:= UIP0300McInfo;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnAlm.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnAlm.bRtCompl				:= FALSE;
		eChgPage											:= UIP0600Alm;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnLogin.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnLogin.bRtCompl				:= FALSE;
		eChgPage											:= UIP0100Login;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnLFCtrl.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnLFCtrl.bRtCompl				:= FALSE;
		eChgPage											:= UIP0700LFCtrl;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMagInfo.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMagInfo.bRtCompl			:= FALSE;
		eChgPage											:= UIP0800MagInfo;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnOvenInfo.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnOvenInfo.bRtCompl			:= FALSE;
		eChgPage											:= UIP0850OvenInfo;

	//Manual
	ELSIF tyP0002Menu.tyMenu.tyBtnGenInput.bRtCompl = TRUE THEN
		bUIManualMod										:= TRUE;
		tyP0002Menu.tyMenu.tyBtnGenInput.bRtCompl			:= FALSE;
		eChgPage											:= UIP0900GenIn;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnGenOutput.bRtCompl = TRUE THEN
		bUIManualMod										:= TRUE;
		tyP0002Menu.tyMenu.tyBtnGenOutput.bRtCompl			:= FALSE;
		eChgPage											:= UIP0910GenOut;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMovCtrl.bRtCompl = TRUE THEN
		bUIManualMod										:= TRUE;
		tyP0002Menu.tyMenu.tyBtnMovCtrl.bRtCompl			:= FALSE;
		eChgPage											:= UIP0920MtrNPneuCtrl;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnCommCtrl.bRtCompl = TRUE THEN
		bUIManualMod										:= TRUE;
		tyP0002Menu.tyMenu.tyBtnCommCtrl.bRtCompl			:= FALSE;
		eChgPage											:= UIP0940CommCtrl;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnSimu.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnSimu.bRtCompl				:= FALSE;
		eChgPage											:= UIP0950Simu;
		
	//Settings
	ELSIF tyP0002Menu.tyMenu.tyBtnLang.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnLang.bRtCompl				:= FALSE;
		eChgPage											:= UIP1000Lang;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMcSet.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMcSet.bRtCompl				:= FALSE;
		eChgPage											:= UIP1020McSetNavi;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnMagSet.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMagSet.bRtCompl				:= FALSE;
		eChgPage											:= UIP1030MagSet;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnProdSet.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnProdSet.bRtCompl			:= FALSE;
		eChgPage											:= UIP1040ProdSet;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnLFSet.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnLFSet.bRtCompl				:= FALSE;
		eChgPage											:= UIP1050LFSet;
		
	ELSIF tyP0002Menu.tyMenu.tyBtnUsrMgmt.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnUsrMgmt.bRtCompl			:= FALSE;
		eChgPage											:= UIP1080UsrMgmt;
		
	END_IF
	fbActSimuTmr (IN:= tyP0002Menu.tyMenu.tyBtnHotspotActSimu.bValue = TRUE ,PT:=T#8s);
	IF fbActSimuTmr.Q THEN
		IF tyP0002Menu.tyMenu.tyBtnSimu.uiRtStat =0 THEN
			tyP0002Menu.tyMenu.tyBtnSimu.uiRtStat := 1;
			fbActSimuTmr (IN:= FALSE);
		ELSE
			tyP0002Menu.tyMenu.tyBtnSimu.uiRtStat := 0;	
			fbActSimuTmr (IN:= FALSE);
		END_IF
	END_IF
END_ACTION
