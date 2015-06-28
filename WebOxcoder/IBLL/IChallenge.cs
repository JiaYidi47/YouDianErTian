using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IChallenge
    {
        IList<challenge> searchBytec(int tec);
        challenge getEnterpriseUpToDateChallenge(String enterpriseEmail);
        challenge getChallengeByID(int challengeId);
        IList<challenge> searchByCoderEmail(String coderEmail);
    }
}
