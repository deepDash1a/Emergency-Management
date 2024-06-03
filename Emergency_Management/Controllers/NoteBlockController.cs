using Dapper;
using Emergency_Management.Attributes;
using Emergency_Management.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

namespace Emergency_Management.Controllers
{
    public class NoteBlockController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_NoteBlock([FromUri] long NOTB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOTB_ID", NOTB_ID);

                IEnumerable<NoteBlock> notb = await SingletonSqlConnection.Instance.Connection.QueryAsync<NoteBlock>("Get_NoteBlock", Parameters, commandType: CommandType.StoredProcedure);

                if (notb.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, notb.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        } 

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Application_NoteBlocks([FromUri] long APP_ID, [FromUri] int Page_Number, [FromUri] int Limit)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@APP_ID", APP_ID);
                Parameters.Add("@Limit", Limit);
                Parameters.Add("@Page_Number", Page_Number);

                var results = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Get_Application_Notes_with_pagenation", Parameters, commandType: CommandType.StoredProcedure);

                var notb = results.Read<NoteBlock>().ToList(); 
                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, NoteBlocks-total-count");

                if (notb.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("NoteBlocks-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }

                HttpContext.Current.Response.Headers.Add("NoteBlocks-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, notb);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> GetApplication_Noteblocks_details(long APP_ID, int Page_Number , int Limit )
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                // Get list of NoteBlocks 
                HttpResponseMessage  response = await Get_Application_NoteBlocks(APP_ID, Page_Number, Limit);
                 
                if (response.IsSuccessStatusCode)
                {
                    // Read the content of the response as IEnumerable<NoteBlock>
                    var noteBlocks = await response.Content.ReadAsAsync<IEnumerable<NoteBlock>>();

                    // Get list of notes foreach Block 
                    var NoteTasks = noteBlocks.Select(async NoteBlock =>
                    {
                        var NotController = new NotesController();
                        HttpResponseMessage not = await NotController.Get_NoteBlock_Notes(NoteBlock.NOTB_ID);
                        var notes = await not.Content.ReadAsAsync<IEnumerable<Notes>>();
                        NoteBlock.NOT = notes.ToList();
                    });

                    await Task.WhenAll(NoteTasks);

                    return Request.CreateResponse(HttpStatusCode.OK, noteBlocks);
                }
                else
                {

                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                }
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_NoteBlock([FromBody] NoteBlock notb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOTB_APP_ID", notb.NOTB_APP_ID);
                Parameters.Add("@NOTB_STF_ID", notb.NOTB_STF_ID);

                IEnumerable<int> nb = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_NoteBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("NoteBlock"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }

        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Update_NoteBlock([FromUri] long NOTB_ID, [FromBody] NoteBlock notb)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOTB_ID", NOTB_ID);
                Parameters.Add("@NOTB_APP_ID", notb.NOTB_APP_ID);
                Parameters.Add("@NOTB_STF_ID", notb.NOTB_STF_ID);

                IEnumerable<int> nb = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_NoteBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("NoteBlock"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }

        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Delete_NoteBlock([FromUri] long NOTB_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@NOTB_ID", NOTB_ID);

                IEnumerable<int> nb = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_NoteBlock", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("NoteBlock"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }
    }
}