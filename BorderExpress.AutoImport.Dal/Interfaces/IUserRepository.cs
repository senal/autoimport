
using BorderExpress.AutoImport.Models;
namespace BorderExpress.AutoImport.Dal.Interfaces
{
    public interface IUserRepository 
    {
        User GetUser(string username);

        //temp method to test the DI
        string Print();
    }
}
