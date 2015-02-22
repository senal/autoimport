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
        private readonly ISaltedHashManager _saltManager;

        public UserService(IUserRepository userRepository, IProjectConfiguration config, ISaltedHashManager saltManager)
        {
            if (userRepository == null)
                throw new ArgumentNullException("userRepository");
            if (saltManager == null)
                throw new ArgumentNullException("saltManager");

            _userRepository = userRepository;
             _saltManager = saltManager;
            
        }

        public bool ValidateUser(string userName, string password)
        {
            if (string.IsNullOrWhiteSpace(userName) || string.IsNullOrWhiteSpace(password))
                return false;
       
            var user = _userRepository.GetUser(userName);
            if (user == null)
                return false;

            if (!_saltManager.Verify(user.Salt, user.Hash, password))
                return false;

            return true;           
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
