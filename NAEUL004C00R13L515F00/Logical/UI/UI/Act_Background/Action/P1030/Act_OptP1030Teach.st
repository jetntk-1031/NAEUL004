
ACTION Act_OptP1030Teach:
	
	IF tyP1030MagSet.tyMagSet.tyBtnLifterMag1Slt1Pos.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnLifterMag1Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnLifterMag1Slt1Pos.bValue	:= FALSE;
		
		bTeachLifterMag1Slt1Pos	:= TRUE;
		eChgPage				:= UIP1031MagSetTeach;
		
	ELSIF tyP1030MagSet.tyMagSet.tyBtnLifterMag2Slt1Pos.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnLifterMag2Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnLifterMag2Slt1Pos.bValue	:= FALSE;
		
		bTeachLifterMag2Slt1Pos	:= TRUE;
		eChgPage				:= UIP1031MagSetTeach;
		
	ELSIF tyP1030MagSet.tyMagSet.tyBtnLifterMag3Slt1Pos.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnLifterMag3Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnLifterMag3Slt1Pos.bValue	:= FALSE;
		
		bTeachLifterMag3Slt1Pos	:= TRUE;
		eChgPage				:= UIP1031MagSetTeach;
		
	ELSIF tyP1030MagSet.tyMagSet.tyBtnTravPosMag1.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag1.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag1.bValue		:= FALSE;
		
		bTeachTravPosMag1	:= TRUE;
		eChgPage			:= UIP1031MagSetTeach;
		
	ELSIF tyP1030MagSet.tyMagSet.tyBtnTravPosMag2.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag2.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag2.bValue		:= FALSE;
		
		bTeachTravPosMag2	:= TRUE;
		eChgPage			:= UIP1031MagSetTeach;
		
	ELSIF tyP1030MagSet.tyMagSet.tyBtnTravPosMag3.bRtCompl = TRUE THEN
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag3.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnTravPosMag3.bValue		:= FALSE;
		
		bTeachTravPosMag3	:= TRUE;
		eChgPage			:= UIP1031MagSetTeach;
		
	END_IF
		
END_ACTION
