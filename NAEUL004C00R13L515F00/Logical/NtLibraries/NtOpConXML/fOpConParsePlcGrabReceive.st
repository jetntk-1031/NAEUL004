

FUNCTION fOpConParsePlcGrabReceive
	
	fOpConParsePlcGrabReceive	:= TRUE;
	
	IF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'returncode') THEN
						
		p_tyPlcGrabReceive.tyAvl.bReturnCode	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			IF tyXMLTableNxt.sValue = '0' THEN
				p_tyPlcGrabReceive.tyData.iReturnCode	:= 0;
			ELSE
				p_tyPlcGrabReceive.tyData.iReturnCode	:= STRING_TO_INT(tyXMLTableNxt.sValue);
			END_IF
		END_IF
						
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'level') THEN
						
		p_tyPlcGrabReceive.tyAvl.bTypeVar	:= TRUE;
						
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyPlcGrabReceive.tyData.sLevel	:= tyXMLTableNxt.sValue;
		END_IF	
		
	ELSIF (tyXMLTableCurr.sTitle = 'AT') AND (sCurrValueLowerCase = 'text') THEN
		p_tyPlcGrabReceive.tyAvl.bTraceTxt	:= TRUE;
		
		IF tyXMLTableNxt.sTitle = 'AV' THEN
			p_tyPlcGrabReceive.tyData.sTraceTxt:= tyXMLTableNxt.sValue;
		END_IF

	END_IF
		
END_FUNCTION
