using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using Model;
using IDAL;
using System.Threading.Tasks;

namespace DAL
{
    class QuestionType : IDAL.IQuestionType
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        IList<type> IQuestionType.getAllItems()
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> typeItems = ctx.GetTable<type>();
            return typeItems.ToList();
        }

        Model.type IQuestionType.getTypeByName(string name) {
            DataContext ctx = new DataContext(connection);
            ITable<type> types = ctx.GetTable<type>();
            IQueryable<type> query = from o in types
                                     where o.name == name.ToString()
                                     select o;
            return query.FirstOrDefault<type>();
        }

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
