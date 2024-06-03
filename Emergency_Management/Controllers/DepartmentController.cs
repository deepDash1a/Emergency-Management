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
    public class DepartmentController : ApiController
    {
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Departments([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<Department> dep = await SingletonSqlConnection.Instance.Connection.QueryAsync<Department>("Get_Hospital_Departments", Parameters, commandType: CommandType.StoredProcedure);

                if (dep.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, dep);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Department([FromUri] int DEP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@DEP_ID", DEP_ID);

                IEnumerable<Department>  dep = await SingletonSqlConnection.Instance.Connection.QueryAsync<Department>("Get_Department", Parameters, commandType: CommandType.StoredProcedure);

                if (dep.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, dep.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage>Dep_Pat_Count([FromUri] int DEP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@DEP_ID", DEP_ID);

                IEnumerable<int> Dep_Pat_Count = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Dep_Pat_Count", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Dep_Pat_Count.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hos_Departments_Age_Groups([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<dynamic> hos_deps_age = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hos_Deps_Age_Groups", Parameters, commandType: CommandType.StoredProcedure);

                if (hos_deps_age.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return new HttpResponseMessage(HttpStatusCode.OK)
                {
                    Content = new ObjectContent<IEnumerable<dynamic>>(hos_deps_age, new JsonMediaTypeFormatter())
                };
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Hospital_Departments_Sttaf_Count([FromUri] int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<dynamic> hos_dep_stf =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hos_Deps_Stfs_Count", Parameters, commandType: CommandType.StoredProcedure);

                if (hos_dep_stf.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, hos_dep_stf);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        } 

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Hospital_Departments_Sttaf_types([FromUri]  int HOS_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@HOS_ID", HOS_ID);

                IEnumerable<dynamic> hos_deps_sttfs = await SingletonSqlConnection.Instance.Connection.QueryAsync<dynamic>("Hos_Deps_Stts", Parameters, commandType: CommandType.StoredProcedure);

                if (hos_deps_sttfs.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());

                return Request.CreateResponse(HttpStatusCode.OK, hos_deps_sttfs);
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPost] 
        public async Task<HttpResponseMessage> Insert_Department([FromBody] Department dep)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@DEP_Name", dep.DEP_Name);
                Parameters.Add("@DEP_HOS_ID", dep.DEP_HOS_ID);

                IEnumerable<int> d = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Department", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Inserted_Successfully("Department"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPut]
        public async Task<HttpResponseMessage> Update_Department([FromUri] int DEP_ID, [FromBody] Department dep)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters(); 
                Parameters.Add("@DEP_ID", DEP_ID);
                Parameters.Add("@DEP_Name", dep.DEP_Name);
                Parameters.Add("@DEP_HOS_ID", dep.DEP_HOS_ID);

                IEnumerable<int> d = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Update_Department", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Department"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpDelete]
        public async Task<HttpResponseMessage> Delete_Department([FromUri] int DEP_ID)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@DEP_ID", DEP_ID);

                IEnumerable<int> d = await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Delete_Department", Parameters, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Deleted_Successfully("Department"));
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }
         
    }
}
