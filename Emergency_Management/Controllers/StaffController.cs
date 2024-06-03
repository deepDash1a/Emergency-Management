using Dapper;
using Emergency_Management.Attributes;
using Emergency_Management.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace Emergency_Management.Controllers
{
    public class StaffController : ApiController

    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Filter_Staff([FromUri] int HOS_ID, [FromUri] string Search_Term, [FromUri] int Page_Number, [FromUri] int Limit)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parametars = new DynamicParameters();
                Parametars.Add("@HOS_ID", HOS_ID);
                Parametars.Add("@Search_Term", Search_Term);
                Parametars.Add("@Page_Number", Page_Number);
                Parametars.Add("@Limit", Limit);

                var results =
                    await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Filter_Staff", Parametars, commandType: CommandType.StoredProcedure);

                var staff = results.Read<Staff<string>>().ToList();

                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, Staff-total-count");

                if (staff.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("Staff-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }

                List<Staff<string>> stf_dep = new List<Staff<string>>();
                List<Task> tasks = new List<Task>();
                foreach (var stf in staff)
                {
                    Staff<string> s = stf;
                    tasks.Add(Task.Run(async () =>
                    {
                        s.STF_DEP = await Public_Functions.Get_Staff_Departments(s.STF_ID.ToString());
                        lock (stf_dep) // Use lock to prevent multiple threads from modifying stf_dep at the same time
                        {
                            stf_dep.Add(s);
                        }
                    }));
                }
                await Task.WhenAll(tasks);

                HttpContext.Current.Response.Headers.Add("Staff-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, stf_dep);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Staff([FromUri] long STF_ID)
        {
            try
            {
                if(webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STF_ID", STF_ID);

                IEnumerable<Staff<string>> stf = await SingletonSqlConnection.Instance.Connection.QueryAsync<Staff<string>>("Get_Staff", Parameters, commandType: CommandType.StoredProcedure);

                if (stf.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                stf.First().STF_DEP = await Public_Functions.Get_Staff_Departments(stf.First().STF_ID.ToString());

                return Request.CreateResponse(HttpStatusCode.OK, stf.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospitals_Staff_Count()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();

                IEnumerable<dynamic> Hoss_Stf_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hoss_Stfs_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Hoss_Stf_Count);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Staff_Count([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<int> Hos_stf_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Hos_Stf_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Hos_stf_Count.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Staff([FromBody] Staff<int> stf)
        {
            using(var Transaction = SingletonSqlConnection.Instance.Connection.BeginTransaction())
            {
                try
                {
                    if (webapi_security.OldToken())
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                    var STF_Parameters = new DynamicParameters();
                    STF_Parameters.Add("@STF_Name", stf.STF_Name);
                    STF_Parameters.Add("@STF_Address", stf.STF_Address);
                    STF_Parameters.Add("@STF_NatID", stf.STF_NatID);
                    STF_Parameters.Add("@STF_BirthDate", stf.STF_BirthDate);
                    STF_Parameters.Add("@STF_Gender", stf.STF_Gender);
                    STF_Parameters.Add("@STF_IsMarrid", stf.STF_IsMarrid);
                    STF_Parameters.Add("@STF_STT_ID", stf.STF_STT_ID);

                    IEnumerable<int> STF =
                        await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Staff", STF_Parameters, commandType: CommandType.StoredProcedure, transaction: Transaction);

                    foreach (int DEP_ID in stf.STF_DEP)
                    {
                        IEnumerable<int> STF_DEP =
                            await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Staff_Department", new { STF_ID = STF.First(), DEP_ID = DEP_ID }, commandType: CommandType.StoredProcedure, transaction: Transaction);
                    }

                    Transaction.Commit();
                    return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Staff"));
                }
                catch (Exception ex)
                {
                    Transaction.Rollback();
                    return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Staff([FromUri] int STF_ID, [FromBody] Staff<int> stf)
        {
            using (var Transaction = SingletonSqlConnection.Instance.Connection.BeginTransaction())
            {
                try
                {
                    if (webapi_security.OldToken())
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                    var Parameters = new DynamicParameters();
                    Parameters.Add("@STF_ID", STF_ID);
                    Parameters.Add("@STF_Name", stf.STF_Name);
                    Parameters.Add("@STF_Address", stf.STF_Address);
                    Parameters.Add("@STF_NatID", stf.STF_NatID);
                    Parameters.Add("@STF_BirthDate", stf.STF_BirthDate);
                    Parameters.Add("@STF_Gender", stf.STF_Gender);
                    Parameters.Add("@STF_IsMarrid", stf.STF_IsMarrid);
                    Parameters.Add("@STF_STT_ID", stf.STF_STT_ID);

                    IEnumerable<int> st =
                        await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Staff", Parameters, commandType: CommandType.StoredProcedure, transaction: Transaction);

                    foreach (int DEP_ID in stf.STF_DEP)
                    {
                        IEnumerable<int> STF_DEP =
                            await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Staff_Department", new { STF_ID = STF_ID, DEP_ID = DEP_ID }, commandType: CommandType.StoredProcedure, transaction: Transaction);
                    }
                    IEnumerable<int> STF_Login =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Staff_Login", new { SLOG_STF_ID = STF_ID, SLOG_Username = stf.SLOG_Username,SLOG_Password = stf.SLOG_Password }, commandType: CommandType.StoredProcedure, transaction: Transaction);
                   
                    Transaction.Commit();
                    return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Staff"));
                }
                catch (Exception ex)
                {
                    Transaction.Rollback();
                    return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Staff([FromUri] int STF_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STF_ID", STF_ID);

                IEnumerable<int> s =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Staff", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Staff"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
    }
}