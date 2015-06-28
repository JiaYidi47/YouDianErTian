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

        IList<question> IQuestion.getQuestionAll()
        {
            return dal.getQuestionAll();
        }

        question IQuestion.getQuestionByID(int questionID)
        {
            return dal.getQuestionByID(questionID);
        }

        IList<question> IQuestion.searchQuestion(String name)
        {
            return dal.searchQuestion(name);
        }

        bool IQuestion.deleteQuestion(question questionItem)
        {
            if (questionItem == null)
                throw new Exception();
            return dal.deleteQuestion(questionItem);
        }

        bool IQuestion.modifyQuestion(question questionItem)
        {
            if (questionItem == null)
                throw new Exception();
            return dal.modifyQuestion(questionItem);
        }
    }
}