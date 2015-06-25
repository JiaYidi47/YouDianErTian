using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class ChallengeRecord : IBLL.IChallengeRecord
    {
        private static readonly IDAL.IChallengeRecord dal = DALFactory.DataAccess.CreateChallengeRecord();
    }
}
