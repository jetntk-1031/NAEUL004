
ACTION Act_OptP0700Table:
	
	//Call Table FB
	fbP0700Table.sVisuNm			:= tyP0700Table.sVisuNm;
	fbP0700Table.udiWorkAreaStartX	:= 17;
	fbP0700Table.udiWorkAreaEndX	:= 594;
	fbP0700Table.udiWorkAreaStartY	:= 94;
	fbP0700Table.udiWorkAreaEndY	:= 445;
	fbP0700Table.udiMinXDist		:= 20;
	fbP0700Table.udiMinYDist		:= 20;
	fbP0700Table.uiSlideScale		:= c_uiP0700TableSize;
	fbP0700Table.iTotalData			:= UDINT_TO_INT(c_diLFClntNum);
	fbP0700Table.iTotalRow			:= c_uiP0700TableSize;
	fbP0700Table(uiSliderStatus 	:= tyP0700LFCtrl.tyLdr.tyTable1List.tyUISlider.uiRtStat , a_tyUIHotspot := tyP0700LFCtrl.tyLdr.tyTable1List.a_tyHotspot , uiTablePos := tyP0700Table.uiTablePos , iSliderPos := tyP0700LFCtrl.tyLdr.tyTable1List.tyUISlider.iValue);
	
	tyP0700Table.uiSelectedRow		:= fbP0700Table.uiSelectedRow;
	tyP0700Table.bTableActive		:= fbP0700Table.bTableActive;
	tyP0700Table.bSliderActive		:= fbP0700Table.bSliderActive;
	
	//Table Content
	IF tyP0700Table.bTableActive = TRUE OR tyP0700Table.bSliderActive = TRUE THEN
		FOR i := 1 TO c_uiP0700TableSize DO
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(tyP0700Table.uiTablePos + i - 1);
		END_FOR
	END_IF
	
	//Update Status & Current Recipe
	FOR i := 1 TO c_uiP0700TableSize DO
		tyP0700LFCtrl.tyLdr.tyTable1List.a_tyStringDataCol1[i].sValue	:= p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sMcNm;
		tyP0700LFCtrl.tyLdr.tyTable1List.a_tyStringDataCol2[i].sValue	:= p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sIPAddr;
		tyP0700LFCtrl.tyLdr.tyTable1List.a_tyStringDataCol4[i].sValue	:= p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sCurrProdRcp;
		
		IF p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sIPAddr = '' THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 0;	//Empty
		ELSIF p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sIPAddr = '0000' THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 1;	//Third Party
		ELSIF p_tyMcParamCurr.a_bLFOnline[tyP0700Table.uiTablePos + i - 1] = FALSE THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 2;	//Offline
		ELSIF p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].sIPAddr = p_sHWInfoIPAddr THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 4;	//Leader
		ELSIF p_tyLFLeaderFollowerToLeaderTag[tyP0700Table.uiTablePos + i - 1].bSectionLeader = TRUE THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 5;	//Section Leader
		ELSIF p_tyLFLeaderFollowerInfo[tyP0700Table.uiTablePos + i - 1].bOnline = TRUE THEN
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 6;	//Conected
		ELSE
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx	:= 3;	//Disconnected
		END_IF
	END_FOR
	
	//Update Color
	FOR i := 1 TO c_uiP0700TableSize DO
		
		IF tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiValueIdx > 1 THEN
			IF p_tyLFLeaderFollowerInfo[tyP0700Table.uiTablePos + i - 1].bOnline = TRUE THEN
				tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiColor	:= 1;
			ELSE
				tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiColor	:= 2;
			END_IF
		ELSE
			tyP0700LFCtrl.tyLdr.tyTable1List.a_tyTxtDataCol3[i].usiColor	:= 0;
		END_IF
		
	END_FOR
	
END_ACTION
