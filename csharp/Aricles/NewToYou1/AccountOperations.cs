using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace WindowsFormsApp2
{
    public class AccountOperations
    {
        private static string _fileName = "Accounts.csv";

        /// <summary>
        /// Use when there is zero chance of problems
        /// </summary>
        /// <returns></returns>
        public static List<Account> ReadClean()
        {
            return File.ReadAllLines(_fileName).Select(line =>
            {
                var parts = line.Split(',');
                return new Account()
                {
                    Id = Convert.ToInt32((string) parts[0]), 
                    Active = Convert.ToBoolean(parts[1] ?? "false")
                };
            }).ToList();
        }

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

        public static void Write(List<Account> accounts)
        {
            var sb = new StringBuilder();
            accounts.ForEach(account => sb.AppendLine(account.Line));
            File.WriteAllText(_fileName, sb.ToString());
        }
    }
}