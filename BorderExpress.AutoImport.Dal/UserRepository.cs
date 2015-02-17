using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Dal.Model;
using BorderExpress.AutoImport.Common.Interfaces;
using Dapper;

namespace BorderExpress.AutoImport.Dal
{
    public class UserRepository:IUserRepository
    {
        private readonly IConfiguration _configuration;
        
        public UserRepository(IConfiguration configuration)
        {
            if(_configuration==null)
                throw new ArgumentNullException("configuration");
            _configuration = configuration;
        }

        public IList<User> GetAll()
        {
            throw new NotImplementedException();
        }

        public IQueryable<User> GetQueryable()
        {
            throw new NotImplementedException();
        }
    }
}
