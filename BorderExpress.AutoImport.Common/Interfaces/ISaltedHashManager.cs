using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Common.Interfaces
{
    public interface ISaltedHashManager
    {
        bool Verify(string salt, string hash, string password);
    }
}
