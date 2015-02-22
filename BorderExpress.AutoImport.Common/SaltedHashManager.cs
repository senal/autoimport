using BorderExpress.AutoImport.Common.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace BorderExpress.AutoImport.Common
{
    public class SaltedHashManager:ISaltedHashManager
    {
        public bool Verify(string salt, string hash, string password)
        {
            return hash == CreatePasswordHash(password, salt);
        }

        private static string CreatePasswordHash(string pwd, string salt)
        {
            string saltAndPwd = String.Concat(pwd, salt);
            string hashedPwd = FormsAuthentication.HashPasswordForStoringInConfigFile(saltAndPwd, "SHA1");
            hashedPwd = String.Concat(hashedPwd, salt);
            return hashedPwd;
        }
    }
}
