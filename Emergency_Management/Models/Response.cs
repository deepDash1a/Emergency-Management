using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Response
    {
        public long RSP_ID { set; get; }
        public string RSP_Message { set; get; }
        public short RSP_MSG_ID { set; get; }
        public long RSP_RSPB_ID { set; get; }
    }
}