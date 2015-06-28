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

        bool IQuestionType.addQuestionType(type typeItem)
        {
            if (typeItem == null)
                throw new Exception();
            return dal.addQuestionType(typeItem);
        }

        IList<type> IQuestionType.getQuestionTypeAll()
        {
            return dal.getQuestionTypeAll();
        }

        IList<type> IQuestionType.searchQuestionType(String name)
        {
            return dal.searchQuestionType(name);
        }

        type IQuestionType.getQuestionTypeByID(int id)
        {
            return dal.getQuestionTypeByID(id);
        }

        bool IQuestionType.deleteQuestionType(type typeItem)
        {
            if (typeItem == null)
                throw new Exception();
            return dal.deleteQuestionType(typeItem);
        }

        bool IQuestionType.modifyQuestionType(type typeItem)
        {
            if (typeItem == null)
                throw new Exception();
            return dal.modifyQuestionType(typeItem);
        }

        type IQuestionType.getChallengeType(int challengeType)
        {
            return dal.getChallengeType(challengeType);
        }
    }
}
