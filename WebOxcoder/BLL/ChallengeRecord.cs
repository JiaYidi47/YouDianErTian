using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IBLL;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class ChallengeRecord : IBLL.IChallengeRecord
    {
        private static readonly IDAL.IChallengeRecord dal = DALFactory.DataAccess.CreateChallengeRecord();

        IList<Model.challengeRecord> IChallengeRecord.getRecordByChallenge(int id) {
            return dal.getRecordByChallenge(id);
        }

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
