using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Address_Info
    {
        public int ADI_ID { set; get; }
        public string ADI_Country { set; get; }
        public string ADI_City { set; get; }
        public string ADI_Region { set; get; }
        public  int ADI_PAT_ID { set; get; }
    }
}