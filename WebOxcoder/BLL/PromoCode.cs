using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;

namespace BLL
{
    class PromoCode : IBLL.IPromoCode
    {
        private static readonly IDAL.IPromoCode dal = DALFactory.DataAccess.CreatePromoCode();

        bool IPromoCode.addPromoCode(promoCode promoCodeItem)
        {
            if (promoCodeItem == null)
                throw new Exception();
            return dal.addPromoCode(promoCodeItem);
        }

        promoCode IPromoCode.getPromoCodeByPromoCode(string promoCode)
        {
            return dal.getPromoCodeByPromoCode(promoCode);
        }
    }
}
