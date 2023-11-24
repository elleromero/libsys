using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.models
{
    public class Book
    {
        public int ID { get; set; }
        public BookMetaData Metadata { get; set; } = new BookMetaData();
        public Source Source { get; set; } = new Source();
        public string? title { get; set; } = string.Empty;
        public string? Sypnosis { get; set; } = string.Empty;
        public string? ContactNumber { get; set; } = string.Empty;
        public string? Author { get; set; } = string.Empty;
        public string? Copyright { get; set; } = string.Empty;
        public string? Sources { get; set; } = string.Empty;
        public string? Cover { get; set; } = string.Empty;
        public string? Publisher { get; set; } = string.Empty;
        public DateTime PublicationDate { get; set; }
        public DateTime AddedOn { get; set; }
        public Decimal Price { get; set; } 
        public string ISBN { get; set; } = string.Empty;


    }
}
