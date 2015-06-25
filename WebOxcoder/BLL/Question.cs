using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class Question : IBLL.IQuestion
    {
        private static readonly IDAL.IQuestion dal = DALFactory.DataAccess.CreateQuestion();
    }
}
