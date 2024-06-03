using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class RequstBlock
    {
        public long REQB_ID { set; get; }
        public DateTime REQB_DateTime { set; get; }
        public int REQB_STF_ID { set; get; }
        public string REQB_STF_Name { set; get; }
        public int REQB_DEP_ID { set; get; }
        public long REQB_APP_ID { set; get; }
        public short REQB_STAT_ID { set; get; }
        public IEnumerable<Requst> REQ { set; get; }
        public IEnumerable<ResponseBlock> RESB { set; get; }

        public bool ShouldSerializeREQB_STF_ID()
        {
            return REQB_STF_ID != 0;
        }
        public bool ShouldSerializeREQB_STF_Name()
        {
            return REQB_STF_Name != null;
        }
        public bool ShouldSerializeREQB_APP_ID()
        {
            return REQB_APP_ID != 0;
        }
        
        public bool ShouldSerializeREQ()
        {
            return REQ != null;
        }
        public bool ShouldSerializeRESB()
        {
            return RESB != null;
        }

    }
}