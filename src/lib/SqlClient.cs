using libsys.src.data;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.src.lib
{
    internal class SqlClient
    {
        public static async Task ExecuteAsync(Func<Exception?, SqlConnection?, Task> callback, bool useBase = false)
        {
            using SqlConnection conn = new(useBase ? DbEnv.GetConnBase() : DbEnv.GetConnStr());
            Exception? error = null;

            try
            {
                await conn.OpenAsync();
            }
            catch (Exception e)
            {
                error = e;
            }

            await callback(error, conn);
        }
    }
}
