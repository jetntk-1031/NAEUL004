(** 2019-01-20 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_tyDTMagToAGV1 ACCESS ADR(tyDTMagToAGV1);
	p_tyDTMagToAGV2 ACCESS ADR(tyDTMagToAGV2);
	p_tyDTMagToAGV3 ACCESS ADR(tyDTMagToAGV3);
	
	p_bRequestToBring1 ACCESS ADR(bRequestToBring1);
	p_bRequestToGet1 ACCESS ADR(bRequestToGet1);
	p_bRequestToBring2 ACCESS ADR(bRequestToBring2);
	p_bRequestToGet2 ACCESS ADR(bRequestToGet2);
	p_bRequestToBring3 ACCESS ADR(bRequestToBring3);
	p_bRequestToGet3 ACCESS ADR(bRequestToGet3);
	p_bRequestToBring4 ACCESS ADR(bRequestToBring4);
	p_bRequestToGet4 ACCESS ADR(bRequestToGet4);

END_ACTION
