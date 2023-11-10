(** 2019-01-12 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbTxInTimer(IN := FALSE);
	fbTxOutTimer(IN := FALSE);
	fbMagOutTrig(CLK := FALSE);
	
	bMcRunRdy			:= FALSE;
	bRdyEnt			 	:= FALSE;
	bRdyExit			:= FALSE;
	bMagConvRun	    	:= FALSE;
	
END_ACTION
