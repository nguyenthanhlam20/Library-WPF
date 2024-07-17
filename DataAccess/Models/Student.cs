using System;
using System.Collections.Generic;
using System.Globalization;

namespace DataAccess.Models
{
    public partial class Student
    {
        public Student()
        {
            Histories = new HashSet<History>();
        }

        public int Id { get; set; }
        public string? Name { get; set; }
        public DateTime? Birthdate { get; set; }

        public string DateFormat
        {
            get
            {
                return Birthdate?.ToString() ?? "";
            }
        }
        public string? Gender { get; set; }
        public string? Address { get; set; }
        public string? City { get; set; }
        public string? Country { get; set; }
        public string? Department { get; set; }

        public virtual Department? DepartmentNavigation { get; set; }
        public virtual ICollection<History> Histories { get; set; }
    }
}
