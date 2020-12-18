//%attributes = {"invisible":true}

#DECLARE ($page : Integer; $method : Text)

C_BOOLEAN:C305($sizeMax)

OBJECT SET VISIBLE:C603(*; "HTML@"; False:C215)
$sizeMax:=True:C214

Case of 
		
	: ($page=3)
		Form:C1466.content:=_TabLineCode{7}
		Form:C1466.htmlTitle:="sessionInfo.shtml"
		Form:C1466.html:=_TabLineHTML{3}
		OBJECT SET VISIBLE:C603(*; "HTML@"; True:C214)
		$sizeMax:=False:C215
		
	: (($page=4) & ($method="authenticate"))
		Form:C1466.content:=_TabLineCode{2}
		Form:C1466.html:=_TabLineHTML{2}
		Form:C1466.htmlTitle:="sessionStorage.shtml"
		OBJECT SET VISIBLE:C603(*; "HTML@"; True:C214)
		$sizeMax:=False:C215
		
	: (($page=4) & ($method="totalPurchase"))
		Form:C1466.content:=_TabLineCode{5}
		OBJECT SET VISIBLE:C603(*; "HTML@"; False:C215)
		$sizeMax:=True:C214
		
	: (($page=5) & ($method="On Startup"))
		Form:C1466.content:=_TabLineCode{1}
		Form:C1466.htmlTitle:="storage.shtml"
		Form:C1466.html:=_TabLineHTML{1}
		OBJECT SET VISIBLE:C603(*; "HTML@"; True:C214)
		$sizeMax:=False:C215
		
	: (($page=5) & ($method="AmIgood"))
		Form:C1466.content:=_TabLineCode{6}
		OBJECT SET VISIBLE:C603(*; "HTML@"; False:C215)
		$sizeMax:=True:C214
		
	Else 
		Form:C1466.title:=""
		Form:C1466.content:=""
		Form:C1466.html:=""
		Form:C1466.htmlTitle:=""
End case 

//form  objects "sizeMax" & "sizeMin" are "invisible" rectangles in page zero
If ($sizeMax)
	OBJECT GET COORDINATES:C663(*; "sizeMax"; $x1; $y1; $x2; $y2)
Else 
	OBJECT GET COORDINATES:C663(*; "sizeMin"; $x1; $y1; $x2; $y2)
End if 

OBJECT SET COORDINATES:C1248(*; "ClassContent"; $x1; $y1; $x2; $y2)
