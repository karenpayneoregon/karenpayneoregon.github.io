public class UtilityHelpers
{
    public static void GetProperties(Type t)
    {
        

        foreach (PropertyInfo p in t.GetProperties())
        {
            string propertyName = p.Name;
            Debug.WriteLine($"{p.Name}, {p.PropertyType}");

        }

        Debug.WriteLine(typeof(Order).GetProperties().Length);

    }

    public static int PropertiesCount(Type t)
    {
        return t.GetProperties().Length;
    }

    public static string GetPropertyNameArray(Type t, string varName) 
        => $"var {varName} = new[] {{{string.Join(",", t.GetProperties().Select(propInfo => $"\"{propInfo.Name}\"").ToArray())}}};";
}