using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Data.Linq;
using Tools;

namespace DAL
{
    class Enterprise : IDAL.IEnterprise
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        int IEnterprise.getCount()
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            return enterpriseItems.Count();
        }


        IList<enterprise> IEnterprise.getNotCheckedEnterprise()
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterpriseItems
                                           where o.ischeck == Config.notCheck
                                           select o;
            return query.ToList<enterprise>();
        }

        IList<enterprise> IEnterprise.getSuccessCheckedEnterprise()
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterpriseItems
                                           where o.ischeck == Config.successCheck
                                           select o;
            return query.ToList<enterprise>();
        }

        IList<enterprise> IEnterprise.searchEnterprise(String name)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> coderItems = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in coderItems
                                      where o.shortName == name
                                      select o;
            return query.ToList<enterprise>();
        }

        bool IEnterprise.deleteEnterprise(enterprise enterpriseItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable enterpriseItems = ctx.GetTable<enterprise>();
            enterpriseItems.Attach(enterpriseItem);
            enterpriseItems.DeleteOnSubmit(enterpriseItem);

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

        bool IEnterprise.addEnterprise(enterprise enterpriseItem)
        {
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
        }

        enterprise IEnterprise.getEnterpriseByEmail(string email)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterpriseItems
                                      where o.email == email
                                      select o;
            return query.FirstOrDefault<enterprise>();
        }

        bool IEnterprise.modifyEnterprise(enterprise enterpriseItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable<enterprise> enterpriseItems = ctx.GetTable<enterprise>();
            IQueryable<enterprise> query = from o in enterpriseItems
                                         where o.email == enterpriseItem.email
                                         select o;
            foreach (enterprise o in query)
            {
                //o.email = enterpriseItem.email;
                o.shortName = enterpriseItem.shortName;
                o.fullName = enterpriseItem.fullName;
                o.introduction = enterpriseItem.introduction;
                o.label = enterpriseItem.label;
                o.location = enterpriseItem.location;
                o.logo = enterpriseItem.logo;
                o.restCreate = enterpriseItem.restCreate;
                o.restInvite = enterpriseItem.restInvite;
                o.scale = enterpriseItem.scale;
                o.website = enterpriseItem.website;
                o.ischeck = enterpriseItem.ischeck;
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
