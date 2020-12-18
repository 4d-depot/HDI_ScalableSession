//%attributes = {"publishedWeb":true}


var $totalPurchase : Real

$totalPurchase:=Session:C1714.storage.myTop3.sum("totalPurchase")

WEB SEND TEXT:C677("Total purchases for your top 3 customers: "+String:C10($totalPurchase; "$###,##0"))



