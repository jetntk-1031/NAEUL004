(** 2019-03-29 **)
ACTION Act_Link:
	

	p_bWarning			:= p_bLinkAlarmWarning OR (p_bLinkAlarmInfo AND NOT (p_bLinkAlarmInfoLF AND p_bLinkLFBuzMute) AND NOT(p_bLinkAlarmInfoMagFull AND p_bLinkMagFullTLMuteBuzz));
	
	p_bWarningNoBuz		:= (p_bLinkAlarmInfoLF AND p_bLinkLFBuzMute) OR (p_bLinkAlarmInfoMagFull AND p_bLinkMagFullTLMuteBuzz);
	
	
END_ACTION
