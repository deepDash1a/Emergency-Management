using Emergency_Management.Attributes;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class Staff<T>
    {
        public int STF_ID { set; get; }
        public int SLOG_ID { set; get; }
        public string STF_Name { set; get; }
        public string STF_Address { set; get; }
        public string STF_NatID { set; get; }
        public DateTime STF_BirthDate { set; get; }
        public bool STF_Gender { set; get; }
        public bool STF_IsMarrid { set; get; }
        public int STF_STT_ID { set; get; }
        public string STF_Type { set; get; }
        public IEnumerable<T> STF_DEP { set; get; }
        public string SLOG_Username { set; get; }
        public string SLOG_Password { set; get; }
        public int HOS_ID { set; get; }

        public bool ShouldSerializeSLOG_ID()
        {
            return SLOG_ID != 0;
        }
        public bool ShouldSerializeSTF_STT_ID()
        {
            return STF_STT_ID != 0;
        }
        public bool ShouldSerializeSTF_Type()
        {
            return STF_Type != null;
        }
        public bool ShouldSerializeSTF_DEP()
        {
            return STF_DEP != null;
        }
        public bool ShouldSerializeSLOG_Username()
        {
            return SLOG_Username != null;
        }
        public bool ShouldSerializeSLOG_Password()
        {
            return SLOG_Password != null;
        }
        public bool ShouldSerializeHOS_ID()
        {
            return HOS_ID != 0;
        }
    }
}