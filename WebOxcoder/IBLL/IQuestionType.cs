using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IQuestionType
    {
        IList<type> getAll();
        type getChallengeType(int challengeType);
       
    }
}
