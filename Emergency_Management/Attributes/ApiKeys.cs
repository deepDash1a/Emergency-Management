using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Http;
using System.Collections;
using System.Configuration;
using System.Threading.Tasks;
using System.Threading;

namespace Emergency_Management.Attributes
{
    public class ApiKeys : DelegatingHandler
    {
        public string KEYVALUE = ConfigurationManager.AppSettings["KEYVALUE"];
        public string KEYNAME = ConfigurationManager.AppSettings["KEYNAME"];

        protected override async Task<HttpResponseMessage> SendAsync
            (HttpRequestMessage request, CancellationToken cancellationToken)
        {
            if (request.Headers.TryGetValues(KEYNAME, out var extractedApiKey))
            {
                var secretKey = extractedApiKey.First();
                if (string.IsNullOrEmpty(secretKey))
                    return request.CreateResponse(System.Net.HttpStatusCode.Forbidden, "Should enter key value");
                else if (KEYVALUE.Equals(secretKey))
                {
                    return await base.SendAsync(request, cancellationToken);
                }
                return request.CreateResponse(System.Net.HttpStatusCode.Forbidden, "API key value is invalid.");
            }
            return request.CreateResponse(System.Net.HttpStatusCode.Forbidden, "API key name is invalid.");
        }
    }
}