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
        IList<challenge> searchBytec(string tec);
        IList<challenge> searchByLevel(string level);
        IList<challenge> searchByLoc(string loc);
        IList<challenge> searchByKeywords(string keyword);
        IList<challenge> searchByEmail(string email);
        IList<challenge> searchAll();
        challenge getChallengeById(int id);
        bool changeState(int id);
        bool addChallenge(int type,int level,int isPhoto,int isPublish,int question1, int question2,int question3,string email,int state,string duration);

      
    }
}
