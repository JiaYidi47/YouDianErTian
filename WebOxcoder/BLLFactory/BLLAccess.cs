using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Reflection;
using System.Configuration;

namespace BLLFactory
{
    public class BLLAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["BLL"];
        private BLLAccess() { }

        public static IBLL.IChallenge CreateChallenge(){
            string className = path + ".Challenge";
            return (IBLL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }


    }
}
