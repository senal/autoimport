using System.Configuration;
using BorderExpress.AutoImport.Common.Interfaces;

namespace BorderExpress.AutoImport.Common
{
    public class ProjectConfiguration : IProjectConfiguration
    {
        private string _connectionString ;

        public string ConnectionString()
        {
            if (string.IsNullOrEmpty(_connectionString))
            {
                _connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            }
            return _connectionString;
        }


        public string Print()
        {
            return string.Format(" from IProjectConfiguration impl");
        }
    }
}
