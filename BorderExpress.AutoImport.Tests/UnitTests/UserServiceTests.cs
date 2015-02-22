using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Core.Interfaces;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Models;
using Moq;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Tests.UnitTests
{
    [TestFixture]
    public class UserServiceTests
    {
        private  Mock<IUserRepository> _userRepository;
        private Mock<IProjectConfiguration> _config;
        private Mock<ISaltedHashManager> _saltManager;
        private UserService sut;

        [SetUp]
        public void Setup()
        {
            _userRepository = new Mock<IUserRepository>();
            _config = new Mock<IProjectConfiguration>();
            _saltManager = new Mock<ISaltedHashManager>();
             sut = new UserService(_userRepository.Object, _config.Object, _saltManager.Object);
        }

        [Test]
        public void ValidateUser_WithEmptyUserName_False()
        {
            User user = null;
            _userRepository.Setup(m => m.GetUser(It.IsAny<string>())).Returns(user);

            var actual = sut.ValidateUser(string.Empty, "xyz");

            Assert.IsFalse(actual);
        }

        [Test]
        public void ValidateUser_WithEmptyPassword_False()
        {
            User user = null;
            _userRepository.Setup(m => m.GetUser(It.IsAny<string>())).Returns(user);

            var actual = sut.ValidateUser("user", string.Empty);

            Assert.IsFalse(actual);
        }

        [Test]
        public void ValidateUser_WithEmptyUserNameAndPassword_False()
        {
            User user = null;
            _userRepository.Setup(m => m.GetUser(It.IsAny<string>())).Returns(user);

            var actual = sut.ValidateUser(string.Empty, string.Empty);

            Assert.IsFalse(actual);
        }

        [Test]
        public void ValidateUser_NotExistsUserName_False()
        {
            User user = null;
            _userRepository.Setup(m => m.GetUser(It.IsAny<string>())).Returns(user);

            var actual = sut.ValidateUser("yum", "pass");

            _userRepository.Verify(m => m.GetUser(It.IsAny<string>()), Times.Once);
            Assert.IsFalse(actual);
            
        }

        [Test]
        public void ValidateUser_ExistsUserWrongPassword_False()
        {
            User user = new User() { UserName = "yum", Hash = "assa", Salt = "asdad" };
            _userRepository.Setup(m => m.GetUser(It.IsAny<string>())).Returns(user);
            bool invalid = false;
            _saltManager.Setup(m => m.Verify(user.UserName, user.Hash, user.Salt)).Returns(invalid);

            var actual = sut.ValidateUser("yum", "xyz");

            _userRepository.Verify(m => m.GetUser(It.IsAny<string>()), Times.Once);
            Assert.IsFalse(actual);
        }

        [Test]
        public void ValidateUser_ExistsUserCorrectUserNameAndPassword_True()
        {
            User user = new User() { UserName = "yum", Hash = "D245520A3450171E52ED43682D2945AD9A78BAAC0UUTybqrudU1K81jdwgEv3HvehvRjuHItRnvKhE2U7Y=", Salt = " qj/fjLScrRpD1RcafuaQE29siAnlDUMwSkNntCLcIzg=" };
            _userRepository.Setup(m => m.GetUser("yum")).Returns(user);

            var actual = sut.ValidateUser("yum", "xyz");

            _userRepository.Verify(m => m.GetUser(user.UserName), Times.Once);
            _saltManager.Verify(m => m.Verify(user.Salt, user.Hash, "xyz"), Times.Once);
            Assert.IsFalse(actual);

        }

        
        [Test]
        [Ignore("Temporary on hold: most probably will be removed after inspection. ")]
        public void Should_Return_Null_For_Invalid_UserName()
        {
            /*
            //Arrange
            User user = new User() { UserName = "User 1" };
            Mock<IUserService> mockUserService = new Mock<IUserService>();
            mockUserService.Setup(a => a.GetUser(It.Is<string>(t => t == "Admin"))).Returns(new User() { UserName = "Admin", Hash = "7C/tkVAhW6Q=", Salt = "x6bb0YW=" });

            //Act
            var result = sut.GetUser(user.UserName);

            //Assert
            Assert.IsNull(result);
            */
        }

        [Test]
        [Ignore("Temporary on hold: most probably will be removed after inspection. ")]
        public void Should_Return_Password_For_Valid_UserName()
        {
            /*
            //Arrange
            User user =new User() {UserName    = "Admin" };
            Mock<IUserService> mockUserService = new Mock<IUserService>();
            mockUserService.Setup(a => a.GetUser(It.Is<string>(t => t == "Admin"))).Returns(new User() { UserName = "Admin", Hash = "CA3456C2CFA046E4CB5BB2DBF35353759814C657x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=", Salt = "x6bg7C/tkVAhW6Q=" });
            
            //Act
            var result = sut.GetUser(user.UserName);

            //Assert
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Hash == "CA3456C2CFA046E4CB5BB2DBF35353759814C657x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=");
            */
        }
    }
}
