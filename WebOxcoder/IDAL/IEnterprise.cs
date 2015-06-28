using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IEnterprise
    {
        IList<Model.enterprise> getCompanyByLoc(String loc);
        IList<Model.enterprise> getCompanyByName(String name);
        enterprise getEnterpriseByEmail(string enterpriseEmail);
    }
}
