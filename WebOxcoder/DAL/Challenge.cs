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

        IList<challenge> IChallenge.searchChallengeByTec(int tec) {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query=from o in searchReult 
                                        where o.type == tec
                                        select o;
            return query.ToList<challenge>();
        }

        challenge IChallenge.getEnterpriseUpToDateChallenge(String enterpriseEmail)
        {
            DataContext ctx = new DataContext(connection);
            ITable<challenge> searchReult = ctx.GetTable<challenge>();
            IQueryable<challenge> query = from o in searchReult
                                     where o.companyEmail == enterpriseEmail
                                     orderby o.id descending
                                     select o;
            challenge c = query.FirstOrDefault<challenge>();
            return c;
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
    }
}
