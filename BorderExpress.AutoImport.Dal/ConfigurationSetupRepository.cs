using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Dal.Model;
using Dapper;

namespace BorderExpress.AutoImport.Dal
{
    public class ConfigurationSetupRepository : IConfigurationSetupRepository
    {
        private static string connectionString;

        private IDbConnection _db = new SqlConnection(connectionString);

        public IList<ConfigurationSetup> GetAll()
        {
            IList<ConfigurationSetup> setupList =
                this._db.Query<ConfigurationSetup>("SELECT * FROM tblConfiguration").ToList();

            return setupList;

        }

        public IQueryable<ConfigurationSetup> GetQueryable()
        {
            throw new NotImplementedException();
        }
    }
}
