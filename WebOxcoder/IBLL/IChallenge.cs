using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IBLL
{
    interface IChallenge
    {
        IList<challenge> searchBytec(int tec);
    }
}
