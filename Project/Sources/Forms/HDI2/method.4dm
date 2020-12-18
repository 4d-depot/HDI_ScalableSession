
C_BOOLEAN:C305(btnTrace)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		ARRAY TEXT:C222(_TabLineCode; 0)
		ARRAY TEXT:C222(_TabLineHTML; 0)
		
		
		READ ONLY:C145([INFO:1])
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4<=9)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		//QUERY([INFO]; [INFO]PageNumber>=10)
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=10; *)
		QUERY:C277([INFO:1];  & ; [INFO:1]PageNumber:4<50)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]Description:2; _TabLineCode)
		
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=50)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]Description:2; _TabLineHTML)
		
		
		//Page 2
		Form:C1466.salesPerson3:="http://localhost:8044/4DACTION/authenticate?userId=3"
		
		//Page 3
		Form:C1466.salesPerson1:="http://localhost:8044/4DACTION/authenticate?userId=1"
		Form:C1466.salesPerson2:="http://localhost:8044/4DACTION/authenticate?userId=2"
		Form:C1466.total:="http://localhost:8044/4DACTION/totalPurchase"
		
		//Page 4
		Form:C1466.top3:="http://localhost:8044/storage.shtml"
		Form:C1466.amIGood:="http://localhost:8044/4DACTION/amIGood"
		
		
		manageTexts
		
		RW
		
		viewTrace
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		// page 3
		WA_URL9:=""
		
		// Page 4
		WA_URL1:=""
		WA_URL2:=""
		WA_URL3:=""
		WA_URL4:=""
		
		// Page 3
		WA_URL_top3:=""
		WA_URL5:="http://localhost:8044/sessionStorage.shtml"
		WA_URL6:="http://localhost:8044/sessionStorage.shtml"
		WA_URL7:=""
		WA_URL8:=""
		//
		
		
		manageTexts
		
		viewTrace
		
End case 