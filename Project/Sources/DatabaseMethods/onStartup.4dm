

Use (Storage:C1525)
	//Load the top 3 customers of Acme Corp. in the Storage
	Storage:C1525.acmeCorpTop3:=ds:C1482.Customers.all().orderBy("totalPurchase desc").slice(0; 3)
End use 

00_Start