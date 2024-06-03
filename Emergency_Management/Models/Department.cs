using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Department
    {
        public int DEP_ID { set; get; }
        public string DEP_Name { set; get; }
        public int DEP_HOS_ID { set; get; }

        public bool ShouldSerializeDEP_HOS_ID()
        {
            return DEP_HOS_ID != 0;
        }

    }
}