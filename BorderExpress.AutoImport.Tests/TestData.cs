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

        public static IList<ConfigurationParam> GetConfigurationSetupList()
        {
            ConfigurationParam setup;
            IList<ConfigurationParam> ConfigurationSetupList = new List<ConfigurationParam>();

            for (int index = 0; index < 5; index++)
            {
                setup = new ConfigurationParam();
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

        public static ConfigurationParam GetConfigurationSetup()
        {
            ConfigurationParam setup = new ConfigurationParam();
            setup.Id = 1;
            setup.fldDescription = "Description ";
            setup.fldOptionName = "Option ";
            setup.fldSetting = "Setting ";
            setup.fldVersion = "Version ";
            setup.fldLastUpd = DateTime.Today;

            return setup;
        }

        public static ConfigurationParam GetConfigurationSetupWithoutId()
        {
            ConfigurationParam setup = new ConfigurationParam();
            setup.fldDescription = "Description ";
            setup.fldOptionName = "Option ";
            setup.fldSetting = "Setting ";
            setup.fldVersion = "Version ";
            setup.fldLastUpd = DateTime.Today;

            return setup;
        }

    }
}
