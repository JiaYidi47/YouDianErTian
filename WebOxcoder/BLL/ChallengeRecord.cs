using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using IBLL;
using Model;

namespace BLL
{
    public class ChallengeRecord : IBLL.IChallengeRecord
    {
        private static readonly IDAL.IChallengeRecord dal = DALFactory.DataAccess.CreateChallengeRecord();

        IList<String> IChallengeRecord.getCoderEmailByChallengeID(int upToDateChallengeID)
        {
            return dal.getCoderEmailByChallengeID(upToDateChallengeID);
        }

        challengeRecord IChallengeRecord.getCoderUpToDateChallengeRecord(String coderEmail)
        {
            return dal.getCoderUpToDateChallengeRecord(coderEmail);
        }

        IList<challengeRecord> IChallengeRecord.getChallengerByChallengeID(int challengeId)
        {
            return dal.getChallengerByChallengeID(challengeId);
        }


    }
}
