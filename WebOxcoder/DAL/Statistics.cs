using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class Statistics : IDAL.IStatistics
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];
    }
}
