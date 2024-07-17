using DataAccess.Models;

namespace Services
{
    public interface IBookService
    {
        Task<List<Book>> GetAll();
        Task AddNew(Book item);
        Task Update(Book item);
    }
}
