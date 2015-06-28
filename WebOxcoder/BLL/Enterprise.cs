using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;
using Model;
using IBLL;

namespace BLL
{
    public class Enterprise : IBLL.IEnterprise
    {
        private static readonly IDAL.IEnterprise dal = DALFactory.DataAccess.CreateEnterprise();

        enterprise IEnterprise.getEnterpriseByEmail(string enterpriseEmail)
        {
            return dal.getEnterpriseByEmail(enterpriseEmail);
        }

        enterprise IEnterprise.getEnterpriseByEmail(String enterpriseEmail)
        {
            return dal.getEnterpriseByEmail(enterpriseEmail);
        }

        bool IEnterprise.changeEnterpriseInfo(enterprise thisEnterprise)
        {
            return dal.changeEnterpriseInfo(thisEnterprise);
        }

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
