using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Challenge : IBLL.IChallenge
    {
        private static readonly IDAL.IChallenge dal = DALFactory.DataAccess.CreateChallenge();
    }
}
