using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Hospital
    {
        public int HOS_ID { set; get; }
        public string HOS_Name { set; get; }
        public string HOS_Address { set; get; }
        public string HOS_Email { set; get; }
        public IEnumerable<Hospital_Phone> PHO { get; set; }
        public IEnumerable<String> PHO_Number { get; set; }

        public bool ShouldSerializePHO()
        {
            return PHO != null;
        }
        public bool ShouldSerializePHO_Number()
        {
            return PHO_Number != null;
        }
    }
}