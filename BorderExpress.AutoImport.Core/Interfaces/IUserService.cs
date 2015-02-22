using BorderExpress.AutoImport.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Core.Interfaces
{
    public interface IUserService
    {
       bool ValidateUser(string userName, string password);

        //this is for test
        string Print();
    }
}
