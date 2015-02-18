using System;
using System.Collections.Generic;
using System.Linq;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Models;
using System.Data;
using System.Data.SqlClient;
using Dapper;

namespace BorderExpress.AutoImport.Dal
{
    public class UserRepository:IUserRepository
    {
        private IDbConnection _db = new SqlConnection();

        public UserRepository(IProjectConfiguration projectConfiguration)
        {
            if (projectConfiguration == null)
                throw new ArgumentNullException("ProjectConfiguration is null in " + this.GetType().Name);

            _db.ConnectionString = projectConfiguration.ConnectionString();
        }

        public IList<User> GetAll()
        {
            throw new NotImplementedException();
        }

        public IQueryable<User> GetQueryable()
        {
            throw new NotImplementedException();
        }

        public User GetUser(string username)
        {
            List<User> userList = this._db.Query<User>("SELECT UserProfile.UserName,webpages_Membership.Password as Hash,webpages_Membership.PasswordSalt as Salt   FROM UserProfile INNER JOIN webpages_Membership ON  UserProfile.UserId = webpages_Membership.UserId WHERE UserProfile.UserName = '" + username + "'").ToList();

            if (userList.Count == 1)
                return userList.First();
            else
                return null;
        }


        public User GetById(int id)
        {
            throw new NotImplementedException();
        }
    }
}
