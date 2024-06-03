using Emergency_Management.Attributes;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Patient
    {
        public int PAT_ID { set; get; }
        public string PAT_Name { set; get; }
        public string PAT_NatID { set; get; }
        public DateTime PAT_BirthDate { set; get; }
        public bool PAT_Gender { set; get; }
        public bool PAT_IsMarrid { set; get; }
        public int PAT_PNT_ID { set; get; }
        public int ADI_ID { set; get; }
        public string PAT_Country { set; get; }
        public string PAT_City { set; get; }
        public string PAT_Region { set; get; }

        public bool ShouldSerializeADI_ID()
        {
            return ADI_ID != 0;
        }
        public bool ShouldSerializePAT_Country()
        {
            return PAT_Country != null;
        }
        public bool ShouldSerializePAT_City()
        {
            return PAT_City != null;
        }
        public bool ShouldSerializePAT_Region()
        {
            return PAT_Region != null;
        }
    }
}