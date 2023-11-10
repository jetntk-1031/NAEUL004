
ACTION Act_OptP1023Save:
	
	IF tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtCompl						OR tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtCompl
		OR tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.bRtCompl			OR tyP1023McSetHComm.tyUSSMEMAA.tyBtnGdSig.bRtCompl
		OR tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.bRtCompl 			OR tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.bRtCompl			
		OR tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.bRtCompl			OR tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.bRtCompl		
		OR tyP1023McSetHComm.tyUSHermesA.tyBtnCheckAliveResponse.bRtCompl 	OR tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bRtCompl		
		OR tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bRtCompl			OR tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bRtCompl	
		OR tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.bRtCompl		OR tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.bRtCompl
		
		OR tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtCompl					OR tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtCompl
		OR tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.bRtCompl			OR tyP1023McSetHComm.tyUSSMEMAB.tyBtnGdSig.bRtCompl
		OR tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.bRtCompl 			OR tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.bRtCompl			
		OR tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.bRtCompl			OR tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.bRtCompl		
		OR tyP1023McSetHComm.tyUSHermesB.tyBtnCheckAliveResponse.bRtCompl	OR tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bRtCompl		
		OR tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bRtCompl			OR tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bRtCompl	
		OR tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.bRtCompl			OR tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.bRtCompl THEN
		fUIInRtStatHide(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
		
		tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSSMEMAA.tyBtnGdSig.bRtCompl					:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.bRtCompl					:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyBtnCheckAliveResponse.bRtCompl		:= FALSE;	
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.bRtCompl			:= FALSE;
		
		tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSSMEMAB.tyBtnGdSig.bRtCompl					:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.bRtCompl					:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyBtnCheckAliveResponse.bRtCompl		:= FALSE;	
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bRtCompl				:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.bRtCompl			:= FALSE;
		tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.bRtCompl			:= FALSE;
	END_IF	
	
	//new for Hermes 1.3
	//Auto de-select 
	IF EDGEPOS(tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue) THEN 
		tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bValue := FALSE;
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bValue) THEN 
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue := TRUE;
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue = FALSE) THEN 
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bValue := FALSE;	
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bValue = TRUE) THEN 
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue := FALSE;	
	END_IF
	
	IF EDGEPOS(tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue) THEN 
		tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bValue := FALSE;
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bValue) THEN 
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue := TRUE;
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue = FALSE) THEN 
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bValue := FALSE;	
	ELSIF EDGEPOS(tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bValue = TRUE) THEN 
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue := FALSE;	
	END_IF
	
	IF tyCommon.tySet.tyBtnSave.bRtCompl = TRUE THEN
		
		IF usiSaveCommStep = 0 THEN
			//Verify Hermes A IP Address
			IF (tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue = TRUE) AND NOT(p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE) THEN
				IF fIPValid(tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.sValue, ADR(a_iIPPart1)) = TRUE THEN
					usiSaveCommStep	:= 1;
				ELSE
					usiSaveCommStep	:= 99;
				END_IF
			ELSE
				usiSaveCommStep	:= 1;
			END_IF
			
		ELSIF usiSaveCommStep = 1 THEN 	
			//Verify Hermes B IP Address
			IF (p_tyNtParamCurr.bProjLaneBPrep = TRUE) AND (tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue = TRUE) AND NOT(p_tyNtParamCurr.bHermesRmtPrep = TRUE AND p_tyMcParamCurr.bHermesRmtEn = TRUE) THEN
				IF fIPValid(tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.sValue, ADR(a_iIPPart1)) = TRUE THEN
					usiSaveCommStep	:= 2;
				ELSE
					usiSaveCommStep	:= 99;
				END_IF
			ELSE
				usiSaveCommStep	:= 2;
			END_IF
			
		ELSIF usiSaveCommStep = 2 THEN
			//Save Machine Parameter
			//Upstream A
			IF tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue = TRUE THEN
				tyMcParamWr.eUSCommA	:= McSetCommModSMEMA;
			ELSIF tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue = TRUE THEN	
				tyMcParamWr.eUSCommA	:= McSetCommModHermes;
			END_IF
			
			tyMcParamWr.tyUSCommASMEMA.eSelection		:= USINT_TO_UDINT(tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx);
			tyMcParamWr.tyUSCommASMEMA.bStatSigSetGd	:= tyP1023McSetHComm.tyUSSMEMAA.tyBtnGdSig.bValue;
			
			//Upstream B
			IF tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue = TRUE THEN
				tyMcParamWr.eUSCommB	:= McSetCommModSMEMA;
			ELSIF tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue = TRUE THEN	
				tyMcParamWr.eUSCommB	:= McSetCommModHermes;
			END_IF
			
			tyMcParamWr.tyUSCommBSMEMA.eSelection		:= USINT_TO_UDINT(tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx);
			tyMcParamWr.tyUSCommBSMEMA.bStatSigSetGd	:= tyP1023McSetHComm.tyUSSMEMAB.tyBtnGdSig.bValue;
			
			eMcParamAct	:= McParamActWrite;
			
			IF p_eMcParamStat = McParamActWrite AND p_eMcParamStatus = Done THEN
				eMcParamAct	:= McParamActIdle;
				
				//Update BackUp Param
				tyP1023McSetHComm.tyUSSelABkUp 		:= tyP1023McSetHComm.tyUSSelA;
				tyP1023McSetHComm.tyUSSMEMAABkUp	:= tyP1023McSetHComm.tyUSSMEMAA;
				tyP1023McSetHComm.tyUSSelBBkUp		:= tyP1023McSetHComm.tyUSSelB;
				tyP1023McSetHComm.tyUSSMEMABBkUp	:= tyP1023McSetHComm.tyUSSMEMAB;
				
				usiSaveCommStep	:= 3;
				
			ELSIF p_eMcParamStatus = Error THEN	
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxSaveErr);
				
				IF tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
					
					//Restore Param
					tyP1023McSetHComm.tyUSSelA		:= tyP1023McSetHComm.tyUSSelABkUp;
					tyP1023McSetHComm.tyUSSMEMAA	:= tyP1023McSetHComm.tyUSSMEMAABkUp;
					tyP1023McSetHComm.tyUSSelB		:= tyP1023McSetHComm.tyUSSelBBkUp;
					tyP1023McSetHComm.tyUSSMEMAB	:= tyP1023McSetHComm.tyUSSMEMABBkUp;
					
					tyMcParamWr	:= p_tyMcParamCurr;
					
					usiSaveCommStep	:= 3;
				END_IF
				
			END_IF
			
		ELSIF usiSaveCommStep = 3 THEN	
			//Save Hermes Configuration
			//Upstream A
			a_tyHermesUSParamWr[0].tSndAlive					:= DINT_TO_TIME(tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.diValue);
			a_tyHermesUSParamWr[0].iLaneID						:= DINT_TO_INT(tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.diValue);
			a_tyHermesUSParamWr[0].sHostAddress					:= tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.sValue;
			a_tyHermesUSParamWr[0].uiHostPort					:= DINT_TO_UINT(tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.diValue);
			a_tyHermesUSParamWr[0].bFeatureCheckAliveResponse	:= tyP1023McSetHComm.tyUSHermesA.tyBtnCheckAliveResponse.bValue;
			a_tyHermesUSParamWr[0].bCmpTypeId					:= tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue;
			a_tyHermesUSParamWr[0].bCmpParam					:= tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bValue;
			a_tyHermesUSParamWr[0].bOverwrite					:= tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bValue;
			a_tyHermesUSParamWr[0].bFeatureBoardForecast		:= tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.bValue;
			a_tyHermesUSParamWr[0].bFeatureQueryBoardInfo		:= tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.bValue;
			//Upstream B
			a_tyHermesUSParamWr[1].tSndAlive					:= DINT_TO_TIME(tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.diValue);
			a_tyHermesUSParamWr[1].iLaneID						:= DINT_TO_INT(tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.diValue);
			a_tyHermesUSParamWr[1].sHostAddress					:= tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.sValue;
			a_tyHermesUSParamWr[1].uiHostPort					:= DINT_TO_UINT(tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.diValue);
			a_tyHermesUSParamWr[1].bFeatureCheckAliveResponse	:= tyP1023McSetHComm.tyUSHermesB.tyBtnCheckAliveResponse.bValue;
			a_tyHermesUSParamWr[1].bCmpTypeId					:= tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue;
			a_tyHermesUSParamWr[1].bCmpParam					:= tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bValue;
			a_tyHermesUSParamWr[1].bOverwrite					:= tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bValue;
			a_tyHermesUSParamWr[1].bFeatureBoardForecast		:= tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.bValue;
			a_tyHermesUSParamWr[1].bFeatureQueryBoardInfo		:= tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.bValue;
			
			bSaveHMIConfigure := TRUE;
			
			eHermesAct	:= HermesActWriteConfig;
			
			IF p_eHermesStat = HermesActWriteConfig AND p_eHermesStatus = Done THEN 
				eHermesAct	:= HermesActIdle;
				
				//Update BackUp Param
				tyP1023McSetHComm.tyUSHermesABkUp	:= tyP1023McSetHComm.tyUSHermesA;
				tyP1023McSetHComm.tyUSHermesBBkUp	:= tyP1023McSetHComm.tyUSHermesB;
				
				usiSaveCommStep	:= 0;
				bSaveHMIConfigure := FALSE;
				
				tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE; 
				
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));
				
			ELSIF p_eMcParamStatus = Error THEN	
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxSaveErr);
				
				IF tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl = TRUE THEN
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bRtCompl	:= FALSE;
					tyP1023McSetHComm.tyMsgBoxSaveErr.tyBtnNo.bValue	:= FALSE;
					
					p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
					
					//Restore Param
					tyP1023McSetHComm.tyUSHermesA	:= tyP1023McSetHComm.tyUSHermesABkUp;
					tyP1023McSetHComm.tyUSHermesB	:= tyP1023McSetHComm.tyUSHermesBBkUp;
					
					a_tyHermesUSParamWr				:= p_tyHermesConfiguration.a_tyUSParam;
					
					tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
					bSaveHMIConfigure := FALSE;
					fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));	
					usiSaveCommStep	:= 0;
				END_IF	
				
			END_IF
			
		ELSIF usiSaveCommStep = 99 THEN
			//Message: IP Address Invalid
			p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxIPAddrInvalid);
			
			IF tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl = TRUE THEN
				tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bRtCompl	:= FALSE;
				tyP1023McSetHComm.tyMsgBoxIPAddrInvalid.tyBtnNo.bValue		:= FALSE;
				
				p_tyC0008MsgBox ACCESS ADR(tyP1023McSetHComm.tyMsgBoxHide);
				
				//Restore Param
				tyP1023McSetHComm.tyUSSelA		:= tyP1023McSetHComm.tyUSSelABkUp;
				tyP1023McSetHComm.tyUSSMEMAA	:= tyP1023McSetHComm.tyUSSMEMAABkUp;
				tyP1023McSetHComm.tyUSHermesA	:= tyP1023McSetHComm.tyUSHermesABkUp;
				tyP1023McSetHComm.tyUSSelB		:= tyP1023McSetHComm.tyUSSelBBkUp;
				tyP1023McSetHComm.tyUSSMEMAB	:= tyP1023McSetHComm.tyUSSMEMABBkUp;
				tyP1023McSetHComm.tyUSHermesB	:= tyP1023McSetHComm.tyUSHermesBBkUp;
				
				tyCommon.tySet.tyBtnSave.bRtCompl	:= FALSE;
				
				fUIInRtStatOff(ADR(tyCommon.tySet.tyBtnSave.uiMaskRtStat));	
				
				usiSaveCommStep	:= 0;
			END_IF
			
		END_IF
		
	END_IF
	
	//Added Siemen
	IF  p_tyNtParamCurr.eCustomerReq = Siemens AND
		tyMcParamWr.eUSCommA <> p_tyMcParamCurr.eUSCommA 
		AND usiSaveCommStep = 2 
		AND tyCommon.tySet.tyBtnSave.bRtCompl	= TRUE THEN
			usiHComModChaged := usiHComModChaged + 1;
	END_IF
END_ACTION
