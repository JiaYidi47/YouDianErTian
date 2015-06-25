using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using Model;
using System.Threading.Tasks;

namespace BLL
{
    class Challenge:IBLL.IChallenge
    {
        public static readonly IDAL.IChallenge dal = DALFactory.DataAccess.createChallenge();
        public IList<challenge> IChallenge.searchBytec(int tec) {
            return dal.searchChallengeByTec(tec);
        }
    }
}
