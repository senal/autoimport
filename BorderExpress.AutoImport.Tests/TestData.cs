using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Models;

namespace BorderExpress.AutoImport.Tests
{
    public static class TestData
    {

        public static IList<ConfigurationSetup> GetConfigurationSetupList()
        {
            ConfigurationSetup setup;
            IList<ConfigurationSetup> ConfigurationSetupList = new List<ConfigurationSetup>();

            for (int index = 0; index < 5; index++)
            {
                setup = new ConfigurationSetup();
                setup.Id = index + 1;
                setup.fldDescription = "Description " + index;
                setup.fldOptionName = "Option " + index;
                setup.fldSetting = "Setting " + index;
                setup.fldVersion = "Version " + index;
                setup.fldLastUpd = DateTime.Today.AddDays(index);
                ConfigurationSetupList.Add(setup);
            }
            return ConfigurationSetupList;
        }

        public static ConfigurationSetup GetConfigurationSetup()
        {
            ConfigurationSetup setup = new ConfigurationSetup();
            setup.Id = 1;
            setup.fldDescription = "Description ";
            setup.fldOptionName = "Option ";
            setup.fldSetting = "Setting ";
            setup.fldVersion = "Version ";
            setup.fldLastUpd = DateTime.Today;

            return setup;
        }

        public static ConfigurationSetup GetConfigurationSetupWithoutId()
        {
            ConfigurationSetup setup = new ConfigurationSetup();
            setup.fldDescription = "Description ";
            setup.fldOptionName = "Option ";
            setup.fldSetting = "Setting ";
            setup.fldVersion = "Version ";
            setup.fldLastUpd = DateTime.Today;

            return setup;
        }

    }
}
