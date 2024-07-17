
using DataAccess.Models;
using Repositories;

namespace Services
{
    public class HistoryService : IHistoryService
    {
        private readonly IHistoryRepository _repository;

        public HistoryService() => _repository = new HistoryRepository();

        public async Task AddNew(History item) => await _repository.AddNew(item);

        public async Task<List<History>> GetAll() => await _repository.GetAll();

        public async Task Update(History item) => await _repository.Update(item);
    }
}
