
using DataAccess.Models;
using Microsoft.EntityFrameworkCore;

namespace Repositories
{
    public class BookRepository : IBookRepository
    {
        public async Task AddNew(Book item)
        {
            try
            {
                using (var _context = new CourseManagementDBContext())
                {
                    var nextId = _context.Books.Max(c => c.Id);
                    item.Id = nextId + 1;
                    _context.Books.Add(item);
                    await _context.SaveChangesAsync();
                }
            }
            catch (Exception)
            {

            }
        }

        public async Task<List<Book>> GetAll()
        {
            using var _context = new CourseManagementDBContext();
            return await _context.Books.OrderByDescending(x => x.Id).ToListAsync();
        }

        public async Task Update(Book item)
        {
            try
            {
                using var _context = new CourseManagementDBContext();
                var exist = await _context.Books.FirstOrDefaultAsync(x => x.Id == item.Id);
                if (exist != null)
                {
                    exist.Title = item.Title;
                    exist.Description = item.Description;
                    exist.Author = item.Author;
                    _context.Books.Update(exist);
                    await _context.SaveChangesAsync();
                }
            }
            catch (Exception)
            {

            }
        }
    }
}
