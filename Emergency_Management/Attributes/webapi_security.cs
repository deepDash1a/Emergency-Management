using Dapper;
using Emergency_Management.Models;
using System;
using System.Collections.Generic;
using System.Data;
//using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Emergency_Management.Attributes
{
    public class webapi_security
    {
        public static Staff_Login ValidateUsers(string username, string password)
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@SLOG_Username", username);
                Parameters.Add("@SLOG_Password", password);

                IEnumerable<Staff_Login> slog =
                    SingletonSqlConnection.Instance.Connection.Query<Staff_Login>("Login", Parameters, commandType: CommandType.StoredProcedure);

                if (slog.Count() == 0)
                    return null;
                return slog.First();
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static bool OldToken()
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@TKN_Token", HeaderToken());

                IEnumerable<int> dtkn =
                    SingletonSqlConnection.Instance.Connection.Query<int>("Search_DToken", Parameters, commandType: CommandType.StoredProcedure);

                return dtkn.First() > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static string HeaderToken()
        {
            var authHeader = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];

            return authHeader;
        }

    }
}