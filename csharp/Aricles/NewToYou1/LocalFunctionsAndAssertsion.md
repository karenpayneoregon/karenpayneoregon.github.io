# Write better code tip 1

 Coders nine times out of ten when first starting to write code when stuck seek advice in various forums. The majority of replies that answer a question are not robust and the coder asking tend to not dissect the code or see if the code can be improved. Couple this with no unit testing is a recipe for issues down the road.

 A good example, coder want to read a comma-delimited file as shown below.

 ```
 12424,true
1221412
1242121,false
1421515
```
Their logic, read the file, find a value (let’s call the first value an account number) and if the account has been deactivated add `,false`

Once `,false` is added save the file back to the local file system.

The reply was to read the file and save back to the original file, that is it besides redirecting them to another post with a similar question. I looked at the other question/response and know full well the coder was not going to get it.

# Resolutions

First change the logic to having a file structure as follows.

```
12424,true
1221412,false
1242121,false
1421515,true
```

Next create a cooncrete class to represent the data.

```csharp
public class Account 
{
    public int Id { get; set; }
    public bool Active { get; set; }
    public string Line => $"{Id},{Active}";
    public override string ToString() => Id.ToString();
}
```

What does this give us?

- A valid structure which is stongly typed property wise
- A read-only property to write data back to the file system


Now create a class with methods to read and write data. Novice coders love short code for a solution which the following is. If the file is always in pristine condition every single time then the code below is fine, stop here. Anyone who has a full time position coding knows at one point or another something will break, permission issues, missing file or the file structure is not as expected.

```csharp
public class AccountOperations
{
    private static string _fileName = "Accounts.csv";

    /// <summary>
    /// Use when there is zero chance of problems
    /// </summary>
    /// <returns></returns>
    public static List<Account> Read()
    {
        return File.ReadAllLines(_fileName).Select(line =>
        {
            var parts = line.Split(',');
            return new Account()
            {
                Id = Convert.ToInt32(parts[0]),
                Active = Convert.ToBoolean(parts[1])
            };
        }).ToList();
    }


    public static void Write(List<Account> accounts)
    {
        var sb = new StringBuilder();
        accounts.ForEach(account => sb.AppendLine(account.Line));
        File.WriteAllText(_fileName, sb.ToString());
    }
}
```

A coder may realize there may be issues so this is the next version to read data.

```csharp
public static List<Account> Read()
{
    List<Account> accounts = new List<Account>();

    if (File.Exists(_fileName))
    {
        var lines = File.ReadAllLines(_fileName);

        if (lines.All(line => line.Contains(",")))
        {
            var parts = lines.Select(line => line.Split(',')).ToArray();
            if (parts.All(item => bool.TryParse(item[1], out _)) && 
                parts.All(item => !string.IsNullOrWhiteSpace(item[0])) && 
                parts.All(item => int.TryParse(item[0], out _)))
            {
                accounts = parts.Select(data => new Account()
                {
                    Id = Convert.ToInt32(parts[0]),
                    Active = Convert.ToBoolean(parts[1])
                }).ToList();

            }

        }
    }

    return accounts;
}
```

It's a little better but has a few holes and the inner if statement if lengthy which can make maintaining this code difficult.

This is where spending time writing out a logic path, walking through code to find issues along with writing unit test methods which is stretching things as many newcomers to programming seem to avoid unit testing and debugging like it’s the plague.

Next level, break the inner if statement out to a local function to keep the main code clean. Why use a local function? Because this is the only place the logic is used.

Rather than simply returning a single value, in this case a list of accounts, use a named tuple which returns a bool and list.

```csharp
public static (bool, List<Account>) Read()
{
    /*
     * Local function using expression body for returning success
     */
    bool PassesValidation(string[][] parts) =>
        parts.All(item => bool.TryParse(item[1], out _)) && 
        parts.All(item => !string.IsNullOrWhiteSpace(item[0])) && 
        parts.All(item => int.TryParse(item[0], out _));


    List<Account> accounts = new List<Account>();
    bool success = false;
    
    if (File.Exists(_fileName))
    {
        var lines = File.ReadAllLines(_fileName);

        if (lines.All(line => line.Contains(",")))
        {
            var parts = lines.Select(line => line.Split(',')).ToArray();
            
            if (PassesValidation(parts))
            {
                accounts = parts.Select(data => new Account()
                {
                    Id = Convert.ToInt32(parts[0]),
                    Active = Convert.ToBoolean(parts[1])
                }).ToList();

                success = true;
            }
            
        }
    }

    return (success, accounts);
}
```

Reading the file, if all is okay, find an account and set the Active property.

```csharp
var (success, accountList) = AccountOperations.Read();

if (success)
{
    var identifier = 1221412;

    var account = accountList.FirstOrDefault(Account => Account.Id == identifier);
    if (account != null)
    {
        account.Active = true;
    }

    AccountOperations.Write(accountList);
}
else
{
    // do not use the list
}
```

# Challenge

Create a class project, add the two classes above. Create a unit test project and write test to validate the read and write methods work properly. If there are issues fix them e.g. path too long, permission issues (tip use try-catch and logging) etc.

---


![Versions.png](.\Versions.png)






