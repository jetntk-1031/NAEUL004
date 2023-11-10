(** 2019-03-25 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Physical Configuration
	diInitTm	:= 0;
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_PshrConvStat		:= ADR(eStat);
	p_PshrConvStatus	:= ADR(eStatus);
	p_PshrConvStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_PshrConvAlmData	:= ADR(tyAlmData);
	
	//Output
	p_PshrConvHvBrd						:= ADR(bHvBrd);
	p_PshrConvRejHvBrd					:= ADR(bRejHvBrd);
	p_PshrConvInspHvBrd					:= ADR(bInspHvBrd);
	p_PshrConvGdBrd						:= ADR(bGdBrd);
	p_PshrConvLmtSenActivated			:= ADR(bLmtSenActivated);
	p_PshrConvMtrSigOnOrLToR			:= ADR(bMtrSigOnOrLToR);
	p_PshrConvMtrDirOrRToL				:= ADR(bMtrDirOrRToL);
	
	p_PshrConvPshrExtCtrl				:= ADR(bPshrExtCtrl);
	p_PshrConvPshrRetCtrl				:= ADR(bPshrRetCtrl);
	p_PshrConvPshrTwoOutputControl		:= ADR(bPshrTwoOutputControl);
	p_PshrConvPshrExtended				:= ADR(bPshrExtended);
	p_PshrConvPshrRetracted				:= ADR(bPshrRetracted);
	
	p_PshrConvPullerExtCtrl				:= ADR(bPullerExtCtrl);
	p_PshrConvPullerRetCtrl				:= ADR(bPullerRetCtrl);
	p_PshrConvPullerTwoOutputControl	:= ADR(bPullerTwoOutputControl);
	p_PshrConvPullerExtended			:= ADR(bPullerExtended);
	p_PshrConvPullerRetracted			:= ADR(bPullerRetracted);
	
	p_PshrConvRotRemoteCtrl				:= ADR(bRotRemoteCtrl);
	p_PshrConvRotTwoOutputControl		:= ADR(bRotTwoOutputControl);
	p_PshrConvRotAtRemote				:= ADR(bRotAtRemote);
	p_PshrConvRotAtHome					:= ADR(bRotAtHome);
	
	p_PshrConvRejectUpCtrl				:= ADR(bRejectUpCtrl);
	p_PshrConvRejectDownCtrl			:= ADR(bRejectDownCtrl);
	p_PshrConvRejectTwoOutputControl	:= ADR(bRejectTwoOutputControl);
	p_PshrConvRejectAtUp				:= ADR(bRejectAtUp);
	p_PshrConvRejectAtDown				:= ADR(bRejectAtDown);
	//ADDED 
	
	p_PshrConvPshrRetAllwTrav			:= ADR(bPshrRetAllwTraverse);
	
	(* Always Change If Project Change *)
	
END_PROGRAM