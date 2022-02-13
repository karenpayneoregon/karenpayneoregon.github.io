DECLARE @PhoneTypeIdentifier INT= 3;

/*
	Get all customers with only work phone
*/

SELECT Cust.CustomerIdentifier, 
       Cust.ContactId, 
       Cust.CountryIdentifier, 
       Cust.ContactTypeIdentifier, 
       CD.PhoneTypeIdentifier, 
       Cust.CompanyName, 
       Cust.Street, 
       Cust.City, 
       Cust.Region, 
       Cust.PostalCode, 
       Cust.Phone, 
       Cust.Fax, 
       Cust.ModifiedDate, 
       Countries.[Name] AS country, 
       C.FirstName, 
       C.LastName, 
       CT.ContactTitle, 
       CD.PhoneNumber
FROM Customers AS Cust
     INNER JOIN Contacts AS C ON Cust.ContactId = C.ContactId
     INNER JOIN Countries ON Cust.CountryIdentifier = Countries.CountryIdentifier
     INNER JOIN ContactType AS CT ON Cust.ContactTypeIdentifier = CT.ContactTypeIdentifier
                                     AND C.ContactTypeIdentifier = CT.ContactTypeIdentifier
     INNER JOIN ContactDevices AS CD ON C.ContactId = CD.ContactId
WHERE CD.PhoneTypeIdentifier = @PhoneTypeIdentifier;