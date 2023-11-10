
ACTION Act_EntP0600Disp: 
	
	//Access Addres
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0600Alm.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0010RcyMsg ACCESS ADR(tyP0600Alm.tyRcyMsgHide);
	
	p_tyP0600Alm ACCESS ADR(tyP0600Alm.tyAlm);
	
	tyP0600Alm.tyAlm.tyBtnCurr.bRtCompl := TRUE; //Default will be Current Alarm View
	
	
	//Reset
	bTeachTravPosA			:= FALSE;
	bTeachTravPosB			:= FALSE;
	bTeachLifterPosA		:= FALSE;
	bTeachLifterPosB		:= FALSE;
	bTeachLifterMag1Slt1Pos	:= FALSE;
	bTeachLifterMag2Slt1Pos	:= FALSE;
	bTeachLifterMag3Slt1Pos	:= FALSE;
	bTeachTravPosMag1		:= FALSE;
	bTeachTravPosMag2		:= FALSE;
	bTeachTravPosMag3		:= FALSE;
	bTeachLifterTopPos	:= FALSE;
	bTeachLifterBtmPos	:= FALSE;
	bTeachLifterTopPos2	:= FALSE;
	bTeachLifterBtmPos2	:= FALSE;	

	
END_ACTION
