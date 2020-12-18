//%attributes = {"publishedWeb":true}


var $text : Text
var $intersect : cs:C1710.CustomersSelection

//Is there an intersection between Acme Corp. top 3 customers and the top 3 customers in the session ?
$intersect:=Storage:C1525.acmeCorpTop3.and(Session:C1714.storage.myTop3)

$text:=Choose:C955($intersect.length#0; "Yes"; "No")

WEB SEND TEXT:C677($text)



