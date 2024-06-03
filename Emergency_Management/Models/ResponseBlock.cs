using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class ResponseBlock
    {
        public long RSPB_ID { set; get; }
        public DateTime RSPB_Datetime { set; get; }
        public int RSPB_STF_ID { set; get; }
        public long RSPB_REQB_ID { set; get; }
        public bool RSPB_Result { set; get; }
        public IEnumerable<Response> RES { set; get; }

        public bool ShouldSerializeRES()
        {
            return RES != null;
        }
    }
}