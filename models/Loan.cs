using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.models
{
    public class Loan
    {

        public int ID { get; set; }
        public User User { get; set; } = new User();
        public Copy Copy { get; set; } = new Copy();
        public DateTime DateBorrowed { get; set; }
        public DateTime DueDate { get; set; }
        public bool IsReturned { get; set; }
        public DateTime TimeStamp { get; set; }

    }
}
