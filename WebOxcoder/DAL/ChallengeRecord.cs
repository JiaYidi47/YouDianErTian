using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Linq;
using Model;
using IDAL;

namespace DAL
{
    class ChallengeRecord : IDAL.IChallengeRecord
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        IList<String> IChallengeRecord.getCoderEmailByChallengeID(int upToDateChallengeID)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> records = ctx.GetTable<challengeRecord>();
            IQueryable<String> query = from o in records
                                      where o.challengeId == upToDateChallengeID
                                      select o.coderEmail;
            return query.ToList<String>();
        }

        challengeRecord IChallengeRecord.getCoderUpToDateChallengeRecord(String coderEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> records = ctx.GetTable<challengeRecord>();
            IQueryable<challengeRecord> query = from o in records
                                       where o.coderEmail == coderEmail
                                       orderby o.time descending
                                       select o;
            return query.FirstOrDefault<challengeRecord>();
        }

        IList<challengeRecord> IChallengeRecord.getChallengerByChallengeID(int challengeId)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> records = ctx.GetTable<challengeRecord>();
            IQueryable<challengeRecord> query = from o in records
                                                where o.challengeId == challengeId
                                                select o;
            return query.ToList<challengeRecord>();
        }
    }
}
