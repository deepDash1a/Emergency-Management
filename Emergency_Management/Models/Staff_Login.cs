using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Staff_Login
    {
        public int SLOG_ID { set; get; }
        public string SLOG_Username { set; get; }
        public string SLOG_Password { set; get; }
        public int SLOG_STF_ID { set; get; }
        public string TKN_Token { set; get; }

        public bool ShouldSerializeTKN_Token()
        {
            return TKN_Token != null;
        }

    }
}