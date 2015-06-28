using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IQuestionType
    {
        IList<type> getAllItems();
        type getTypeByName(string name);
        type getChallengeType(int challengeType);
    }
}
