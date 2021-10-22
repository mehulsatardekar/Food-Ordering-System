using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.USER
{
    public class passwordhash
    {
      public  string GetRandomSalt()
        {
            return BCrypt.Net.BCrypt.GenerateSalt(12, 'b');
        }
        
       public string HashPassword( string password)
        {
            return BCrypt.Net.BCrypt.HashPassword(password, GetRandomSalt());
        }

      //public string replacepassword(string currentpassword,  currenthash, string newpassword)
      //  {
            
      //         return BCrypt.Net.BCrypt.ValidateAndReplacePassword(currentpassword, currenthash, newpassword, 12);
           
      //  }
    }
}