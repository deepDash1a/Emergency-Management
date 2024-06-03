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
    public class ApplicationController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Filter_Application([FromUri] int? HOS_ID, [FromUri] string Search_Term, [FromUri] int Page_Number, [FromUri] int Limit)
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
                    await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Filter_Application", Parametars, commandType: CommandType.StoredProcedure);

                var app = results.Read<dynamic>().ToList();

                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, Application-total-count");

                if (app.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("Application-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }
                HttpContext.Current.Response.Headers.Add("Application-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, app);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Application([FromUri] long APP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_ID", APP_ID);

                var app = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Get_Application", Parameters, commandType: CommandType.StoredProcedure);

                if (app.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, app);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Apps_Count([FromUri] int? HOS_ID, [FromUri] int? APP_IsOpen)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_HOS_ID", HOS_ID);
                Parameters.Add("@APP_IsOpen", APP_IsOpen);

                IEnumerable<int> stt =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Apps_Count", Parameters, commandType: CommandType.StoredProcedure);

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
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Application([FromBody] Application app)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_PAT_ID", app.APP_PAT_ID);
                Parameters.Add("@APP_ComName", app.APP_ComName);
                Parameters.Add("@APP_ComNatID", app.APP_ComNatID);
                Parameters.Add("@APP_ComPhone", app.APP_ComPhone);
                Parameters.Add("@APP_COT_ID", app.APP_COT_ID);
                Parameters.Add("@APP_HOS_ID", app.APP_HOS_ID);

                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Application", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Application([FromUri] int APP_ID, [FromBody]  Application app)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_ID", APP_ID);
                Parameters.Add("@APP_PAT_ID", app.APP_PAT_ID);
                Parameters.Add("@APP_ComName", app.APP_ComName);
                Parameters.Add("@APP_ComNatID", app.APP_ComNatID);
                Parameters.Add("@APP_ComPhone", app.APP_ComPhone);
                Parameters.Add("@APP_COT_ID", app.APP_COT_ID);
                Parameters.Add("@APP_HOS_ID", app.APP_HOS_ID);

                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Application", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_APP_State([FromUri] int APP_ID, [FromUri]  bool APP_IsOpen)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_ID", APP_ID);
                Parameters.Add("@APP_IsOpen", APP_IsOpen);


                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_APP_State", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_All_APPlications_Of_Hospital([FromUri] long HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_All_APPlications_Of_Hospital", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Application_by_APP_Code([FromUri] string App_Code)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@App_Code", App_Code);

                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Application_by_APP_Code", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_APPlication_by_PAT_ID([FromUri]  int PAT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_ID", PAT_ID);

                IEnumerable<int> a = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_APPlication_by_PAT_ID", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Application"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
    }
}
