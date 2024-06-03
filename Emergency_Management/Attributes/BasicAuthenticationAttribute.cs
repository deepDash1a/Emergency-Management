using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.Http.Controllers;
using System.Web.Http.Filters;

namespace Emergency_Management.Attributes
{
    public class BasicAuthenticationAttribute : AuthorizationFilterAttribute
    {
        public override void OnAuthorization(HttpActionContext actionContext)
        {
            if (actionContext.Request.Headers.Authorization == null)
                actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized User");
            else
            {
                string auth = actionContext.Request.Headers.Authorization.Parameter;
                string decode = Encoding.UTF8.GetString(Convert.FromBase64String(auth));

                string username = decode.Split(':')[0];
                string password = decode.Split(':')[1];

                if (webapi_security.ValidateUsers(username, password) == null)
                    actionContext.Response = actionContext.Request.CreateResponse(HttpStatusCode.Unauthorized, "Unauthorized User");
            }
            base.OnAuthorization(actionContext);
        }
    }
}