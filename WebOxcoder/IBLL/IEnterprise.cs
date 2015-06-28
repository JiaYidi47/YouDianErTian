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
        int getCount();
        IList<enterprise> getNotCheckedEnterprise();
        IList<enterprise> getSuccessCheckedEnterprise();
        IList<enterprise> searchEnterprise(String name);
        bool deleteEnterprise(enterprise enterpriseItem);
        enterprise getEnterpriseByEmail(string email);
        bool modifyEnterprise(enterprise enterpriseItem);
    }
}
