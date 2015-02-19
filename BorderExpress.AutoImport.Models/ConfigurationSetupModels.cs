using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Models
{
    public class ConfigurationSetup
    {
        public int Id { get; set; }
        public string fldOptionName { get; set; }
        public string fldSetting { get; set; }
        public string fldVersion { get; set; }
        public string fldDescription { get; set; }
        public DateTime fldLastUpd { get; set; }
    }
}
