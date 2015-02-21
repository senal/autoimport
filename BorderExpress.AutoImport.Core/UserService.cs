using BorderExpress.AutoImport.Common;
using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Core.Interfaces;
using BorderExpress.AutoImport.Dal;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Core
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _userRepository;
        private readonly IProjectConfiguration _config;

        public UserService(IUserRepository userRepository, IProjectConfiguration config)
        {
            if (userRepository == null)
                throw new ArgumentNullException("userRepository");
            if (config == null)
                throw new ArgumentNullException("config");

            _config = config;
            _userRepository = userRepository;
        }

        public User GetUser(string username)
        {
            return _userRepository.GetUser(username);
        }

        public string Print()
        {
            var user = new User() { UserName = "ranga" };

            var sb = new StringBuilder();
            sb.Append(string.Format("Hello {0} \n", user.UserName));
            sb.Append(string.Format(" and I was able to call my Repo {0}", _userRepository.Print()));
            sb.Append(string.Format(" and the config also {0}", _userRepository.Print()));

            return sb.ToString();
        }
    }
}
