using System.Collections.Generic;
using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Core.Interfaces;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Models;
using Moq;
using NUnit.Framework;
using System;

namespace BorderExpress.AutoImport.Tests.UnitTests
{
    [TestFixture]
    public class ConfigurationSetupServiceTest
    {
        private IConfigurationSetupService _configurationSetupService;
        private Mock<IConfigurationSetupRepository> _mockRepository;

        [SetUp]
        public void TestInit()
        {
            _mockRepository = new Mock<IConfigurationSetupRepository>();
            _configurationSetupService = new ConfigurationSetupService(_mockRepository.Object);
        }

        [Test]
        public void GetAll_sShould_Return_A_List()
        {
            //Arrange
            IList<ConfigurationSetup> ExpectedConfigurationSetupList = GetConfigurationSetupList();
           _mockRepository.Setup(a => a.GetAll()).Returns(ExpectedConfigurationSetupList);

            //Act
            var result = _configurationSetupService.GetAll();

            //Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(ExpectedConfigurationSetupList.Count, result.Count);
        }

        [Test]
        public void GetById_Should_Return_One()
        {
            //Arrange
            ConfigurationSetup ExpectedConfigurationSetup = GetConfigurationSetup();
            _mockRepository.Setup(a => a.GetById(1)).Returns(ExpectedConfigurationSetup);

            //Act
            var result = _configurationSetupService.GetById(1);

            //Assert
            Assert.IsNotNull(result);
            Assert.AreEqual(ExpectedConfigurationSetup, result);
        }

        [Test]
        public void Create_Should_Call_RepositoryCreate_Method()
        {
            //Arrange
            ConfigurationSetup ConfigurationSetupToCreated = GetConfigurationSetup();
            _mockRepository.Setup(a => a.Create(ConfigurationSetupToCreated)).Callback(() =>{});

            //Act
            _configurationSetupService.Create(ConfigurationSetupToCreated);

            //Assert
            _mockRepository.Verify(r => r.Create(ConfigurationSetupToCreated), Times.Once());
        }

        [Test]
        public void Edit_Should_Call_RepositoryEdit_Method()
        {
            //Arrange
            ConfigurationSetup ConfigurationSetupToEdit = GetConfigurationSetup();
            _mockRepository.Setup(a => a.Edit(ConfigurationSetupToEdit)).Callback(() => { });

            //Act
            _configurationSetupService.Edit(ConfigurationSetupToEdit);

            //Assert
            _mockRepository.Verify(r => r.Edit(ConfigurationSetupToEdit), Times.Once());
        }

        [Test]
        public void Delete_By_Id_Should_Call_RepositoryDelete_Method()
        {
            //Arrange
            _mockRepository.Setup(a => a.Delete(1)).Callback(() => { });

            //Act
            _configurationSetupService.Delete(1);

            //Assert
            _mockRepository.Verify(r => r.Delete(1), Times.Once());
        }

        [Test]
        public void Delete_Should_Call_RepositoryDelete_Method()
        {
            //Arrange
            ConfigurationSetup ConfigurationSetupToDelete = GetConfigurationSetup();
            _mockRepository.Setup(a => a.Delete(1)).Callback(() => { });

            //Act
            _configurationSetupService.Delete(ConfigurationSetupToDelete);

            //Assert
            _mockRepository.Verify(r => r.Delete(1), Times.Once());
        }

         #region Private
         private IList<ConfigurationSetup> GetConfigurationSetupList()
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

         private ConfigurationSetup GetConfigurationSetup()
         {
            ConfigurationSetup setup = new ConfigurationSetup();
            setup.Id = 1;
            setup.fldDescription = "Description " ;
            setup.fldOptionName = "Option ";
            setup.fldSetting = "Setting ";
            setup.fldVersion = "Version ";
            setup.fldLastUpd = DateTime.Today;

            return setup;
         }
         # endregion
    }
}
