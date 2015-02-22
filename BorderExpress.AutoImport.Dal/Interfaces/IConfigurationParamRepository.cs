using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Dal.Interfaces
{
    public interface IConfigurationParamRepository 
    {
        IList<ConfigurationParam> GetAll();
        ConfigurationParam Get(int id);
        void Create(ConfigurationParam configurationSetup);
        void Edit(ConfigurationParam configurationSetup);
        void Delete(int id);
    }
}
