

FUNCTION fOpConParseEventReceive
	
	fOpConParseEventReceive	:= TRUE;
	

	IF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'eventid') THEN
						
		p_tyEventTypeReceive.tyAvl.bEventId	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyEventTypeReceive.tyData.uiEventId	:= STRING_TO_UINT(tyXMLTableNxt.sValue);
		END_IF
		
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'eventname')  THEN
		p_tyEventTypeReceive.tyAvl.bEventName	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyEventTypeReceive.tyData.sEventName	:= tyXMLTableNxt.sValue;
		END_IF	
		
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'contenttype')  THEN
		p_tyEventTypeReceive.tyAvl.bContentType	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyEventTypeReceive.tyData.usiContentType	:= STRING_TO_USINT(tyXMLTableNxt.sValue);
		END_IF	
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'eventSwitch')  THEN
		p_tyEventTypeReceive.tyAvl.bEventSwitch	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyEventTypeReceive.tyData.siEventSwitch	:= STRING_TO_SINT(tyXMLTableNxt.sValue);
		END_IF	
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'version') THEN	
		p_tyEventTypeReceive.tyAvl.bVersion	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyEventTypeReceive.tyData.sVersion	:= tyXMLTableNxt.sValue;
		END_IF	
	END_IF
	
	
	
	
	
	
	
	
	
//	IF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'returncode') THEN
//						
//		p_tyPartReceive.tyAvl.bReturnCode	:= TRUE;
//						
//		IF tyXMLTableNxt.sTitle = 'AV' THEN
//			IF tyXMLTableNxt.sValue = '0' THEN
//				p_tyPartReceive.tyData.iReturnCode	:= 0;
//			ELSE
//				p_tyPartReceive.tyData.iReturnCode	:= STRING_TO_INT(tyXMLTableNxt.sValue);
//			END_IF
//		END_IF
//						
//	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'typeno') THEN
//						
//		p_tyPartReceive.tyAvl.bTypeNo	:= TRUE;
//						
//		IF tyXMLTableNxt.sTitle = 'AV' THEN
//			p_tyPartReceive.tyData.sTypeNo	:= tyXMLTableNxt.sValue;
//		END_IF
//		
//	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'typevar') THEN
//						
//		p_tyPartReceive.tyAvl.bTypeVar	:= TRUE;
//						
//		IF tyXMLTableNxt.sTitle = 'AV' THEN
//			p_tyPartReceive.tyData.sTypeVar	:= tyXMLTableNxt.sValue;
//		END_IF	
//		
//	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'text') THEN
//		p_tyPartReceive.tyAvl.bTraceTxt	:= TRUE;
//		
//		IF tyXMLTableNxt.sTitle = 'AV' THEN
//			p_tyPartReceive.tyData.sTraceTxt:= tyXMLTableNxt.sValue;
//		END_IF
//
//	END_IF
//		
END_FUNCTION
