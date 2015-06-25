using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class QuestionType : IBLL.IQuestionType
    {
        private static readonly IDAL.IQuestionType dal = DALFactory.DataAccess.CreateQuestionType();
    }
}
