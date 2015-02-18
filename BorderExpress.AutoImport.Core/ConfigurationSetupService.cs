using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Dal.Interfaces;

namespace BorderExpress.AutoImport.Core
{
    public class ConfigurationSetupService
    {
        private IConfigurationSetupRepository _configurationSetupRepository;

        public ConfigurationSetupService(IConfigurationSetupRepository configurationSetupRepository)
        {
            _configurationSetupRepository = configurationSetupRepository;
        }
    }
}
