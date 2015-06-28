using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class Challenge : IBLL.IChallenge
    {
        private static readonly IDAL.IChallenge dal = DALFactory.DataAccess.CreateChallenge();

        IList<challenge> IChallenge.searchBytec(int tec) 
        {
            return dal.searchChallengeByTec(tec);
        }

        challenge IChallenge.getEnterpriseUpToDateChallenge(String enterpriseEmail)
        {
            return dal.getEnterpriseUpToDateChallenge(enterpriseEmail);
        }

        challenge IChallenge.getChallengeByID(int challengeId)
        {
            return dal.getChallengeByID(challengeId);
        }
    }
}
