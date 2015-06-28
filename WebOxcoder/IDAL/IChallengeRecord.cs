﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace IDAL
{
    public interface IChallengeRecord
    {
        IList<String> getCoderEmailByChallengeID(int upToDateChallengeID);
        challengeRecord getCoderUpToDateChallengeRecord(String coderEmail);
        IList<challengeRecord> getChallengerByChallengeID(int challengeId);
    }
}
