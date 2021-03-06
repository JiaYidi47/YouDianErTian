﻿using System;
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

        public static string[] salary = { "全部薪资", "2k~5k", "5k~8k","8k~10k", "10k~12k", "12~15k", "15k以上" };
        public static string[] district ={"全部地区","北京","天津","河北","山西","内蒙古","辽宁","吉林","黑龙江",
                                            "上海","江苏","浙江","安徽","福建","江西","山东","河南","湖北","湖南",
                                            "广东","广西","海南","重庆","四川","贵州","云南","西藏","陕西","甘肃",
                                           "青海","宁夏","新疆","台湾","香港","澳门","海外"};

      
       public static Dictionary<int, string> getLevel() {
           Dictionary<int, string> level = new Dictionary<int, string>();
           for (int i = 0; i < salary.Length; i++) {
               level.Add(i, salary[i]);
           }
               return level;
       }

       public static int getScore(string result) {
           if (result.Equals("通过")) {
               return 90;
           }
           else if (result.Equals("合格")) {
               return 70;
           }else{
                return 0;
           }
        }

       public const int PasswordFailed = 101;//密码错误
       public const int UserExist = 102;//用户不存在
       public const int Admin = 0;//管理员
       public const int Coder = 1;//程序员
       public const int Enterprise = 2;//企业
    }
}
