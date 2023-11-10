
ACTION Act_EntP1026Disp: 
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP1026McSetTeach.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1026McSetTeach.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1026InOutletShutterFB ACCESS ADR(tyP1026McSetTeach.tyInOutletShutterFB);
	
	IF bTeachTravPosA = TRUE THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachTravPosA);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdTrav);
		
	ELSIF bTeachTravPosB = TRUE THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachTravPosB);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdTrav);
		
	ELSIF bTeachLifterPosA = TRUE THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterPosA);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachLifterPosB = TRUE THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterPosB);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter);
	
	ELSIF bTeachLifterTopPos THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterTopPos);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachLifterBtmPos THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterBtmPos);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachLifterTopPos2 THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterTopPos2);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter); //Lifter2FBCtrl
		
	ELSIF bTeachLifterBtmPos2 THEN
		p_tyP1026McSetTeach ACCESS ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2);
		p_tyC0001MotionStd ACCESS ADR(tyP1026McSetTeach.tyMotionStdLifter);

	END_IF
	
	//Display
	//Traverser
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bValue	:= p_bTravPwrOn;
	
	//Lifter
	tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bValue	:= p_bLifterBtmPwrOn;
	
END_ACTION
