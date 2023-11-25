using libsys.src.interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.src.services
{
    internal class DbService : IService
    {
        public async static void Start()
        {
            // TODO: Show a form when this failed
            await SeedBuilder.Initialize();
            await SeedBuilder.SeedSetup();
            // await SeedBuilder.SeedInitialData();
        }
    }
}
