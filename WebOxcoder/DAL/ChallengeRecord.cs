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

        int IChallengeRecord.getHaveAcceptCountById(int challengeId)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> record = ctx.GetTable<challengeRecord>();

            IQueryable<challengeRecord> query = from a in record
                                                where a.challengeId == challengeId
                                                select a;
            return query.Count();
        }

        challengeRecord IChallengeRecord.getChallengeRecordByChallengeIdAndCoderEmail(int challengeId, String coderEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> record = ctx.GetTable<challengeRecord>();

            IQueryable<challengeRecord> query = from a in record
                                                where a.challengeId == challengeId &&
                                                      a.coderEmail == coderEmail
                                                select a;
            return query.First();
        }

        bool IChallengeRecord.changeChallengeRecord(challengeRecord recordItem)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> record = ctx.GetTable<challengeRecord>();

            IQueryable<challengeRecord> query = from a in record
                                                where a.id == recordItem.id
                                                select a;

            foreach (challengeRecord o in query)
            {
                o.id = recordItem.id;
                o.challengeId = recordItem.challengeId;
                o.coderEmail = recordItem.coderEmail;
                o.result = recordItem.result;
                o.subResult = recordItem.subResult;
                o.time = recordItem.time;
                o.subTime1 = recordItem.subTime1;
                o.subTime2 = recordItem.subTime2;
                o.subTime3 = recordItem.subTime3;
                o.isInvited = recordItem.isInvited;
            }
            try
            {
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        bool IChallengeRecord.acceptChallenge(int challengeId, String coderEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> record = ctx.GetTable<challengeRecord>();
            Model.challengeRecord newRecord = new Model.challengeRecord();

            IQueryable<challengeRecord> query = from a in record
                                                where a.challengeId == challengeId &&
                                                      a.coderEmail == coderEmail
                                                select a;

            if (query.Count() > 0)
                return false;

            newRecord.challengeId = challengeId;
            newRecord.coderEmail = coderEmail;
            newRecord.result = "尚未挑战";
            newRecord.isInvited = 0;

            try
            {
                record.InsertOnSubmit(newRecord);
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }

        bool IChallengeRecord.deleteChengeRecord(int challengeId, String coderEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challengeRecord> record = ctx.GetTable<challengeRecord>();

            IQueryable<challengeRecord> query = from a in record
                                                where a.challengeId == challengeId &&
                                                      a.coderEmail == coderEmail
                                                select a;

            try
            {
                record.DeleteOnSubmit(query.First());
                ctx.SubmitChanges();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
