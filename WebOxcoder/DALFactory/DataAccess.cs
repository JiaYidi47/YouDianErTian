using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Reflection;
using System.Threading.Tasks;

namespace DALFactory
{
    public class DataAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["WebDAL"];
        public static IDAL.IChallenge createChallenge()
        {
            string className = path + ".Challenge";
            return (IDAL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }
    }
}
