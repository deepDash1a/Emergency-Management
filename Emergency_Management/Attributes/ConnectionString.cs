using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace Emergency_Management.Attributes
{
    public class ConnectionString
    {
        public static string ConStr()
        {
            return ConfigurationManager.ConnectionStrings["Emergency_Management"].ConnectionString;
        }
    }
}