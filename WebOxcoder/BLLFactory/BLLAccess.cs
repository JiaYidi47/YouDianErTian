using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Configuration;

namespace BLLFactory
{
    public sealed class BLLAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["BLL"];

        private BLLAccess() { }

        public static IBLL.IUser CreateUser()
        {
            string className = path + ".User";
            return (IBLL.IUser)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.ICoder CreateCoder()
        {
            string className = path + ".Coder";
            return (IBLL.ICoder)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IEnterprise CreateEnterprise()
        {
            string className = path + ".Enterprise";
            return (IBLL.IEnterprise)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IAdmin CreateAdmin()
        {
            string className = path + ".Admin";
            return (IBLL.IAdmin)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IChallenge CreateChallenge()
        {
            string className = path + ".Challenge";
            return (IBLL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IChallengeRecord CreateChallengeRecord()
        {
            string className = path + ".ChallengeRecord";
            return (IBLL.IChallengeRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IQuestion CreateQuestion()
        {
            string className = path + ".Question";
            return (IBLL.IQuestion)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IQuestionType CreateQuestionType()
        {
            string className = path + ".QuestionType";
            return (IBLL.IQuestionType)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IStatistics CreateStatistics()
        {
            string className = path + ".Statistics";
            return (IBLL.IStatistics)Assembly.Load(path).CreateInstance(className);
        }

        public static IBLL.IOrder CreateOrder()
        {
            string className = path + ".Order";
            return (IBLL.IOrder)Assembly.Load(path).CreateInstance(className);
        }
    }
}
