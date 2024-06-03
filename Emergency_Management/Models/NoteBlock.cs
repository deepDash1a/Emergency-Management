using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Emergency_Management.Models
{
    public class NoteBlock
    {
        public int NOTB_ID { set; get; }
        public DateTime NOTB_DateTime { set; get; }
        public int NOTB_APP_ID { set; get; }
        public int NOTB_STF_ID { set; get; }
        public IEnumerable<Notes> NOT { set; get; }

        public bool ShouldSerializeNOT()
        {
            return NOT != null;
        }
    }
}