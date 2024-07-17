using DataAccess.Models;

namespace Services
{
    public interface IHistoryService
    {
        Task<List<History>> GetAll();
        Task AddNew(History item);
        Task Update(History item);
    }
}
