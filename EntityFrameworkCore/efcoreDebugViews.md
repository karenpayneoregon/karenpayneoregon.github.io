# Entity Framework Core Debug view

![assets/debug1.png](debug1.png)

One of the nice features in EF Core 5 is ShortView and LongView from [DbContext.ChangeTracker.DebugView](https://docs.microsoft.com/en-us/dotnet/api/microsoft.entityframeworkcore.changetracking.changetracker.debugview?view=efcore-5.0)

Which permits a human-readable view of entities being tracked.

We can take this output and return only information which specific to what we want to view.

## Important
Before continuing, understand the code which follows may not work as expected if and when the views change from current implementation to a future implementation. Even if the implementation for the views change a developer can alter the code below to match new implementation of these views.

# Examples
These examples are based on the following [NorthWind](https://gist.github.com/karenpayneoregon/7a4ba781b7884be8aa88112260c154a4) database for SQL-Server, similarly using the Oracle version of [NorthWind](https://gist.github.com/karenpayneoregon/f3a6693dee67c528e5c4371f65675c9a) will work too.


# Change order date, required date and shipped date

In most NorthWind databases, dates are before 2000. So we want to change the dates to the current century.

Create a reference dictionary

```csharp
/// <summary>
/// Reference table for replacing years in the three date columns/properties
/// </summary>
private static Dictionary<int, int> YearsReplaceDictionary => new()
{
    [1990] = 2000,
    [1991] = 2001,
    [1992] = 2002,
    [1993] = 2003,
    [1994] = 2004,
    [1995] = 2005,
    [1996] = 2006,
    [1998] = 2008,
    [1999] = 2009
};
```

Get orders

```csharp
await using var context = new NorthwindContext();
var orderList = await context.Orders.ToListAsync();
```

Iterate in a `for` statement, here just RequiredDate is shown

```csharp
if (orderList[index].RequiredDate.HasValue)
{

    if (YearsReplaceDictionary.ContainsKey(orderList[index].RequiredDate.Value.Year))
    {

        var currentRequiredDate = orderList[index].RequiredDate.Value;

        var newRequiredDate = new DateTime(
            YearsReplaceDictionary[orderList[index].RequiredDate.Value.Year],
            currentRequiredDate.Month,
            currentRequiredDate.Day);

        orderList[index].RequiredDate = newRequiredDate;

    }
}
```

Outside of the for statement we use an extension method to view changes

```csharp
Debug.WriteLine(context.ChangeTracker.DebugView.OrdersDatesOnlyView());
```

Which is an easy to read view and notice one year is not being updated, 1997. So we see the code looks good then notice there is no key in the dictionary for 1997 and add it.

```csharp
private static Dictionary<int, int> YearsReplaceDictionary => new()
{
    [1990] = 2000,
    [1991] = 2001,
    [1992] = 2002,
    [1993] = 2003,
    [1994] = 2004,
    [1995] = 2005,
    [1996] = 2006,
    [1997] = 2007,
    [1998] = 2008,
    [1999] = 2009
};
```

Or we could avoid a missing year with the following. 

