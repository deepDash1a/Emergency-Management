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
    public class StaffTypeController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Filter_Staff_Type([FromUri] int? HOS_ID, [FromUri] int Page_Number, [FromUri] int Limit)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STT_HOS_ID", HOS_ID);
                Parameters.Add("@Page_Number", Page_Number);
                Parameters.Add("@Limit", Limit);

                var results =
                    await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Filter_Staff_Type", Parameters, commandType: CommandType.StoredProcedure);

                var stt = results.Read<Staff_Type>().ToList();

                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, StaffType-total-count");

                if (stt.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("StaffType-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }
                HttpContext.Current.Response.Headers.Add("StaffType-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, stt);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Staff_Type([FromUri] int STT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STT_ID", STT_ID);

                IEnumerable<Staff_Type> stt = 
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<Staff_Type>("Get_Staff_Type", Parameters, commandType: CommandType.StoredProcedure);

                if (stt.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, stt.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Staff_Count([FromUri] int? STT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STF_STT_ID", STT_ID);

                IEnumerable<int> stt =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Stt_Count", Parameters, commandType: CommandType.StoredProcedure);

                if (stt.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, stt.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Sttaf_Types_Count([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<dynamic> hos_stts =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hos_Stts_Count", Parameters, commandType: CommandType.StoredProcedure);

                if (hos_stts.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, hos_stts);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Staff_Type([FromBody] Staff_Type stt)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STT_Type", stt.STT_Type);
                Parameters.Add("@STT_HOS_ID", stt.STT_HOS_ID);

                IEnumerable<int> s =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Staff_Type", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Staff Type"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Staff_Type([FromUri] int STT_ID, [FromBody] Staff_Type stt)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STT_ID", STT_ID);
                Parameters.Add("@STT_Type", stt.STT_Type);
                Parameters.Add("@STT_HOS_ID", stt.STT_HOS_ID);

                IEnumerable<int> s =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Staff_Type", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Staff Type"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Staff_Type([FromUri] int STT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@STT_ID", STT_ID);

                IEnumerable<int> s =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Staff_Type", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Staff Type"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
    }
}