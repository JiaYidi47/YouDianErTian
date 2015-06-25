using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Statistics : IBLL.IStatistics
    {
        private static readonly IDAL.IStatistics dal = DALFactory.DataAccess.CreateStatistics();
    }
}
