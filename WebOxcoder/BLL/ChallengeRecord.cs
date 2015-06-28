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

        int IChallengeRecord.getHaveAcceptCountById(int challengeId)
        {
            return dal.getHaveAcceptCountById(challengeId);
        }

        challengeRecord IChallengeRecord.getChallengeRecByChaIdAndCodEmail(int challengeId, String coderEmail)
        {
            return dal.getChallengeRecordByChallengeIdAndCoderEmail(challengeId, coderEmail);
        }

        bool IChallengeRecord.changeChallengeRecord(challengeRecord recordItem)
        {
            return dal.changeChallengeRecord(recordItem);
        }

        bool IChallengeRecord.acceptChallenge(int challengeId, String coderEmail)
        {
            return dal.acceptChallenge(challengeId, coderEmail);
        }

        bool IChallengeRecord.deleteChengeRecord(int challengeId, String coderEmail)
        {
            return dal.deleteChengeRecord(challengeId, coderEmail);
        }
    }
}
