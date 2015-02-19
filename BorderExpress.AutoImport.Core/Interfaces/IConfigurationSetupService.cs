using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Core.Interfaces
{
    public interface IConfigurationSetupService:IService
    {
        IList<ConfigurationSetup> GetAll();
        ConfigurationSetup GetById(int id);
        void Create(ConfigurationSetup configurationSetup);
        void Edit(ConfigurationSetup configurationSetup);
        void Delete(int id);
        void Delete(ConfigurationSetup configurationSetup);
    }
}
