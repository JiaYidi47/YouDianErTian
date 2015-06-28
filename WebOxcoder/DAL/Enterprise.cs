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
    class Enterprise : IDAL.IEnterprise
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IEnterprise.checkEnterprise(String enterpriseEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItem = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterpriseItem
                                           where o.email == enterpriseEmail
                                           select o;
            enterprise u = query.FirstOrDefault<enterprise>();
            if (u != null)
                return false;
            else
                return true;
        }

        bool IEnterprise.addEnterprise(enterprise enterpriseItem) {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            enterpriseItems.InsertOnSubmit(enterpriseItem);
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        enterprise IEnterprise.getEnterpriseByEmail(String enterpriseEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterprises = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterprises
                                           where o.email == enterpriseEmail
                                           select o;
            return query.FirstOrDefault<enterprise>();
        }
    }
}
