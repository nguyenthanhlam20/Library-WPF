
using DataAccess.Models;
using Repositories;

namespace Services
{
    public class BookService : IBookService
    {
        private readonly IBookRepository _repository;

        public BookService() => _repository = new BookRepository();

        public async Task AddNew(Book item) => await _repository.AddNew(item);

        public async Task<List<Book>> GetAll() => await _repository.GetAll();

        public async Task Update(Book item) => await _repository.Update(item);
    }
}
