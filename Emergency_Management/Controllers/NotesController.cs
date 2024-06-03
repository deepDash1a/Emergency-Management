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
    public class NotesController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Note([FromUri] long NOT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOT_ID", NOT_ID);

                IEnumerable<Notes> note = await SingletonSqlConnection.Instance.Connection.QueryAsync<Notes>("Get_Note", Parameters, commandType: CommandType.StoredProcedure);

                if (note.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, note.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_NoteBlock_Notes([FromUri] long NOTB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOTB_ID", NOTB_ID);

                IEnumerable<Notes> nots = await SingletonSqlConnection.Instance.Connection.QueryAsync<Notes>("Get_NoteBlock_Nots", Parameters, commandType: CommandType.StoredProcedure);

                if (nots.Count() == 0)
                    return new HttpResponseMessage(HttpStatusCode.Gone)
                    {
                        Content = new ObjectContent<Content>(Messages.Not_Found(), new JsonMediaTypeFormatter())
                    };

                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<Notes>>(nots, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
       
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Note([FromBody] Notes not)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOT_Message", not.NOT_Message);
                Parameters.Add("@NOT_MSG_ID", not.NOT_MSG_ID);
                Parameters.Add("@NOT_NOTB_ID", not.NOT_NOTB_ID);

                IEnumerable<int> n = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Note", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Note"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Note([FromUri] long NOT_ID , [FromBody] Notes not)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOT_ID", NOT_ID);
                Parameters.Add("@NOT_Message", not.NOT_Message);
                Parameters.Add("@NOT_MSG_ID", not.NOT_MSG_ID);
                Parameters.Add("@NOT_NOTB_ID", not.NOT_NOTB_ID);

                IEnumerable<int> n = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Note", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Note"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Note([FromUri]  int NOT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOT_ID", NOT_ID);

                IEnumerable<int> n = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Note", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Note"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
    }
}
