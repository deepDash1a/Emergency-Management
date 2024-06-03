using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;

namespace Emergency_Management.Attributes
{
    public class HttpClientInstance
    {
        private static readonly Lazy<HttpClient> lazyClient = new Lazy<HttpClient>(() => new HttpClient());
        public static HttpClient Instance => lazyClient.Value;
    }
}