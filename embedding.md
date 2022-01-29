# Entity Framework Core Debug view

## ShortView

```
BusinessEntityPhone {BusinessEntityPhoneId: 1} Deleted
BusinessEntityPhone {BusinessEntityPhoneId: 1} Deleted
Products {ProductId: 3} Modified FK {CategoryId: 2} FK {SupplierId: 1}
Products {ProductId: 4} Unchanged FK {CategoryId: 2} FK {SupplierId: 2}
Products {ProductId: 5} Unchanged FK {CategoryId: 2} FK {SupplierId: 2}
Suppliers {SupplierId: 1} Unchanged FK {CountryIdentifier: 19}
Suppliers {SupplierId: 2} Unchanged FK {CountryIdentifier: 20}

original name: 'Aniseed Syrup' current: 'ABC'
The program '[28344] SqlServerConsoleApp.exe' has exited with code 0 (0x0).

```

## LomgView

```
BusinessEntityPhone {BusinessEntityPhoneId: 1} Deleted
  BusinessEntityPhoneId: 1 PK
  ModifiedDate: '1/7/2009 12:00:00 AM'
  PhoneNumber: '697-555-0142'
  PhoneNumberTypeId: 3
Products {ProductId: 3} Modified
  ProductId: 3 PK
  CategoryId: 2 FK
  Discontinued: 'False'
  DiscontinuedDate: <null>
  ProductName: 'ABC' Modified Originally 'Aniseed Syrup'
  QuantityPerUnit: '12 - 550 ml bottles'
  ReorderLevel: 25
  SupplierId: 1 FK
  UnitPrice: 10.0000
  UnitsInStock: 13
  UnitsOnOrder: 70
  Category: {CategoryId: 2}
  OrderDetails: [{OrderId: 10289, ProductId: 3}, {OrderId: 10405, ProductId: 3}, {OrderId: 10485, ProductId: 3}, {OrderId: 10540, ProductId: 3}, {OrderId: 10591, ProductId: 3}, {OrderId: 10702, ProductId: 3}, {OrderId: 10742, ProductId: 3}, {OrderId: 10764, ProductId: 3}, {OrderId: 10849, ProductId: 3}, {OrderId: 10857, ProductId: 3}, {OrderId: 11017, ProductId: 3}, {OrderId: 11077, ProductId: 3}]
  Supplier: {SupplierId: 1}
original name: 'Aniseed Syrup' current: 'ABC'
The program '[28356] SqlServerConsoleApp.exe' has exited with code 0 (0x0).

```



```csharp
public static class Extensions
{
    /// <summary>
    /// Determine if any token exists in a string
    /// </summary>
    /// <param name="sender">string to check</param>
    /// <param name="items">tokens to check if in sender</param>
    /// <returns>true/false</returns>
    public static bool Has(this string sender, string[] items)
    {
        foreach (var item in items)
        {
            if (sender.Contains(item, StringComparison.OrdinalIgnoreCase))
            {
                return true;
            }
        }

        return false;

    }
}
```