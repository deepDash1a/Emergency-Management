using Dapper;
using Emergency_Management.Attributes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;

namespace Emergency_Management.Controllers
{
    public class StaticTablesController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Companion_Types()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                IEnumerable<dynamic> ctype =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Get_Companion_Types", commandType: CommandType.StoredProcedure);

                if (ctype.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, ctype);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Patient_NID_Types()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                IEnumerable<dynamic> ntype =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Get_Patient_NID_Types", commandType: CommandType.StoredProcedure);

                if (ntype.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, ntype);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

    }
}