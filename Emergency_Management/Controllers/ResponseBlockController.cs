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
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace Emergency_Management.Controllers
{
    public class ResponseBlockController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_ResponseBlock_By_ID([FromUri] long RSPB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_ID", RSPB_ID);

                IEnumerable<ResponseBlock> rspb = await SingletonSqlConnection.Instance.Connection.QueryAsync<ResponseBlock>("Get_ResponseBlock_By_RSPB_ID", Parameters, commandType: CommandType.StoredProcedure);

                if (rspb.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, rspb.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage>Get_Request_Responses([FromUri] long REQB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_ID", REQB_ID);

                IEnumerable<ResponseBlock> rspb = await SingletonSqlConnection.Instance.Connection.QueryAsync<ResponseBlock>("Get_Request_Res", Parameters, commandType: CommandType.StoredProcedure);

                if (rspb.Count() == 0)
                    //return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                    return new HttpResponseMessage(HttpStatusCode.Gone)
                    {
                        Content = new ObjectContent<Content>(Messages.Not_Found(), new JsonMediaTypeFormatter())
                    };

                // return Request.CreateResponse(HttpStatusCode.OK, rspb);

                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<ResponseBlock>>(rspb, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            { 
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }


        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_ResponseBlock([FromBody] ResponseBlock resb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_STF_ID", resb.RSPB_STF_ID);
                Parameters.Add("@RSPB_REQB_ID", resb.RSPB_REQB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_ResponseBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Response Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_ResponseBlock([FromUri] long RSPB_ID, [FromBody] ResponseBlock resb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_ID", RSPB_ID);
                Parameters.Add("@RSPB_STF_ID", resb.RSPB_STF_ID);
                Parameters.Add("@RSPB_REQB_ID", resb.RSPB_REQB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_ResponseBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Response Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_ResponseBlockResult([FromUri] long RSPB_ID, [FromUri] bool Result)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_ID", RSPB_ID);
                Parameters.Add("@RSPB_Result", Result);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_ResponseBlockResult", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Response Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_ResponseBlock([FromUri] long RSPB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@RSPB_ID", RSPB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_ResponseBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Response Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }
    }
}