
ACTION Act_OptP0850BrdInOven: 

	//Reset Board in Oven
	//A
	IF tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.bRtCompl = TRUE THEN
		
		diSetBrdInOvenA	:= tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.diValue;
		eOvenInfoAAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoAStatus = Done AND p_eOvenInfoAStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoAAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddA.tyNumBrdInOven.diValue	:= p_diOvenInfoABrdInOven;
		
	END_IF
	
	//B
	IF tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.bRtCompl = TRUE THEN
		
		diSetBrdInOvenB	:= tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.diValue;
		eOvenInfoBAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoBStatus = Done AND p_eOvenInfoBStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoBAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddB.tyNumBrdInOven.diValue	:= p_diOvenInfoBBrdInOven;
		
	END_IF
	
	//AB Separate
	IF tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.bRtCompl = TRUE THEN
		
		diSetBrdInOvenA	:= tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.diValue;
		eOvenInfoAAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoAStatus = Done AND p_eOvenInfoAStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoAAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenA.diValue	:= p_diOvenInfoABrdInOven;
		
	END_IF
	
	IF tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.bRtCompl = TRUE THEN
		
		diSetBrdInOvenB	:= tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.diValue;
		eOvenInfoBAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoBStatus = Done AND p_eOvenInfoBStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoBAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddABSeparate.tyNumBrdInOvenB.diValue	:= p_diOvenInfoBBrdInOven;
		
	END_IF
	
	//AB Mix
	IF tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.bRtCompl = TRUE THEN
		
		diSetBrdInOvenA	:= tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.diValue;
		eOvenInfoAAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoAStatus = Done AND p_eOvenInfoAStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoAAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenA.diValue	:= p_diOvenInfoABrdInOven;
		
	END_IF
	
	IF tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.bRtCompl = TRUE THEN
		
		diSetBrdInOvenB	:= tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.diValue;
		eOvenInfoBAct	:= OvenInfoActSetBrdInOven;
		
		IF p_eOvenInfoBStatus = Done AND p_eOvenInfoBStat = OvenInfoActSetBrdInOven THEN
			eOvenInfoBAct	:= OvenInfoActIdle;
			
			tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.bRtCompl	:= FALSE;
		END_IF
		
	ELSE
		tyP0850OvenInfo.tyExtddABMix.tyNumBrdInOvenB.diValue	:= p_diOvenInfoBBrdInOven;
		
	END_IF
	
END_ACTION
