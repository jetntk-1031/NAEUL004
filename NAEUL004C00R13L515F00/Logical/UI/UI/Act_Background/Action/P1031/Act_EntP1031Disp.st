
ACTION Act_EntP1031Disp: 
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP1031MagSetTeach.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP1031MagSetTeach.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1031InOutletShutterFB ACCESS ADR(tyP1031MagSetTeach.tyInOutletShutterFB);
	
	IF bTeachLifterMag1Slt1Pos = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.diValue := 1;
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.diValueMin := 1;
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.diValueMax := tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachLifterMag2Slt1Pos = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.diValue := 1;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.diValueMin := 1;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.diValueMax := tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachLifterMag3Slt1Pos = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.diValue := 1;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.diValueMin := 1;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.diValueMax := tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValue;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdLifter);
		
	ELSIF bTeachTravPosMag1 = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyNumNewSlt.uiRtStat.0 := TRUE;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachTravPosMag1);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdTrav);
		
	ELSIF bTeachTravPosMag2 = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyNumNewSlt.uiRtStat.0 := TRUE;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachTravPosMag2);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdTrav);	
		
	ELSIF bTeachTravPosMag3 = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyNumNewSlt.uiRtStat.0 := TRUE;
		
		p_tyP1031MagSetTeach ACCESS ADR(tyP1031MagSetTeach.tyTeachTravPosMag3);
		p_tyC0001MotionStd ACCESS ADR(tyP1031MagSetTeach.tyMotionStdTrav);
		
	END_IF
	
	//Display
	//Traverser
	tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bValue	:= p_bTravPwrOn;
	
	//Lifter
	tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bValue	:= p_bLifterBtmPwrOn;
	
END_ACTION
