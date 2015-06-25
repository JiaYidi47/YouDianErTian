using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Reflection;
using System.Threading.Tasks;
using System.Reflection;
using System.Configuration;

namespace BLLFactory
{
    public sealed class BLAccess
    {
        private static readonly string path = ConfigurationManager.AppSettings["BLL"];

	private BLAccess() { }

        public static IBLL.IChallenge CreateChallenge(){
            string className = path + ".Challenge";
            return (IBLL.IChallenge)Assembly.Load(path).CreateInstance(className);
        }


        public static IBLL.IQuestion CreateQuestion()
        {
            string className = path + ".Question";
            return (IBLL.IQuestion)Assembly.Load(path).CreateInstance(className);
        }
    }
}
