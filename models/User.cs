using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.models
{
    public class User
    {

        public int ID { get; set; }
        public Role Role { get; set; } = new Role();
        public Member Member { get; set; } = new Member();
        public string? Username { get; set; } = string.Empty;
        public string? PasswordHash { get; set; } = string.Empty;
        public string ProfilePicture { get; set; } = string.Empty;

    }
}
