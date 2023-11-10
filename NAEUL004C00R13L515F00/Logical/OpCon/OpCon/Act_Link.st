(** 2019-06-04 **)
ACTION Act_Link:
	IF tyPartReceive.tyData.sTypeNo <> '' AND tyPartReceive.tyData.sTypeVar <> '' THEN
		tyPartProcessed.tyData.sTypeNo 		:= tyPartReceive.tyData.sTypeNo;
		tyPartProcessed.tyData.sTypeVar 	:= tyPartReceive.tyData.sTypeVar;
		tyPLCError.tyData.sTypeNo  			:= tyPartReceive.tyData.sTypeNo;
		tyPLCError.tyData.sTypeVar  		:= tyPartReceive.tyData.sTypeVar;
		tyPartMissing.tyData.sTypeNo  		:= tyPartReceive.tyData.sTypeNo;
		tyPartMissing.tyData.sTypeVar  		:= tyPartReceive.tyData.sTypeVar;
		tyPLCJam.tyData.sTypeNo  			:= tyPartReceive.tyData.sTypeNo;
		tyPLCJam.tyData.sTypeVar  			:= tyPartReceive.tyData.sTypeVar;
	END_IF
	
	IF p_bOpsTravLifULExitBrd THEN
		tyPartReceive.tyAvl.bReturnCode				:= FALSE;
	END_IF
	

END_ACTION
