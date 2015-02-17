using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BorderExpress.AutoImport.Dal.Interfaces
{
    public interface IRepository<T>
        where T: class, new()
    {
        IList<T> GetAll();
        T GetById(int id);
        IQueryable<T> GetQueryable();
    }
}
