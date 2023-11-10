
TYPE
	ePage : 
		(
		UIP0000SSaver := 0, (*Page Screen Saver*)
		UIP0001Startup := 1, (*Page Startup*)
		UIP0002Menu := 2, (*Page Menu*)
		UIP0003MMenu := 3, (*Page Main Menu For Operation*)
		UIP0100Login := 100, (*Page Login*)
		UIP0200OpsGen := 200, (*Page Operation*)
		UIP0201OpsTravLifter := 201, (*Page Operation Traverser Lifter*)
		UIP0202OpsMag1 := 202, (*Page Operation Magazine 1*)
		UIP0203OpsMag2 := 203, (*Page Operation Magazine 2*)
		UIP0204OpsMag3 := 204, (*Page Operation Magazine 3*)
		UIP0205OpsAIV := 205, (*Page Operation Magazine 3*)
		UIP0206OpsMagConv1 := 206, (*Page Operation MagConv1*)
		UIP0207OpsMagConv2 := 207, (*Page Operation MagConv2*)
		UIP0300McInfo := 300, (*Page Machine Info*)
		UIP0400ProdSel := 400, (*Page Product Selection*)
		UIP0410MagSel := 410, (*Page Magazine Selection*)
		UIP0600Alm := 600, (*Page Alarm*)
		UIP0700LFCtrl := 700, (*Page Leader Follower Control*)
		UIP0800MagInfo := 800, (*Page Magazine Info*)
		UIP0850OvenInfo := 850, (*Page Oven Info*)
		UIP0900GenIn := 900, (*Page General Input*)
		UIP0910GenOut := 910, (*Page General Output*)
		UIP0920MtrNPneuCtrl := 920, (*Page Motor And Pneumatic Control*)
		UIP0921Shutter := 921, (*Page Shutter*)
		UIP0922Stopper := 922, (*Page Stopper*)
		UIP0923SafetyBar := 923, (*Page Safety Bar*)
		UIP0926LifterConv := 926, (*Page Magazine Conveyor 1*)
		UIP0927LifterConv2 := 927, (*Page Magazine Conveyor 1*)
		UIP0928MagConv := 928, (*Page Magazine Conveyor 1*)
		UIP0929MagConv2 := 929, (*Page Magazine Conveyor 1*)
		UIP0930MagConv1 := 930, (*Page Magazine Conveyor 1*)
		UIP0931MagConv2 := 931, (*Page Magazine Conveyor 2*)
		UIP0932MagConv3 := 932, (*Page Magazine Conveyor 3*)
		UIP0933PusherConv := 933, (*Page Pusher Conveyor*)
		UIP0934AW := 934, (*Page Auto Width*)
		UIP0935Lifter := 935, (*Page Lifter*)
		UIP0936Trav := 936, (*Page Traverser*)
		UIP0937AWPushOrPuller := 937, (*Page Pusher Auto Width*)
		UIP0938MagAW := 938, (*Page Magazine Auto Width*)
		UIP0939Lifter2 := 939, (*Page Lifter 2*)
		UIP0940CommCtrl := 940, (*Page Communication Control*)
		UIP0950Simu := 950, (*Page Simulation*)
		UIP1000Lang := 1000, (*Page Language And Setup*)
		UIP1020McSetNavi := 1020, (*Page Machine Setting - Navigation*)
		UIP1021McSetGen := 1021, (*Page Machine Setting - General*)
		UIP1022McSetVComm := 1022, (*Page Machine Setting - Vertical Communication*)
		UIP1023McSetHComm := 1023, (*Page Machine Setting - Horizontal Communication*)
		UIP1024McSetAntiGap := 1024, (*Page Machine Setting - Anti Gap*)
		UIP1025McSetScan := 1025, (*Page Machine Setting - scanner*)
		UIP1026McSetTeach := 1026, (*Page Machine Setting - Teaching*)
		UIP1027McSetOpCon := 1027, (*Page Machine Setting - opcon*)
		UIP1030MagSet := 1030, (*Page Magazine Setting*)
		UIP1031MagSetTeach := 1031, (*Page Magazine Setting - Teaching*)
		UIP1040ProdSet := 1040, (*Page Product Setting*)
		UIP1050LFSet := 1050, (*Page Leader Follower Setup*)
		UIP1080UsrMgmt := 1080, (*Page User Management*)
		UIP1081UsrMgmtUsrAccessRgt := 1081 (*Page User Management - Access Right*)
		);
	tyTable : 	STRUCT 
		bSliderActive : BOOL := FALSE;
		bTableActive : BOOL := FALSE;
		sVisuNm : STRING[80] := 'Visu';
		uiSelectedRow : UINT := 1;
		uiSelectedRowOld : UINT := 1;
		uiTablePos : UINT := 1;
	END_STRUCT;
END_TYPE
