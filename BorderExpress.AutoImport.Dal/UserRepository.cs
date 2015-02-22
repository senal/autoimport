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

        private readonly IProjectConfiguration _config;

        public UserRepository(IProjectConfiguration projectConfiguration)
        {
            if (projectConfiguration == null)
                throw new ArgumentNullException("projectConfiguration");
            _config = projectConfiguration;

            _db.ConnectionString = _config.ConnectionString();
        }

        public IList<User> GetAll()
        {
            throw new NotImplementedException();
        }

        public User GetUser(string username)
        {
            
            var sql = " SELECT "
                        + " UserProfile.UserName, "
                        + " webpages_Membership.Password as Hash "
                        + " ,webpages_Membership.PasswordSalt as Salt "
                        + " FROM UserProfile "
                        + " INNER JOIN webpages_Membership  UserProfile.UserId = webpages_Membership.UserId "
                        + " WHERE UserProfile.UserName =@userName ";

            var user = _db.Query<User>(sql, new { username }).FirstOrDefault();

            return user;
        }


        public User GetById(int id)
        {
            throw new NotImplementedException();
        }


        public string Print()
        {
            return string.Format(" From {0}", this.GetType().Name);
        }
    }
}
