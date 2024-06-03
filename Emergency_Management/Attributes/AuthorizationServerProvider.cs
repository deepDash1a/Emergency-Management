using Microsoft.Owin.Security;
using Microsoft.Owin.Security.OAuth;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;

namespace Emergency_Management.Attributes
{
    public class AuthorizationServerProvider : OAuthAuthorizationServerProvider
    {
        public override async Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            try
            {
                context.Validated();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error validating client: {ex.Message}");
                context.SetError("server_error", "An error occurred while validating the client");
            }
        }

        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {
            try
            {
                var user = webapi_security.ValidateUsers(context.UserName, context.Password);

                if (user == null)
                {
                    context.SetError("invalid_grant", "Provided username and password is incorrect");
                    return;
                }

                var identity = new ClaimsIdentity(context.Options.AuthenticationType);
                identity.AddClaim(new Claim(ClaimTypes.Name, user.SLOG_Username));
                identity.AddClaim(new Claim("Password", user.SLOG_Password));
                identity.AddClaim(new Claim("ID", user.SLOG_STF_ID.ToString()));

                var ticket = new AuthenticationTicket(identity, new AuthenticationProperties());
                ticket.Properties.IssuedUtc = DateTime.UtcNow;
                ticket.Properties.ExpiresUtc = DateTime.UtcNow.AddYears(1);
                context.Validated(ticket);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error validating user credentials: {ex.Message}");
                context.SetError("server_error", "An error occurred while validating the user credentials");
            }
        }
    }
}