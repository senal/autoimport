using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Common;
using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Models;
using NUnit.Framework;
using System.Transactions;

namespace BorderExpress.AutoImport.Tests.IntegrationTest
{
    [TestFixture]
    public class ConfigurationSetupServiceIntegrationTest
    {
        private ConfigurationParamService _configurationSetupService;
        private ConfigurationParamRepository _configurationSetupRepository;

        [SetUp]
        public void TestInit()
        {
            ProjectConfiguration projectConfiguration = new ProjectConfiguration();
            _configurationSetupRepository = new ConfigurationParamRepository(projectConfiguration);
            _configurationSetupService = new ConfigurationParamService(_configurationSetupRepository);
        }

        [Test]
        public void GetAll_Should_Return_List()
        {
            //Act
            IList<ConfigurationParam> resultList = _configurationSetupService.GetAll();

            //Asert
            Assert.IsNotNull(resultList);
        }

        [Test]
        public void Create_Should_IncreaseDataCount()
        {
                    //Arrange
                    int countBeforeCreate = _configurationSetupService.GetAll().Count;
                    ConfigurationParam configurationSetup = TestData.GetConfigurationSetupWithoutId();

                    //Act 
                    _configurationSetupService.Create(configurationSetup);
                    int countAfterCreate = _configurationSetupService.GetAll().Count;

                    //Assert
                    Assert.IsTrue(countBeforeCreate + 1 == countAfterCreate);
        }

        [Test]
        public void Delete_Should_DecreaseDataCount()
        {
            //Arrange
            IList<ConfigurationParam> resultList = _configurationSetupService.GetAll();
            int countBeforeDelete = resultList.Count;

            //Act 
            _configurationSetupService.Delete(resultList.Last().Id);
            int countAfterDelete = _configurationSetupService.GetAll().Count;

            //Assert
            Assert.IsTrue(countBeforeDelete - 1 == countAfterDelete);
        }

        [Test]
        public void GetById_Should_ReturnElement()
        {
            //Arrange
            ConfigurationParam configurationSetupToCreate = TestData.GetConfigurationSetupWithoutId();
            _configurationSetupService.Create(configurationSetupToCreate);
            IList<ConfigurationParam> resultList = _configurationSetupService.GetAll();

            //Act 
            ConfigurationParam result = _configurationSetupService.GetById(resultList.Last().Id);

            //Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(configurationSetupToCreate.fldDescription, result.fldDescription);
        }

        [Test]
        public void Edit_Should_UpdateElement()
        {
            //Arrange
            IList<ConfigurationParam> resultList = _configurationSetupService.GetAll();
            ConfigurationParam configurationSetupEdit = resultList.Last();
            string descriptionBeforeEdit = configurationSetupEdit.fldDescription;
            configurationSetupEdit.fldDescription = configurationSetupEdit.fldDescription + " edited";

            //Act 
           _configurationSetupService.Edit(configurationSetupEdit);

            //Assert
            string descriptionAfterEdit = _configurationSetupService.GetAll().Last().fldDescription;
            Assert.AreEqual(descriptionBeforeEdit + " edited", descriptionAfterEdit);
        }
    }
}
