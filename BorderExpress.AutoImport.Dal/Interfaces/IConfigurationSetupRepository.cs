﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Dal.Interfaces
{
    public interface IConfigurationSetupRepository : IRepository<ConfigurationSetup>
    {
        void Create(ConfigurationSetup configurationSetup);
        void Edit(ConfigurationSetup configurationSetup);
        void Delete(int id);
    }
}
