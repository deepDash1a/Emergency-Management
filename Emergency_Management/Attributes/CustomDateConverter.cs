using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Attributes
{
    public class CustomDateConverter : IsoDateTimeConverter
    {
        public CustomDateConverter()
        {
            DateTimeFormat = "yyyy-MM-dd";
        }
    }
}