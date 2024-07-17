using DataAccess.Models;

namespace Repositories
{
    public interface IBookRepository
    {
        Task<List<Book>> GetAll();
        Task AddNew(Book item);
        Task Update(Book item);
    }
}
