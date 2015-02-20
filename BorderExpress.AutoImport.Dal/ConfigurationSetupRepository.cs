using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BorderExpress.AutoImport.Common.Interfaces;
using BorderExpress.AutoImport.Dal.Interfaces;
using BorderExpress.AutoImport.Models;
using Dapper;

namespace BorderExpress.AutoImport.Dal
{
    public class ConfigurationSetupRepository : IConfigurationSetupRepository
    {
        private IDbConnection _db = new SqlConnection();

        public IDbConnection DbConnection
        {
            get
            {
                return _db;
            }
        }
        public ConfigurationSetupRepository(IProjectConfiguration projectConfiguration)
        {
            if (projectConfiguration == null)
                throw new ArgumentNullException("ProjectConfiguration is null in " + this.GetType().Name);

            _db.ConnectionString = projectConfiguration.ConnectionString();
        }

        public IList<ConfigurationSetup> GetAll()
        {
            string query = "SELECT * FROM tblConfiguration";
            IList<ConfigurationSetup> setupList =
                this._db.Query<ConfigurationSetup>(query).ToList();

            return setupList;

        }

        public IQueryable<ConfigurationSetup> GetQueryable()
        {
            throw new NotImplementedException();
        }

        public void Create(ConfigurationSetup configurationSetup)
        {
            string query = "INSERT INTO [dbo].[tblConfiguration] ([fldOptionName] ,[fldSetting] ,[fldVersion] ,[fldDescription] ,[fldLastUpd])"
                           + "VALUES(@fldOptionName, @fldSetting, @fldVersion, @fldDescription, @fldLastUpd)";
            _db.Execute(query, new
            {
                configurationSetup.fldOptionName,
                configurationSetup.fldSetting,
                configurationSetup.fldVersion,
                configurationSetup.fldDescription,
                configurationSetup.fldLastUpd
            });
        }

        public void Edit(ConfigurationSetup configurationSetup)
        {
            string query = "UPDATE [dbo].[tblConfiguration] ([fldOptionName] = @fldOptionName,[fldSetting] = @fldSetting," +
                           "[fldVersion] =  @fldVersion ,[fldDescription]  = @fldDescription ,[fldLastUpd] =  @fldLastUpd"
                           + "WHERE id = @id";
            _db.Execute(query, new
            {
                configurationSetup.fldOptionName,
                configurationSetup.fldSetting,
                configurationSetup.fldVersion,
                configurationSetup.fldDescription,
                configurationSetup.fldLastUpd,
                configurationSetup.Id
            });
        }


        public void Delete(int id)
        {
            string query = "DELETE FROM [dbo].[tblConfiguration] WHERE id = @id";
            _db.Execute(query, new { id });
        }


        public ConfigurationSetup GetById(int id)
        {
            string query = "SELECT * FROM tblConfiguration WHERE id = " + id;
            ConfigurationSetup configurationSetup =
                this._db.Query<ConfigurationSetup>(query).Single();

            return configurationSetup;
        }
    }
}
