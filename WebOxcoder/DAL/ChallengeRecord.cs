using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using IDAL;
using System.Data.Linq;
using System.Threading.Tasks;

namespace DAL
{
    class ChallengeRecord : IDAL.IChallengeRecord
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        IList<challengeRecord> IChallengeRecord.getRecordByChallenge(int id) {

            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> records = ctx.GetTable<challengeRecord>();
            IQueryable<challengeRecord> query = from o in records
                                         where o.challengeId==id
                                         select o;
            return query.ToList();
        }
    }
}
