using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Core.Interfaces
{
    public interface IConfigurationParamService:IService
    {
        IList<ConfigurationParam> GetAll();
        ConfigurationParam GetById(int id);
        void Create(ConfigurationParam configurationSetup);
        void Edit(ConfigurationParam configurationSetup);
        void Delete(int id);
        void Delete(ConfigurationParam configurationSetup);
    }
}
