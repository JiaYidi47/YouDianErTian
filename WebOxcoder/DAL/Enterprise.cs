using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Data.Linq;
using IDAL;

namespace DAL
{
    class Enterprise : IDAL.IEnterprise
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

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
