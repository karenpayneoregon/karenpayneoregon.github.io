namespace CodeSample
{
    public class Account 
    {
        public int Id { get; set; }
        public bool Active { get; set; }
        public string Line => $"{Id},{Active}";
        public override string ToString() => Id.ToString();

    }
}