using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Configuration;

namespace DALFactory
{
    public sealed class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["DAL"];

        public static IDAL.IUser CreateUser()
        {
            string className = path + ".User";
            return (IDAL.IUser)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.ICoder CreateCoder()
        {
            string className = path + ".Coder";
            return (IDAL.ICoder)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IEnterprise CreateEnterprise()
        {
            string className = path + ".Enterprise";
            return (IDAL.IEnterprise)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IAdmin CreateAdmin()
        {
            string className = path + ".Admin";
            return (IDAL.IAdmin)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IChallenge CreateChallenge()
        {
            string className = path + ".Challenge";
            return (IDAL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IChallengeRecord CreateChallengeRecord()
        {
            string className = path + ".ChallengeRecord";
            return (IDAL.IChallengeRecord)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IQuestion CreateQuestion()
        {
            string className = path + ".Question";
            return (IDAL.IQuestion)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IQuestionType CreateQuestionType()
        {
            string className = path + ".QuestionType";
            return (IDAL.IQuestionType)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IStatistics CreateStatistics()
        {
            string className = path + ".Statistics";
            return (IDAL.IStatistics)Assembly.Load(path).CreateInstance(className);
        }

        public static IDAL.IOrder CreateOrder()
        {
            string className = path + ".Order";
            return (IDAL.IOrder)Assembly.Load(path).CreateInstance(className);
        }
    }
}
