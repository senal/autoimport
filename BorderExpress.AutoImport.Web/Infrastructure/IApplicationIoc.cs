using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Web.Infrastructure
{
    public interface IApplicationIoc
    {
        void Bootstrap();
        void Dispose();
    }
}
