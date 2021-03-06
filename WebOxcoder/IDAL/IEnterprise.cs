﻿using System;
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
        bool changeEnterpriseInfo(enterprise thisEnterprise);
        int getCount();
        IList<enterprise> getNotCheckedEnterprise();
        IList<enterprise> getSuccessCheckedEnterprise();
        IList<enterprise> searchEnterprise(String name);
        bool deleteEnterprise(enterprise enterpriseItem);
        bool modifyEnterprise(enterprise enterpriseItem);
        //bool rejectEnterprise(enterprise enterpriseItem);
        bool checkEnterprise(String enterpriseEmail);
        bool addEnterprise(enterprise enterpriseItem);
        enterprise getEnterpriseByEmail(String enterpriseEmail);
    }
}
