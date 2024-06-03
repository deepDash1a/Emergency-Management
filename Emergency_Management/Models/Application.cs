using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Application
    {
 
        public int APP_ID { set; get; }
        public DateTime APP_DateTime { set; get; }
        public int APP_PAT_ID { set; get; }
        public string APP_ComName { set; get; }
        public string APP_ComNatID { set; get; }
        public string APP_ComPhone { set; get; }
        public int APP_COT_ID { set; get; }
        public int APP_HOS_ID { set; get; }
        public string APP_Code { set; get; }
        public bool APP_IsOpen { set; get; } 
    }
}