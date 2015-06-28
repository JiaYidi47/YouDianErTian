using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IDAL;
using Model;
using System.Data.Linq;

namespace DAL
{
    class PromoCode : IDAL.IPromoCode
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        bool IPromoCode.addPromoCode(promoCode promoCodeItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable promoCodeItems = ctx.GetTable<promoCode>();
            promoCodeItems.InsertOnSubmit(promoCodeItem);
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

        promoCode IPromoCode.getPromoCodeByPromoCode(string promoCode)
        {
            DataContext ctx = new DataContext(connection);
            ITable<promoCode> promoCodeItems = ctx.GetTable<promoCode>();
            IQueryable<promoCode> query = from o in promoCodeItems
                                         where o.value == promoCode
                                         select o;
            return query.FirstOrDefault<promoCode>();
        }
    }
}
