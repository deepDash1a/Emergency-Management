using Dapper;
using Emergency_Management.Attributes;
using Emergency_Management.Models;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Infrastructure;
using Microsoft.Owin.Security.OAuth;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;

namespace Emergency_Management.Controllers
{
    public class StaffLoginController : ApiController
    {
        [HttpGet]
        public async Task<HttpResponseMessage> Login()
        {
            try
            {
                var queryString = HttpContext.Current.Request.QueryString;
                if (queryString != null && queryString.Count > 0)
                {
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                }

                var authHeader = HttpContext.Current.Request.Headers["Authorization"];
                if (authHeader != null || !authHeader.StartsWith("Basic"))
                {
                    var encodedCredentials = authHeader.Substring("Basic ".Length).Trim();
                    var credentials = Encoding.UTF8.GetString(Convert.FromBase64String(encodedCredentials)).Split(':');
                    var username = credentials[0];
                    var password = credentials[1];

                    // Validate the user credentials
                    var user = webapi_security.ValidateUsers(username, password);
                    if (user == null)
                    {
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                    }

                    // Call the token endpoint to generate a token
                    var tokenEndpoint = $"{Request.RequestUri.Scheme}://{Request.RequestUri.Host}:{Request.RequestUri.Port}/token";

                    var content = new FormUrlEncodedContent(new[]
                    {
                        new KeyValuePair<string, string>("grant_type", "password"),
                        new KeyValuePair<string, string>("username", username),
                        new KeyValuePair<string, string>("password", password)
                    });

                    var response = await HttpClientInstance.Instance.PostAsync(tokenEndpoint, content);
                    if (!response.IsSuccessStatusCode)
                    {
                        return Request.CreateResponse(response.StatusCode, "Token Error");
                    }

                    var tokenResponse = await response.Content.ReadAsAsync<TokenResponse>();

                    IEnumerable<int> tkn =
                        await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Token", new { TKN_Token = tokenResponse.access_token, TKN_SLOG_ID = user.SLOG_ID }, commandType: CommandType.StoredProcedure);

                    // Create a response message with user data in the body and access token in the header
                    var responseBody = new { user.SLOG_ID, user.SLOG_Username, user.SLOG_Password, user.SLOG_STF_ID };
                    var httpResponse = Request.CreateResponse(HttpStatusCode.OK, responseBody);
                    httpResponse.Headers.Add("Authorization", $"Bearer {tokenResponse.access_token}");

                    return httpResponse;
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                }
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [HttpGet]
        public async Task<HttpResponseMessage> User_Login()
        {
            try
            {
                var queryString = HttpContext.Current.Request.QueryString;
                if (queryString != null && queryString.Count > 0)
                {
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                }

                var authHeader = HttpContext.Current.Request.Headers["Authorization"];
                if (authHeader != null || !authHeader.StartsWith("Basic"))
                {
                    var encodedCredentials = authHeader.Substring("Basic ".Length).Trim();
                    var credentials = Encoding.UTF8.GetString(Convert.FromBase64String(encodedCredentials)).Split(':');
                    var username = credentials[0];
                    var password = credentials[1];

                    // Validate the user credentials
                    var Parameters = new DynamicParameters();
                    Parameters.Add("@SLOG_Username", username);
                    Parameters.Add("@SLOG_Password", password);

                    IEnumerable<Staff<int>> user =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<Staff<int>>("User_Login", Parameters, commandType: CommandType.StoredProcedure);

                    if (user.Count() == 0)
                    {
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                    }

                    // Call the token endpoint to generate a token
                    var tokenEndpoint = $"{Request.RequestUri.Scheme}://{Request.RequestUri.Host}:{Request.RequestUri.Port}/token";

                    var content = new FormUrlEncodedContent(new[]
                    {
                        new KeyValuePair<string, string>("grant_type", "password"),
                        new KeyValuePair<string, string>("username", username),
                        new KeyValuePair<string, string>("password", password)
                    });

                    var response = await HttpClientInstance.Instance.PostAsync(tokenEndpoint, content);
                    if (!response.IsSuccessStatusCode)
                    {
                        return Request.CreateResponse(response.StatusCode, "Token Error");
                    }

                    var tokenResponse = await response.Content.ReadAsAsync<TokenResponse>();

                    IEnumerable<int> tkn =
                        await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Insert_Token", new { TKN_Token = tokenResponse.access_token, TKN_SLOG_ID = user.First().SLOG_ID }, commandType: CommandType.StoredProcedure);

                    // Create a response message with user data in the body and access token in the header
                    user.First().STF_DEP = await Public_Functions.Get_Staff_Departments(user.First().STF_ID);
                    var responseBody = user.First();
                    var httpResponse = Request.CreateResponse(HttpStatusCode.OK, responseBody);
                    httpResponse.Headers.Add("Authorization", $"Bearer {tokenResponse.access_token}");

                    return httpResponse;
                }
                else
                {
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized");
                }
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPost, HttpDelete]
        public async Task<HttpResponseMessage> Logout()
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Token = webapi_security.HeaderToken();

                IEnumerable<int> ltkn =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Logout", new { TKN_Token = Token }, commandType: CommandType.StoredProcedure);

                return Request.CreateResponse(HttpStatusCode.OK, Messages.Logout());

            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpGet]
        public async Task<HttpResponseMessage> Get_Staff_Hospital([FromUri] string SLOG_Username, [FromUri] string SLOG_Password)
        {
            try
            {
                if (webapi_security.OldToken())
                    return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                var Parameters = new DynamicParameters();
                Parameters.Add("@SLOG_Username", SLOG_Username);
                Parameters.Add("@SLOG_Password", SLOG_Password);

                IEnumerable<int> hos_id =
                    await SingletonSqlConnection.Instance.Connection.QueryAsync<int>("Get_Staff_Hospital", Parameters, commandType: CommandType.StoredProcedure);

                if (hos_id.Count() == 0)
                    return Request.CreateResponse(HttpStatusCode.Gone, Messages.Not_Found());
                return Request.CreateResponse(HttpStatusCode.OK, hos_id.First());
            }
            catch (Exception ex)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
            }
        }

        [Authorize]
        [HttpPut]
    
        public async Task<HttpResponseMessage>Update_Password([FromUri] int STF_ID, [FromUri] string Curr_Password, [FromUri] string New_Password, [FromUri] string Confirm_Password)
        {
            using (var transaction = SingletonSqlConnection.Instance.Connection.BeginTransaction())
            {
                try
                {
                    if (webapi_security.OldToken())
                        return Request.CreateResponse(HttpStatusCode.Unauthorized, Messages.TokenExpired());

                    // Verify that the new password and confirm password match
                    if (New_Password != Confirm_Password)
                    {
                        return Request.CreateResponse(HttpStatusCode.Gone, "New password and confirm password do not match");
                   
                    }

                 
                    var parameters = new DynamicParameters();
                    parameters.Add("@SLOG_STF_ID",  STF_ID);
                    parameters.Add("@Current_Password", Curr_Password);
                    parameters.Add("@New_Password", New_Password);
                    parameters.Add("@IsPasswordChanged", dbType: DbType.Boolean, direction: ParameterDirection.Output);
                   
    
                    await SingletonSqlConnection.Instance.Connection.ExecuteAsync("Change_Password", parameters, commandType: CommandType.StoredProcedure, transaction: transaction);

                    var isPasswordChanged = parameters.Get<bool>("@IsPasswordChanged");

                    if (isPasswordChanged)
                    {
                        transaction.Commit();

                        return Request.CreateResponse(HttpStatusCode.OK, Messages.Updated_Successfully("Password"));
                    }
                    else
                    {
                        transaction.Rollback();
                        return Request.CreateResponse(HttpStatusCode.Gone, "Invalid current password");
                     
                    }
                }
                catch (Exception ex)
                {
                    transaction.Rollback();
                    return Request.CreateResponse(HttpStatusCode.BadRequest, Messages.Exception(ex));
                }
            }
        }


    }
}