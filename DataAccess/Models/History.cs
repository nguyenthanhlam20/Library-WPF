using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class History
    {
        public int BookId { get; set; }
        public int StudentId { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public bool? Status { get; set; }
        public string? StatusName
        {
            get
            {
                return Status == true ? "Borrowing" : "Return";
            }
        }

        public virtual Book Book { get; set; } = null!;
        public virtual Student Student { get; set; } = null!;
    }
}
