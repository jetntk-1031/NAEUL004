
ACTION Act_OptP0850UpdtDat:
	
	//Signal
	tyP0850OvenInfo.tyCom.tyBtnCntrA.bValue	:= p_tyDI.bOvenInfeedSigA;
	tyP0850OvenInfo.tyCom.tyBtnOvenA.bValue	:= p_tyDO.bOvenInfoSigA;
	tyP0850OvenInfo.tyCom.tyBtnCntrB.bValue	:= p_tyDI.bOvenInfeedSigB;
	tyP0850OvenInfo.tyCom.tyBtnOvenB.bValue	:= p_tyDO.bOvenInfoSigB;
	
	//Buffer Info
	tyP0850OvenInfo.tyStdA.tyNumMinReqFreeBffr.diValue				:= p_tyProdRcpCurrRcp2.diMinReqFreeBffr;
	tyP0850OvenInfo.tyStdB.tyNumMinReqFreeBffr.diValue				:= p_tyProdRcpCurrRcp2.diMinReqFreeBffr;
	tyP0850OvenInfo.tyStdAB.tyNumMinReqFreeBffrA.diValue			:= p_tyProdRcpCurrRcp2.diMinReqFreeBffr;
	tyP0850OvenInfo.tyStdAB.tyNumMinReqFreeBffrB.diValue			:= p_tyProdRcpCurrRcp2.diMinReqFreeBffr;
	
	tyP0850OvenInfo.tyExtddA.tyNumAddBffr.diValue					:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP0850OvenInfo.tyExtddB.tyNumAddBffr.diValue					:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP0850OvenInfo.tyExtddABSeparate.tyNumAddBffrA.diValue			:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP0850OvenInfo.tyExtddABSeparate.tyNumAddBffrB.diValue			:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP0850OvenInfo.tyExtddABMix.tyNumAddBffrA.diValue				:= p_tyMcParamCurr.diOvenMaxBffr;
	tyP0850OvenInfo.tyExtddABMix.tyNumAddBffrB.diValue				:= p_tyMcParamCurr.diOvenMaxBffr;
	
	tyP0850OvenInfo.tyStdA.tyNumBffrEmptySlt.diValue				:= p_diBufferMagABffrMtySlt;
	tyP0850OvenInfo.tyStdB.tyNumBffrEmptySlt.diValue				:= p_diBufferMagBBffrMtySlt;
	tyP0850OvenInfo.tyStdAB.tyNumBffrEmptySltA.diValue				:= p_diBufferMagABffrMtySlt;
	tyP0850OvenInfo.tyStdAB.tyNumBffrEmptySltB.diValue				:= p_diBufferMagBBffrMtySlt;
	
	tyP0850OvenInfo.tyExtddA.tyNumBffrEmptySlt.diValue				:= p_diBufferMagABffrMtySlt;
	tyP0850OvenInfo.tyExtddB.tyNumBffrEmptySlt.diValue				:= p_diBufferMagBBffrMtySlt;
	tyP0850OvenInfo.tyExtddABSeparate.tyNumBffrEmptySltA.diValue	:= p_diBufferMagABffrMtySlt;
	tyP0850OvenInfo.tyExtddABSeparate.tyNumBffrEmptySltB.diValue	:= p_diBufferMagBBffrMtySlt;
	tyP0850OvenInfo.tyExtddABMix.tyNumBffrEmptySlt.diValue			:= p_diBufferMagABffrMtySlt;	//p_diBufferMagBBffrMtySlt
	
END_ACTION
