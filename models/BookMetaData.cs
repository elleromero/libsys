using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.models
{
    public class BookMetaData
    {

        public int MetadataID { get; set; }
        public string? EditionStr { get; set; } = string.Empty;
        public int? EditionNum { get; set; } = null;
        public int BookID { get; set; }

    }
}
