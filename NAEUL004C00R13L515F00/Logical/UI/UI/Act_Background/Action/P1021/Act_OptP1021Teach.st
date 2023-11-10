
ACTION Act_OptP1021Teach:
	
	IF tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTravPosATeach.bValue		:= FALSE;
		
		bTeachTravPosA  	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTravPosBTeach.bValue		:= FALSE;
		
		bTeachTravPosB		:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLiftPosATeach.bValue		:= FALSE;
		
		bTeachLifterPosA	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnLiftPosBTeach.bValue		:= FALSE;
		
		bTeachLifterPosB	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnTeachTopPos.bRtCompl = TRUE THEN //LifterConv
		tyP1021McSetGen.tyGen.tyBtnTeachTopPos.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTeachTopPos.bValue		:= FALSE;
		
		bTeachLifterTopPos	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
	ELSIF tyP1021McSetGen.tyGen.tyBtnTeachBtmPos.bRtCompl = TRUE THEN 
		tyP1021McSetGen.tyGen.tyBtnTeachBtmPos.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTeachBtmPos.bValue		:= FALSE;
		
		bTeachLifterBtmPos	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
		
	ELSIF tyP1021McSetGen.tyGen.tyBtnTeachTopPos2.bRtCompl = TRUE THEN 
		tyP1021McSetGen.tyGen.tyBtnTeachTopPos2.bRtCompl	:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTeachTopPos2.bValue		:= FALSE;
		
		bTeachLifterTopPos2	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;
	ELSIF tyP1021McSetGen.tyGen.tyBtnTeachBtmPos2.bRtCompl = TRUE THEN 
		tyP1021McSetGen.tyGen.tyBtnTeachBtmPos2.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyGen.tyBtnTeachBtmPos2.bValue		:= FALSE;
		
		bTeachLifterBtmPos2	:= TRUE;
		eChgPage			:= UIP1026McSetTeach;

	END_IF
	
END_ACTION
