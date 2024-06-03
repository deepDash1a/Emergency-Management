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
using System.Web;
using System.Net.Http.Formatting;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Text;

namespace Emergency_Management.Controllers
{ 
    public class HospitalController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Filter_Hospital([FromUri] string Search_Term, [FromUri] int Page_Number, [FromUri] int Limit)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parametars = new DynamicParameters();
                Parametars.Add("@Search_Term", Search_Term);
                Parametars.Add("@Page_Number", Page_Number);
                Parametars.Add("@Limit", Limit);

                var results =
                    await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Filter_Hospital", Parametars, commandType: CommandType.StoredProcedure);

                var hospitals = results.Read<Hospital>().ToList();

                HttpContext.Current.Response.Headers.Add("Access-Control-Expose-Header", "Content-Type, Hospital-total-count");

                if (hospitals.Count() == 0)
                {
                    HttpContext.Current.Response.Headers.Add("Hospital-total-count", results.Read<int>().FirstOrDefault().ToString());
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                }

                List<Hospital> hos_pho = new List<Hospital>();
                foreach (var hos in hospitals)
                {
                    Hospital h = hos;
                    h.PHO = await Public_Functions.Get_Hospital_Phones(h.HOS_ID);
                    hos_pho.Add(h);
                }

                HttpContext.Current.Response.Headers.Add("Hospital-total-count", results.Read<int>().FirstOrDefault().ToString());
                return Request.CreateResponse(HttpStatusCode.OK, hos_pho);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parametars = new DynamicParameters();
                Parametars.Add("@HOS_ID", HOS_ID);

                IEnumerable<Hospital> hospital =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<Hospital>("Get_Hospital", Parametars, commandType: CommandType.StoredProcedure);

                if (hospital.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                

                Hospital hos_pho = new Hospital();
                hos_pho = hospital.First();
                hos_pho.PHO = await Public_Functions.Get_Hospital_Phones(hos_pho.HOS_ID);

                return Request.CreateResponse(HttpStatusCode.OK, hos_pho);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Hos_Dep_Count([FromUri] int? HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<int> Hos_Dep_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Hos_Dep_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Hos_Dep_Count.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospitals_Age_Groups()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();

                IEnumerable<dynamic> Hos_Age_Groups = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hos_Age_Groups", Parameters, commandType: CommandType.StoredProcedure);

                if (Hos_Age_Groups.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<dynamic>>(Hos_Age_Groups, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospitals_Departments_Count()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();

                IEnumerable<dynamic> Hos_Dep_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hoss_Deps_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Hos_Dep_Count);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Applications_Counts
              ([FromUri] int HOS_ID, [FromUri] string From, [FromUri] string To,
              [FromUri] string Is_Open = null, [FromUri] string Month_Result = null)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);
                Parameters.Add("@FROM", From);
                Parameters.Add("@To", To);
                Parameters.Add("@Is_Open", Is_Open);
                Parameters.Add("@Month_Result", Month_Result);

                IEnumerable<dynamic> Hos_App_counts = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("HOS_Applications_Count", Parameters, commandType: CommandType.StoredProcedure);

                if (Hos_App_counts.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                if (Is_Open != null && !Is_Open.Equals("0") && !Is_Open.Equals("1"))
                    return Request.CreateResponse(HttpStatusCode.Gone, "Is_Open Parameter must be NULL or Zero or One");

                return new HttpResponseMessage(HttpStatusCode.OK)
                {

                    Content = new ObjectContent<IEnumerable<dynamic>>(Hos_App_counts, new JsonMediaTypeFormatter())
                };

            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }


        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hos_Deps_Stf_Types_Counts([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                 
                var result = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Hos_Deps_Stf_Types_Count", Parameters, commandType: CommandType.StoredProcedure);
 
                var dep_Names = await result.ReadAsync<string>();
 
                var stf_type_Counts = await result.ReadAsync<dynamic>();
                 
                var stf_Type_Counts_Dict = new Dictionary<string, List<int>>();

               
                foreach (var stfType_Count in stf_type_Counts)
                {
                    string stf_Type = stfType_Count.Staff_Type;
                    int count = stfType_Count.Count;

                    if (stf_Type_Counts_Dict.ContainsKey(stf_Type))
                    {
                        stf_Type_Counts_Dict[stf_Type].Add(count);
                    }
                    else
                    {
                        stf_Type_Counts_Dict.Add(stf_Type, new List<int> { count });
                    }
                } 
             
                var jsonObject = new
                {
                    Department_Names = dep_Names.Select(d => new { Department_Name = d }),
                    Staff_Type_Counts = stf_Type_Counts_Dict.Select(x => new
                    {
                        Staff_Type = x.Key,
                        Counts = x.Value
                    })
                };
 
                return Request.CreateResponse(HttpStatusCode.OK, jsonObject);
            }

            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }

        }
        [Authorize]
        [HttpPost]
        public async Task<HttpResponseMessage> Insert_Hospital([FromBody] Hospital  hos)
        {
            using (var Transaction = SingletonSqlConnection.Instance.Connection.BeginTransaction())
            {
                try
                {
                    if (webapi_security.OldToken())
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                    var Parameters = new DynamicParameters();
                    Parameters.Add("@HOS_Name", hos.HOS_Name);
                    Parameters.Add("@HOS_Address", hos.HOS_Address);
                    Parameters.Add("@HOS_Email", hos.HOS_Email);

                    IEnumerable<int> HOS = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Hospital", Parameters, commandType: CommandType.StoredProcedure, transaction: Transaction);

                    foreach (var PHO in hos.PHO_Number)
                    {
                        IEnumerable<int> HOS_PHO =
                                await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Hospital_Phone", new { PHO_Number = PHO, PHO_HOS_ID = HOS.First() }, commandType: CommandType.StoredProcedure, transaction: Transaction);
                    }

                    Transaction.Commit();
                    return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Hospital"));
                }
                catch (Exception ex)
                {
                    Transaction.Rollback();
                    return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Hospital([FromUri] int HOS_ID, [FromBody] Hospital hos)
        {
            using (var Transaction = SingletonSqlConnection.Instance.Connection.BeginTransaction())
            {
                try
                {
                    if (webapi_security.OldToken())
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                    var Parameters = new DynamicParameters();
                    Parameters.Add("@HOS_ID", HOS_ID);
                    Parameters.Add("@HOS_Name", hos.HOS_Name);
                    Parameters.Add("@HOS_Address", hos.HOS_Address);
                    Parameters.Add("@HOS_Email", hos.HOS_Email);

                    var results = await SingletonSqlConnection.Instance.Connection.QueryMultipleAsync("Update_Hospital", Parameters, commandType: CommandType.StoredProcedure, transaction : Transaction);


                    foreach (var pair in results.Read<int>().Zip(hos.PHO_Number, (ID, Number) => new { ID, Number }))
                    {
                        IEnumerable<int> PHO = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Hospital_Phone", new { PHO_ID = pair.ID, PHO_Number = pair.Number, PHO_HOS_ID = HOS_ID }, commandType: CommandType.StoredProcedure, transaction: Transaction);
                    }

                    Transaction.Commit();
                    return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Hospital"));
                }
                catch (Exception ex)
                {
                    Transaction.Rollback();
                    return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Hospital([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<int> h = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Hospital", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Hospital"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

    
 



    }
}
