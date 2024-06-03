using Emergency_Management.Attributes;
using Microsoft.Owin;
using Microsoft.Owin.Security.Infrastructure;
using Microsoft.Owin.Security.OAuth;
using Owin;
using System;
using System.Threading.Tasks;
using System.Web.Http;

[assembly: OwinStartup(typeof(Emergency_Management.Startup))]

namespace Emergency_Management
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // Enable CORS (cross origin resource sharing) for making request using browser from different domains
            app.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);

            OAuthAuthorizationServerOptions options = new OAuthAuthorizationServerOptions
            {
                AllowInsecureHttp = true,
                //The Path For generating the Toekn
                TokenEndpointPath = new PathString("/token"),
                //Setting the Token Expired Time
                AccessTokenExpireTimeSpan = TimeSpan.FromDays(365),
                //MyAuthorizationServerProvider class will validate the user credentials
                Provider = new AuthorizationServerProvider(),
                AccessTokenProvider = new AuthenticationTokenProvider
                {
                    OnCreate = context =>
                    {
                        // set sliding expiration for access tokens
                        context.Ticket.Properties.ExpiresUtc = DateTime.UtcNow.AddYears(1);
                        context.Ticket.Properties.IssuedUtc = DateTime.UtcNow;
                        context.OwinContext.Response.Headers.Add("Cache-Control", new[] { "no-store" });
                        context.OwinContext.Response.Headers.Add("Pragma", new[] { "no-cache" });
                    },
                    OnReceive = context =>
                    {
                        context.DeserializeTicket(context.Token);

                        DateTime issued = context.Ticket.Properties.IssuedUtc?.UtcDateTime ?? DateTime.UtcNow;
                        DateTime expires = context.Ticket.Properties.ExpiresUtc?.UtcDateTime ??DateTime.UtcNow.AddYears(1);

                        TimeSpan timeRemaining = expires.Subtract(DateTime.UtcNow);

                        if (timeRemaining < TimeSpan.FromSeconds(30))
                        {
                            // Add cache control headers to ensure the response is not cached
                            context.OwinContext.Response.Headers.Add("Cache-Control", new[] { "no-store" });
                            context.OwinContext.Response.Headers.Add("Pragma", new[] { "no-cache" });
                        }

                        // Return the updated context ticket
                        context.SetTicket(context.Ticket);
                    }

                }
            };

            //Token Generations
            app.UseOAuthAuthorizationServer(options);
            app.UseOAuthBearerAuthentication(new OAuthBearerAuthenticationOptions());

            HttpConfiguration config = new HttpConfiguration();
            WebApiConfig.Register(config);
        }
    }
}
