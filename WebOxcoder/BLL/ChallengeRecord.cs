using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using System.Threading.Tasks;

namespace BLL
{
    public class ChallengeRecord : IBLL.IChallengeRecord
    {
        private static readonly IDAL.IChallengeRecord dal = DALFactory.DataAccess.CreateChallengeRecord();

        IList<Model.challengeRecord> IChallengeRecord.getRecordByChallenge(int id) {
            return dal.getRecordByChallenge(id);
        }
    }
}
