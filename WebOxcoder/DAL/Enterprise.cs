﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Linq;
using IDAL;
using System.Threading.Tasks;
using Model;
using Tools;

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
