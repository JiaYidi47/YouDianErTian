using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IBLL
{
    public interface IQuestion
    {
        bool addQuestion(question questionItem);
        IList<question> getQuestionAll();
        IList<question> searchQuestion(String name);
        question getQuestionByID(int id);
        bool deleteQuestion(question questionItem);
        bool modifyQuestion(question questionItem);
    }
}
