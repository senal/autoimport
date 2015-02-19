using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Common;
using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Core.Interfaces;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Core
{
    public class ConfigurationSetupService : IConfigurationSetupService
    {
        private readonly IConfigurationSetupRepository _configurationSetupRepository;

        public ConfigurationSetupService(IConfigurationSetupRepository configurationSetupRepository)
        {
             IProjectConfiguration projectConfiguration = new ProjectConfiguration();
            _configurationSetupRepository = configurationSetupRepository; // new ConfigurationSetupRepository(projectConfiguration);
        }

        public IList<ConfigurationSetup> GetAll()
        {
           IList<ConfigurationSetup> configurationSetupList = _configurationSetupRepository.GetAll();
           return configurationSetupList;
        }

        public ConfigurationSetup GetById(int id)
        {
            ConfigurationSetup configurationSetup = _configurationSetupRepository.GetById(id);
            return configurationSetup;
        }

        public void Create(ConfigurationSetup configurationSetup)
        {
            _configurationSetupRepository.Create(configurationSetup);
        }

        public void Edit(ConfigurationSetup configurationSetup)
        {
            _configurationSetupRepository.Edit(configurationSetup);
        }

        public void Delete(int id)
        {
            _configurationSetupRepository.Delete(id);
        }

        public void Delete(ConfigurationSetup configurationSetup)
        {
            _configurationSetupRepository.Delete(configurationSetup.Id);
        }
    }
}
