﻿using BorderExpress.AutoImport.Common;
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
        private IUserRepository _userRepository;

        public UserService()
        {
            IProjectConfiguration projectConfiguration = new ProjectConfiguration();
            _userRepository = new UserRepository(projectConfiguration);
        }

        public User GetUser(string username)
        {
            return _userRepository.GetUser(username);
        }
    }
}
