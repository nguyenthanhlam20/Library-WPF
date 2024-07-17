using DataAccess.Models;

namespace Repositories
{
    public interface IHistoryRepository
    {
        Task<List<History>> GetAll();
        Task AddNew(History item);
        Task Update(History item);
    }
}
