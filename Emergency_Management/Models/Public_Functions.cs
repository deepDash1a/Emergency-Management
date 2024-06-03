using Dapper;
using Emergency_Management.Attributes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace Emergency_Management.Models
{
    public static class Public_Functions
    {
        public static async Task<IEnumerable<Hospital_Phone>> Get_Hospital_Phones(int HOS_ID)
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<Hospital_Phone> app =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<Hospital_Phone>("Get_Hospital_Phones", Parameters, commandType: CommandType.StoredProcedure);

                if (app.Count() == 0)
                    return null;
                return app;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public static async Task<IEnumerable<int>> Get_Staff_Departments (int STF_ID)
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@STF_ID", STF_ID); 
                IEnumerable<int> dep =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Get_Staff_Departments", Parameters, commandType: CommandType.StoredProcedure);

                if (dep.Count() == 0)
                    return null;
                return dep;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public static async Task<IEnumerable<string>> Get_Staff_Departments(string STF_ID)
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@STF_ID", STF_ID);
                IEnumerable<string> dep =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<string>("Get_Staff_DepartmentsNames", Parameters, commandType: CommandType.StoredProcedure);

                if (dep.Count() == 0)
                    return null;
                return dep;
            }
            catch (Exception)
            {
                return null;
            }
        }
    }
}