using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class Question : IBLL.IQuestion
    {
        private static readonly IDAL.IQuestion dal = DALFactory.DataAccess.CreateQuestion();

        bool IQuestion.addQuestion(question questionItem)
        {
            if (questionItem == null)
                throw new Exception();
            return dal.addQuestion(questionItem);
        }

        question IQuestion.getQuestionByID(int questionID)
        {
            return dal.getQuestionByID(questionID);
        }
    }
}