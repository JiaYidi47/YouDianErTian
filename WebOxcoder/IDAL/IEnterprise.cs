using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IEnterprise
    {
        enterprise getEnterpriseByEmail(String enterpriseEmail);
        bool changeEnterpriseInfo(enterprise thisEnterprise);
    }
}
