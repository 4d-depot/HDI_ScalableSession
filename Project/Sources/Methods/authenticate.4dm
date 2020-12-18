//%attributes = {"publishedWeb":true}

var $indexUserId : Integer
var $userId : Integer
var $info : Object
var $userTop3 : cs:C1710.CustomersSelection
var $sales : cs:C1710.SalesPersonsEntity

ARRAY TEXT:C222($anames; 0)
ARRAY TEXT:C222($avalues; 0)

WEB GET VARIABLES:C683($anames; $avalues)

$indexUserId:=Find in array:C230($anames; "userId")
$userId:=Num:C11($avalues{$indexUserId})

$sales:=ds:C1482.SalesPersons.query("userId = :1"; $userId).first()

If ($sales#Null:C1517)
	
	Case of 
		: ($userId=3)
			$info:=New object:C1471()
			$info.userName:=$sales.firstname+" "+$sales.lastname
			Session:C1714.setPrivileges($info)
			WEB SEND HTTP REDIRECT:C659("/sessionInfo.shtml")
			
		: (($userId=1) | ($userId=2))
			Use (Session:C1714.storage)
				If (Session:C1714.storage.myTop3=Null:C1517)
					$userTop3:=$sales.customers.orderBy("totalPurchase desc").slice(0; 3)
					Session:C1714.storage.myTop3:=$userTop3
				End if 
			End use 
			WEB SEND HTTP REDIRECT:C659("/sessionStorage.shtml")
	End case 
	
End if 


