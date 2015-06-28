using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;

namespace BLL
{
    public class Enterprise : IBLL.IEnterprise
    {
        private static readonly IDAL.IEnterprise dal = DALFactory.DataAccess.CreateEnterprise();

        int IEnterprise.getCount()
        {
            return dal.getCount();
        }


        IList<enterprise> IEnterprise.getNotCheckedEnterprise()
        {
            return dal.getNotCheckedEnterprise();
        }

        IList<enterprise> IEnterprise.getSuccessCheckedEnterprise()
        {
            return dal.getSuccessCheckedEnterprise();
        }


        IList<enterprise> IEnterprise.searchEnterprise(String name)
        {
            return dal.searchEnterprise(name);
        }

        bool IEnterprise.deleteEnterprise(enterprise enterpriseItem)
        {
            if (enterpriseItem == null)
                throw new Exception();
            return dal.deleteEnterprise(enterpriseItem);
        }

        enterprise IEnterprise.getEnterpriseByEmail(string email)
        {
            return dal.getEnterpriseByEmail(email);
        }

        bool IEnterprise.modifyEnterprise(enterprise enterpriseItem)
        {
            if (enterpriseItem == null)
                throw new Exception();
            return dal.modifyEnterprise(enterpriseItem);
        }

        //bool IEnterprise.rejectEnterprise(enterprise enterpriseItem)
        //{
        //    if (enterpriseItem == null)
        //        throw new Exception();
        //    return dal.deleteEnterprise(enterpriseItem);
        //}

        bool IEnterprise.checkEnterprise(String enterpriseEmail)
        {
            if (enterpriseEmail == null)
                throw new Exception();
            if (dal.checkEnterprise(enterpriseEmail) == true)
                //发送邮件
                return true;
            else
                return false;
        }

        bool IEnterprise.addEnterprise(enterprise enterpriseItem)
        {
            if (enterpriseItem == null)
                throw new Exception();
            return dal.addEnterprise(enterpriseItem);
	}
    }
}
