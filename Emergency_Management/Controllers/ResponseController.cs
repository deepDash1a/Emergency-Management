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
using System.Net.Http.Formatting;
using System.Threading.Tasks;
using System.Web.Http;

namespace Emergency_Management.Controllers
{
    public class ResponseController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Response_By_ID([FromUri] long RSP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSP_ID", RSP_ID);

                IEnumerable<Response> rsp = await SingletonSqlConnection.Instance.Connection.QueryAsync<Response>("Get_Response_By_RSP_ID", Parameters, commandType: CommandType.StoredProcedure);

                if (rsp.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, rsp.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage>Get_ResponseBlock_Responses([FromUri] long RSPB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_ID", RSPB_ID);

                IEnumerable<Response> rsp = await SingletonSqlConnection.Instance.Connection.QueryAsync<Response>("Get_ResponseBlock_Res", Parameters, commandType: CommandType.StoredProcedure);

                if (rsp.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                //return Request.CreateResponse(HttpStatusCode.OK, rsp);
                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<Response>>(rsp, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Response([FromBody] Response res)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSP_Message",res.RSP_Message);
                Parameters.Add("@RSP_MSG_ID", res.RSP_MSG_ID);
                Parameters.Add("@RSP_RSPB_ID", res.RSP_RSPB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Response", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Response"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Response([FromUri] long RSP_ID, [FromBody] Response res)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSP_ID", RSP_ID);
                Parameters.Add("@RSP_Message", res.RSP_Message);
                Parameters.Add("@RSP_MSG_ID", res.RSP_MSG_ID);
                Parameters.Add("@RSP_RSPB_ID", res.RSP_RSPB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Response", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Response"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Response([FromUri] long RSP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSP_ID", RSP_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Response", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Response"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }
    }
}