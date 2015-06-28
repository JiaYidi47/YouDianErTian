using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using IDAL;
using Model;
using System.Threading.Tasks;

namespace DAL
{
    class Enterprise : IDAL.IEnterprise
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        //公司地点模糊查询
        IList<Model.enterprise> IEnterprise.getCompanyByLoc(string loc)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> Items = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in Items
                                     where o.location.Contains(loc)
                                     select o;
            return query.ToList();
        }

        //根据公司名称模糊查询
        IList<Model.enterprise> IEnterprise.getCompanyByName(string name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> Items = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in Items
                                           where o.fullName.Contains(name)
                                           select o;
            return query.ToList();
        }

        enterprise IEnterprise.getEnterpriseByEmail(string enterpriseEmail)
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
