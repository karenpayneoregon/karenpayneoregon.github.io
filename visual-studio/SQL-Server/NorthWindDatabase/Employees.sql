SELECT E.EmployeeID, 
       E.TitleOfCourtesy, 
       E.LastName, 
       E.FirstName, 
       CT.ContactTitle, 
       CONVERT(VARCHAR, E.BirthDate, 1) AS BirthDate, 
       CONVERT(VARCHAR, E.HireDate, 1) AS HireDate, 
       E.Address AS Street, 
       E.City, 
       E.Region, 
       E.PostalCode, 
       E.CountryIdentifier, 
       C.Name AS CountryName, 
       E.HomePhone, 
       E.Extension, 
       E.Notes, 
       E.ReportsTo
FROM Employees AS E
     INNER JOIN Countries AS C ON E.CountryIdentifier = C.CountryIdentifier
     INNER JOIN ContactType AS CT ON E.ContactTypeIdentifier = CT.ContactTypeIdentifier;