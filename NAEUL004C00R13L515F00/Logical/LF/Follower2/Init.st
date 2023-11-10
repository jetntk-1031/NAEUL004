(** 2019-06-27 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	bAutoUpdtData	:= TRUE;
	bInternalUse	:= TRUE;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_Follower2Status	:= ADR(eStatus);
	
	//Alarm
	p_Follower2AlmData		:= ADR(tyAlmData);
	p_Follower2InfoData		:= ADR(tyInfoData);
	p_Follower2InfoData1	:= ADR(tyInfoData1);
	
	//Output
	p_Follower2USAllow			:= ADR(bUSAllow);
	p_Follower2DSAllow			:= ADR(bDSAllow);
	p_Follower2ProdAccDataMnl	:= ADR(bProdAccDataMnl);
	p_Follower2ProdUpdtDataMnl	:= ADR(bProdUpdtDataMnl);
	p_Follower2MagAccDataMnl	:= ADR(bMagAccDataMnl);
	p_Follower2TimeAct			:= ADR(eTimeAct);
	p_Follower2SetDT			:= ADR(tyLeaderToFollowerTag.dtTm);
	p_Follower2WaitRlsBrd		:= ADR(bWaitRlsBrd);
	p_Follower2UpdtProdRcp		:= ADR(tyUpdtProdRcp);

	(* Always Change If Project Change *)
	
END_PROGRAM
