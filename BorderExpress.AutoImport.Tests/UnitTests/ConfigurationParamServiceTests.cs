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
    public class ConfigurationParamServiceTests
    {
        private IConfigurationParamService _configurationSetupService;
        private Mock<IConfigurationParamRepository> _mockRepository;

        [SetUp]
        public void TestInit()
        {
            _mockRepository = new Mock<IConfigurationParamRepository>();
            _configurationSetupService = new ConfigurationParamService(_mockRepository.Object);
        }

        [Test]
        public void GetAll_sShould_Return_A_List()
        {
            //Arrange
            IList<ConfigurationParam> ExpectedConfigurationSetupList = TestData.GetConfigurationSetupList();
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
            ConfigurationParam ExpectedConfigurationSetup = TestData.GetConfigurationSetup();
            _mockRepository.Setup(a => a.Get(1)).Returns(ExpectedConfigurationSetup);

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
            ConfigurationParam ConfigurationSetupToCreated = TestData.GetConfigurationSetup();
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
            ConfigurationParam ConfigurationSetupToEdit = TestData.GetConfigurationSetup();
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
            ConfigurationParam ConfigurationSetupToDelete = TestData.GetConfigurationSetup();
            _mockRepository.Setup(a => a.Delete(1)).Callback(() => { });

            //Act
            _configurationSetupService.Delete(ConfigurationSetupToDelete);

            //Assert
            _mockRepository.Verify(r => r.Delete(1), Times.Once());
        }

        
    }
}
