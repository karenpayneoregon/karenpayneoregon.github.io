/*
	Karen has C# code to make the WHERE IN fluid

	Note as coded the phone number for any contact may be
	the same as the data came from Microsoft and Karen
	did not alter these numbers.
*/

DECLARE @ContactId int = 1

SELECT C.ContactId, 
       C.FirstName, 
       C.LastName, 
       PT.PhoneTypeDescription, 
       CD.PhoneNumber ---, CD.PhoneTypeIdentifier
FROM Contacts AS C
     INNER JOIN ContactDevices AS CD ON C.ContactId = CD.ContactId
     INNER JOIN PhoneType AS PT ON CD.PhoneTypeIdentifier = PT.PhoneTypeIdenitfier
WHERE C.ContactId = @ContactId AND CD.PhoneTypeIdentifier IN (1,3);