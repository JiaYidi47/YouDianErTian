using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Threading.Tasks;

namespace IDAL
{
    public interface IChallengeRecord
    {
        IList<challengeRecord> getRecordByChallenge(int challengeId);
        IList<String> getCoderEmailByChallengeID(int upToDateChallengeID);
        challengeRecord getCoderUpToDateChallengeRecord(String coderEmail);
        IList<challengeRecord> getChallengerByChallengeID(int challengeId);
        challengeRecord getChallengeRecordByChallengeIdAndCoderEmail(int challengeId, String coderEmail);
        int getHaveAcceptCountById(int challengeId);
        bool changeChallengeRecord(challengeRecord recordItem);
        bool acceptChallenge(int challengeId, String coderEmail);
        bool deleteChengeRecord(int challengeId, String coderEmail);
    }
}
