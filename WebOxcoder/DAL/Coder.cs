using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IDAL;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;

namespace DAL
{
    class Coder : IDAL.ICoder
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        int ICoder.getCount()
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coderItems = ctx.GetTable<coder>();
            return coderItems.Count();
        }

        IList<coder> ICoder.getCoderAll()
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coderItems = ctx.GetTable<coder>();
            return coderItems.ToList<coder>();
        }

        IList<coder> ICoder.searchCoder(String name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coderItems = ctx.GetTable<coder>();
            IQueryable<coder> query = from o in coderItems
                                         where o.name == name
                                         select o;
            return query.ToList<coder>();
        }

        bool ICoder.deleteCoder(coder coderItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable coderItems = ctx.GetTable<coder>();
            coderItems.Attach(coderItem);
            coderItems.DeleteOnSubmit(coderItem);
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

        coder ICoder.getCoderByEmail(string email)
        {
            DataContext ctx = new DataContext(connection);
            ITable<coder> coderItems = ctx.GetTable<coder>();
            IQueryable<coder> query = from o in coderItems
                                         where o.email == email
                                         select o;
            return query.FirstOrDefault<coder>();
        }


    }
}
