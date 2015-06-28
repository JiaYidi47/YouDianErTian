using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IQuestionType
    {
        bool addQuestionType(type typeItem);
        IList<type> getQuestionTypeAll();
        IList<type> searchQuestionType(String name);
        type getQuestionTypeByID(int id);
        bool deleteQuestionType(type typeItem);
        bool modifyQuestionType(type typeItem);

    }
}
