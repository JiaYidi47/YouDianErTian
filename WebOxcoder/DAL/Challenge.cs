using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IDAL;
using System.Data.Linq;
using Model;
using System.Threading.Tasks;

namespace DAL
{
    class Challenge: IDAL.IChallenge
    {
        private static readonly string connection = System.Configuration.ConfigurationManager.AppSettings["ConnectionString"];

        //根据技术方向查询
        IList<challenge> IChallenge.searchChallengeByTec(int tec) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query=from o in searchReult 
                                        where o.type == tec
                                        select o;
            return query.ToList<challenge>();
        }
        //根据等级查询
        IList<challenge> IChallenge.searchChallengeByLevel(int level) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                          where o.challengeLevel == level
                                          select o;
            return query.ToList<challenge>();
        }

        //根据公司查询
        IList<challenge> IChallenge.searchChallengeByCompany(string company)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                          where o.companyEmail == company
                                          select o;
            return query.ToList<challenge>();
        }
        //查询所有
        IList<challenge> IChallenge.searchAll() {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            return searchReult.ToList();
        }
        //根据Id查询
        Model.challenge IChallenge.searchById(int id) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                          where o.id == id
                                          select o;
            return query.FirstOrDefault();
        }
        //更改状态
        bool IChallenge.changeState(int id) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                          where o.id == id
                                          select o;
          foreach(Model.challenge updateOne in query){
            if (updateOne.state == 1)
            {
                updateOne.state = 0;
            }
            else {
                updateOne.state = 1;
            }
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

        bool IChallenge.addChallenge(challenge newChallenge) {
            DataContext ctx = new DataContext(connection);
            ITable Items = ctx.GetTable<challenge>();
            Items.InsertOnSubmit(newChallenge);
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
  IList<challenge> IChallenge.searchChallengeByTec(int tec) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query=from o in searchReult 
                                        where o.type == tec
                                        select o;
            return query.ToList<challenge>();
        }

        challenge IChallenge.getChallengeByID(int challengeId)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                          where o.id == challengeId
                                          select o;
            challenge c = query.FirstOrDefault<challenge>();
            return c;
        }

        IList<challenge> IChallenge.searchChallengeByCoderEmail(String coderEmail)
        {
            
            DataContext ctx = new DataContext(connection);
            ITable<challenge> challenge = ctx.GetTable<challenge>();
            ITable<challengeRecord> challengeRecord = ctx.GetTable<challengeRecord>();

            IQueryable<challenge> query = from a in challenge 
                                          join b in challengeRecord
                                          on a.id equals b.challengeId
                                          where b.coderEmail == coderEmail
                                          select a;
            return query.ToList<challenge>();
        }

    }
}
