using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class Enterprise : IBLL.IEnterprise
    {
        private static readonly IDAL.IEnterprise dal = DALFactory.DataAccess.CreateEnterprise();
        enterprise IEnterprise.getEnterpriseByEmail(string enterpriseEmail)
        {
            return dal.getEnterpriseByEmail(enterpriseEmail);
        }
    }
}
