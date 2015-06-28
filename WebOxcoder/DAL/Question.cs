﻿using System;
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
    }
}