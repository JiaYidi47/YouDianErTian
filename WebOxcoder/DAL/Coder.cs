using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using Model;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;
using IDAL;

namespace DAL
{
    class Coder : IDAL.ICoder
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IDAL.ICoder.addCoder(string email) {
            DataContext ctx = new DataContext(connection);
            ITable<coder> userItems = ctx.GetTable<coder>();
            coder newUser = new coder();
            newUser.email = email;
            userItems.InsertOnSubmit(newUser);
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
    
        coder ICoder.getCoderByEmail(String coderEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coders = ctx.GetTable<coder>();
            IQueryable<coder> query = from o in coders
                                      where o.email == coderEmail
                                      select o;
            return query.FirstOrDefault<coder>();
        }

        float[] ICoder.getPerformanceBetterPercent(float[] performance)
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coders = ctx.GetTable<coder>();
            IQueryable<coder> query0 = from o in coders
                                       where o.performance0 < performance[0]
                                       select o;
            IQueryable<coder> query1 = from o in coders
                                       where o.performance0 < performance[1]
                                       select o;
            IQueryable<coder> query2 = from o in coders
                                       where o.performance0 < performance[2]
                                       select o;
            IQueryable<coder> query3 = from o in coders
                                       where o.performance0 < performance[3]
                                       select o;
            IQueryable<coder> query4 = from o in coders
                                       where o.performance0 < performance[4]
                                       select o;
            IQueryable<coder> queryTotal = from o in coders
                                           select o;

            int total = queryTotal.Count();
            float[] performanceBetterPercent = new float[5];
            performanceBetterPercent[0] = (float)Math.Round(((double)query0.Count() * 100 / total), 2);
            performanceBetterPercent[1] = (float)Math.Round(((double)query1.Count() * 100 / total), 2);
            performanceBetterPercent[2] = (float)Math.Round(((double)query2.Count() * 100 / total), 2);
            performanceBetterPercent[3] = (float)Math.Round(((double)query3.Count() * 100 / total), 2);
            performanceBetterPercent[4] = (float)Math.Round(((double)query4.Count() * 100 / total), 2);

            return performanceBetterPercent;
        }

        float[] ICoder.getAveragePerformance()
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coders = ctx.GetTable<coder>();
            IQueryable<coder> query = from o in coders
                                      select o;

            float[] averagePerformance = new float[4];
            averagePerformance[0] = (float)Math.Round((double)query.Average(lcoder => lcoder.performance1));
            averagePerformance[1] = (float)Math.Round((double)query.Average(lcoder => lcoder.performance2));
            averagePerformance[2] = (float)Math.Round((double)query.Average(lcoder => lcoder.performance3));
            averagePerformance[3] = (float)Math.Round((double)query.Average(lcoder => lcoder.performance4));

            return averagePerformance;
        }
    }
}
