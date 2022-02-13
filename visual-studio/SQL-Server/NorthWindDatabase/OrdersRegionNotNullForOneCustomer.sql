DECLARE @CustomerIdentifier int = 68

SELECT O.OrderID, 
       O.CustomerIdentifier, 
       O.EmployeeID, 
	   CONVERT(VARCHAR, O.OrderDate, 1) AS OrderDate, 
	   CONVERT(VARCHAR, O.RequiredDate, 1) AS RequiredDate, 
	   CONVERT(VARCHAR, O.ShippedDate, 1) AS ShippedDate, 
       O.ShipVia, 
       S.CompanyName AS Shipper, 
       O.Freight, 
       O.ShipAddress AS Street, 
       O.ShipCity AS City, 
       O.ShipRegion AS Region, 
       O.ShipPostalCode AS Postal, 
       O.ShipCountry AS Country, 
       S.Phone AS ShipperPhone, 
       CT.ContactTitle AS Title, 
       E.LastName, 
       E.FirstName
FROM Orders AS O
     INNER JOIN Shippers AS S ON O.ShipVia = S.ShipperID
     INNER JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
     INNER JOIN ContactType AS CT ON E.ContactTypeIdentifier = CT.ContactTypeIdentifier
WHERE O.ShipRegion IS NOT NULL AND O.CustomerIdentifier = @CustomerIdentifier