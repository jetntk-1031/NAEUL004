

FUNCTION fOpConParsePartReceive
	
	fOpConParsePartReceive	:= TRUE;
	
	IF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'returncode') THEN
						
		p_tyPartReceive.tyAvl.bReturnCode	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			IF tyXMLTableNxt.sValue = '0' THEN
				p_tyPartReceive.tyData.iReturnCode	:= 0;
			ELSE
				p_tyPartReceive.tyData.iReturnCode	:= STRING_TO_INT(tyXMLTableNxt.sValue);
			END_IF
		END_IF
						
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'typeno') THEN
						
		p_tyPartReceive.tyAvl.bTypeNo	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyPartReceive.tyData.sTypeNo	:= tyXMLTableNxt.sValue;
		END_IF
		
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'typevar') THEN
						
		p_tyPartReceive.tyAvl.bTypeVar	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyPartReceive.tyData.sTypeVar	:= tyXMLTableNxt.sValue;
		END_IF	
		
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'text') THEN
		p_tyPartReceive.tyAvl.bTraceTxt	:= TRUE;
		
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyPartReceive.tyData.sTraceTxt:= tyXMLTableNxt.sValue;
		END_IF

	END_IF
		
END_FUNCTION
