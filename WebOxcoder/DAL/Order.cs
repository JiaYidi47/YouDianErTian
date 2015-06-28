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
    class Order : IDAL.IOrder
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        IList<orders> IOrder.getOrderAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<orders> orderItems = ctx.GetTable<orders>();
            return orderItems.ToList<orders>();
        }

        IList<orders> IOrder.getTodayOrder()
        {
            DataContext ctx = new DataContext(connection);
            ITable<orders> orderItems = ctx.GetTable<orders>();
            IQueryable<orders> query = from o in orderItems
                                       where o.time.Substring(0, 2) == DateTime.Now.ToString("yyyy-MM-dd").Substring(5, 2) 
                                       && o.time.Substring(3, 2) == DateTime.Now.ToString("yyyy-MM-dd").Substring(8, 2) 
                                       && o.time.Substring(6, 4) == DateTime.Now.ToString("yyyy-MM-dd").Substring(0, 4)
                                           select o;
            return query.ToList<orders>();
        }

        IList<orders> IOrder.searchOrder(String name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<orders> orderItems = ctx.GetTable<orders>();
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            IQueryable<orders> query = from o in orderItems
                                      join e in enterpriseItems
                                      on o.companyEmail equals e.email
                                      where e.shortName == name
                                         select o;
            return query.ToList<orders>();
        }

        
        
    }
}
