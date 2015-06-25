using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IDAL
{
    interface IChallenge
    {
        public IList<challenge> searchChanllengeByTec(int tec);
    }
}
