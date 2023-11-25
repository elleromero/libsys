using libsys.src.data;
using libsys.src.lib;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.src.services
{
    // This builder seeds the initial data from the given query path
    // It only checks if the query is executed successfully or not
    // It will not check the contents of the given query
    // Please verify the query before calling this class

    internal class SeedBuilder
    {
        public static async Task<bool> Initialize()
        {
            return await SeedData("../../../queries/seeds/init_db.sql");
        }

        public static async Task<bool> SeedSetup()
        {
            return await SeedData("../../../queries/seeds/setup_seed.sql", true);
        }

        public static async Task<bool> SeedInitialData()
        {
            return await SeedData("../../../queries/seeds/initial_seed.sql", true);
        }

        public static async Task<bool> SeedData(string queryPath, bool useBase = false)
        {
            bool isSuccess = false;

            await SqlClient.ExecuteAsync(async (error, conn) =>
            {
                if (error != null) return;

                try
                {
                    string script = File.ReadAllText(queryPath);
                    SqlCommand command = new(script, conn);

                    await command.ExecuteScalarAsync();
                    isSuccess = true;
                }
                catch { isSuccess = false; }
            }, useBase);

            return isSuccess;
        }
    }
}
