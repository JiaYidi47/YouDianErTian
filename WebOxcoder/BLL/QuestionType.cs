using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class QuestionType : IBLL.IQuestionType
    {
        private static readonly IDAL.IQuestionType dal = DALFactory.DataAccess.CreateQuestionType();

        IList<type> IQuestionType.getAll() {
            return dal.getAllItems();
        }

        type IQuestionType.getChallengeType(int challengeType)
        {
            return dal.getChallengeType(challengeType);
        }
    }
}
