using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;

namespace DAL
{
    public class Question : IDAL.IQuestion
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IQuestion.addQuestion(question questionItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable questionItems = ctx.GetTable<question>();
            questionItems.InsertOnSubmit(questionItem);
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

        question IQuestion.getQuestionByID(int questionID)
        {
            DataContext ctx = new DataContext(connection);
            ITable<question> records = ctx.GetTable<question>();
            IQueryable<question> query = from o in records
                                         where o.id == questionID
                                         select o;
            return query.FirstOrDefault<question>();
        }

        IList<question> IQuestion.searchQuestion(String name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<question> questionItems = ctx.GetTable<question>();
            IQueryable<question> query = from o in questionItems
                                     where o.name == name
                                     select o;
            return query.ToList<question>();
        }

        question IQuestion.getQuestionByID(int id)
        {
            DataContext ctx = new DataContext(connection);
            ITable<question> questionItems = ctx.GetTable<question>();
            IQueryable<question> query = from o in questionItems
                                     where o.id == id
                                     select o;
            return query.FirstOrDefault<question>();
        }

        bool IQuestion.deleteQuestion(question questionItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable questionItems = ctx.GetTable<question>();
            questionItems.Attach(questionItem);
            questionItems.DeleteOnSubmit(questionItem);
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

        bool IQuestion.modifyQuestion(question questionItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable<question> questionItems = ctx.GetTable<question>();
            IQueryable<question> query = from o in questionItems
                                     where o.id == questionItem.id
                                     select o;
            foreach (question o in query)
            {
                o.name = questionItem.name;
                o.intro = questionItem.intro;
                o.knowledge = questionItem.knowledge;
                o.questionLevel = questionItem.questionLevel;
                o.tecnology = questionItem.tecnology;
                o.questionContent = questionItem.questionContent;
                o.answer = questionItem.answer;
                o.typeId = questionItem.typeId;
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