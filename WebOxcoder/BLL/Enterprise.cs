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
