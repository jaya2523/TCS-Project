using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab.Domain
{
    public class clsViews
    {
        public int Id { get; set; }

        public string systems { get; set; }

        public int obsvHrsDay { get; set; }

        public int obsvHrsWeek { get; set; }

        public int expecHrsDay { get; set; }

        public int expecHrsWeek { get; set; }


    }

    public class SoftUsage
    {
        public int Id { get; set; }

        public string softwares { get; set; }

        public int obsvHrsDay { get; set; }

        public int obsvHrsWeek { get; set; }

        public int expecHrsDay { get; set; }

        public int expecHrsWeek { get; set; }



    }

    public class clsViews2
    {
        public int Id { get; set; }
        public string Year { get; set; }

        public int LabA { get; set; }

        public int LabB { get; set; }
        public int LabC { get; set; }
        public int LabD { get; set; }
    }

}