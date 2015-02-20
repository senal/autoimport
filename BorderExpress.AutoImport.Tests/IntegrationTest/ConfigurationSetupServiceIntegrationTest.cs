using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Common;
using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Models;
using NUnit.Framework;
using NUnit.Framework.Internal;

namespace BorderExpress.AutoImport.Tests.IntegrationTest
{
    [TestFixture]
    public class ConfigurationSetupServiceIntegrationTest
    {
        private ConfigurationSetupService _configurationSetupService;
        private ConfigurationSetupRepository _configurationSetupRepository;

        [SetUp]
        public void TestInit()
        {
            ProjectConfiguration projectConfiguration = new ProjectConfiguration();
            _configurationSetupRepository = new ConfigurationSetupRepository(projectConfiguration);
            _configurationSetupService = new ConfigurationSetupService(_configurationSetupRepository);
        }

        [Test]
        public void GetAll_Should_Return_List()
        {
            //Act
            IList<ConfigurationSetup> resultList = _configurationSetupService.GetAll();

            //Asert
            Assert.IsNotNull(resultList);
        }

        [Test]
        public void Create_Should_IncreaseDataCount()
        {
            //Arrange
            int countBeforeCreate = _configurationSetupService.GetAll().Count;
            ConfigurationSetup configurationSetup = TestData.GetConfigurationSetupWithoutId();

            //Act 
            _configurationSetupService.Create(configurationSetup);
            int countAfterCreate = _configurationSetupService.GetAll().Count;

            //Assert
            Assert.IsTrue(countAfterCreate + 1 == countAfterCreate);
        }
    }
}
