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
        IList<challenge> searchChallengeByLevel(int level);
        IList<challenge> searchChallengeByCompany(string company);
        IList<challenge> searchAll();
        challenge searchById(int id);
        bool changeState(int id);
        bool addChallenge(challenge newChallenge);
    }
}
