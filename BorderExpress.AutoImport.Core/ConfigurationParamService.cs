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
    public class ConfigurationParamService : IConfigurationParamService
    {
        private readonly IConfigurationParamRepository _configurationSetupRepository;

        public ConfigurationParamService(IConfigurationParamRepository configurationSetupRepository)
        {
             IProjectConfiguration projectConfiguration = new ProjectConfiguration();
            _configurationSetupRepository = configurationSetupRepository; // new ConfigurationSetupRepository(projectConfiguration);
        }

        public IList<ConfigurationParam> GetAll()
        {
            IList<ConfigurationParam> configurationSetupList = _configurationSetupRepository.GetAll();
           return configurationSetupList;
        }

        public ConfigurationParam GetById(int id)
        {
            ConfigurationParam configurationSetup = _configurationSetupRepository.Get(id);
            return configurationSetup;
        }

        public void Create(ConfigurationParam configurationSetup)
        {
            _configurationSetupRepository.Create(configurationSetup);
        }

        public void Edit(ConfigurationParam configurationSetup)
        {
            _configurationSetupRepository.Edit(configurationSetup);
        }

        public void Delete(int id)
        {
            _configurationSetupRepository.Delete(id);
        }

        public void Delete(ConfigurationParam configurationSetup)
        {
            _configurationSetupRepository.Delete(configurationSetup.Id);
        }
    }
}
