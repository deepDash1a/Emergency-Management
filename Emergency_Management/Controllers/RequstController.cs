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
    public class RequstController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Request_By_ID([FromUri] long REQ_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQ_ID", REQ_ID);

                IEnumerable<Requst> req = await SingletonSqlConnection.Instance.Connection.QueryAsync<Requst>("Get_Request_By_REQ_ID", Parameters, commandType: CommandType.StoredProcedure);

                if (req.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, req.First());
            }
            catch(Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_RequestBlock_Requests([FromUri] long REQB_ID)
        {
            try
            {
                var Parameters = new DynamicParameters();
                Parameters.Add("@REQB_ID", REQB_ID);

                IEnumerable<Requst> reqbreqs = await SingletonSqlConnection.Instance.Connection.QueryAsync<Requst>("Get_RequestBlock_Reqs", Parameters, commandType: CommandType.StoredProcedure);

                if (reqbreqs.Count() == 0)
                    return new HttpResponseMessage(HttpStatusCode.Gone)
                    {
                        Content = new ObjectContent<Content>(Messages.Not_Found(), new JsonMediaTypeFormatter())
                    };

                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<Requst>>(reqbreqs, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> GetRequestsAndResponses_2(long REQB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var REQBController = new  RequstBlockController();
                var requestBlocks = Enumerable.Empty<RequstBlock>();
                
                HttpResponseMessage response_ = await REQBController.Get_RequstBlock(REQB_ID);
                if (response_.IsSuccessStatusCode)
                {
                    // Read the content of the response as IEnumerable<RequstBlock>
                    requestBlocks = await response_.Content.ReadAsAsync<IEnumerable<RequstBlock>>();


                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.NotFound, "No RequstBlocks found for the given ID.");
                }
                foreach (var requestBlock in requestBlocks)
                {
                    // Get list of Requests
                    var requests = Enumerable.Empty<Requst>();
                    HttpResponseMessage response = await Get_RequestBlock_Requests(REQB_ID);
                    if (response.IsSuccessStatusCode)
                    {
                        // Read the content of the response as IEnumerable<Request>
                        requests = await response.Content.ReadAsAsync<IEnumerable<Requst>>(); 
                    }
                    else
                    {
                        return Request.CreateResponse(HttpStatusCode.NotFound, "No requests found for the given ID.");
                    }
                    requestBlock.REQ = requests.ToList();

                    // Get list of responseBlocks
                    var responseBlocks = Enumerable.Empty<ResponseBlock>();
                    var RESBController = new ResponseBlockController();
                    HttpResponseMessage response1 = await RESBController.Get_Request_Responses(REQB_ID);
                    if (response1.IsSuccessStatusCode)
                    {
                        // Read the content of the response as IEnumerable<ResponseBlock>
                        responseBlocks = await response1.Content.ReadAsAsync<IEnumerable<ResponseBlock>>(); 
                    }
                    else
                    {
                        //return Request.CreateResponse(HttpStatusCode.NotFound, "No response Blocks found for the given ID.");
                        responseBlocks = Enumerable.Empty<ResponseBlock>();
                    } 
                    requestBlock.RESB = responseBlocks.ToList();

                    // Get list of responses foreach responseBlock
                    foreach (var responseBlock in responseBlocks)
                    {

                        var RESController = new ResponseController();
                        HttpResponseMessage rsp = await RESController.Get_ResponseBlock_Responses(responseBlock.RSPB_ID);
                        var responses = await rsp.Content.ReadAsAsync<IEnumerable<Response>>();
                        responseBlock.RES = responses.ToList();

                    } 
                }
                return Request.CreateResponse(HttpStatusCode.OK, requestBlocks);
                 
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Requst([FromBody] Requst req)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQ_Message", req.REQ_Message);
                Parameters.Add("@REQ_MSG_ID", req.REQ_MSG_ID);
                Parameters.Add("@REQ_REQB_ID", req.REQ_REQB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Requst", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Requst"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }
         

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Requst([FromUri] long REQ_ID, [FromBody] Requst req)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQ_ID", REQ_ID);
                Parameters.Add("@REQ_Message", req.REQ_Message);
                Parameters.Add("@REQ_MSG_ID", req.REQ_MSG_ID);
                Parameters.Add("@REQ_REQB_ID", req.REQ_REQB_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Requst", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Requst"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Requst([FromUri] long REQ_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@REQ_ID", REQ_ID);

                IEnumerable<int> r =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Requst", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Requst"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, ex.Message);
            }
        }
    }
}