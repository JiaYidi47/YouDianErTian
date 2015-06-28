using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;
using IDAL;

namespace DAL
{
    class QuestionType : IDAL.IQuestionType
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        type IQuestionType.getChallengeType(int challengeType)
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> searchReult = ctx.GetTable<type>();
            IQueryable<type> query = from o in searchReult
                                     where o.id == challengeType   
                                     select o;
            type t = query.FirstOrDefault<type>();
            return t;
        }
    }
}
