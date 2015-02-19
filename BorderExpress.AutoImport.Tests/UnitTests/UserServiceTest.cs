using BorderExpress.AutoImport.Core;
using BorderExpress.AutoImport.Core.Interfaces;
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
    public class UserServiceTest
    {
        private IUserService _userService;

        [SetUp]
        public void TestInit()
        {
            _userService = new UserService();
        }

        [Test]
        public void Should_Return_Null_For_Empty_UserName()
        {
            //Arrange
            User user = new User() { UserName = "" };
            Mock<IUserService> mockUserService = new Mock<IUserService>();
            mockUserService.Setup(a => a.GetUser(It.Is<string>(t => t == "Admin"))).Returns(new User() { UserName = "Admin", Hash = "CA3456C2CFA046E4CB5BB2DB", Salt = "x6bb0YW3PkCwqD=" });

            //Act
            var result = _userService.GetUser(user.UserName);

            //Assert
            Assert.IsNull(result);
        }

        [Test]
        public void Should_Return_Null_For_Invalid_UserName()
        {
            //Arrange
            User user = new User() { UserName = "User 1" };
            Mock<IUserService> mockUserService = new Mock<IUserService>();
            mockUserService.Setup(a => a.GetUser(It.Is<string>(t => t == "Admin"))).Returns(new User() { UserName = "Admin", Hash = "7C/tkVAhW6Q=", Salt = "x6bb0YW=" });

            //Act
            var result = _userService.GetUser(user.UserName);

            //Assert
            Assert.IsNull(result);
        }

        [Test]
        public void Should_Return_Password_For_Valid_UserName()
        {
            //Arrange
            User user =new User() {UserName    = "Admin" };
            Mock<IUserService> mockUserService = new Mock<IUserService>();
            mockUserService.Setup(a => a.GetUser(It.Is<string>(t => t == "Admin"))).Returns(new User() { UserName = "Admin", Hash = "CA3456C2CFA046E4CB5BB2DBF35353759814C657x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=", Salt = "x6bg7C/tkVAhW6Q=" });
            
            //Act
            var result = _userService.GetUser(user.UserName);

            //Assert
            Assert.IsNotNull(result);
            Assert.IsTrue(result.Hash == "CA3456C2CFA046E4CB5BB2DBF35353759814C657x6bb0YW3PkCwqD3Y28JBSsU0tXRh4mug7C/tkVAhW6Q=");
        }
    }
}
