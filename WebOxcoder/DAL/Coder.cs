using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IDAL;
using Model;
using System.Data.Linq;
using System.Threading.Tasks;

namespace DAL
{
    class Coder : IDAL.ICoder
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        Model.coder ICoder.getCoderById(string email)
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> searchReult = ctx.GetTable<coder>();
            IQueryable<coder> query = from o in searchReult
                                          where o.email== email
                                          select o;
            return query.FirstOrDefault();
        }
    }
}
