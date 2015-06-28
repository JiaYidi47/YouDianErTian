using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tools
{
    public class Config
    {
        public const int allStatusCheck = 0;//企业全部审核状态
        public const int notCheck = 1;//企业未审核
        public const int successCheck = 2;//企业审核通过
        public const int failCheck = 3;//企业审核未通过

        public const int allOrder = 0;//全部订单
        public const int todayOrder = 1;//今日订单
    }
}
