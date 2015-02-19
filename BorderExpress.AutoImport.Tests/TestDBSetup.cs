using BorderExpress.AutoImport.Common;
using BorderExpress.AutoImport.Common.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Tests
{
    public class TestDBSetup
    {
        public static void Setup()
        { 
            var scriptsFolderPath = Environment.CurrentDirectory + @"\Scripts\";
            StringBuilder script = new StringBuilder();
            IProjectConfiguration _projectConfiguration = new ProjectConfiguration();
            string connectionString = _projectConfiguration.ConnectionString();

            using (StreamReader sr = File.OpenText(scriptsFolderPath + "DataBase.sql"))
            {
                string line = "";
                while ((line = sr.ReadLine()) != null)
                {
                    script.Append(line);
                }
            }

            using (StreamReader sr = File.OpenText(scriptsFolderPath + "MasterData.sql"))
            {
                string line = "";
                while ((line = sr.ReadLine()) != null)
                {
                    script.Append(line);
                }
            }

            IDbConnection dbcon;
            using (dbcon = new SqlConnection(connectionString))
            {
                dbcon.Open();
                using (IDbCommand dbcmd = dbcon.CreateCommand())
                {
                    dbcmd.CommandText = script.ToString();
                    dbcmd.ExecuteNonQuery();
                }
            }
        }
    }
}
