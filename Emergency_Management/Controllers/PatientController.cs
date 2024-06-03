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
    public class PatientController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Filter_Patient([FromUri] int? HOS_ID, [FromUri] string Search_Term,
            [FromUri] int Page_Number, [FromUri] int Limit)
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
                    await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Filter_Patient", Parametars, commandType: CommandType.StoredProcedure);

                var pat = results.Read<Patient>().ToList();

                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, Patient-total-count");

                if (pat.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("Patient-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }
                HttpContext.Current.Response.Headers.Add("Patient-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, pat);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Patient([FromUri] long PAT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_ID", PAT_ID);

                IEnumerable<Patient> pat = await SingletonSqlConnection.Instance.Connection.QueryAsync<Patient>("Get_Patient", Parameters, commandType: CommandType.StoredProcedure);

                if (pat.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, pat.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Patient_Applications([FromUri] long PAT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_ID", PAT_ID);

                IEnumerable<Application> apps = await SingletonSqlConnection.Instance.Connection.QueryAsync<Application>("Get_Patient_Apps", Parameters, commandType: CommandType.StoredProcedure);

                if (apps.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, apps);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage>Hos_Pat_Ages([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                //var(newBorn, child, adolescence, adult, old)
                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                var results = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Hos_Pat_Ages", Parameters, commandType: CommandType.StoredProcedure);

                int New_Born = results.Read<int>().Single();
                int Child = results.Read<int>().Single();
                int Adolescence = results.Read<int>().Single();
                int Adult = results.Read<int>().Single();
                int Old = results.Read<int>().Single();
                

                return Request.CreateResponse(HttpStatusCode.OK,  new { New_Born, Child, Adolescence, Adult, Old });
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Patients_Count([FromUri] int HOS_ID, [FromUri] int? Is_Open)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);
                Parameters.Add("@Is_Open", Is_Open);

                IEnumerable<int> Hos_pat_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Patients_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Hos_pat_Count.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Patient([FromBody] Patient pat)
        {

            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_Name", pat.PAT_Name);
                Parameters.Add("@PAT_NatID", pat.PAT_NatID);
                Parameters.Add("@PAT_BirthDate", pat.PAT_BirthDate);
                Parameters.Add("@PAT_Gender", pat.PAT_Gender);
                Parameters.Add("@PAT_IsMarrid", pat.PAT_IsMarrid);
                Parameters.Add("@PAT_PNT_ID", pat.PAT_PNT_ID);
                Parameters.Add("@ADI_Country", pat.PAT_Country);
                Parameters.Add("@ADI_City", pat.PAT_City);
                Parameters.Add("@ADI_Region", pat.PAT_Region);

                IEnumerable<int> pa = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Patient", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Patient", pa.First()));
            }

            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Patient([FromUri] long PAT_ID, [FromBody] Patient pat)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_ID", PAT_ID);
                Parameters.Add("@PAT_Name", pat.PAT_Name);
                Parameters.Add("@PAT_NatID", pat.PAT_NatID);
                Parameters.Add("@PAT_BirthDate", pat.PAT_BirthDate);
                Parameters.Add("@PAT_Gender", pat.PAT_Gender);
                Parameters.Add("@PAT_IsMarrid", pat.PAT_IsMarrid);
                Parameters.Add("@PAT_PNT_ID", pat.PAT_PNT_ID);
                Parameters.Add("@ADI_ID", pat.ADI_ID);
                Parameters.Add("@ADI_Country", pat.PAT_Country);
                Parameters.Add("@ADI_City", pat.PAT_City);
                Parameters.Add("@ADI_Region", pat.PAT_Region);

                var results = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Update_Patient", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Patient"));
            }

            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Patient([FromUri] int PAT_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@PAT_ID", PAT_ID);

                IEnumerable<int> pa = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Patient", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Patient"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
    }
}
