
using DataAccess.Models;
using Microsoft.EntityFrameworkCore;

namespace Repositories
{
    public class HistoryRepository : IHistoryRepository
    {
        public async Task AddNew(History item)
        {
            try
            {
                using (var _context = new CourseManagementDBContext())
                {
                    _context.Histories.Add(item);
                    await _context.SaveChangesAsync();
                }
            }
            catch (Exception ex)
            {

            }
        }

        public async Task<List<History>> GetAll()
        {
            using var _context = new CourseManagementDBContext();
            return await _context.Histories
                .Include(x => x.Student)
                .Include(x => x.Book)
                .OrderByDescending(x => x.BookId).ToListAsync();
        }

        public async Task Update(History item)
        {
            using var _context = new CourseManagementDBContext();
            var exist = await _context.Histories
                .FirstOrDefaultAsync(x => x.StudentId == item.StudentId
                && x.BookId == item.BookId);
            if (exist != null)
            {
                exist.EndDate = item.EndDate;
                exist.Status = item.Status;
                _context.Histories.Update(exist);
                await _context.SaveChangesAsync();
            }
        }
    }
}
