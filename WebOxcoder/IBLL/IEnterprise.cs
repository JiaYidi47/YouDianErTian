using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IBLL
{
    public interface IEnterprise
    {
        bool checkEnterprise(String enterpriseEmail);
        bool addEnterprise(enterprise enterpriseItem);
        enterprise getEnterpriseByEmail(String enterpriseEmail);
    }
}
