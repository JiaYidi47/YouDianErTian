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

        bool IEnterprise.changeEnterpriseInfo(enterprise thisEnterprise)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterprises = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterprises
                                           where o.email == thisEnterprise.email
                                           select o;

            foreach (enterprise o in query)
            {

                o.shortName = thisEnterprise.shortName;
                o.fullName = thisEnterprise.fullName;
                o.location = thisEnterprise.location;
                o.introduction = thisEnterprise.introduction;
                o.scale = thisEnterprise.scale;
                o.website = thisEnterprise.website;
                o.logo = thisEnterprise.logo;
                o.label = thisEnterprise.label;
                o.ischeck = thisEnterprise.ischeck;
                o.restInvite = thisEnterprise.restInvite;
                o.restCreate = thisEnterprise.restCreate;
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
