(** 2019-03-29 **)
ACTION Act_Link:
	
	p_bExtSafetySen := (p_bLinkDIConvClrSen = FALSE) AND (p_bLinkDIPusherRetRS OR p_bConvPusherReachedRetSlw);
	
	
	IF p_bLinkDISafetyRlySig = FALSE THEN
		bExtCtrl	:= FALSE;
		bRetCtrl	:= FALSE;
		bExtended	:= FALSE;
		bRetracted	:= FALSE;
	END_IF
	
END_ACTION
