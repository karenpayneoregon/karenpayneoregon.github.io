SELECT Id, 
       Duration, 
       FORMAT(Duration, N'hh\:mm') AS [Formatted plain], 
       CONVERT(VARCHAR(10), DATEPART(HOUR, Duration)) + ' hours ' + 
	   CONVERT(VARCHAR(10), DATEPART(MINUTE, Duration)) + ' minutes' AS [Format for app], 
       Title
FROM dbo.Movies  ORDER BY dbo.Movies.Duration DESC