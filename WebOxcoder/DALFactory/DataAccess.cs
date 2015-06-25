using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Reflection;
using System.Threading.Tasks;

namespace DALFactory
{
    public sealed class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["WebDAL"];

        public static IDAL.IChallenge createChallenge()
        {
            string className = path + ".Challenge";
            return (IDAL.IChallenge)Assembly.Load(path).CreateInstance(className);

        public static IDAL.IQuestion CreateQuestion()
        {
            string className = path + ".Question";
            return (IDAL.IQuestion)Assembly.Load(path).CreateInstance(className);

        }
    }
}
