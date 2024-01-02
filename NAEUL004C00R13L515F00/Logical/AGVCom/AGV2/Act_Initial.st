(** 2019-01-12 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbTxInTimer(IN := FALSE);
	fbTxOutTimer(IN := FALSE);
	fbMagOutTrig(CLK := FALSE);
	
	tylocalAGV.Out.bMcRunRdy			:= FALSE;
	tylocalAGV.Out.bRdyEnt			 	:= FALSE;
	tylocalAGV.Out.bRdyExit				:= FALSE;
	tylocalAGV.Out.bMagConvRun	    	:= FALSE;
	
END_ACTION
