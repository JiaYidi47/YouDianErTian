using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IBLL;

namespace BLL
{
    public class Enterprise : IBLL.IEnterprise
    {
        private static readonly IDAL.IEnterprise dal = DALFactory.DataAccess.CreateEnterprise();

        enterprise IEnterprise.getEnterpriseByEmail(String enterpriseEmail)
        {
            return dal.getEnterpriseByEmail(enterpriseEmail);
        }
    }
}