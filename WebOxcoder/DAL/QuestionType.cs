using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Data.Linq;

namespace DAL
{
    class QuestionType : IDAL.IQuestionType
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IQuestionType.addQuestionType(type typeItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable typeItems = ctx.GetTable<type>();
            typeItems.InsertOnSubmit(typeItem);
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        IList<type> IQuestionType.getQuestionTypeAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> typeItems = ctx.GetTable<type>();
            return typeItems.ToList<type>();
        }

        IList<type> IQuestionType.searchQuestionType(String name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> typeItems = ctx.GetTable<type>();
            IQueryable<type> query = from o in typeItems
                                         where o.name == name
                                         select o;
            return query.ToList<type>();
        }

        type IQuestionType.getQuestionTypeByID(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> typeItems = ctx.GetTable<type>();
            IQueryable<type> query = from o in typeItems
                                         where o.id == id
                                         select o;
            return query.FirstOrDefault<type>();
        }

        bool IQuestionType.deleteQuestionType(type typeItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable typeItems = ctx.GetTable<type>();
            typeItems.Attach(typeItem);
            typeItems.DeleteOnSubmit(typeItem);
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        bool IQuestionType.modifyQuestionType(type typeItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable<type> typeItems = ctx.GetTable<type>();
            IQueryable<type> query = from o in typeItems
                                         where o.id == typeItem.id
                                         select o;
            foreach (type o in query)
            {
                o.name = typeItem.name;
                o.content = typeItem.content;
            }
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
