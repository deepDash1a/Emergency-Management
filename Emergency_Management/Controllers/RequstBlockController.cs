using Emergency_Management.Attributes;
using Emergency_Management.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using Dapper;
using System.Data;
using System.Net.Http.Formatting;
using System.Web;

namespace Emergency_Management.Controllers
{
    public class RequstBlockController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> GetRequestBlock_Details(long REQB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                // Get list of Requests
                var REQBController = new RequstController();
                var requests = Enumerable.Empty<Requst>();
                HttpResponseMessage response = await REQBController.Get_RequestBlock_Requests(REQB_ID);

                if (response.IsSuccessStatusCode)
                {
                    // Read the content of the response as IEnumerable<Request>
                    requests = await response.Content.ReadAsAsync<IEnumerable<Requst>>();
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }

                var RESBController = new ResponseBlockController();
                HttpResponseMessage response1 = await RESBController.Get_Request_Responses(REQB_ID);
                if (response1.IsSuccessStatusCode)
                {
                    // Read the content of the responseBlokes as IEnumerable<ResponseBlock>
                    var responseBlocks = await response1.Content.ReadAsAsync<IEnumerable<ResponseBlock>>();

                    // Get list of responses foreach responseBlock 
                    var responseTasks = responseBlocks.Select(async responseBlock =>
                    {
                        var RESController = new ResponseController();
                        HttpResponseMessage rsp = await RESController.Get_ResponseBlock_Responses(responseBlock.RSPB_ID);
                        var responses = await rsp.Content.ReadAsAsync<IEnumerable<Response>>();
                        responseBlock.RES = responses.ToList();
                    });

                    await Task.WhenAll(responseTasks);

                    var result = new
                    {
                        requests,
                        responseBlocks
                    };
                    return Request.CreateResponse(HttpStatusCode.OK, result);
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.OK, new { requests });
                }

            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_RequstBlock([FromUri] long REQB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_ID", REQB_ID);

                IEnumerable<dynamic> reqb = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Get_RequstBlock", Parameters, commandType: CommandType.StoredProcedure);

                if (reqb.Count() == 0)
                    //return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                    return new HttpResponseMessage(HttpStatusCode.Gone)
                    {
                        Content = new ObjectContent<Content>(Messages.Not_Found(), new JsonMediaTypeFormatter())
                    };
                //return Request.CreateResponse(HttpStatusCode.OK, reqb.First());
                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<dynamic>>(reqb, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Reqests_Count([FromUri] int? HOS_ID, [FromUri] int? Have_Res)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);
                Parameters.Add("@Have_Res", Have_Res);

                IEnumerable<int> stt =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Req_Res_Count", Parameters, commandType: CommandType.StoredProcedure);

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
        public async Task<HttpResponseMessage> Get_Application_Requests([FromUri] int APP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_ID", APP_ID);

                IEnumerable<dynamic> appreqs = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Get_Application_Reqs", Parameters, commandType: CommandType.StoredProcedure);

                if (appreqs.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, appreqs);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Department_RequestBlocks([FromUri] int DEP_ID, [FromUri] int Page_Number, [FromUri] int Limit)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@DEP_ID", DEP_ID);
                Parameters.Add("@Limit", Limit);
                Parameters.Add("@Page_number", Page_Number);

                var results = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Get_Department_RequestBlocks", Parameters, commandType: CommandType.StoredProcedure);
              
                var dep_reqbs = results.Read<dynamic>().ToList();
                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, RequestBlocks-total-count");
                 

                if (dep_reqbs.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("RequestBlocks-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }
                HttpContext.Current.Response.Headers.Add("RequestBlocks-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, dep_reqbs);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_RequstBlock([FromBody] RequstBlock reqb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_STF_ID", reqb.REQB_STF_ID);
                Parameters.Add("@REQB_DEP_ID", reqb.REQB_DEP_ID);
                Parameters.Add("@REQB_APP_ID", reqb.REQB_APP_ID);
                Parameters.Add("@REQB_STAT_ID", reqb.REQB_STAT_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_RequstBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Requst Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_RequstBlock([FromUri] long REQB_ID, [FromBody] RequstBlock reqb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_ID", REQB_ID);
                Parameters.Add("@REQB_STF_ID", reqb.REQB_STF_ID);
                Parameters.Add("@REQB_DEP_ID", reqb.REQB_DEP_ID);
                Parameters.Add("@REQB_APP_ID", reqb.REQB_APP_ID);
                Parameters.Add("@REQB_STAT_ID", reqb.REQB_STAT_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_RequestBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Requst Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_RequstBlock([FromUri] long REQB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_ID", REQB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_RequstBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Requst Block"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }
    }
}