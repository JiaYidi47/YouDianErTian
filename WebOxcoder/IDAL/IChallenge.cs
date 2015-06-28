using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IChallenge
    {
        IList<challenge> searchChallengeByTec(int tec);
        challenge getEnterpriseUpToDateChallenge(String enterpriseEmail);
        challenge getChallengeByID(int challengeId);
        IList<challenge> searchChallengeByCoderEmail(String coderEmail);
    }
}
