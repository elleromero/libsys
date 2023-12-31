﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.models
{
    public class BookMetaData
    {

        public int ID { get; set; }
        public Genre Genre { get; set; } = new Genre();
        public string? title { get; set; } = string.Empty;
        public string? Sypnosis { get; set; } = string.Empty;
        public string? Author { get; set; } = string.Empty;
        public string? Copyright { get; set; } = string.Empty;
        public string? Cover { get; set; } = string.Empty;
        public string? Publisher { get; set; } = string.Empty;
        public DateTime PublicationDate { get; set; }
        public DateTime AddedOn { get; set; }
        public string? ISBN { get; set; } = string.Empty;
        public string? Edition_Str { get; set; } = string.Empty;
        public int? EditionNum { get; set; } = null;

    }
}
