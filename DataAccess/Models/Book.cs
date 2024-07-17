using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class Book
    {
        public Book()
        {
            Histories = new HashSet<History>();
        }

        public int Id { get; set; }
        public string Title { get; set; } = null!;
        public string Description { get; set; } = null!;
        public string Author { get; set; } = null!;

        public virtual ICollection<History> Histories { get; set; }
    }
}
