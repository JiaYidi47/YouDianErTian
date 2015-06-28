using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IQuestionType
    {
        IList<type> getAllItems();
        type getTypeByName(string name);
        bool addQuestionType(type typeItem);
        IList<type> getQuestionTypeAll();
        IList<type> searchQuestionType(String name);
        type getQuestionTypeByID(int id);
        bool deleteQuestionType(type typeItem);
        bool modifyQuestionType(type typeItem);
        type getChallengeType(int challengeType);
    }
}
