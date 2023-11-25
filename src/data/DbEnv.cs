using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace libsys.src.data
{
    // WARNING: Unless you know what you're doing. Don't modify this file
    // This file contain the environmental variables
    // necessary for the application to run
    abstract class DbEnv
    {
        private const string
            DATA_SOURCE = "DESKTOP-PDLDGGJ\\SQLEXPRESS",
            DB_NAME = "master",
            CONN_BASE = $"Data Source={DATA_SOURCE};Integrated Security=true;",
            CONN_STR = $"{CONN_BASE}Initial Catalog={DB_NAME}",
            VERSION = "dev build";

        public static string GetDataSource()
        {
            return DATA_SOURCE;
        }

        public static string GetDBName()
        {
            return DB_NAME;
        }

        public static string GetConnBase()
        {
            return CONN_BASE;
        }

        public static string GetConnStr()
        {
            return CONN_STR;
        }

        public static string GetVersion()
        {
            return VERSION;
        }
    }
}
